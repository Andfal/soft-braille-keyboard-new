package com.dalton.braillekeyboard;

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
        if (android.os.Build.VERSION.SDK_INT >= 30) {
            if (width > 0 && height > 0) {
                setTouchExplorationEnabled(true);
                Log.d(TAG, "Requesting passthrough: " + x + ", " + y + ", " + width + "x" + height);
                Region region = new Region(x, y, x + width, y + height);
                try {
                    // Nota: Utilizzo della riflessione o controllo SDK per evitare errori di compilazione su SDK vecchi
                    setTouchExplorationPassthroughRegion(Display.DEFAULT_DISPLAY, region);
                    if (!isPassthroughActive) {
                        provideFeedback();
                    }
                    isPassthroughActive = true;
                } catch (NoSuchMethodError e) {
                    Log.e(TAG, "Method not found despite SDK check", e);
                } catch (Exception e) {
                    Log.e(TAG, "Failed to set passthrough region", e);
                }
            }
        }
    }

    public void clearPassthroughRegion() {
        if (android.os.Build.VERSION.SDK_INT >= 30) {
            try {
                setTouchExplorationPassthroughRegion(Display.DEFAULT_DISPLAY, new Region());
                setTouchExplorationEnabled(false);
                isPassthroughActive = false;
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
            setServiceInfo(info);
        }
    }

    private void provideFeedback() {
        Vibrator v = (Vibrator) getSystemService(Context.VIBRATOR_SERVICE);
        if (v != null) {
            v.vibrate(new long[]{0, 20, 50, 20}, -1);
        }
    }
}
