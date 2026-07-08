package com.dalton.braillekeyboard;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.media.AudioManager;
import android.media.SoundPool;
import android.net.Uri;
import android.support.v4.provider.DocumentFile;
import android.util.Log;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class SoundThemeManager {
    private static final String TAG = "SBK_SoundThemeManager";

    public static final int SOUND_TYPE_DEFAULT = 0;
    public static final int SOUND_TYPE_SPACE = 1;
    public static final int SOUND_TYPE_DELETE = 2;
    public static final int SOUND_TYPE_ENTER = 3;

    private static SoundThemeManager instance;
    private final Context context;
    private SoundPool soundPool;
    private final Map<Integer, Integer> soundIdMap = new HashMap<Integer, Integer>();
    private String currentTheme = "system";
    private String customThemeUri = null;
    private AudioManager audioManager;

    private SoundThemeManager(Context context) {
        this.context = context.getApplicationContext();
        this.audioManager = (AudioManager) this.context.getSystemService(Context.AUDIO_SERVICE);
        initSoundPool();
        loadSelectedTheme();
    }

    public static synchronized SoundThemeManager getInstance(Context context) {
        if (instance == null) {
            instance = new SoundThemeManager(context);
        }
        return instance;
    }

    private void initSoundPool() {
        if (soundPool != null) {
            soundPool.release();
        }
        soundPool = new SoundPool(4, AudioManager.STREAM_MUSIC, 0);
        soundIdMap.clear();
    }

    public synchronized void loadSelectedTheme() {
        SharedPreferences prefs = Options.getSharedPreferences(context);
        
        String themeKey = context.getString(R.string.pref_keyboard_sound_theme_key);
        String theme = prefs.getString(themeKey, "system");
        
        String customUriKey = "pref_custom_sound_theme_folder_uri";
        String uriStr = prefs.getString(customUriKey, null);

        if (theme.equals(currentTheme) && 
            ((customThemeUri == null && uriStr == null) || (customThemeUri != null && customThemeUri.equals(uriStr)))) {
            return;
        }

        currentTheme = theme;
        customThemeUri = uriStr;

        initSoundPool();

        if (currentTheme.equals("system")) {
            Log.d(TAG, "System sounds selected, skipping SoundPool loading");
            return;
        }

        if (currentTheme.equals("custom")) {
            loadCustomTheme(uriStr);
        } else {
            loadAssetTheme(currentTheme);
        }
    }

    private void loadAssetTheme(String themeName) {
        Log.d(TAG, "Loading asset theme: " + themeName);
        String[] soundFiles = {"tap.wav", "space.wav", "delete.wav", "enter.wav"};
        int[] soundTypes = {SOUND_TYPE_DEFAULT, SOUND_TYPE_SPACE, SOUND_TYPE_DELETE, SOUND_TYPE_ENTER};

        for (int i = 0; i < soundFiles.length; i++) {
            String path = "sound_themes/" + themeName + "/" + soundFiles[i];
            AssetFileDescriptor afd = null;
            try {
                afd = context.getAssets().openFd(path);
                int soundId = soundPool.load(afd, 1);
                soundIdMap.put(soundTypes[i], soundId);
            } catch (IOException e) {
                Log.e(TAG, "Failed to load asset sound: " + path, e);
            } finally {
                if (afd != null) {
                    try {
                        afd.close();
                    } catch (IOException ignored) {}
                }
            }
        }
    }

    private void loadCustomTheme(String folderUriStr) {
        if (folderUriStr == null || folderUriStr.trim().isEmpty()) {
            Log.w(TAG, "Custom theme folder URI is not set");
            return;
        }

        Log.d(TAG, "Loading custom theme from URI: " + folderUriStr);
        try {
            Uri treeUri = Uri.parse(folderUriStr);
            DocumentFile root = DocumentFile.fromTreeUri(context, treeUri);
            if (root == null || !root.exists()) {
                Log.w(TAG, "Custom theme directory does not exist or is inaccessible");
                return;
            }

            String[] soundFiles = {"tap.wav", "space.wav", "delete.wav", "enter.wav"};
            int[] soundTypes = {SOUND_TYPE_DEFAULT, SOUND_TYPE_SPACE, SOUND_TYPE_DELETE, SOUND_TYPE_ENTER};

            for (int i = 0; i < soundFiles.length; i++) {
                DocumentFile file = root.findFile(soundFiles[i]);
                if (file != null && file.exists()) {
                    AssetFileDescriptor afd = null;
                    try {
                        afd = context.getContentResolver().openAssetFileDescriptor(file.getUri(), "r");
                        if (afd != null) {
                            int soundId = soundPool.load(afd, 1);
                            soundIdMap.put(soundTypes[i], soundId);
                        }
                    } catch (Exception e) {
                        Log.e(TAG, "Failed to load custom sound: " + soundFiles[i], e);
                    } finally {
                        if (afd != null) {
                            try {
                                afd.close();
                            } catch (IOException ignored) {}
                        }
                    }
                } else {
                    Log.w(TAG, "Custom sound file not found: " + soundFiles[i]);
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to load custom theme", e);
        }
    }

    public synchronized void playSound(int soundType) {
        if (currentTheme.equals("system")) {
            playSystemSound(soundType);
            return;
        }

        Integer soundId = soundIdMap.get(soundType);
        if (soundId != null && soundId > 0) {
            soundPool.play(soundId, 1.0f, 1.0f, 1, 0, 1.0f);
        } else {
            playSystemSound(soundType);
        }
    }

    private void playSystemSound(int soundType) {
        if (audioManager == null) return;
        
        int effect;
        switch (soundType) {
            case SOUND_TYPE_SPACE:
                effect = AudioManager.FX_KEYPRESS_SPACEBAR;
                break;
            case SOUND_TYPE_DELETE:
                effect = AudioManager.FX_KEYPRESS_DELETE;
                break;
            case SOUND_TYPE_ENTER:
                effect = AudioManager.FX_KEYPRESS_RETURN;
                break;
            case SOUND_TYPE_DEFAULT:
            default:
                effect = AudioManager.FX_KEYPRESS_STANDARD;
                break;
        }
        audioManager.playSoundEffect(effect);
    }
}
