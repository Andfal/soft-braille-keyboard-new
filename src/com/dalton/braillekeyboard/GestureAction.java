package com.dalton.braillekeyboard;

import android.content.Context;

/**
 * Defines all possible actions that can be assigned to a gesture.
 */
public enum GestureAction {
    NONE(R.string.action_none),
    
    // Navigation
    MOVE_LEFT_CHARACTER(R.string.action_move_left_character),
    MOVE_RIGHT_CHARACTER(R.string.action_move_right_character),
    MOVE_LEFT_WORD(R.string.action_move_left_word),
    MOVE_RIGHT_WORD(R.string.action_move_right_word),
    MOVE_LEFT_LINE(R.string.action_move_left_line),
    MOVE_RIGHT_LINE(R.string.action_move_right_line),
    MOVE_TO_BEGINNING(R.string.action_move_to_beginning),
    MOVE_TO_END(R.string.action_move_to_end),
    
    // Deletion
    DELETE_CHARACTER(R.string.action_delete_character),
    DELETE_WORD(R.string.action_delete_word),
    DELETE_LINE(R.string.action_delete_line),
    DELETE_ALL(R.string.action_delete_all),
    
    // Editing
    COPY(R.string.action_copy),
    CUT(R.string.action_cut),
    PASTE(R.string.action_paste),
    SELECT_ALL(R.string.action_select_all),
    TOGGLE_MARK(R.string.action_toggle_mark),
    NEXT_EDIT_ACTION(R.string.action_next_edit_action),
    PERFORM_EDIT_ACTION(R.string.action_perform_edit_action),
    
    // Input & Language
    SPACE(R.string.action_space),
    NEWLINE(R.string.action_newline),
    SWITCH_TABLE(R.string.action_switch_table),
    SWITCH_BRAILLE_TYPE(R.string.action_switch_braille_type),
    TOGGLE_EMOJI_MODE(R.string.action_toggle_emoji_mode),
    VOICE_INPUT(R.string.action_voice_input),
    
    // Settings & Feedback
    CYCLE_FEEDBACK_MODE(R.string.action_cycle_feedback_mode),
    CYCLE_ECHO_MODE(R.string.action_cycle_echo_mode),
    TOGGLE_PRIVACY_MODE(R.string.action_toggle_privacy_mode),
    TOGGLE_AUTOCAPS(R.string.action_toggle_autocaps),
    OPEN_SETTINGS(R.string.action_open_settings),
    INPUT_METHOD_PICKER(R.string.action_input_method_picker),
    CLOSE_KEYBOARD(R.string.action_close_keyboard),
    
    // Utility
    WORD_COUNT(R.string.action_word_count),
    SPELL_CHECK_LEFT(R.string.action_spell_check_left),
    SPELL_CHECK_RIGHT(R.string.action_spell_check_right),
    SPELL_CHECK_NEXT(R.string.action_spell_check_next),
    SPELL_CHECK_PREV(R.string.action_spell_check_prev),
    READ_CHARACTER(R.string.action_read_character),
    READ_WORD(R.string.action_read_word),
    READ_LINE(R.string.action_read_line),
    READ_ALL(R.string.action_read_all),
    TOGGLE_ECHO_PASSWORDS(R.string.action_toggle_echo_passwords),
    KEYBOARD_SHRINK(R.string.action_keyboard_shrink);

    public final int nameResId;

    GestureAction(int nameResId) {
        this.nameResId = nameResId;
    }

    public String getName(Context context) {
        return context.getString(nameResId);
    }
}
