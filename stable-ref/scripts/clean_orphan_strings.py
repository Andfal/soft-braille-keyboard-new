import os
import re

# List of keys to remove based on build warnings
keys_to_remove = [
    "action_close_keyboard", "action_copy", "action_cut", "action_cycle_echo_mode",
    "action_cycle_feedback_mode", "action_delete_all", "action_delete_character",
    "action_delete_line", "action_delete_word", "action_input_method_picker",
    "action_keyboard_shrink", "action_move_left_character", "action_move_left_line",
    "action_move_left_word", "action_move_right_character", "action_move_right_line",
    "action_move_right_word", "action_move_to_beginning", "action_move_to_end",
    "action_newline", "action_next_edit_action", "action_none", "action_open_settings",
    "action_paste", "action_perform_edit_action", "action_read_all",
    "action_read_character", "action_read_line", "action_read_word",
    "action_select_all", "action_space", "action_spell_check_left",
    "action_spell_check_next", "action_spell_check_prev", "action_spell_check_right",
    "action_switch_braille_type", "action_switch_table", "action_toggle_autocaps",
    "action_toggle_echo_passwords", "action_toggle_emoji_mode", "action_toggle_mark",
    "action_toggle_privacy_mode", "action_voice_input", "action_word_count",
    "gesture_point_1", "gesture_point_2", "gesture_point_3", "gesture_point_4",
    "gesture_point_5", "gesture_point_6", "gesture_special", "gestures_reset_done",
    "hold_prefix", "swipe_prefix", "point_1", "point_2", "point_3", "point_4",
    "point_5", "point_6", "points_1_2", "points_1_4", "points_1_5", "points_4_6",
    "pref_category_gestures_title", "pref_gestures_summary",
    "pref_reset_gestures_summary", "pref_reset_gestures_title",
    "swipe_down", "swipe_left", "swipe_right", "swipe_up", "two_fingers"
]

def clean_strings_file(file_path):
    if not os.path.exists(file_path):
        return
    
    with open(file_path, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    new_lines = []
    removed_count = 0
    for line in lines:
        should_remove = False
        for key in keys_to_remove:
            if f'name="{key}"' in line:
                should_remove = True
                removed_count += 1
                break
        if not should_remove:
            new_lines.append(line)
    
    if removed_count > 0:
        with open(file_path, 'w', encoding='utf-8') as f:
            f.writelines(new_lines)
        print(f"Cleaned {file_path}: removed {removed_count} strings.")

# Find all strings.xml files
for root, dirs, files in os.walk('res'):
    for file in files:
        if file == 'strings.xml' and 'values' in root:
            clean_strings_file(os.path.join(root, file))
