package com.dalton.braillekeyboard;

import com.dalton.braillekeyboard.R;
import com.dalton.braillekeyboard.Pad.Swipe;
import com.dalton.braillekeyboard.Pad.Coords;
import com.dalton.braillekeyboard.BrailleParser.BrailleType;
import com.dalton.braillekeyboard.Options.KeyboardFeedback;
import com.dalton.braillekeyboard.Options.KeyboardEcho;
import com.dalton.braillekeyboard.Options.KeyboardType;
import com.dalton.braillekeyboard.Options.OptionList;
import com.dalton.braillekeyboard.EditingUtilities.Word;
import com.dalton.braillekeyboard.EmojiDictionary.EmojiEntry;
import com.dalton.braillekeyboard.SpellChecker.Suggestion;
import com.dalton.braillekeyboard.SpellChecker.SpellingSuggestionsReadyListener;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.graphics.Region;
import android.os.Build;
import android.util.Log;
import android.view.Display;
import android.view.accessibility.AccessibilityEvent;
import android.os.Vibrator;
import android.content.Context;

public class BrailleAccessibilityService extends AccessibilityService {
    private static final String TAG = "BrailleAccService";
    private static BrailleAccessibilityService instance;
    private boolean isPassthroughActive = false;

    public static BrailleAccessibilityService getInstance() {
        return instance;
    }

    public static boolean isServiceEnabled() {
        return instance != null;
    }

    public boolean isPassthroughActive() {
        return isPassthroughActive;
    }

    public static boolean isJieshuoActive(Context context) {
        android.view.accessibility.AccessibilityManager am = (android.view.accessibility.AccessibilityManager) context.getSystemService(Context.ACCESSIBILITY_SERVICE);
        if (am != null) {
            java.util.List<AccessibilityServiceInfo> enabledServices = am.getEnabledAccessibilityServiceList(AccessibilityServiceInfo.FEEDBACK_ALL_MASK);
            for (AccessibilityServiceInfo service : enabledServices) {
                String id = service.getId();
                if (id != null && (id.contains("com.nirenr.") || id.contains("jieshuo"))) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    protected void onServiceConnected() {
        super.onServiceConnected();
        Log.d(TAG, "Accessibility Service Connected");
        instance = this;
    }

    @Override
    public void onAccessibilityEvent(AccessibilityEvent event) {
        // Not used
    }

    @Override
    public void onInterrupt() {
        // Not used
    }

    @Override
    public void onDestroy() {
        Log.d(TAG, "Accessibility Service Destroyed");
        super.onDestroy();
        instance = null;
    }

    @Override
    public boolean onUnbind(android.content.Intent intent) {
        Log.d(TAG, "Accessibility Service Unbound");
        instance = null;
        return super.onUnbind(intent);
    }

    public void updatePassthroughRegion(int x, int y, int width, int height) {
        if (isJieshuoActive(this)) {
            Log.d(TAG, "Jieshuo is active. Accessibility service staying dormant (no passthrough).");
            return;
        }

        if (android.os.Build.VERSION.SDK_INT >= 30) {
            if (width > 0 && height > 0) {
                // Request control dynamically
                setTouchExplorationEnabled(true);
                
                Log.d(TAG, "Requesting passthrough: " + x + ", " + y + ", " + width + "x" + height);
                Region region = new Region(x, y, x + width, y + height);
                try {
                    setTouchExplorationPassthroughRegion(Display.DEFAULT_DISPLAY, region);
                    if (!isPassthroughActive) {
                        provideFeedback();
                    }
                    isPassthroughActive = true;
                    Log.d(TAG, "Passthrough set successfully");
                } catch (Exception e) {
                    Log.e(TAG, "Failed to set passthrough region", e);
                }
            } else {
                Log.w(TAG, "Invalid region requested: " + width + "x" + height);
            }
        }
    }

    public void clearPassthroughRegion() {
        if (isJieshuoActive(this)) {
            return;
        }

        if (android.os.Build.VERSION.SDK_INT >= 30) {
            Log.d(TAG, "Clearing passthrough region");
            try {
                setTouchExplorationPassthroughRegion(Display.DEFAULT_DISPLAY, new Region());
                
                // Release control immediately
                setTouchExplorationEnabled(false);
                isPassthroughActive = false;
                Log.d(TAG, "Passthrough cleared successfully");
            } catch (Exception e) {
                Log.e(TAG, "Failed to clear passthrough region", e);
            }
        }
    }

    private void setTouchExplorationEnabled(boolean enabled) {
        AccessibilityServiceInfo info = getServiceInfo();
        if (info == null) return;
        
        int oldFlags = info.flags;
        if (enabled) {
            info.flags |= AccessibilityServiceInfo.FLAG_REQUEST_TOUCH_EXPLORATION_MODE;
        } else {
            info.flags &= ~AccessibilityServiceInfo.FLAG_REQUEST_TOUCH_EXPLORATION_MODE;
        }
        
        if (info.flags != oldFlags) {
            Log.d(TAG, "Updating accessibility flags, Touch Exploration: " + (enabled ? "ON" : "OFF"));
            setServiceInfo(info);
        }
    }

    private void provideFeedback() {
        Vibrator v = (Vibrator) getSystemService(Context.VIBRATOR_SERVICE);
        if (v != null && v.hasVibrator()) {
            // Un breve doppio tocco per segnalare che il passthrough è attivo
            v.vibrate(new long[]{0, 20, 50, 20}, -1);
        }
    }
}


