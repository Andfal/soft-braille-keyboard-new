/*
 * Copyright (C) 2016 The Soft Braille Keyboard Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.dalton.braillekeyboard.modern;

import com.dalton.braillekeyboard.modern.R;
import com.dalton.braillekeyboard.modern.Pad.Swipe;
import com.dalton.braillekeyboard.modern.Pad.Coords;
import com.dalton.braillekeyboard.modern.BrailleParser.BrailleType;
import com.dalton.braillekeyboard.modern.Options.KeyboardFeedback;
import com.dalton.braillekeyboard.modern.Options.KeyboardEcho;
import com.dalton.braillekeyboard.modern.Options.KeyboardType;
import com.dalton.braillekeyboard.modern.Options.OptionList;
import com.dalton.braillekeyboard.modern.EditingUtilities.Word;
import com.dalton.braillekeyboard.modern.EmojiDictionary.EmojiEntry;
import com.dalton.braillekeyboard.modern.SpellChecker.Suggestion;
import com.dalton.braillekeyboard.modern.SpellChecker.SpellingSuggestionsReadyListener;

import android.Manifest;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import androidx.core.app.ActivityCompat;

import android.provider.Settings;

/**
 * An Activity used purely for handling intents that require a backing activity.
 * 
 * Since an InputMethod has no Activity we use this to overcome that problem. It
 * is used for things like showing alert dialogs and interracting with other
 * system frameworks normally reserved for use only by activities.
 */
public class IntentActivity extends Activity {
    // Request code for the record_audio permission
    private static final int PERMISSION_RECORD_AUDIO_REQUEST = 0;

    private boolean showRequirePermissionDialog;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        String action = intent != null ? intent.getAction() : null;
        
        if (getString(R.string.action_record_audio_permission).equals(action)) {
            if (intent.getExtras() != null) {
                // If the intent has extras indicating that we should show a
                // dialog if the user declines the permission.
                // This is normally only shown when the user is directly
                // trying to use the permission i.e. not on first app launch
                // request.
                showRequirePermissionDialog = intent.getExtras().getBoolean(
                        getString(R.string.require_record_audio_now));
            }
            askUserForRecordAudioPermission();
        } else if ("com.dalton.braillekeyboard.ACTION_ENABLE_ACCESSIBILITY".equals(action)) {
            showAccessibilityDialog();
        } else {
            finish();
        }
    }

    private void showAccessibilityDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(R.string.accessibility_service_label);
        builder.setMessage(R.string.accessibility_service_dialog_message);
        builder.setPositiveButton(R.string.action_settings, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                Intent intent = new Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS);
                startActivity(intent);
                finish();
            }
        });
        builder.setNegativeButton(R.string.btn_cancel, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                finish();
            }
        });
        builder.setCancelable(true);
        builder.setOnCancelListener(new DialogInterface.OnCancelListener() {
            @Override
            public void onCancel(DialogInterface dialog) {
                finish();
            }
        });
        AlertDialog dialog = builder.create();
        dialog.show();
    }

    // Called when the user accepts or declines the permission using the
    // standard system dialog.
    @Override
    public void onRequestPermissionsResult(int requestCode,
            String[] permissions, int[] grantResults) {
        if (requestCode == PERMISSION_RECORD_AUDIO_REQUEST
                && permissions.length > 0 && grantResults.length > 0
                && grantResults[0] == -1 && showRequirePermissionDialog) {
            new AlertDialog.Builder(this)
                    .setTitle(getString(R.string.voice_input_permission_title))
                    .setMessage(
                            getString(R.string.voice_input_permission_message))
                    .setNeutralButton(android.R.string.yes,
                            new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialog,
                                        int which) {
                                    finish();
                                }
                            }).setIcon(android.R.drawable.ic_dialog_alert)
                    .show();
        } else {
            finish();
        }
    }

    // Ask the system to prompt the user for the record audio permission.
    private void askUserForRecordAudioPermission() {
        ActivityCompat.requestPermissions(this,
                new String[] { Manifest.permission.RECORD_AUDIO },
                PERMISSION_RECORD_AUDIO_REQUEST);
    }
}


