package com.dalton.braillekeyboard;

/**
 * Represents all logical actions the keyboard can perform.
 * This allows decoupling physical gestures (Swipes) from execution logic.
 */
public enum BrailleAction {
    NONE(R.string.action_none),
    
    // Navigation
    MOVE_LEFT_CHAR(R.string.action_move_left_char),
    MOVE_RIGHT_CHAR(R.string.action_move_right_char),
    MOVE_LEFT_WORD(R.string.action_move_left_word),
    MOVE_RIGHT_WORD(R.string.action_move_right_word),
    MOVE_LEFT_LINE(R.string.action_move_left_line),
    MOVE_RIGHT_LINE(R.string.action_move_right_line),
    MOVE_LEFT_ALL(R.string.action_move_left_all),
    MOVE_RIGHT_ALL(R.string.action_move_right_all),
    
    // Deletion
    BACKSPACE_CHAR(R.string.action_backspace_char),
    BACKSPACE_WORD(R.string.action_backspace_word),
    BACKSPACE_LINE(R.string.action_backspace_line),
    BACKSPACE_ALL(R.string.action_backspace_all),
    
    // Reading (TTS)
    READ_CHAR(R.string.action_read_char),
    READ_WORD(R.string.action_read_word),
    READ_LINE(R.string.action_read_line),
    READ_ALL(R.string.action_read_all),
    
    // Insertion
    SPACE(R.string.action_space),
    NEWLINE(R.string.action_newline),
    VOICE_INPUT(R.string.action_voice_input),
    
    // Settings & Toggles
    TOGGLE_PRIVACY(R.string.action_toggle_privacy),
    TOGGLE_AUTO_CAPS(R.string.action_toggle_auto_caps),
    TOGGLE_ECHO_PASSWORDS(R.string.action_toggle_echo_passwords),
    TOGGLE_MARK(R.string.action_toggle_mark),
    TOGGLE_ABBREVIATIONS(R.string.action_toggle_abbreviations),
    TOGGLE_INSTANT_ABBREVIATIONS(R.string.action_toggle_instant_abbreviations),
    CYCLE_KEYBOARD_FEEDBACK(R.string.action_cycle_keyboard_feedback),
    CYCLE_ECHO_FEEDBACK(R.string.action_cycle_echo_feedback),
    SWITCH_BRAILLE_TYPE(R.string.action_switch_braille_type),
    SWITCH_BRAILLE_TABLE(R.string.action_switch_braille_table),
    
    // System
    OPEN_SETTINGS(R.string.action_open_settings),
    OPEN_INPUT_SWITCHER(R.string.action_open_input_switcher),
    CLOSE_KEYBOARD(R.string.action_close_keyboard),
    SHRINK_KEYBOARD(R.string.action_shrink_keyboard),
    
    // Others
    WORD_COUNT(R.string.action_word_count),
    NEXT_FIELD_ACTION(R.string.action_next_field_action),
    SELECT_TEXT_ACTION(R.string.action_select_text_action),
    EMOJI_MODE_TOGGLE(R.string.action_emoji_mode_toggle),
    
    // Edit Actions (Direct access)
    EDIT_SELECT_ALL(R.string.action_edit_select_all),
    EDIT_COPY(R.string.action_edit_copy),
    EDIT_CUT(R.string.action_edit_cut),
    EDIT_PASTE(R.string.action_edit_paste),
    EDIT_SPEAK(R.string.action_edit_speak),
    EDIT_DELETE(R.string.action_edit_delete),
    
    // Spell Check
    SPELL_CHECK_LEFT(R.string.action_spell_check_left),
    SPELL_CHECK_RIGHT(R.string.action_spell_check_right),
    SPELL_CHECK_NEXT_SUGGESTION(R.string.action_spell_check_next_suggestion),
    SPELL_CHECK_PREV_SUGGESTION(R.string.action_spell_check_prev_suggestion),
    TOGGLE_MISSPELLING_SOUND(R.string.action_toggle_misspelling_sound),
    ADD_TO_DICTIONARY(R.string.action_add_to_dictionary),
    REMOVE_FROM_DICTIONARY(R.string.action_remove_from_dictionary),
    
    // Braille Dots (7 and 8)
    TOGGLE_ABBREVIATIONS_NO_SPACE(R.string.action_toggle_abbreviations_no_space),
    SET_DOT_7(R.string.action_set_dot_7),
    SET_DOT_8(R.string.action_set_dot_8);

    public final int resourceId;

    BrailleAction(int resourceId) {
        this.resourceId = resourceId;
    }
}
