package com.dalton.braillekeyboard;

import android.content.Context;
import com.dalton.braillekeyboard.Pad.Swipe;

/**
 * Manages the mapping between Pad.Swipe gestures and GestureActions.
 */
public class GestureManager {

    public static GestureAction getActionForSwipe(Context context, Swipe swipe) {
        String key = "pref_gesture_" + swipe.name().toLowerCase();
        GestureAction defaultValue = getDefaultAction(swipe);
        
        // Use the synchronized SharedPreferences from Options
        android.content.SharedPreferences prefs = Options.getSharedPreferences(context);
        String actionName = prefs.getString(key, defaultValue.name());
        
        android.util.Log.d("GestureManager", "Resolving " + swipe.name() + " -> " + actionName);
        
        try {
            return GestureAction.valueOf(actionName);
        } catch (IllegalArgumentException e) {
            return defaultValue;
        }
    }

    public static GestureAction getDefaultAction(Swipe swipe) {
        switch (swipe) {
            case ONE_LEFT: return GestureAction.MOVE_LEFT_CHARACTER;
            case ONE_RIGHT: return GestureAction.MOVE_RIGHT_CHARACTER;
            case ONE_DOWN: return GestureAction.CYCLE_FEEDBACK_MODE;
            case ONE_UP: return GestureAction.READ_CHARACTER;
            case TWO_LEFT: return GestureAction.MOVE_LEFT_WORD;
            case TWO_RIGHT: return GestureAction.MOVE_RIGHT_WORD;
            case TWO_UP: return GestureAction.READ_WORD;
            case TWO_DOWN:
            case TWO_FINGERS_DOWN: return GestureAction.CYCLE_ECHO_MODE;
            case DOTS_FOUR_SIX_RIGHT: return GestureAction.CLOSE_KEYBOARD;
            case THREE_LEFT: return GestureAction.MOVE_LEFT_LINE;
            case THREE_RIGHT: return GestureAction.MOVE_RIGHT_LINE;
            case THREE_UP: return GestureAction.READ_LINE;
            case FOUR_LEFT: return GestureAction.DELETE_CHARACTER;
            case FOUR_RIGHT: return GestureAction.SPACE;
            case FOUR_DOWN: return GestureAction.NEWLINE;
            case FOUR_UP: return GestureAction.TOGGLE_PRIVACY_MODE;
            case FIVE_LEFT: return GestureAction.DELETE_WORD;
            case FIVE_DOWN: return GestureAction.INPUT_METHOD_PICKER;
            case FIVE_UP: return GestureAction.OPEN_SETTINGS;
            case SIX_LEFT: return GestureAction.DELETE_LINE;
            case SIX_RIGHT: return GestureAction.NEXT_EDIT_ACTION;
            case SIX_UP: return GestureAction.PERFORM_EDIT_ACTION;
            case EMOJI_MODE: return GestureAction.TOGGLE_EMOJI_MODE;
            case AUTOCAPS_TOGGLE: return GestureAction.TOGGLE_AUTOCAPS;
            case HOLD_SIX_LEFT: return GestureAction.MOVE_TO_BEGINNING;
            case HOLD_SIX_RIGHT: return GestureAction.MOVE_TO_END;
            case HOLD_SIX_DOWN: return GestureAction.TOGGLE_ECHO_PASSWORDS;
            case HOLD_SIX_UP: return GestureAction.READ_ALL;
            case HOLD_THREE_LEFT: return GestureAction.DELETE_ALL;
            case HOLD_THREE_RIGHT: return GestureAction.SWITCH_BRAILLE_TYPE;
            case HOLD_THREE_DOWN: return GestureAction.SWITCH_TABLE;
            case HOLD_THREE_UP: return GestureAction.VOICE_INPUT;
            case HOLD_ONE_RIGHT: return GestureAction.TOGGLE_MARK;
            case HOLD_ONE_LEFT: return GestureAction.KEYBOARD_SHRINK;
            case HOLD_ONE_DOWN: return GestureAction.WORD_COUNT;
            case HOLD_FOUR_LEFT: return GestureAction.SPELL_CHECK_LEFT;
            case HOLD_FOUR_RIGHT: return GestureAction.SPELL_CHECK_RIGHT;
            case HOLD_FOUR_DOWN: return GestureAction.SPELL_CHECK_NEXT;
            case HOLD_FOUR_UP: return GestureAction.SPELL_CHECK_PREV;
            default: return GestureAction.NONE;
        }
    }
}
