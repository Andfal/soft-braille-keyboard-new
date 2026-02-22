package com.dalton.braillekeyboard;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.graphics.Region;
import android.os.Build;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;

public class BrailleAccessibilityService extends AccessibilityService {
    private static final String TAG = "BrailleAccService";
    private static BrailleAccessibilityService instance;

    public static BrailleAccessibilityService getInstance() {
        return instance;
    }

    public static boolean isServiceEnabled() {
        return instance != null;
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
        super.onDestroy();
        instance = null;
    }

    @Override
    public boolean onUnbind(android.content.Intent intent) {
        instance = null;
        return super.onUnbind(intent);
    }

    public void updatePassthroughRegion(int x, int y, int width, int height) {
        if (Build.VERSION.SDK_INT >= 33) {
            AccessibilityServiceInfo info = getServiceInfo();
            if (info != null) {
                // Request touch exploration mode only when we need to set a passthrough region
                if ((info.flags & AccessibilityServiceInfo.FLAG_REQUEST_TOUCH_EXPLORATION_MODE) == 0) {
                    info.flags |= AccessibilityServiceInfo.FLAG_REQUEST_TOUCH_EXPLORATION_MODE;
                    setServiceInfo(info);
                }
                
                if (width > 0 && height > 0) {
                    Log.d(TAG, "Setting passthrough region: " + x + ", " + y + ", " + width + "x" + height);
                    Region region = new Region(x, y, x + width, y + height);
                    setTouchExplorationPassthroughRegion(0, region);
                }
            }
        }
    }
    
    public void clearPassthroughRegion() {
        if (Build.VERSION.SDK_INT >= 33) {
            Log.d(TAG, "Clearing passthrough region and releasing exploration mode");
            setTouchExplorationPassthroughRegion(0, new Region());
            
            AccessibilityServiceInfo info = getServiceInfo();
            if (info != null && (info.flags & AccessibilityServiceInfo.FLAG_REQUEST_TOUCH_EXPLORATION_MODE) != 0) {
                // Release touch exploration mode so other screen readers can take full control
                info.flags &= ~AccessibilityServiceInfo.FLAG_REQUEST_TOUCH_EXPLORATION_MODE;
                setServiceInfo(info);
            }
        }
    }
}
