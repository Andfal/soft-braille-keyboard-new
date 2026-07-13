package com.dalton.braillekeyboard;

import android.content.Context;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;

public class SeekBarPreference extends DialogPreference implements SeekBar.OnSeekBarChangeListener {
    private static final int DEFAULT_VALUE = 100;
    private SeekBar seekBar;
    private TextView valueText;
    private int value = DEFAULT_VALUE;
    private boolean isTrackingTouch = false;

    public SeekBarPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    @Override
    protected View onCreateDialogView() {
        Context context = getContext();
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(40, 40, 40, 40);

        valueText = new TextView(context);
        valueText.setTextSize(18);
        valueText.setPadding(0, 0, 0, 20);
        layout.addView(valueText);

        seekBar = new SeekBar(context);
        seekBar.setMax(100);
        seekBar.setOnSeekBarChangeListener(this);
        layout.addView(seekBar);

        return layout;
    }

    @Override
    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        value = getPersistedInt(DEFAULT_VALUE);
        seekBar.setProgress(value);
        updateText(value);
    }

    @Override
    protected void onDialogClosed(boolean positiveResult) {
        super.onDialogClosed(positiveResult);
        if (positiveResult) {
            int newValue = seekBar.getProgress();
            if (callChangeListener(newValue)) {
                value = newValue;
                persistInt(newValue);
            }
        }
    }

    @Override
    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        updateText(progress);
        if (fromUser && !isTrackingTouch) {
            float previewVolume = progress / 100.0f;
            SoundThemeManager.getInstance(getContext()).playSoundWithVolume(
                    SoundThemeManager.SOUND_TYPE_DEFAULT, previewVolume);
        }
    }

    @Override
    public void onStartTrackingTouch(SeekBar seekBar) {
        isTrackingTouch = true;
    }

    @Override
    public void onStopTrackingTouch(SeekBar seekBar) {
        isTrackingTouch = false;
        int progress = seekBar.getProgress();
        float previewVolume = progress / 100.0f;
        SoundThemeManager.getInstance(getContext()).playSoundWithVolume(
                SoundThemeManager.SOUND_TYPE_DEFAULT, previewVolume);
    }

    private void updateText(int progress) {
        valueText.setText(String.format("%d%%", progress));
    }

    @Override
    protected Object onGetDefaultValue(android.content.res.TypedArray a, int index) {
        return a.getInt(index, DEFAULT_VALUE);
    }

    @Override
    protected void onSetInitialValue(boolean restorePersistedValue, Object defaultValue) {
        if (restorePersistedValue) {
            value = getPersistedInt(DEFAULT_VALUE);
        } else {
            value = (Integer) defaultValue;
            persistInt(value);
        }
    }
}
