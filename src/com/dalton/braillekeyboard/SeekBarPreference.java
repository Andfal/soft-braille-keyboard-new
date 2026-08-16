package com.dalton.braillekeyboard;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.preference.PreferenceViewHolder;

public class SeekBarPreference extends androidx.preference.SeekBarPreference {
    private static final int DEFAULT_VALUE = 100;
    private boolean isTrackingTouch = false;

    public SeekBarPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        setMax(100);
        setMin(0);
        setShowSeekBarValue(true);
        setUpdatesContinuously(true);
        setDefaultValue(DEFAULT_VALUE);
    }

    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);
        SeekBar seekBar = (SeekBar) holder.findViewById(androidx.preference.R.id.seekbar);
        if (seekBar != null) {
            seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                @Override
                public void onProgressChanged(SeekBar sb, int progress, boolean fromUser) {
                    if (fromUser) {
                        setValue(progress);
                        if (!isTrackingTouch) {
                            float previewVolume = progress / 100.0f;
                            SoundThemeManager.getInstance(getContext()).playSoundWithVolume(
                                    SoundThemeManager.SOUND_TYPE_DEFAULT, previewVolume);
                        }
                    }
                }

                @Override
                public void onStartTrackingTouch(SeekBar sb) {
                    isTrackingTouch = true;
                }

                @Override
                public void onStopTrackingTouch(SeekBar sb) {
                    isTrackingTouch = false;
                    int progress = sb.getProgress();
                    setValue(progress);
                    float previewVolume = progress / 100.0f;
                    SoundThemeManager.getInstance(getContext()).playSoundWithVolume(
                            SoundThemeManager.SOUND_TYPE_DEFAULT, previewVolume);
                }
            });
        }
    }
}
