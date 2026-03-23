.class public Lcom/androlua/LuaResources;
.super Landroid/content/res/Resources;
.source "SourceFile"

# interfaces
.implements Lcom/luajava/LuaMetaTable;


# static fields
.field private static final action_menu_items:[I

.field private static final execute_command:[I

.field private static final left_menu_items:[I

.field private static final mColorMap:Landroid/util/SparseIntArray;

.field private static final mDrawableMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static mId:I

.field private static mIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mNamesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mStringArraysMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mTextMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final menu_def_items:[I

.field private static final menu_items:[I

.field private static final right_menu_items:[I

.field private static sEnabled:Z

.field public static final stringIds:[I

.field public static final stringNames:[Ljava/lang/String;


# instance fields
.field private final superRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/androlua/LuaResources;->mNamesMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/androlua/LuaResources;->mStringArraysMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/androlua/LuaResources;->mTextMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/androlua/LuaResources;->mDrawableMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/androlua/LuaResources;->mColorMap:Landroid/util/SparseIntArray;

    const/high16 v0, 0x7f050000

    sput v0, Lcom/androlua/LuaResources;->mId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androlua/LuaResources;->mIdMap:Ljava/util/HashMap;

    const/16 v0, 0x6c3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/androlua/LuaResources;->stringIds:[I

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lang"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "menu_title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tts_speed_title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "tts_speed_summary"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "usage_hints_title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "usage_hints_summary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vibrate_title"

    aput-object v2, v0, v1

    const-string v1, "vibrate_summary"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    const-string v3, "use_proixmity_sensor_title"

    aput-object v3, v0, v1

    const-string v1, "use_proixmity_sensor_summary"

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v4, "screen_off_speak_title"

    aput-object v4, v0, v1

    const/16 v1, 0xb

    const-string v4, "screen_off_speak_summary"

    aput-object v4, v0, v1

    const/16 v1, 0xc

    const-string v4, "use_sound_title"

    aput-object v4, v0, v1

    const/16 v1, 0xd

    const-string v4, "use_sound_summary"

    aput-object v4, v0, v1

    const-string v1, "use_list_index_title"

    const/16 v4, 0xe

    aput-object v1, v0, v4

    const-string v1, "use_list_index_summary"

    const/16 v5, 0xf

    aput-object v1, v0, v5

    const/16 v1, 0x10

    const-string v6, "use_node_title"

    aput-object v6, v0, v1

    const/16 v1, 0x11

    const-string v6, "use_node_summary"

    aput-object v6, v0, v1

    const/16 v1, 0x12

    const-string v6, "tts_volume_title"

    aput-object v6, v0, v1

    const/16 v1, 0x13

    const-string v6, "tts_volume_summary"

    aput-object v6, v0, v1

    const/16 v1, 0x14

    const-string v6, "use_key_shortcut_title"

    aput-object v6, v0, v1

    const/16 v1, 0x15

    const-string v6, "use_key_shortcut_summary"

    aput-object v6, v0, v1

    const/16 v1, 0x16

    const-string v6, "tts_speaker_title"

    aput-object v6, v0, v1

    const/16 v1, 0x17

    const-string v6, "tts_speaker_summary"

    aput-object v6, v0, v1

    const/16 v1, 0x18

    const-string v6, "tts_settings_title"

    aput-object v6, v0, v1

    const/16 v1, 0x19

    const-string v6, "feed_setting_title"

    aput-object v6, v0, v1

    const/16 v1, 0x1a

    const-string v6, "content_setting_title"

    aput-object v6, v0, v1

    const/16 v1, 0x1b

    const-string v6, "other_setting"

    aput-object v6, v0, v1

    const-string v1, "tts_system_settings_title"

    const/16 v6, 0x1c

    aput-object v1, v0, v6

    const/16 v1, 0x1d

    const-string v7, "template_stream_volume"

    aput-object v7, v0, v1

    const/16 v1, 0x1e

    const-string v7, "template_stream_volume_set"

    aput-object v7, v0, v1

    const/16 v1, 0x1f

    const-string v7, "value_stream_master"

    aput-object v7, v0, v1

    const/16 v1, 0x20

    const-string v7, "value_stream_voice_call"

    aput-object v7, v0, v1

    const/16 v1, 0x21

    const-string v7, "value_stream_system"

    aput-object v7, v0, v1

    const/16 v1, 0x22

    const-string v7, "value_stream_ring"

    aput-object v7, v0, v1

    const/16 v1, 0x23

    const-string v7, "value_stream_music"

    aput-object v7, v0, v1

    const/16 v1, 0x24

    const-string v7, "value_stream_alarm"

    aput-object v7, v0, v1

    const/16 v1, 0x25

    const-string v7, "value_stream_notification"

    aput-object v7, v0, v1

    const/16 v1, 0x26

    const-string v7, "value_stream_dtmf"

    aput-object v7, v0, v1

    const/16 v1, 0x27

    const-string v7, "value_googletv_screen_saver"

    aput-object v7, v0, v1

    const/16 v1, 0x28

    const-string v7, "template_charging"

    aput-object v7, v0, v1

    const/16 v1, 0x29

    const-string v7, "notification_type_status_started"

    aput-object v7, v0, v1

    const/16 v1, 0x2a

    const-string v7, "notification_type_status_stopped"

    aput-object v7, v0, v1

    const/16 v1, 0x2b

    const-string v7, "acc_settings_title"

    aput-object v7, v0, v1

    const/16 v1, 0x2c

    const-string v7, "qq_group_title"

    aput-object v7, v0, v1

    const/16 v1, 0x2d

    const-string v7, "audio_focus_title"

    aput-object v7, v0, v1

    const/16 v1, 0x2e

    const-string v7, "voice_app_name"

    aput-object v7, v0, v1

    const/16 v1, 0x2f

    const-string v7, "voice_helper_service_description"

    aput-object v7, v0, v1

    const/16 v1, 0x30

    const-string v7, "web_app_name"

    aput-object v7, v0, v1

    const/16 v1, 0x31

    const-string v7, "help_title"

    aput-object v7, v0, v1

    const/16 v1, 0x32

    const-string v7, "use_log_title"

    aput-object v7, v0, v1

    const/16 v1, 0x33

    const-string v7, "notification_speak_title"

    aput-object v7, v0, v1

    const/16 v1, 0x34

    const-string v7, "plugin_title"

    aput-object v7, v0, v1

    const/16 v1, 0x35

    const-string v7, "action_menu_title"

    aput-object v7, v0, v1

    const/16 v1, 0x36

    const-string v7, "clipboard_menu_title"

    aput-object v7, v0, v1

    const/16 v1, 0x37

    const-string v7, "select_menu_title"

    aput-object v7, v0, v1

    const/16 v1, 0x38

    const-string v7, "all_text_title"

    aput-object v7, v0, v1

    const/16 v1, 0x39

    const-string v7, "use_touch_mode_title"

    aput-object v7, v0, v1

    const/16 v1, 0x3a

    const-string v7, "unknown_lable_title"

    aput-object v7, v0, v1

    const/16 v1, 0x3b

    const-string v7, "action_setting_title"

    aput-object v7, v0, v1

    const/16 v1, 0x3c

    const-string v7, "use_single_tap_title"

    aput-object v7, v0, v1

    const/16 v1, 0x3d

    const-string v7, "use_up_tap_title"

    aput-object v7, v0, v1

    const/16 v1, 0x3e

    const-string v7, "sound_volume_title"

    aput-object v7, v0, v1

    const/16 v1, 0x3f

    const-string v7, "notification_bar_speak_title"

    aput-object v7, v0, v1

    const/16 v1, 0x40

    const-string v7, "notification_toast_speak_title"

    aput-object v7, v0, v1

    const/16 v1, 0x41

    const-string v7, "notification_announcement_speak_title"

    aput-object v7, v0, v1

    const/16 v1, 0x42

    const-string v7, "notification_settings_title"

    aput-object v7, v0, v1

    const/16 v1, 0x43

    const-string v7, "help_feed_title"

    aput-object v7, v0, v1

    const/16 v1, 0x44

    const-string v7, "advanced_setting_title"

    aput-object v7, v0, v1

    const/16 v1, 0x45

    const-string v7, "notification_white_list_title"

    aput-object v7, v0, v1

    const/16 v1, 0x46

    const-string v7, "notification_black_list_title"

    aput-object v7, v0, v1

    const/16 v1, 0x47

    const-string v7, "voice_help_title"

    aput-object v7, v0, v1

    const/16 v1, 0x48

    const-string v7, "sound_package_title"

    aput-object v7, v0, v1

    const/16 v1, 0x49

    const-string v7, "value_default"

    aput-object v7, v0, v1

    const/16 v1, 0x4a

    const-string v7, "notification_app_name_speak_title"

    aput-object v7, v0, v1

    const/16 v1, 0x4b

    const-string v7, "use_up_tap_summary"

    aput-object v7, v0, v1

    const/16 v1, 0x4c

    const-string v7, "use_tap_mode_title"

    aput-object v7, v0, v1

    const/16 v1, 0x4d

    const-string v7, "vibrate_intensity_title"

    aput-object v7, v0, v1

    const/16 v1, 0x4e

    const-string v7, "use_progress_title"

    aput-object v7, v0, v1

    const/16 v1, 0x4f

    const-string v7, "use_scroll_list_index_title"

    aput-object v7, v0, v1

    const/16 v1, 0x50

    const-string v7, "use_content_changed_title"

    aput-object v7, v0, v1

    const/16 v1, 0x51

    const-string v7, "use_double_fling_title"

    aput-object v7, v0, v1

    const/16 v1, 0x52

    const-string v7, "use_view_name_title"

    aput-object v7, v0, v1

    const/16 v1, 0x53

    const-string v7, "permissions_settings_title"

    aput-object v7, v0, v1

    const/16 v1, 0x54

    const-string v7, "use_node_info_title"

    aput-object v7, v0, v1

    const/16 v1, 0x55

    const-string v7, "use_content_tree_changed_title"

    aput-object v7, v0, v1

    const/16 v1, 0x56

    const-string v7, "split_menu_title"

    aput-object v7, v0, v1

    const/16 v1, 0x57

    const-string v7, "split_edit_title"

    aput-object v7, v0, v1

    const/16 v1, 0x58

    const-string v7, "edit_title"

    aput-object v7, v0, v1

    const/16 v1, 0x59

    const-string v7, "plugin_manager_title"

    aput-object v7, v0, v1

    const/16 v1, 0x5a

    const-string v7, "sound_manager_title"

    aput-object v7, v0, v1

    const/16 v1, 0x5b

    const-string v7, "clipboard_manager_title"

    aput-object v7, v0, v1

    const/16 v1, 0x5c

    const-string v7, "label_manager_title"

    aput-object v7, v0, v1

    const/16 v1, 0x5d

    const-string v7, "menu_manager_title"

    aput-object v7, v0, v1

    const/16 v1, 0x5e

    const-string v7, "menu_up_tap_title"

    aput-object v7, v0, v1

    const/16 v1, 0x5f

    const-string v7, "navigation_up_tap_title"

    aput-object v7, v0, v1

    const/16 v1, 0x60

    const-string v7, "only_notification_title"

    aput-object v7, v0, v1

    const/16 v1, 0x61

    const-string v7, "send_log_title"

    aput-object v7, v0, v1

    const/16 v1, 0x62

    const-string v7, "long_click_title"

    aput-object v7, v0, v1

    const/16 v1, 0x63

    const-string v7, "long_click_summary"

    aput-object v7, v0, v1

    const/16 v1, 0x64

    const-string v7, "split_select_title"

    aput-object v7, v0, v1

    const/16 v1, 0x65

    const-string v7, "use_up_long_click_title"

    aput-object v7, v0, v1

    const/16 v1, 0x66

    const-string v7, "use_up_long_click_summary"

    aput-object v7, v0, v1

    const/16 v1, 0x67

    const-string v7, "backup_manager_title"

    aput-object v7, v0, v1

    const/16 v1, 0x68

    const-string v7, "user_letter_map_title"

    aput-object v7, v0, v1

    const/16 v1, 0x69

    const-string v7, "tts_use_offline_title"

    aput-object v7, v0, v1

    const/16 v1, 0x6a

    const-string v7, "tts_use_offline_summary"

    aput-object v7, v0, v1

    const/16 v1, 0x6b

    const-string v7, "gesture_package_title"

    aput-object v7, v0, v1

    const/16 v1, 0x6c

    const-string v7, "gesture_manager_title"

    aput-object v7, v0, v1

    const/16 v1, 0x6d

    const-string v7, "long_text_title"

    aput-object v7, v0, v1

    const/16 v1, 0x6e

    const-string v7, "use_ocr_title"

    aput-object v7, v0, v1

    const/16 v1, 0x6f

    const-string v7, "use_ocr_summary"

    aput-object v7, v0, v1

    const/16 v1, 0x70

    const-string v7, "content_blacklist_title"

    aput-object v7, v0, v1

    const/16 v1, 0x71

    const-string v7, "no_phone_permission"

    aput-object v7, v0, v1

    const/16 v1, 0x72

    const-string v7, "message_time_out"

    aput-object v7, v0, v1

    const/16 v1, 0x73

    const-string v7, "message_welcome"

    aput-object v7, v0, v1

    const/16 v1, 0x74

    const-string v7, "message_in_dim_screen"

    aput-object v7, v0, v1

    const/16 v1, 0x75

    const-string v7, "message_out_dim_screen"

    aput-object v7, v0, v1

    const/16 v1, 0x76

    const-string v7, "message_only_android5_last"

    aput-object v7, v0, v1

    const/16 v1, 0x77

    const-string v7, "notification_box"

    aput-object v7, v0, v1

    const/16 v1, 0x78

    const-string v7, "clear"

    aput-object v7, v0, v1

    const/16 v1, 0x79

    const-string v7, "message_disabled_up_tap"

    aput-object v7, v0, v1

    const/16 v1, 0x7a

    const-string v7, "message_enabled_up_tap"

    aput-object v7, v0, v1

    const/16 v1, 0x7b

    const-string v7, "message_no_found_edit_text"

    aput-object v7, v0, v1

    const/16 v1, 0x7c

    const-string v7, "message_voice_feedback_paused"

    aput-object v7, v0, v1

    const/16 v1, 0x7d

    const-string v7, "message_voice_feedback_resume"

    aput-object v7, v0, v1

    const/16 v1, 0x7e

    const-string v7, "message_enable_tap_mode"

    aput-object v7, v0, v1

    const/16 v1, 0x7f

    const-string v7, "message_disabled_tap_mode"

    aput-object v7, v0, v1

    const/16 v1, 0x80

    const-string v7, "directory_gestures"

    aput-object v7, v0, v1

    const/16 v1, 0x81

    const-string v7, "directory_temp"

    aput-object v7, v0, v1

    const/16 v1, 0x82

    const-string v7, "directory_plugins"

    aput-object v7, v0, v1

    const/16 v1, 0x83

    const-string v7, "message_recognition"

    aput-object v7, v0, v1

    const/16 v1, 0x84

    const-string v7, "message_recognition_error"

    aput-object v7, v0, v1

    const/16 v1, 0x85

    const-string v7, "directory_sounds"

    aput-object v7, v0, v1

    const/16 v1, 0x86

    const-string v7, "directory_resources"

    aput-object v7, v0, v1

    const/16 v1, 0x87

    const-string v7, "file_name_letter"

    aput-object v7, v0, v1

    const/16 v1, 0x88

    const-string v7, "file_name_symbol"

    aput-object v7, v0, v1

    const/16 v1, 0x89

    const-string v7, "directory_labels"

    aput-object v7, v0, v1

    const/16 v1, 0x8a

    const-string v7, "directory_backup"

    aput-object v7, v0, v1

    const/16 v1, 0x8b

    const-string v7, "message_load_sound_error"

    aput-object v7, v0, v1

    const/16 v1, 0x8c

    const-string v7, "message_load_done"

    aput-object v7, v0, v1

    const/16 v1, 0x8d

    const-string v7, "tool_title"

    aput-object v7, v0, v1

    const/16 v1, 0x8e

    const-string v7, "directory_tools"

    aput-object v7, v0, v1

    const/16 v1, 0x8f

    const-string v7, "ocr_title"

    aput-object v7, v0, v1

    const/16 v1, 0x90

    const-string v7, "tool_manager_title"

    aput-object v7, v0, v1

    const/16 v1, 0x91

    const-string v7, "message_load_error"

    aput-object v7, v0, v1

    const/16 v1, 0x92

    const-string v7, "manager_activity_title"

    aput-object v7, v0, v1

    const/16 v1, 0x93

    const-string v7, "use_headset_key_title"

    aput-object v7, v0, v1

    const/16 v1, 0x94

    const-string v7, "use_wake_lock_title"

    aput-object v7, v0, v1

    const/16 v1, 0x95

    const-string v7, "user_settings_title"

    aput-object v7, v0, v1

    const/16 v1, 0x96

    const-string v7, "user_name_title"

    aput-object v7, v0, v1

    const/16 v1, 0x97

    const-string v7, "user_id_title"

    aput-object v7, v0, v1

    const/16 v1, 0x98

    const-string v7, "user_key_title"

    aput-object v7, v0, v1

    const/16 v1, 0x99

    const-string v7, "user_validity_title"

    aput-object v7, v0, v1

    const/16 v1, 0x9a

    const-string v7, "user_point_title"

    aput-object v7, v0, v1

    const/16 v1, 0x9b

    const-string v7, "gesture_description_title"

    aput-object v7, v0, v1

    const/16 v1, 0x9c

    const-string v7, "user_invite_title"

    aput-object v7, v0, v1

    const/16 v1, 0x9d

    const-string v7, "login_title"

    aput-object v7, v0, v1

    const/16 v1, 0x9e

    const-string v7, "reg_title"

    aput-object v7, v0, v1

    const/16 v1, 0x9f

    const-string v7, "message_recognition_none"

    aput-object v7, v0, v1

    const/16 v1, 0xa0

    const-string v7, "tts_iflytek_settings_title"

    aput-object v7, v0, v1

    const/16 v1, 0xa1

    const-string v7, "tts_use_fly_title"

    aput-object v7, v0, v1

    const/16 v1, 0xa2

    const-string v7, "tts_pitch_title"

    aput-object v7, v0, v1

    const/16 v1, 0xa3

    const-string v7, "tts_speed_double_title"

    aput-object v7, v0, v1

    const/16 v1, 0xa4

    const-string v7, "tts_unisound_settings_title"

    aput-object v7, v0, v1

    const/16 v1, 0xa5

    const-string v7, "use_wake_lock_summary"

    aput-object v7, v0, v1

    const/16 v1, 0xa6

    const-string v7, "audio_focus_summary"

    aput-object v7, v0, v1

    const/16 v1, 0xa7

    const-string v7, "message_done"

    aput-object v7, v0, v1

    const/16 v1, 0xa8

    const-string v7, "app_gesture_package_title"

    aput-object v7, v0, v1

    const/16 v1, 0xa9

    const-string v7, "app_gesture_package_summary"

    aput-object v7, v0, v1

    const/16 v1, 0xaa

    const-string v7, "char_mode_gesture_title"

    aput-object v7, v0, v1

    const/16 v1, 0xab

    const-string v7, "char_mode_gesture_summary"

    aput-object v7, v0, v1

    const/16 v1, 0xac

    const-string v7, "notification_summary_title"

    aput-object v7, v0, v1

    const-string v1, "use_image_filter_title"

    const/16 v7, 0xad

    aput-object v1, v0, v7

    const/16 v1, 0xae

    const-string v8, "gesture_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0xaf

    const-string v8, "setup_plugin_title"

    aput-object v8, v0, v1

    const/16 v1, 0xb0

    const-string v8, "advanced_menu_title"

    aput-object v8, v0, v1

    const/16 v1, 0xb1

    const-string v8, "quick_menu_title"

    aput-object v8, v0, v1

    const/16 v1, 0xb2

    const-string v8, "check_update_title"

    aput-object v8, v0, v1

    const/16 v1, 0xb3

    const-string v8, "qq_group_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xb4

    const-string v8, "favorites_menu_title"

    aput-object v8, v0, v1

    const/16 v1, 0xb5

    const-string v8, "favorites_manager_title"

    aput-object v8, v0, v1

    const/16 v1, 0xb6

    const-string v8, "use_multi_menu_title"

    aput-object v8, v0, v1

    const/16 v1, 0xb7

    const-string v8, "use_multi_menu_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xb8

    const-string v8, "use_left_right_title"

    aput-object v8, v0, v1

    const/16 v1, 0xb9

    const-string v8, "use_list_item_index_title"

    aput-object v8, v0, v1

    const/16 v1, 0xba

    const-string v8, "use_left_right_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xbb

    const-string v8, "use_old_previous_title"

    aput-object v8, v0, v1

    const/16 v1, 0xbc

    const-string v8, "baidu_tieba_title"

    aput-object v8, v0, v1

    const/16 v1, 0xbd

    const-string v8, "use_single_tts_title"

    aput-object v8, v0, v1

    const/16 v1, 0xbe

    const-string v8, "use_auto_update_title"

    aput-object v8, v0, v1

    const/16 v1, 0xbf

    const-string v8, "use_pager_scroll_title"

    aput-object v8, v0, v1

    const/16 v1, 0xc0

    const-string v8, "use_supper_filter_title"

    aput-object v8, v0, v1

    const/16 v1, 0xc1

    const-string v8, "change_log_title"

    aput-object v8, v0, v1

    const/16 v1, 0xc2

    const-string v8, "use_up_long_quick_menu_title"

    aput-object v8, v0, v1

    const/16 v1, 0xc3

    const-string v8, "use_show_dis_enabled_quick_menu_title"

    aput-object v8, v0, v1

    const/16 v1, 0xc4

    const-string v8, "voice_helper_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0xc5

    const-string v8, "voice_helper_copy_title"

    aput-object v8, v0, v1

    const/16 v1, 0xc6

    const-string v8, "trans_lang_from_title"

    aput-object v8, v0, v1

    const/16 v1, 0xc7

    const-string v8, "use_pager_scroll_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xc8

    const-string v8, "scroll_gesture_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0xc9

    const-string v8, "click_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0xca

    const-string v8, "key_shortcut_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0xcb

    const-string v8, "gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0xcc

    const-string v8, "use_single_tap_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xcd

    const-string v8, "use_old_previous_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xce

    const-string v8, "use_headset_key_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xcf

    const-string v8, "list_view_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0xd0

    const-string v8, "view_label_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0xd1

    const-string v8, "view_changed_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0xd2

    const-string v8, "content_filter_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0xd3

    const-string v8, "hints_list_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0xd4

    const-string v8, "use_node_info_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xd5

    const-string v8, "use_list_item_index_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xd6

    const-string v8, "use_scroll_list_index_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xd7

    const-string v8, "use_view_name_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xd8

    const-string v8, "unknown_lable_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xd9

    const-string v8, "use_progress_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xda

    const-string v8, "use_content_changed_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xdb

    const-string v8, "use_content_tree_changed_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xdc

    const-string v8, "content_blacklist_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xdd

    const-string v8, "use_image_filter_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xde

    const-string v8, "use_supper_filter_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xdf

    const-string v8, "use_edge_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0xe0

    const-string v8, "left_edge_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0xe1

    const-string v8, "right_edge_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0xe2

    const-string v8, "use_edge_gesture_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xe3

    const-string v8, "left_edge_gesture_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xe4

    const-string v8, "right_edge_gesture_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xe5

    const-string v8, "down_volume_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0xe6

    const-string v8, "down_volume_key_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xe7

    const-string v8, "up_volume_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0xe8

    const-string v8, "up_volume_key_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xe9

    const-string v8, "use_speak_call_phone_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xea

    const-string v8, "use_speak_call_phone_title"

    aput-object v8, v0, v1

    const/16 v1, 0xeb

    const-string v8, "use_speak_changed_volume_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xec

    const-string v8, "use_speak_changed_volume_title"

    aput-object v8, v0, v1

    const/16 v1, 0xed

    const-string v8, "vip_qq_group_title"

    aput-object v8, v0, v1

    const/16 v1, 0xee

    const-string v8, "qq_group2_title"

    aput-object v8, v0, v1

    const/16 v1, 0xef

    const-string v8, "right_long_edge_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0xf0

    const-string v8, "left_long_edge_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0xf1

    const-string v8, "left_long_edge_gesture_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xf2

    const-string v8, "right_long_edge_gesture_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xf3

    const-string v8, "use_up_long_quick_menu_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xf4

    const-string v8, "up_volume_short_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0xf5

    const-string v8, "up_volume_short_key_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xf6

    const-string v8, "down_volume_short_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0xf7

    const-string v8, "down_volume_short_key_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xf8

    const-string v8, "use_ringtone_volume_title"

    aput-object v8, v0, v1

    const/16 v1, 0xf9

    const-string v8, "use_ringtone_volume_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xfa

    const-string v8, "up_down_volume_short_key_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xfb

    const-string v8, "up_down_volume_short_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0xfc

    const-string v8, "tts_engine_title"

    aput-object v8, v0, v1

    const/16 v1, 0xfd

    const-string v8, "async_tts_engine_title"

    aput-object v8, v0, v1

    const/16 v1, 0xfe

    const-string v8, "async_tts_engine_summary"

    aput-object v8, v0, v1

    const/16 v1, 0xff

    const-string v8, "tts_engine_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x100

    const-string v8, "timer_manager_title"

    aput-object v8, v0, v1

    const/16 v1, 0x101

    const-string v8, "use_foreground_title"

    aput-object v8, v0, v1

    const/16 v1, 0x102

    const-string v8, "use_foreground_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x103

    const-string v8, "use_speak_qq_changed_title"

    aput-object v8, v0, v1

    const/16 v1, 0x104

    const-string v8, "use_speak_qq_changed_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x105

    const-string v8, "left_button_default_value"

    aput-object v8, v0, v1

    const/16 v1, 0x106

    const-string v8, "right_button_default_value"

    aput-object v8, v0, v1

    const/16 v1, 0x107

    const-string v8, "edge_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x108

    const-string v8, "left_button_title"

    aput-object v8, v0, v1

    const/16 v1, 0x109

    const-string v8, "right_button_title"

    aput-object v8, v0, v1

    const/16 v1, 0x10a

    const-string v8, "use_add_async_tts_title"

    aput-object v8, v0, v1

    const/16 v1, 0x10b

    const-string v8, "use_add_async_tts_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x10c

    const-string v8, "questions_answers_title"

    aput-object v8, v0, v1

    const/16 v1, 0x10d

    const-string v8, "orientation_landscape"

    aput-object v8, v0, v1

    const/16 v1, 0x10e

    const-string v8, "orientation_portrait"

    aput-object v8, v0, v1

    const/16 v1, 0x10f

    const-string v8, "use_alarm_title"

    aput-object v8, v0, v1

    const/16 v1, 0x110

    const-string v8, "use_alarm_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x111

    const-string v8, "alarm_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x112

    const-string v8, "url_menu_title"

    aput-object v8, v0, v1

    const/16 v1, 0x113

    const-string v8, "use_long_click_voice_input_title"

    aput-object v8, v0, v1

    const/16 v1, 0x114

    const-string v8, "voice_input_append_mode_title"

    aput-object v8, v0, v1

    const/16 v1, 0x115

    const-string v8, "general_usage_hints_title"

    aput-object v8, v0, v1

    const/16 v1, 0x116

    const-string v8, "general_speak_list_title"

    aput-object v8, v0, v1

    const/16 v1, 0x117

    const-string v8, "general_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x118

    const-string v8, "use_custom_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x119

    const-string v8, "custom_gesture_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x11a

    const-string v8, "use_foreground_pro_title"

    aput-object v8, v0, v1

    const/16 v1, 0x11b

    const-string v8, "use_foreground_pro_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x11c

    const-string v8, "use_power_save_title"

    aput-object v8, v0, v1

    const/16 v1, 0x11d

    const-string v8, "use_power_save_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x11e

    const-string v8, "power_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x11f

    const-string v8, "action_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x120

    const-string v8, "keep_focus_position_title"

    aput-object v8, v0, v1

    const/16 v1, 0x121

    const-string v8, "download_activity_title"

    aput-object v8, v0, v1

    const/16 v1, 0x122

    const-string v8, "use_number_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x123

    const-string v8, "use_input_method_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x124

    const-string v8, "use_input_method_gesture_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x125

    const-string v8, "use_volume_key_move_text_title"

    aput-object v8, v0, v1

    const/16 v1, 0x126

    const-string v8, "user_text"

    aput-object v8, v0, v1

    const/16 v1, 0x127

    const-string v8, "pass_text"

    aput-object v8, v0, v1

    const/16 v1, 0x128

    const-string v8, "current_text"

    aput-object v8, v0, v1

    const/16 v1, 0x129

    const-string v8, "user_id_text"

    aput-object v8, v0, v1

    const/16 v1, 0x12a

    const-string v8, "screen_on_off_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x12b

    const-string v8, "use_screen_on_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x12c

    const-string v8, "use_screen_off_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x12d

    const-string v8, "use_accessibility_volume_title"

    aput-object v8, v0, v1

    const/16 v1, 0x12e

    const-string v8, "use_accessibility_volume_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x12f

    const-string v8, "value_stream_accessibility"

    aput-object v8, v0, v1

    const/16 v1, 0x130

    const-string v8, "left_right_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x131

    const-string v8, "use_move_list_view_item_title"

    aput-object v8, v0, v1

    const/16 v1, 0x132

    const-string v8, "no_support"

    aput-object v8, v0, v1

    const/16 v1, 0x133

    const-string v8, "use_pinyin_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x134

    const-string v8, "backup_restore_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x135

    const-string v8, "backup_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x136

    const-string v8, "restore_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x137

    const-string v8, "restore_settings_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x138

    const-string v8, "backup_settings_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x139

    const-string v8, "jieshuo_bbs_title"

    aput-object v8, v0, v1

    const/16 v1, 0x13a

    const-string v8, "use_symbol_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x13b

    const-string v8, "use_cloud_label_title"

    aput-object v8, v0, v1

    const/16 v1, 0x13c

    const-string v8, "use_cloud_label_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x13d

    const-string v8, "directory_helper"

    aput-object v8, v0, v1

    const/16 v1, 0x13e

    const-string v8, "helper_manager_title"

    aput-object v8, v0, v1

    const/16 v1, 0x13f

    const-string v8, "alarm_interval_title"

    aput-object v8, v0, v1

    const/16 v1, 0x140

    const-string v8, "use_timer_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x141

    const-string v8, "use_timer_vibrate_title"

    aput-object v8, v0, v1

    const/16 v1, 0x142

    const-string v8, "use_double_edge_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x143

    const-string v8, "use_raw_click_title"

    aput-object v8, v0, v1

    const/16 v1, 0x144

    const-string v8, "has_vip_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x145

    const-string v8, "use_raw_click_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x146

    const-string v8, "vip_qq_kefu_title"

    aput-object v8, v0, v1

    const/16 v1, 0x147

    const-string v8, "vip_qq_kefu_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x148

    const-string v8, "use_speak_changed_window_title"

    aput-object v8, v0, v1

    const/16 v1, 0x149

    const-string v8, "use_timer_sound_title"

    aput-object v8, v0, v1

    const/16 v1, 0x14a

    const-string v8, "timer_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x14b

    const-string v8, "voice_cmd_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x14c

    const-string v8, "directory_cmd"

    aput-object v8, v0, v1

    const/16 v1, 0x14d

    const-string v8, "use_move_list_view_item_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x14e

    const-string v8, "add"

    aput-object v8, v0, v1

    const/16 v1, 0x14f

    const-string v8, "re_def_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x150

    const-string v8, "use_double_fling_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x151

    const-string v8, "voice_helper_use_gestures_title"

    aput-object v8, v0, v1

    const/16 v1, 0x152

    const-string v8, "voice_helper_use_app_gestures_title"

    aput-object v8, v0, v1

    const/16 v1, 0x153

    const-string v8, "voice_helper_use_cmd_title"

    aput-object v8, v0, v1

    const/16 v1, 0x154

    const-string v8, "voice_helper_use_supper_cmd_title"

    aput-object v8, v0, v1

    const/16 v1, 0x155

    const-string v8, "voice_helper_use_plugin_title"

    aput-object v8, v0, v1

    const/16 v1, 0x156

    const-string v8, "voice_helper_use_tool_title"

    aput-object v8, v0, v1

    const/16 v1, 0x157

    const-string v8, "message_has_vip"

    aput-object v8, v0, v1

    const/16 v1, 0x158

    const-string v8, "has_vip_summary2"

    aput-object v8, v0, v1

    const/16 v1, 0x159

    const-string v8, "voice_helper_capability_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x15a

    const-string v8, "use_wake_lock_pro_title"

    aput-object v8, v0, v1

    const/16 v1, 0x15b

    const-string v8, "use_wake_lock_pro_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x15c

    const-string v8, "more_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x15d

    const-string v8, "keyword"

    aput-object v8, v0, v1

    const/16 v1, 0x15e

    const-string v8, "notification_black_list_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x15f

    const-string v8, "notification_white_list_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x160

    const-string v8, "system_tts_volume_title"

    aput-object v8, v0, v1

    const/16 v1, 0x161

    const-string v8, "notification_select_title"

    aput-object v8, v0, v1

    const/16 v1, 0x162

    const-string v8, "message_disable_dim_screen"

    aput-object v8, v0, v1

    const/16 v1, 0x163

    const-string v8, "start_long_copy"

    aput-object v8, v0, v1

    const/16 v1, 0x164

    const-string v8, "runnimg_background"

    aput-object v8, v0, v1

    const/16 v1, 0x165

    const-string v8, "description"

    aput-object v8, v0, v1

    const/16 v1, 0x166

    const-string v8, "gestures_description_not_found"

    aput-object v8, v0, v1

    const/16 v1, 0x167

    const-string v8, "timer_date_format"

    aput-object v8, v0, v1

    const/16 v1, 0x168

    const-string v8, "to_all"

    aput-object v8, v0, v1

    const/16 v1, 0x169

    const-string v8, "try_again"

    aput-object v8, v0, v1

    const/16 v1, 0x16a

    const-string v8, "timer_and_now_time"

    aput-object v8, v0, v1

    const/16 v1, 0x16b

    const-string v8, "edit"

    aput-object v8, v0, v1

    const/16 v1, 0x16c

    const-string v8, "edit_text_not_found"

    aput-object v8, v0, v1

    const/16 v1, 0x16d

    const-string v8, "char_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x16e

    const-string v8, "focus_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x16f

    const-string v8, "auto_next"

    aput-object v8, v0, v1

    const/16 v1, 0x170

    const-string v8, "message_copy"

    aput-object v8, v0, v1

    const/16 v1, 0x171

    const-string v8, "message_append"

    aput-object v8, v0, v1

    const/16 v1, 0x172

    const-string v8, "text_format_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x173

    const-string v8, "use_text_format_first_title"

    aput-object v8, v0, v1

    const/16 v1, 0x174

    const-string v8, "use_text_format_char_number_title"

    aput-object v8, v0, v1

    const/16 v1, 0x175

    const-string v8, "lower_case_format"

    aput-object v8, v0, v1

    const/16 v1, 0x176

    const-string v8, "upper_case_format"

    aput-object v8, v0, v1

    const/16 v1, 0x177

    const-string v8, "lower_case_format_number"

    aput-object v8, v0, v1

    const/16 v1, 0x178

    const-string v8, "upper_case_format_number"

    aput-object v8, v0, v1

    const/16 v1, 0x179

    const-string v8, "lower_case_format2"

    aput-object v8, v0, v1

    const/16 v1, 0x17a

    const-string v8, "upper_case_format2"

    aput-object v8, v0, v1

    const/16 v1, 0x17b

    const-string v8, "upper_case_format3"

    aput-object v8, v0, v1

    const/16 v1, 0x17c

    const-string v8, "lower_case_format_number2"

    aput-object v8, v0, v1

    const/16 v1, 0x17d

    const-string v8, "upper_case_format_number2"

    aput-object v8, v0, v1

    const/16 v1, 0x17e

    const-string v8, "use_slow_speed_title"

    aput-object v8, v0, v1

    const/16 v1, 0x17f

    const-string v8, "has_vip_summary_gesture"

    aput-object v8, v0, v1

    const/16 v1, 0x180

    const-string v8, "message_has_vip_loop_click"

    aput-object v8, v0, v1

    const/16 v1, 0x181

    const-string v8, "command_click"

    aput-object v8, v0, v1

    const/16 v1, 0x182

    const-string v8, "command_long_click"

    aput-object v8, v0, v1

    const/16 v1, 0x183

    const-string v8, "command_unlock"

    aput-object v8, v0, v1

    const/16 v1, 0x184

    const-string v8, "command_start"

    aput-object v8, v0, v1

    const/16 v1, 0x185

    const-string v8, "command_end"

    aput-object v8, v0, v1

    const/16 v1, 0x186

    const-string v8, "command_nothing"

    aput-object v8, v0, v1

    const/16 v1, 0x187

    const-string v8, "command_sleep"

    aput-object v8, v0, v1

    const/16 v1, 0x188

    const-string v8, "command_send_log"

    aput-object v8, v0, v1

    const/16 v1, 0x189

    const-string v8, "command_gesture_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x18a

    const-string v8, "command_voice_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x18b

    const-string v8, "command_action_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x18c

    const-string v8, "command_feedback_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x18d

    const-string v8, "command_content_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x18e

    const-string v8, "command_notification_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x18f

    const-string v8, "command_help_feed_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x190

    const-string v8, "command_left_shortcut"

    aput-object v8, v0, v1

    const/16 v1, 0x191

    const-string v8, "command_right_shortcut"

    aput-object v8, v0, v1

    const/16 v1, 0x192

    const-string v8, "command_long_copy"

    aput-object v8, v0, v1

    const/16 v1, 0x193

    const-string v8, "command_my_location"

    aput-object v8, v0, v1

    const/16 v1, 0x194

    const-string v8, "command_where_i"

    aput-object v8, v0, v1

    const/16 v1, 0x195

    const-string v8, "command_current_location"

    aput-object v8, v0, v1

    const/16 v1, 0x196

    const-string v8, "command_verification"

    aput-object v8, v0, v1

    const/16 v1, 0x197

    const-string v8, "command_verification2"

    aput-object v8, v0, v1

    const/16 v1, 0x198

    const-string v8, "command_verification3"

    aput-object v8, v0, v1

    const/16 v1, 0x199

    const-string v8, "feed_back_disabled"

    aput-object v8, v0, v1

    const/16 v1, 0x19a

    const-string v8, "command_gesture_help"

    aput-object v8, v0, v1

    const/16 v1, 0x19b

    const-string v8, "command_gesture_help2"

    aput-object v8, v0, v1

    const/16 v1, 0x19c

    const-string v8, "command_virtual_screen"

    aput-object v8, v0, v1

    const/16 v1, 0x19d

    const-string v8, "command_play_control"

    aput-object v8, v0, v1

    const/16 v1, 0x19e

    const-string v8, "command_read_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x19f

    const-string v8, "command_verbatim_speak"

    aput-object v8, v0, v1

    const/16 v1, 0x1a0

    const-string v8, "command_verbatim_speak2"

    aput-object v8, v0, v1

    const/16 v1, 0x1a1

    const-string v8, "command_to_previous_focus"

    aput-object v8, v0, v1

    const/16 v1, 0x1a2

    const-string v8, "command_to_next_focus"

    aput-object v8, v0, v1

    const/16 v1, 0x1a3

    const-string v8, "command_to_previous_page"

    aput-object v8, v0, v1

    const/16 v1, 0x1a4

    const-string v8, "command_to_next_page"

    aput-object v8, v0, v1

    const/16 v1, 0x1a5

    const-string v8, "command_to_previous_scroll"

    aput-object v8, v0, v1

    const/16 v1, 0x1a6

    const-string v8, "command_to_next_scroll"

    aput-object v8, v0, v1

    const/16 v1, 0x1a7

    const-string v8, "command_to_previous_progress"

    aput-object v8, v0, v1

    const/16 v1, 0x1a8

    const-string v8, "command_to_next_progress"

    aput-object v8, v0, v1

    const/16 v1, 0x1a9

    const-string v8, "command_lower_volume"

    aput-object v8, v0, v1

    const/16 v1, 0x1aa

    const-string v8, "command_raise_volume"

    aput-object v8, v0, v1

    const/16 v1, 0x1ab

    const-string v8, "command_now_time"

    aput-object v8, v0, v1

    const/16 v1, 0x1ac

    const-string v8, "command_timer_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x1ad

    const-string v8, "command_timer_start"

    aput-object v8, v0, v1

    const/16 v1, 0x1ae

    const-string v8, "command_quick_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x1af

    const-string v8, "command_auto_next"

    aput-object v8, v0, v1

    const/16 v1, 0x1b0

    const-string v8, "command_auto_speak"

    aput-object v8, v0, v1

    const/16 v1, 0x1b1

    const-string v8, "command_copy"

    aput-object v8, v0, v1

    const/16 v1, 0x1b2

    const-string v8, "command_append_copy"

    aput-object v8, v0, v1

    const/16 v1, 0x1b3

    const-string v8, "command_paste"

    aput-object v8, v0, v1

    const/16 v1, 0x1b4

    const-string v8, "raw_swipe_down"

    aput-object v8, v0, v1

    const/16 v1, 0x1b5

    const-string v8, "raw_swipe_up"

    aput-object v8, v0, v1

    const/16 v1, 0x1b6

    const-string v8, "raw_swipe_right"

    aput-object v8, v0, v1

    const/16 v1, 0x1b7

    const-string v8, "raw_swipe_left"

    aput-object v8, v0, v1

    const/16 v1, 0x1b8

    const-string v8, "raw_long_click"

    aput-object v8, v0, v1

    const/16 v1, 0x1b9

    const-string v8, "raw_click"

    aput-object v8, v0, v1

    const/16 v1, 0x1ba

    const-string v8, "click_to_enabled"

    aput-object v8, v0, v1

    const/16 v1, 0x1bb

    const-string v8, "touch_mode_disabled"

    aput-object v8, v0, v1

    const/16 v1, 0x1bc

    const-string v8, "node_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x1bd

    const-string v8, "ignore_battery"

    aput-object v8, v0, v1

    const/16 v1, 0x1be

    const-string v8, "overlay_window"

    aput-object v8, v0, v1

    const/16 v1, 0x1bf

    const-string v8, "opened"

    aput-object v8, v0, v1

    const/16 v1, 0x1c0

    const-string v8, "closed"

    aput-object v8, v0, v1

    const/16 v1, 0x1c1

    const-string v8, "checked"

    aput-object v8, v0, v1

    const/16 v1, 0x1c2

    const-string v8, "unchecked"

    aput-object v8, v0, v1

    const/16 v1, 0x1c3

    const-string v8, "page_from_to"

    aput-object v8, v0, v1

    const/16 v1, 0x1c4

    const-string v8, "done"

    aput-object v8, v0, v1

    const/16 v1, 0x1c5

    const-string v8, "error_try_again"

    aput-object v8, v0, v1

    const/16 v1, 0x1c6

    const-string v8, "swipe_right"

    aput-object v8, v0, v1

    const/16 v1, 0x1c7

    const-string v8, "swipe_left"

    aput-object v8, v0, v1

    const/16 v1, 0x1c8

    const-string v8, "long_clicked"

    aput-object v8, v0, v1

    const/16 v1, 0x1c9

    const-string v8, "notification_from"

    aput-object v8, v0, v1

    const/16 v1, 0x1ca

    const-string v8, "progress"

    aput-object v8, v0, v1

    const/16 v1, 0x1cb

    const-string v8, "item_current_count"

    aput-object v8, v0, v1

    const/16 v1, 0x1cc

    const-string v8, "item_from_to_count"

    aput-object v8, v0, v1

    const/16 v1, 0x1cd

    const-string v8, "point"

    aput-object v8, v0, v1

    const/16 v1, 0x1ce

    const-string v8, "selected"

    aput-object v8, v0, v1

    const/16 v1, 0x1cf

    const-string v8, "disabled"

    aput-object v8, v0, v1

    const/16 v1, 0x1d0

    const-string v8, "progress2"

    aput-object v8, v0, v1

    const/16 v1, 0x1d1

    const-string v8, "view_name_button"

    aput-object v8, v0, v1

    const/16 v1, 0x1d2

    const-string v8, "view_name_edit_text"

    aput-object v8, v0, v1

    const/16 v1, 0x1d3

    const-string v8, "view_name_editing"

    aput-object v8, v0, v1

    const/16 v1, 0x1d4

    const-string v8, "view_name_web_view"

    aput-object v8, v0, v1

    const/16 v1, 0x1d5

    const-string v8, "view_name_list_view"

    aput-object v8, v0, v1

    const/16 v1, 0x1d6

    const-string v8, "view_name_spinner"

    aput-object v8, v0, v1

    const/16 v1, 0x1d7

    const-string v8, "view_name_switch"

    aput-object v8, v0, v1

    const/16 v1, 0x1d8

    const-string v8, "view_name_radio_button"

    aput-object v8, v0, v1

    const/16 v1, 0x1d9

    const-string v8, "view_name_check_box"

    aput-object v8, v0, v1

    const/16 v1, 0x1da

    const-string v8, "view_name_seek_bar"

    aput-object v8, v0, v1

    const/16 v1, 0x1db

    const-string v8, "view_name_progress_bar"

    aput-object v8, v0, v1

    const/16 v1, 0x1dc

    const-string v8, "view_name_rating_bar"

    aput-object v8, v0, v1

    const/16 v1, 0x1dd

    const-string v8, "view_name_image_button"

    aput-object v8, v0, v1

    const/16 v1, 0x1de

    const-string v8, "view_name_image"

    aput-object v8, v0, v1

    const/16 v1, 0x1df

    const-string v8, "message_has_vip_read_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x1e0

    const-string v8, "message_enabled_read_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x1e1

    const-string v8, "message_long_copyed"

    aput-object v8, v0, v1

    const/16 v1, 0x1e2

    const-string v8, "message_read_mode_enabled"

    aput-object v8, v0, v1

    const/16 v1, 0x1e3

    const-string v8, "message_timer_mode_enabled"

    aput-object v8, v0, v1

    const/16 v1, 0x1e4

    const-string v8, "message_clean"

    aput-object v8, v0, v1

    const/16 v1, 0x1e5

    const-string v8, "message_clean_error"

    aput-object v8, v0, v1

    const/16 v1, 0x1e6

    const-string v8, "message_edit_text_not_found"

    aput-object v8, v0, v1

    const/16 v1, 0x1e7

    const-string v8, "rap_action_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x1e8

    const-string v8, "back_rap_action_title"

    aput-object v8, v0, v1

    const/16 v1, 0x1e9

    const-string v8, "back_rap_action_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x1ea

    const-string v8, "shake_action_title"

    aput-object v8, v0, v1

    const/16 v1, 0x1eb

    const-string v8, "shake_action_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x1ec

    const-string v8, "shake_action_sens_title"

    aput-object v8, v0, v1

    const/16 v1, 0x1ed

    const-string v8, "shake_action_call_title"

    aput-object v8, v0, v1

    const/16 v1, 0x1ee

    const-string v8, "message_no_thing"

    aput-object v8, v0, v1

    const/16 v1, 0x1ef

    const-string v8, "double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x1f0

    const-string v8, "command_off_screen"

    aput-object v8, v0, v1

    const/16 v1, 0x1f1

    const-string v8, "command_lock"

    aput-object v8, v0, v1

    const/16 v1, 0x1f2

    const-string v8, "command_accessibility_service_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x1f3

    const-string v8, "command_trans"

    aput-object v8, v0, v1

    const/16 v1, 0x1f4

    const-string v8, "command_disable_dim_screen"

    aput-object v8, v0, v1

    const/16 v1, 0x1f5

    const-string v8, "command_enable_dim_screen"

    aput-object v8, v0, v1

    const/16 v1, 0x1f6

    const-string v8, "command_enable_dim_screen2"

    aput-object v8, v0, v1

    const/16 v1, 0x1f7

    const-string v8, "command_to_recents"

    aput-object v8, v0, v1

    const/16 v1, 0x1f8

    const-string v8, "command_clean"

    aput-object v8, v0, v1

    const/16 v1, 0x1f9

    const-string v8, "command_select"

    aput-object v8, v0, v1

    const/16 v1, 0x1fa

    const-string v8, "command_notification_box"

    aput-object v8, v0, v1

    const/16 v1, 0x1fb

    const-string v8, "command_up_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x1fc

    const-string v8, "command_tap_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x1fd

    const-string v8, "command_node_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x1fe

    const-string v8, "command_to_home"

    aput-object v8, v0, v1

    const/16 v1, 0x1ff

    const-string v8, "command_to_back"

    aput-object v8, v0, v1

    const/16 v1, 0x200

    const-string v8, "command_all_speak"

    aput-object v8, v0, v1

    const/16 v1, 0x201

    const-string v8, "command_long_edit"

    aput-object v8, v0, v1

    const/16 v1, 0x202

    const-string v8, "command_all_speak2"

    aput-object v8, v0, v1

    const/16 v1, 0x203

    const-string v8, "command_all_select"

    aput-object v8, v0, v1

    const/16 v1, 0x204

    const-string v8, "command_voice_helper"

    aput-object v8, v0, v1

    const/16 v1, 0x205

    const-string v8, "command_voice_input"

    aput-object v8, v0, v1

    const/16 v1, 0x206

    const-string v8, "command_ocr"

    aput-object v8, v0, v1

    const/16 v1, 0x207

    const-string v8, "command_ocr_text"

    aput-object v8, v0, v1

    const/16 v1, 0x208

    const-string v8, "camera_title"

    aput-object v8, v0, v1

    const/16 v1, 0x209

    const-string v8, "command_disable_touch"

    aput-object v8, v0, v1

    const/16 v1, 0x20a

    const-string v8, "command_disable_feedback"

    aput-object v8, v0, v1

    const/16 v1, 0x20b

    const-string v8, "command_to_notifications"

    aput-object v8, v0, v1

    const/16 v1, 0x20c

    const-string v8, "command_notifications"

    aput-object v8, v0, v1

    const/16 v1, 0x20d

    const-string v8, "command_battery_level"

    aput-object v8, v0, v1

    const/16 v1, 0x20e

    const-string v8, "command_battery"

    aput-object v8, v0, v1

    const/16 v1, 0x20f

    const-string v8, "command_quick_menu"

    aput-object v8, v0, v1

    const/16 v1, 0x210

    const-string v8, "command_gestures_edit"

    aput-object v8, v0, v1

    const/16 v1, 0x211

    const-string v8, "clipboard"

    aput-object v8, v0, v1

    const/16 v1, 0x212

    const-string v8, "favorites"

    aput-object v8, v0, v1

    const/16 v1, 0x213

    const-string v8, "input_method"

    aput-object v8, v0, v1

    const/16 v1, 0x214

    const-string v8, "main_menu"

    aput-object v8, v0, v1

    const/16 v1, 0x215

    const-string v8, "auto_read"

    aput-object v8, v0, v1

    const/16 v1, 0x216

    const-string v8, "list_mode_title"

    aput-object v8, v0, v1

    const/16 v1, 0x217

    const-string v8, "main_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x218

    const-string v8, "battery_level"

    aput-object v8, v0, v1

    const/16 v1, 0x219

    const-string v8, "double_fling_left_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x21a

    const-string v8, "double_fling_up_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x21b

    const-string v8, "double_fling_right_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x21c

    const-string v8, "double_fling_down_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x21d

    const-string v8, "down_right_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x21e

    const-string v8, "down_left_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x21f

    const-string v8, "use_down_right_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x220

    const-string v8, "use_down_left_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x221

    const-string v8, "right_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x222

    const-string v8, "use_right_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x223

    const-string v8, "left_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x224

    const-string v8, "use_left_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x225

    const-string v8, "up_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x226

    const-string v8, "use_up_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x227

    const-string v8, "down_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x228

    const-string v8, "use_down_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x229

    const-string v8, "up_left_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x22a

    const-string v8, "use_up_left_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x22b

    const-string v8, "up_right_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x22c

    const-string v8, "use_up_right_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x22d

    const-string v8, "right_left_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x22e

    const-string v8, "use_right_left_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x22f

    const-string v8, "left_right_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x230

    const-string v8, "use_left_right_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x231

    const-string v8, "up_down_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x232

    const-string v8, "use_up_down_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x233

    const-string v8, "down_up_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x234

    const-string v8, "use_down_up_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x235

    const-string v8, "left_down_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x236

    const-string v8, "use_left_down_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x237

    const-string v8, "left_up_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x238

    const-string v8, "use_left_up_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x239

    const-string v8, "right_down_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x23a

    const-string v8, "use_right_down_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x23b

    const-string v8, "right_up_double_fling_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x23c

    const-string v8, "use_right_up_double_fling_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x23d

    const-string v8, "command_speak"

    aput-object v8, v0, v1

    const/16 v1, 0x23e

    const-string v8, "command_intput"

    aput-object v8, v0, v1

    const/16 v1, 0x23f

    const-string v8, "app"

    aput-object v8, v0, v1

    const/16 v1, 0x240

    const-string v8, "command_to_previous_section"

    aput-object v8, v0, v1

    const/16 v1, 0x241

    const-string v8, "command_to_next_section"

    aput-object v8, v0, v1

    const/16 v1, 0x242

    const-string v8, "command_to_previous_link"

    aput-object v8, v0, v1

    const/16 v1, 0x243

    const-string v8, "command_to_next_link"

    aput-object v8, v0, v1

    const/16 v1, 0x244

    const-string v8, "command_to_previous_control"

    aput-object v8, v0, v1

    const/16 v1, 0x245

    const-string v8, "command_to_next_control"

    aput-object v8, v0, v1

    const/16 v1, 0x246

    const-string v8, "system_tts_engine_title"

    aput-object v8, v0, v1

    const/16 v1, 0x247

    const-string v8, "cancel"

    aput-object v8, v0, v1

    const/16 v1, 0x248

    const-string v8, "timer_interval_title"

    aput-object v8, v0, v1

    const/16 v1, 0x249

    const-string v8, "gesture_help_title"

    aput-object v8, v0, v1

    const/16 v1, 0x24a

    const-string v8, "show_volume_ui_title"

    aput-object v8, v0, v1

    const/16 v1, 0x24b

    const-string v8, "fingerprint_gesture_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x24c

    const-string v8, "fingerprint_gesture_setting_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x24d

    const-string v8, "use_fingerprint_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x24e

    const-string v8, "command_supper_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x24f

    const-string v8, "command_ocr_focus"

    aput-object v8, v0, v1

    const/16 v1, 0x250

    const-string v8, "navi"

    aput-object v8, v0, v1

    const/16 v1, 0x251

    const-string v8, "unknown_index_title"

    aput-object v8, v0, v1

    const/16 v1, 0x252

    const-string v8, "unknown_index_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x253

    const-string v8, "alarm_start_hour_title"

    aput-object v8, v0, v1

    const/16 v1, 0x254

    const-string v8, "alarm_end_hour_title"

    aput-object v8, v0, v1

    const/16 v1, 0x255

    const-string v8, "command_virtual_navigation"

    aput-object v8, v0, v1

    const/16 v1, 0x256

    const-string v8, "voice_helper_use_click_title"

    aput-object v8, v0, v1

    const/16 v1, 0x257

    const-string v8, "voice_helper_use_app_title"

    aput-object v8, v0, v1

    const/16 v1, 0x258

    const-string v8, "voice_helper_use_app_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x259

    const-string v8, "voice_helper_use_click_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x25a

    const-string v8, "edge_gesture_width_title"

    aput-object v8, v0, v1

    const/16 v1, 0x25b

    const-string v8, "use_double_edge_gesture_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x25c

    const-string v8, "left_edge_gesture_items_title"

    aput-object v8, v0, v1

    const/16 v1, 0x25d

    const-string v8, "right_edge_gesture_items_title"

    aput-object v8, v0, v1

    const/16 v1, 0x25e

    const-string v8, "multi_menu_items_title"

    aput-object v8, v0, v1

    const/16 v1, 0x25f

    const-string v8, "main_menu_items_title"

    aput-object v8, v0, v1

    const/16 v1, 0x260

    const-string v8, "use_edge_gesture_menu_title"

    aput-object v8, v0, v1

    const/16 v1, 0x261

    const-string v8, "use_left_edge_gesture_quick_menu_title"

    aput-object v8, v0, v1

    const/16 v1, 0x262

    const-string v8, "use_small_filter_title"

    aput-object v8, v0, v1

    const/16 v1, 0x263

    const-string v8, "jieshuo_bbs_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x264

    const-string v8, "voice_recognizer_title"

    aput-object v8, v0, v1

    const/16 v1, 0x265

    const-string v8, "use_text_format_char_upper_title"

    aput-object v8, v0, v1

    const/16 v1, 0x266

    const-string v8, "voice_helper_media_mute_mode_title"

    aput-object v8, v0, v1

    const/16 v1, 0x267

    const-string v8, "trans_lang_to_title"

    aput-object v8, v0, v1

    const/16 v1, 0x268

    const-string v8, "recognizer_lang_title"

    aput-object v8, v0, v1

    const/16 v1, 0x269

    const-string v8, "float_menu_items_title"

    aput-object v8, v0, v1

    const/16 v1, 0x26a

    const-string v8, "use_float_menu_title"

    aput-object v8, v0, v1

    const/16 v1, 0x26b

    const-string v8, "tts_scale_title"

    aput-object v8, v0, v1

    const/16 v1, 0x26c

    const-string v8, "auto_previous"

    aput-object v8, v0, v1

    const/16 v1, 0x26d

    const-string v8, "code_help_title"

    aput-object v8, v0, v1

    const/16 v1, 0x26e

    const-string v8, "sign_up"

    aput-object v8, v0, v1

    const/16 v1, 0x26f

    const-string v8, "login"

    aput-object v8, v0, v1

    const/16 v1, 0x270

    const-string v8, "back"

    aput-object v8, v0, v1

    const/16 v1, 0x271

    const-string v8, "error"

    aput-object v8, v0, v1

    const/16 v1, 0x272

    const-string v8, "login_done"

    aput-object v8, v0, v1

    const/16 v1, 0x273

    const-string v8, "sign_done"

    aput-object v8, v0, v1

    const/16 v1, 0x274

    const-string v8, "directory_timer"

    aput-object v8, v0, v1

    const/16 v1, 0x275

    const-string v8, "timer_tags_items_title"

    aput-object v8, v0, v1

    const/16 v1, 0x276

    const-string v8, "value_none"

    aput-object v8, v0, v1

    const/16 v1, 0x277

    const-string v8, "msg_deleted"

    aput-object v8, v0, v1

    const/16 v1, 0x278

    const-string v8, "tts_echo_voice_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x279

    const-string v8, "screen_off"

    aput-object v8, v0, v1

    const/16 v1, 0x27a

    const-string v8, "edit_box_no_found"

    aput-object v8, v0, v1

    const/16 v1, 0x27b

    const-string v8, "msg_speak_content"

    aput-object v8, v0, v1

    const/16 v1, 0x27c

    const-string v8, "msg_bye"

    aput-object v8, v0, v1

    const/16 v1, 0x27d

    const-string v8, "date_format"

    aput-object v8, v0, v1

    const/16 v1, 0x27e

    const-string v8, "date_format0"

    aput-object v8, v0, v1

    const/16 v1, 0x27f

    const-string v8, "more"

    aput-object v8, v0, v1

    const/16 v1, 0x280

    const-string v8, "add_label"

    aput-object v8, v0, v1

    const/16 v1, 0x281

    const-string v8, "grid_item_current"

    aput-object v8, v0, v1

    const/16 v1, 0x282

    const-string v8, "node_info_root"

    aput-object v8, v0, v1

    const/16 v1, 0x283

    const-string v8, "node_info"

    aput-object v8, v0, v1

    const/16 v1, 0x284

    const-string v8, "node_info_none"

    aput-object v8, v0, v1

    const/16 v1, 0x285

    const-string v8, "rating_current_count"

    aput-object v8, v0, v1

    const/16 v1, 0x286

    const-string v8, "date_format_sec"

    aput-object v8, v0, v1

    const/16 v1, 0x287

    const-string v8, "date_format_min_sec"

    aput-object v8, v0, v1

    const/16 v1, 0x288

    const-string v8, "date_format_hour_min"

    aput-object v8, v0, v1

    const/16 v1, 0x289

    const-string v8, "hint_move"

    aput-object v8, v0, v1

    const/16 v1, 0x28a

    const-string v8, "hint_edit"

    aput-object v8, v0, v1

    const/16 v1, 0x28b

    const-string v8, "hint_change_seek"

    aput-object v8, v0, v1

    const/16 v1, 0x28c

    const-string v8, "hint_change_rating"

    aput-object v8, v0, v1

    const/16 v1, 0x28d

    const-string v8, "hint_checked"

    aput-object v8, v0, v1

    const/16 v1, 0x28e

    const-string v8, "hint_uncheck"

    aput-object v8, v0, v1

    const/16 v1, 0x28f

    const-string v8, "hint_closed"

    aput-object v8, v0, v1

    const/16 v1, 0x290

    const-string v8, "hint_opened"

    aput-object v8, v0, v1

    const/16 v1, 0x291

    const-string v8, "hint_changed"

    aput-object v8, v0, v1

    const/16 v1, 0x292

    const-string v8, "hint_double_click"

    aput-object v8, v0, v1

    const/16 v1, 0x293

    const-string v8, "hint_activated"

    aput-object v8, v0, v1

    const/16 v1, 0x294

    const-string v8, "hint_double_click_activated"

    aput-object v8, v0, v1

    const/16 v1, 0x295

    const-string v8, "hint_node_move"

    aput-object v8, v0, v1

    const/16 v1, 0x296

    const-string v8, "date_formater_min"

    aput-object v8, v0, v1

    const/16 v1, 0x297

    const-string v8, "touch_mode_enabled"

    aput-object v8, v0, v1

    const/16 v1, 0x298

    const-string v8, "custom"

    aput-object v8, v0, v1

    const/16 v1, 0x299

    const-string v8, "create_gesture"

    aput-object v8, v0, v1

    const/16 v1, 0x29a

    const-string v8, "create_app_gesture"

    aput-object v8, v0, v1

    const/16 v1, 0x29b

    const-string v8, "func"

    aput-object v8, v0, v1

    const/16 v1, 0x29c

    const-string v8, "swipe_up_right"

    aput-object v8, v0, v1

    const/16 v1, 0x29d

    const-string v8, "swipe_up_down"

    aput-object v8, v0, v1

    const/16 v1, 0x29e

    const-string v8, "swipe_up_left"

    aput-object v8, v0, v1

    const/16 v1, 0x29f

    const-string v8, "swipe_down"

    aput-object v8, v0, v1

    const/16 v1, 0x2a0

    const-string v8, "swipe_down_right"

    aput-object v8, v0, v1

    const/16 v1, 0x2a1

    const-string v8, "swipe_down_up"

    aput-object v8, v0, v1

    const/16 v1, 0x2a2

    const-string v8, "swipe_down_left"

    aput-object v8, v0, v1

    const/16 v1, 0x2a3

    const-string v8, "swipe_left_up"

    aput-object v8, v0, v1

    const/16 v1, 0x2a4

    const-string v8, "swipe_left_down"

    aput-object v8, v0, v1

    const/16 v1, 0x2a5

    const-string v8, "swipe_left_right"

    aput-object v8, v0, v1

    const/16 v1, 0x2a6

    const-string v8, "swipe_up"

    aput-object v8, v0, v1

    const/16 v1, 0x2a7

    const-string v8, "swipe_right_up"

    aput-object v8, v0, v1

    const/16 v1, 0x2a8

    const-string v8, "swipe_right_down"

    aput-object v8, v0, v1

    const/16 v1, 0x2a9

    const-string v8, "swipe_right_left"

    aput-object v8, v0, v1

    const/16 v1, 0x2aa

    const-string v8, "exit"

    aput-object v8, v0, v1

    const/16 v1, 0x2ab

    const-string v8, "create"

    aput-object v8, v0, v1

    const/16 v1, 0x2ac

    const-string v8, "save"

    aput-object v8, v0, v1

    const/16 v1, 0x2ad

    const-string v8, "saved"

    aput-object v8, v0, v1

    const/16 v1, 0x2ae

    const-string v8, "edit_name"

    aput-object v8, v0, v1

    const/16 v1, 0x2af

    const-string v8, "actions"

    aput-object v8, v0, v1

    const/16 v1, 0x2b0

    const-string v8, "share"

    aput-object v8, v0, v1

    const/16 v1, 0x2b1

    const-string v8, "move_to_up"

    aput-object v8, v0, v1

    const/16 v1, 0x2b2

    const-string v8, "move_to_down"

    aput-object v8, v0, v1

    const/16 v1, 0x2b3

    const-string v8, "delete"

    aput-object v8, v0, v1

    const/16 v1, 0x2b4

    const-string v8, "select"

    aput-object v8, v0, v1

    const/16 v1, 0x2b5

    const-string v8, "rename"

    aput-object v8, v0, v1

    const/16 v1, 0x2b6

    const-string v8, "func_manager"

    aput-object v8, v0, v1

    const/16 v1, 0x2b7

    const-string v8, "func_create"

    aput-object v8, v0, v1

    const/16 v1, 0x2b8

    const-string v8, "waiting"

    aput-object v8, v0, v1

    const/16 v1, 0x2b9

    const-string v8, "gestures_description_default"

    aput-object v8, v0, v1

    const/16 v1, 0x2ba

    const-string v8, "auto_click"

    aput-object v8, v0, v1

    const/16 v1, 0x2bb

    const-string v8, "insert"

    aput-object v8, v0, v1

    const/16 v1, 0x2bc

    const-string v8, "edit_button"

    aput-object v8, v0, v1

    const/16 v1, 0x2bd

    const-string v8, "use_upper_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x2be

    const-string v8, "system_voice_recognizer_title"

    aput-object v8, v0, v1

    const/16 v1, 0x2bf

    const-string v8, "system_voice_recognizer_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x2c0

    const-string v8, "msg_no_found"

    aput-object v8, v0, v1

    const/16 v1, 0x2c1

    const-string v8, "msg_canceled"

    aput-object v8, v0, v1

    const/16 v1, 0x2c2

    const-string v8, "voice_cmd_phone_to"

    aput-object v8, v0, v1

    const/16 v1, 0x2c3

    const-string v8, "voice_cmd_call"

    aput-object v8, v0, v1

    const/16 v1, 0x2c4

    const-string v8, "voice_cmd_send"

    aput-object v8, v0, v1

    const/16 v1, 0x2c5

    const-string v8, "open"

    aput-object v8, v0, v1

    const/16 v1, 0x2c6

    const-string v8, "voice_cmd_uninstall"

    aput-object v8, v0, v1

    const/16 v1, 0x2c7

    const-string v8, "voice_cmd_install"

    aput-object v8, v0, v1

    const/16 v1, 0x2c8

    const-string v8, "voice_cmd_input"

    aput-object v8, v0, v1

    const/16 v1, 0x2c9

    const-string v8, "voice_cmd_search"

    aput-object v8, v0, v1

    const/16 v1, 0x2ca

    const-string v8, "camera_guide"

    aput-object v8, v0, v1

    const/16 v1, 0x2cb

    const-string v8, "camera_tag"

    aput-object v8, v0, v1

    const/16 v1, 0x2cc

    const-string v8, "camera_ocr"

    aput-object v8, v0, v1

    const/16 v1, 0x2cd

    const-string v8, "camera_face"

    aput-object v8, v0, v1

    const/16 v1, 0x2ce

    const-string v8, "camera_animal"

    aput-object v8, v0, v1

    const/16 v1, 0x2cf

    const-string v8, "camera_plant"

    aput-object v8, v0, v1

    const/16 v1, 0x2d0

    const-string v8, "camera_currency"

    aput-object v8, v0, v1

    const/16 v1, 0x2d1

    const-string v8, "camera_ingredient"

    aput-object v8, v0, v1

    const/16 v1, 0x2d2

    const-string v8, "split_char"

    aput-object v8, v0, v1

    const/16 v1, 0x2d3

    const-string v8, "split_all"

    aput-object v8, v0, v1

    const/16 v1, 0x2d4

    const-string v8, "split_sentence"

    aput-object v8, v0, v1

    const/16 v1, 0x2d5

    const-string v8, "split_line"

    aput-object v8, v0, v1

    const/16 v1, 0x2d6

    const-string v8, "split_paragraph"

    aput-object v8, v0, v1

    const/16 v1, 0x2d7

    const-string v8, "auto_click_create"

    aput-object v8, v0, v1

    const/16 v1, 0x2d8

    const-string v8, "msg_text_changed"

    aput-object v8, v0, v1

    const/16 v1, 0x2d9

    const-string v8, "no_save"

    aput-object v8, v0, v1

    const/16 v1, 0x2da

    const-string v8, "use_web_type_move_title"

    aput-object v8, v0, v1

    const/16 v1, 0x2db

    const-string v8, "pref_donate_alipay"

    aput-object v8, v0, v1

    const/16 v1, 0x2dc

    const-string v8, "pref_donate_paypal"

    aput-object v8, v0, v1

    const/16 v1, 0x2dd

    const-string v8, "menu_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x2de

    const-string v8, "directory_download"

    aput-object v8, v0, v1

    const/16 v1, 0x2df

    const-string v8, "msg_has_vip_split_edit"

    aput-object v8, v0, v1

    const/16 v1, 0x2e0

    const-string v8, "media_doc_title"

    aput-object v8, v0, v1

    const/16 v1, 0x2e1

    const-string v8, "downloaded"

    aput-object v8, v0, v1

    const/16 v1, 0x2e2

    const-string v8, "no_login"

    aput-object v8, v0, v1

    const/16 v1, 0x2e3

    const-string v8, "no_vip"

    aput-object v8, v0, v1

    const/16 v1, 0x2e4

    const-string v8, "need_vip"

    aput-object v8, v0, v1

    const/16 v1, 0x2e5

    const-string v8, "check_read_phone_state_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x2e6

    const-string v8, "message_timer_mode_disabled"

    aput-object v8, v0, v1

    const/16 v1, 0x2e7

    const-string v8, "camera_right_up"

    aput-object v8, v0, v1

    const/16 v1, 0x2e8

    const-string v8, "camera_left_up"

    aput-object v8, v0, v1

    const/16 v1, 0x2e9

    const-string v8, "camera_hold_posture"

    aput-object v8, v0, v1

    const/16 v1, 0x2ea

    const-string v8, "camera_hold_posture_have_face"

    aput-object v8, v0, v1

    const/16 v1, 0x2eb

    const-string v8, "camera_lower_left_hand"

    aput-object v8, v0, v1

    const/16 v1, 0x2ec

    const-string v8, "camera_raise_left_hand"

    aput-object v8, v0, v1

    const/16 v1, 0x2ed

    const-string v8, "camera_top_up"

    aput-object v8, v0, v1

    const/16 v1, 0x2ee

    const-string v8, "camera_bottom_up"

    aput-object v8, v0, v1

    const/16 v1, 0x2ef

    const-string v8, "camera_screen_up"

    aput-object v8, v0, v1

    const/16 v1, 0x2f0

    const-string v8, "camera_screen_down"

    aput-object v8, v0, v1

    const/16 v1, 0x2f1

    const-string v8, "camera_move_left"

    aput-object v8, v0, v1

    const/16 v1, 0x2f2

    const-string v8, "camera_move_right"

    aput-object v8, v0, v1

    const/16 v1, 0x2f3

    const-string v8, "camera_move_up"

    aput-object v8, v0, v1

    const/16 v1, 0x2f4

    const-string v8, "camera_move_down"

    aput-object v8, v0, v1

    const/16 v1, 0x2f5

    const-string v8, "camera_top_move_far"

    aput-object v8, v0, v1

    const/16 v1, 0x2f6

    const-string v8, "camera_top_move_near"

    aput-object v8, v0, v1

    const/16 v1, 0x2f7

    const-string v8, "use_text_format_read_word_title"

    aput-object v8, v0, v1

    const/16 v1, 0x2f8

    const-string v8, "restore"

    aput-object v8, v0, v1

    const/16 v1, 0x2f9

    const-string v8, "backup"

    aput-object v8, v0, v1

    const/16 v1, 0x2fa

    const-string v8, "directory_camera"

    aput-object v8, v0, v1

    const/16 v1, 0x2fb

    const-string v8, "game_mode_title"

    aput-object v8, v0, v1

    const/16 v1, 0x2fc

    const-string v8, "game_mode_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x2fd

    const-string v8, "msg_backuped"

    aput-object v8, v0, v1

    const/16 v1, 0x2fe

    const-string v8, "msg_items"

    aput-object v8, v0, v1

    const/16 v1, 0x2ff

    const-string v8, "msg_recognition_results"

    aput-object v8, v0, v1

    const/16 v1, 0x300

    const-string v8, "edit_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x301

    const-string v8, "use_dpad_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0x302

    const-string v8, "ocr_engine_title"

    aput-object v8, v0, v1

    const/16 v1, 0x303

    const-string v8, "manager_title"

    aput-object v8, v0, v1

    const/16 v1, 0x304

    const-string v8, "msg_battery_full"

    aput-object v8, v0, v1

    const/16 v1, 0x305

    const-string v8, "invite_code"

    aput-object v8, v0, v1

    const/16 v1, 0x306

    const-string v8, "msg_supper_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x307

    const-string v8, "msg_enabled_supper_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x308

    const-string v8, "msg_disabled_supper_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x309

    const-string v8, "msg_enabled_supper_mode_error"

    aput-object v8, v0, v1

    const/16 v1, 0x30a

    const-string v8, "msg_disabled_supper_mode_error"

    aput-object v8, v0, v1

    const/16 v1, 0x30b

    const-string v8, "msg_backup_done"

    aput-object v8, v0, v1

    const/16 v1, 0x30c

    const-string v8, "msg_restored"

    aput-object v8, v0, v1

    const/16 v1, 0x30d

    const-string v8, "backup_done"

    aput-object v8, v0, v1

    const/16 v1, 0x30e

    const-string v8, "msg_gestures_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x30f

    const-string v8, "msg_sounds_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x310

    const-string v8, "msg_clipboards_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x311

    const-string v8, "msg_favorites_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x312

    const-string v8, "msg_timers_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x313

    const-string v8, "msg_plugins_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x314

    const-string v8, "msg_tools_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x315

    const-string v8, "msg_labels_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x316

    const-string v8, "msg_backups_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x317

    const-string v8, "msg_cmds_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x318

    const-string v8, "close"

    aput-object v8, v0, v1

    const/16 v1, 0x319

    const-string v8, "multi_click"

    aput-object v8, v0, v1

    const/16 v1, 0x31a

    const-string v8, "command_raw_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x31b

    const-string v8, "msg_enabled_raw_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x31c

    const-string v8, "msg_disabled_raw_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x31d

    const-string v8, "system_tts_scale_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x31e

    const-string v8, "send_email_title"

    aput-object v8, v0, v1

    const/16 v1, 0x31f

    const-string v8, "voice_helper_use_blot_title"

    aput-object v8, v0, v1

    const/16 v1, 0x320

    const-string v8, "message_recognition_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x321

    const-string v8, "voice_helper_exit"

    aput-object v8, v0, v1

    const/16 v1, 0x322

    const-string v8, "voice_input_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x323

    const-string v8, "voice_helper_record_start"

    aput-object v8, v0, v1

    const/16 v1, 0x324

    const-string v8, "voice_helper_record_stop"

    aput-object v8, v0, v1

    const/16 v1, 0x325

    const-string v8, "voice_helper_record_message"

    aput-object v8, v0, v1

    const/16 v1, 0x326

    const-string v8, "voice_helper_record_done"

    aput-object v8, v0, v1

    const/16 v1, 0x327

    const-string v8, "msg_save_error"

    aput-object v8, v0, v1

    const/16 v1, 0x328

    const-string v8, "msg_has_vip_voice_cmd"

    aput-object v8, v0, v1

    const/16 v1, 0x329

    const-string v8, "cmd_create"

    aput-object v8, v0, v1

    const/16 v1, 0x32a

    const-string v8, "cmd_manager"

    aput-object v8, v0, v1

    const/16 v1, 0x32b

    const-string v8, "note_tile"

    aput-object v8, v0, v1

    const/16 v1, 0x32c

    const-string v8, "message_count_out"

    aput-object v8, v0, v1

    const/16 v1, 0x32d

    const-string v8, "cloud_backup_restore_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x32e

    const-string v8, "cloud_backup_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x32f

    const-string v8, "cloud_restore_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x330

    const-string v8, "cloud_backup_clipboard_title"

    aput-object v8, v0, v1

    const/16 v1, 0x331

    const-string v8, "cloud_restore_clipboard_title"

    aput-object v8, v0, v1

    const/16 v1, 0x332

    const-string v8, "cloud_backup_favorites_title"

    aput-object v8, v0, v1

    const/16 v1, 0x333

    const-string v8, "cloud_restore_favorites_title"

    aput-object v8, v0, v1

    const/16 v1, 0x334

    const-string v8, "cloud_backup_timer_title"

    aput-object v8, v0, v1

    const/16 v1, 0x335

    const-string v8, "cloud_restore_timer_title"

    aput-object v8, v0, v1

    const/16 v1, 0x336

    const-string v8, "cloud_backup_label_title"

    aput-object v8, v0, v1

    const/16 v1, 0x337

    const-string v8, "cloud_restore_label_title"

    aput-object v8, v0, v1

    const/16 v1, 0x338

    const-string v8, "cloud_backup_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x339

    const-string v8, "cloud_restore_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x33a

    const-string v8, "cloud_backup_sound_title"

    aput-object v8, v0, v1

    const/16 v1, 0x33b

    const-string v8, "cloud_restore_sound_title"

    aput-object v8, v0, v1

    const/16 v1, 0x33c

    const-string v8, "cloud_backup_cmd_title"

    aput-object v8, v0, v1

    const/16 v1, 0x33d

    const-string v8, "cloud_restore_cmd_title"

    aput-object v8, v0, v1

    const/16 v1, 0x33e

    const-string v8, "ocr_baidu_secret_title"

    aput-object v8, v0, v1

    const/16 v1, 0x33f

    const-string v8, "ocr_baidu_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0x340

    const-string v8, "ocr_baidu_id_title"

    aput-object v8, v0, v1

    const/16 v1, 0x341

    const-string v8, "ocr_baidu_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x342

    const-string v8, "use_ocr_baidu_title"

    aput-object v8, v0, v1

    const/16 v1, 0x343

    const-string v8, "use_ocr_baidu_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x344

    const-string v8, "use_ocr_baidu_help"

    aput-object v8, v0, v1

    const/16 v1, 0x345

    const-string v8, "ocr_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x346

    const-string v8, "ocr_lang_title"

    aput-object v8, v0, v1

    const/16 v1, 0x347

    const-string v8, "ocr_lang_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x348

    const-string v8, "ocr_baidu_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x349

    const-string v8, "add_from_focus_node"

    aput-object v8, v0, v1

    const/16 v1, 0x34a

    const-string v8, "add_from_virtual_screen"

    aput-object v8, v0, v1

    const/16 v1, 0x34b

    const-string v8, "add_from_virtual_list"

    aput-object v8, v0, v1

    const/16 v1, 0x34c

    const-string v8, "use_ocr_qq_title"

    aput-object v8, v0, v1

    const/16 v1, 0x34d

    const-string v8, "cmd_description"

    aput-object v8, v0, v1

    const/16 v1, 0x34e

    const-string v8, "timer_run_title"

    aput-object v8, v0, v1

    const/16 v1, 0x34f

    const-string v8, "msg_has_vip_timer_run"

    aput-object v8, v0, v1

    const/16 v1, 0x350

    const-string v8, "use_web_view_name_title"

    aput-object v8, v0, v1

    const/16 v1, 0x351

    const-string v8, "use_web_view_name_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x352

    const-string v8, "hour"

    aput-object v8, v0, v1

    const/16 v1, 0x353

    const-string v8, "min"

    aput-object v8, v0, v1

    const/16 v1, 0x354

    const-string v8, "msg_result_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x355

    const-string v8, "msg_calling"

    aput-object v8, v0, v1

    const/16 v1, 0x356

    const-string v8, "msg_sended"

    aput-object v8, v0, v1

    const/16 v1, 0x357

    const-string v8, "msg_add_error_has_lable"

    aput-object v8, v0, v1

    const/16 v1, 0x358

    const-string v8, "msg_label_added"

    aput-object v8, v0, v1

    const/16 v1, 0x359

    const-string v8, "msg_clicked"

    aput-object v8, v0, v1

    const/16 v1, 0x35a

    const-string v8, "msg_search_on_net"

    aput-object v8, v0, v1

    const/16 v1, 0x35b

    const-string v8, "msg_send_not_found"

    aput-object v8, v0, v1

    const/16 v1, 0x35c

    const-string v8, "msg_search_on_store"

    aput-object v8, v0, v1

    const/16 v1, 0x35d

    const-string v8, "msg_lable_add_error"

    aput-object v8, v0, v1

    const/16 v1, 0x35e

    const-string v8, "check_permissions_title"

    aput-object v8, v0, v1

    const/16 v1, 0x35f

    const-string v8, "setup_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x360

    const-string v8, "check_overlay_permissions_title"

    aput-object v8, v0, v1

    const/16 v1, 0x361

    const-string v8, "check_battery_permissions_title"

    aput-object v8, v0, v1

    const/16 v1, 0x362

    const-string v8, "open_application_info_title"

    aput-object v8, v0, v1

    const/16 v1, 0x363

    const-string v8, "open_setup_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x364

    const-string v8, "check_notification_permissions_title"

    aput-object v8, v0, v1

    const/16 v1, 0x365

    const-string v8, "denied_permissions_title"

    aput-object v8, v0, v1

    const/16 v1, 0x366

    const-string v8, "welcome_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x367

    const-string v8, "use_left_right_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x368

    const-string v8, "usage_hints_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x369

    const-string v8, "use_list_index_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x36a

    const-string v8, "notification_speak_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x36b

    const-string v8, "use_single_tts_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x36c

    const-string v8, "use_left_right_ok"

    aput-object v8, v0, v1

    const/16 v1, 0x36d

    const-string v8, "use_left_right_no"

    aput-object v8, v0, v1

    const/16 v1, 0x36e

    const-string v8, "usage_hints_ok"

    aput-object v8, v0, v1

    const/16 v1, 0x36f

    const-string v8, "usage_hints_no"

    aput-object v8, v0, v1

    const/16 v1, 0x370

    const-string v8, "notification_speak_ok"

    aput-object v8, v0, v1

    const/16 v1, 0x371

    const-string v8, "notification_speak_no"

    aput-object v8, v0, v1

    const/16 v1, 0x372

    const-string v8, "use_single_tts_ok"

    aput-object v8, v0, v1

    const/16 v1, 0x373

    const-string v8, "use_single_tts_no"

    aput-object v8, v0, v1

    const/16 v1, 0x374

    const-string v8, "permission_title"

    aput-object v8, v0, v1

    const/16 v1, 0x375

    const-string v8, "permission_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x376

    const-string v8, "check_permissions_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x377

    const-string v8, "next"

    aput-object v8, v0, v1

    const/16 v1, 0x378

    const-string v8, "setup_setting_done"

    aput-object v8, v0, v1

    const/16 v1, 0x379

    const-string v8, "setup_setting_continue"

    aput-object v8, v0, v1

    const/16 v1, 0x37a

    const-string v8, "setup_setting_done_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x37b

    const-string v8, "setup_setting_not_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x37c

    const-string v8, "setup_setting_not_permission_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x37d

    const-string v8, "setup_setting_set_permission_and_exit"

    aput-object v8, v0, v1

    const/16 v1, 0x37e

    const-string v8, "setup_setting_not_notification_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x37f

    const-string v8, "setup_setting_notification_permission_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x380

    const-string v8, "setup_setting_get_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x381

    const-string v8, "setup_setting_has_notification_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x382

    const-string v8, "changed"

    aput-object v8, v0, v1

    const/16 v1, 0x383

    const-string v8, "setup_setting_not_battery_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x384

    const-string v8, "setup_setting_battery_permission_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x385

    const-string v8, "setup_setting_has_battery_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x386

    const-string v8, "setup_setting_not_overlay_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x387

    const-string v8, "setup_setting_overlay_permission_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x388

    const-string v8, "setup_setting_has_overlay_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x389

    const-string v8, "copy_username_and_userid"

    aput-object v8, v0, v1

    const/16 v1, 0x38a

    const-string v8, "username_and_userid_format"

    aput-object v8, v0, v1

    const/16 v1, 0x38b

    const-string v8, "file_name_dict"

    aput-object v8, v0, v1

    const/16 v1, 0x38c

    const-string v8, "refresh"

    aput-object v8, v0, v1

    const/16 v1, 0x38d

    const-string v8, "msg_filter"

    aput-object v8, v0, v1

    const/16 v1, 0x38e

    const-string v8, "use_custom_symbol_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x38f

    const-string v8, "custom_symbol_title"

    aput-object v8, v0, v1

    const/16 v1, 0x390

    const-string v8, "use_custom_dict_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x391

    const-string v8, "custom_dict_title"

    aput-object v8, v0, v1

    const/16 v1, 0x392

    const-string v8, "msg_has_vip_dict"

    aput-object v8, v0, v1

    const/16 v1, 0x393

    const-string v8, "undo"

    aput-object v8, v0, v1

    const/16 v1, 0x394

    const-string v8, "redo"

    aput-object v8, v0, v1

    const/16 v1, 0x395

    const-string v8, "last_open"

    aput-object v8, v0, v1

    const/16 v1, 0x396

    const-string v8, "create_file"

    aput-object v8, v0, v1

    const/16 v1, 0x397

    const-string v8, "open_project"

    aput-object v8, v0, v1

    const/16 v1, 0x398

    const-string v8, "create_project"

    aput-object v8, v0, v1

    const/16 v1, 0x399

    const-string v8, "format"

    aput-object v8, v0, v1

    const/16 v1, 0x39a

    const-string v8, "fix_import"

    aput-object v8, v0, v1

    const/16 v1, 0x39b

    const-string v8, "run"

    aput-object v8, v0, v1

    const/16 v1, 0x39c

    const-string v8, "use_emoji_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x39d

    const-string v8, "install_shortcut"

    aput-object v8, v0, v1

    const/16 v1, 0x39e

    const-string v8, "msg_select_end"

    aput-object v8, v0, v1

    const/16 v1, 0x39f

    const-string v8, "msg_select_start"

    aput-object v8, v0, v1

    const/16 v1, 0x3a0

    const-string v8, "msg_plugin_run_error"

    aput-object v8, v0, v1

    const/16 v1, 0x3a1

    const-string v8, "input_file_name"

    aput-object v8, v0, v1

    const/16 v1, 0x3a2

    const-string v8, "input_project_name"

    aput-object v8, v0, v1

    const/16 v1, 0x3a3

    const-string v8, "use_loop_move_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3a4

    const-string v8, "message_cut"

    aput-object v8, v0, v1

    const/16 v1, 0x3a5

    const-string v8, "choice_mode_multiple"

    aput-object v8, v0, v1

    const/16 v1, 0x3a6

    const-string v8, "add_from_grid"

    aput-object v8, v0, v1

    const/16 v1, 0x3a7

    const-string v8, "sound_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3a8

    const-string v8, "sound_focus1"

    aput-object v8, v0, v1

    const/16 v1, 0x3a9

    const-string v8, "sound_focus2"

    aput-object v8, v0, v1

    const/16 v1, 0x3aa

    const-string v8, "sound_focus3"

    aput-object v8, v0, v1

    const/16 v1, 0x3ab

    const-string v8, "sound_focus4"

    aput-object v8, v0, v1

    const/16 v1, 0x3ac

    const-string v8, "sound_click"

    aput-object v8, v0, v1

    const/16 v1, 0x3ad

    const-string v8, "sound_long_click"

    aput-object v8, v0, v1

    const/16 v1, 0x3ae

    const-string v8, "sound_focus0"

    aput-object v8, v0, v1

    const/16 v1, 0x3af

    const-string v8, "sound_scroll_up"

    aput-object v8, v0, v1

    const/16 v1, 0x3b0

    const-string v8, "sound_scroll_down"

    aput-object v8, v0, v1

    const/16 v1, 0x3b1

    const-string v8, "sound_tick"

    aput-object v8, v0, v1

    const/16 v1, 0x3b2

    const-string v8, "sound_beep"

    aput-object v8, v0, v1

    const/16 v1, 0x3b3

    const-string v8, "sound_clock"

    aput-object v8, v0, v1

    const/16 v1, 0x3b4

    const-string v8, "sound_screen_off"

    aput-object v8, v0, v1

    const/16 v1, 0x3b5

    const-string v8, "sound_screen_on"

    aput-object v8, v0, v1

    const/16 v1, 0x3b6

    const-string v8, "sound_window_state"

    aput-object v8, v0, v1

    const/16 v1, 0x3b7

    const-string v8, "sound_dialog"

    aput-object v8, v0, v1

    const/16 v1, 0x3b8

    const-string v8, "sound_gesture_end"

    aput-object v8, v0, v1

    const/16 v1, 0x3b9

    const-string v8, "recognition_start"

    aput-object v8, v0, v1

    const/16 v1, 0x3ba

    const-string v8, "sound_gesture_start"

    aput-object v8, v0, v1

    const/16 v1, 0x3bb

    const-string v8, "recognition_end"

    aput-object v8, v0, v1

    const/16 v1, 0x3bc

    const-string v8, "recognition_success"

    aput-object v8, v0, v1

    const/16 v1, 0x3bd

    const-string v8, "recognition_error"

    aput-object v8, v0, v1

    const/16 v1, 0x3be

    const-string v8, "recognition_cancel"

    aput-object v8, v0, v1

    const/16 v1, 0x3bf

    const-string v8, "command_quick_settings"

    aput-object v8, v0, v1

    const/16 v1, 0x3c0

    const-string v8, "command_take_screenshot"

    aput-object v8, v0, v1

    const/16 v1, 0x3c1

    const-string v8, "command_off_screen2"

    aput-object v8, v0, v1

    const/16 v1, 0x3c2

    const-string v8, "command_power_dialog"

    aput-object v8, v0, v1

    const/16 v1, 0x3c3

    const-string v8, "use_bottom_menu_edge_gesture_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x3c4

    const-string v8, "use_bottom_menu_edge_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3c5

    const-string v8, "all"

    aput-object v8, v0, v1

    const/16 v1, 0x3c6

    const-string v8, "create_hot_key"

    aput-object v8, v0, v1

    const/16 v1, 0x3c7

    const-string v8, "create_app_hot_key"

    aput-object v8, v0, v1

    const/16 v1, 0x3c8

    const-string v8, "hot_key"

    aput-object v8, v0, v1

    const/16 v1, 0x3c9

    const-string v8, "hot_key_package_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3ca

    const-string v8, "hot_key_description_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3cb

    const-string v8, "hot_key_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3cc

    const-string v8, "custom_hot_key_settings_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3cd

    const-string v8, "app_hot_key_package_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3ce

    const-string v8, "app_hot_key_package_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x3cf

    const-string v8, "directory_hot_key"

    aput-object v8, v0, v1

    const/16 v1, 0x3d0

    const-string v8, "hot_key_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x3d1

    const-string v8, "sound_timer_end"

    aput-object v8, v0, v1

    const/16 v1, 0x3d2

    const-string v8, "sound_timer_start"

    aput-object v8, v0, v1

    const/16 v1, 0x3d3

    const-string v8, "use_scroll_list_content_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3d4

    const-string v8, "use_view_type_move_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3d5

    const-string v8, "use_view_type_move_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x3d6

    const-string v8, "command_raw_double_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x3d7

    const-string v8, "to_previous_granularity_item"

    aput-object v8, v0, v1

    const/16 v1, 0x3d8

    const-string v8, "to_next_granularity_item"

    aput-object v8, v0, v1

    const/16 v1, 0x3d9

    const-string v8, "to_previous_granularity"

    aput-object v8, v0, v1

    const/16 v1, 0x3da

    const-string v8, "to_next_granularity"

    aput-object v8, v0, v1

    const/16 v1, 0x3db

    const-string v8, "select_granularity_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x3dc

    const-string v8, "web_type_move_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3dd

    const-string v8, "view_type_move_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3de

    const-string v8, "notification_in_touch_no_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3df

    const-string v8, "use_keep_type_move_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3e0

    const-string v8, "hot_key_manager_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3e1

    const-string v8, "msg_hot_key_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x3e2

    const-string v8, "cloud_backup_hot_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3e3

    const-string v8, "cloud_restore_hot_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3e4

    const-string v8, "use_multi_touch_mode_title"

    aput-object v8, v0, v1

    const/16 v1, 0x3e5

    const-string v8, "msg_added"

    aput-object v8, v0, v1

    const/16 v1, 0x3e6

    const-string v8, "msg_add_error"

    aput-object v8, v0, v1

    const/16 v1, 0x3e7

    const-string v8, "select_move_type_"

    aput-object v8, v0, v1

    const/16 v1, 0x3e8

    const-string v8, "msg_cancel_select"

    aput-object v8, v0, v1

    const/16 v1, 0x3e9

    const-string v8, "msg_start_select"

    aput-object v8, v0, v1

    const/16 v1, 0x3ea

    const-string v8, "msg_all_copyed"

    aput-object v8, v0, v1

    const/16 v1, 0x3eb

    const-string v8, "scan_all_res"

    aput-object v8, v0, v1

    const/16 v1, 0x3ec

    const-string v8, "scanning"

    aput-object v8, v0, v1

    const/16 v1, 0x3ed

    const-string v8, "scaned"

    aput-object v8, v0, v1

    const/16 v1, 0x3ee

    const-string v8, "import_file"

    aput-object v8, v0, v1

    const/16 v1, 0x3ef

    const-string v8, "overwrite_file"

    aput-object v8, v0, v1

    const/16 v1, 0x3f0

    const-string v8, "gesture_2_single_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x3f1

    const-string v8, "gesture_3_single_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x3f2

    const-string v8, "gesture_4_single_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x3f3

    const-string v8, "gesture_2_double_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x3f4

    const-string v8, "gesture_3_double_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x3f5

    const-string v8, "gesture_4_double_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x3f6

    const-string v8, "gesture_2_triple_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x3f7

    const-string v8, "gesture_3_triple_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x3f8

    const-string v8, "gesture_4_triple_tap"

    aput-object v8, v0, v1

    const/16 v1, 0x3f9

    const-string v8, "gesture_2_double_tap_hold"

    aput-object v8, v0, v1

    const/16 v1, 0x3fa

    const-string v8, "gesture_3_double_tap_hold"

    aput-object v8, v0, v1

    const/16 v1, 0x3fb

    const-string v8, "gesture_4_double_tap_hold"

    aput-object v8, v0, v1

    const/16 v1, 0x3fc

    const-string v8, "gesture_2_swipe_up"

    aput-object v8, v0, v1

    const/16 v1, 0x3fd

    const-string v8, "gesture_3_swipe_up"

    aput-object v8, v0, v1

    const/16 v1, 0x3fe

    const-string v8, "gesture_4_swipe_up"

    aput-object v8, v0, v1

    const/16 v1, 0x3ff

    const-string v8, "gesture_2_swipe_down"

    aput-object v8, v0, v1

    const/16 v1, 0x400

    const-string v8, "gesture_3_swipe_down"

    aput-object v8, v0, v1

    const/16 v1, 0x401

    const-string v8, "gesture_4_swipe_down"

    aput-object v8, v0, v1

    const/16 v1, 0x402

    const-string v8, "gesture_2_swipe_left"

    aput-object v8, v0, v1

    const/16 v1, 0x403

    const-string v8, "gesture_3_swipe_left"

    aput-object v8, v0, v1

    const/16 v1, 0x404

    const-string v8, "gesture_4_swipe_left"

    aput-object v8, v0, v1

    const/16 v1, 0x405

    const-string v8, "gesture_2_swipe_right"

    aput-object v8, v0, v1

    const/16 v1, 0x406

    const-string v8, "gesture_3_swipe_right"

    aput-object v8, v0, v1

    const/16 v1, 0x407

    const-string v8, "gesture_4_swipe_right"

    aput-object v8, v0, v1

    const/16 v1, 0x408

    const-string v8, "msg_gesture_updated"

    aput-object v8, v0, v1

    const/16 v1, 0x409

    const-string v8, "msg_favorite_added"

    aput-object v8, v0, v1

    const/16 v1, 0x40a

    const-string v8, "msg_shared"

    aput-object v8, v0, v1

    const/16 v1, 0x40b

    const-string v8, "msg_share_error"

    aput-object v8, v0, v1

    const/16 v1, 0x40c

    const-string v8, "select_progress"

    aput-object v8, v0, v1

    const/16 v1, 0x40d

    const-string v8, "node_changed_list_manager"

    aput-object v8, v0, v1

    const/16 v1, 0x40e

    const-string v8, "add_node_changed_list"

    aput-object v8, v0, v1

    const/16 v1, 0x40f

    const-string v8, "switch_multi_finger_gestures"

    aput-object v8, v0, v1

    const/16 v1, 0x410

    const-string v8, "msg_node_changed_list_added"

    aput-object v8, v0, v1

    const/16 v1, 0x411

    const-string v8, "msg_node_changed_list_removed"

    aput-object v8, v0, v1

    const/16 v1, 0x412

    const-string v8, "msg_in_game_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x413

    const-string v8, "use_accessibility_volume_fix_title"

    aput-object v8, v0, v1

    const/16 v1, 0x414

    const-string v8, "use_accessibility_volume_fix_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x415

    const-string v8, "msg_exit_game_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x416

    const-string v8, "privacy"

    aput-object v8, v0, v1

    const/16 v1, 0x417

    const-string v8, "version_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x418

    const-string v8, "show_download_title"

    aput-object v8, v0, v1

    const/16 v1, 0x419

    const-string v8, "user_new_password"

    aput-object v8, v0, v1

    const/16 v1, 0x41a

    const-string v8, "repassword_title"

    aput-object v8, v0, v1

    const/16 v1, 0x41b

    const-string v8, "msg_not_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x41c

    const-string v8, "msg_unknown_error"

    aput-object v8, v0, v1

    const/16 v1, 0x41d

    const-string v8, "msg_timer_mode_pause"

    aput-object v8, v0, v1

    const/16 v1, 0x41e

    const-string v8, "msg_timer_mode_resume"

    aput-object v8, v0, v1

    const/16 v1, 0x41f

    const-string v8, "msg_multi_touch_mode_enabled"

    aput-object v8, v0, v1

    const/16 v1, 0x420

    const-string v8, "msg_multi_touch_mode_disenabled"

    aput-object v8, v0, v1

    const/16 v1, 0x421

    const-string v8, "activation_code_text"

    aput-object v8, v0, v1

    const/16 v1, 0x422

    const-string v8, "activate_title"

    aput-object v8, v0, v1

    const/16 v1, 0x423

    const-string v8, "select_app"

    aput-object v8, v0, v1

    const/16 v1, 0x424

    const-string v8, "command_to_split_screen"

    aput-object v8, v0, v1

    const/16 v1, 0x425

    const-string v8, "edit_activity"

    aput-object v8, v0, v1

    const/16 v1, 0x426

    const-string v8, "use_speak_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0x427

    const-string v8, "auto_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x428

    const-string v8, "auto_speak_apps_title"

    aput-object v8, v0, v1

    const/16 v1, 0x429

    const-string v8, "auto_speak_apps_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x42a

    const-string v8, "msg_has_vip_auto_speak"

    aput-object v8, v0, v1

    const/16 v1, 0x42b

    const-string v8, "auto_speak_blacklist_title"

    aput-object v8, v0, v1

    const/16 v1, 0x42c

    const-string v8, "read_mode_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x42d

    const-string v8, "next_chapter_title"

    aput-object v8, v0, v1

    const/16 v1, 0x42e

    const-string v8, "previous_chapter_title"

    aput-object v8, v0, v1

    const/16 v1, 0x42f

    const-string v8, "next_chapter_default_value"

    aput-object v8, v0, v1

    const/16 v1, 0x430

    const-string v8, "previous_chapter_default_value"

    aput-object v8, v0, v1

    const/16 v1, 0x431

    const-string v8, "msg_activated"

    aput-object v8, v0, v1

    const/16 v1, 0x432

    const-string v8, "flash_light"

    aput-object v8, v0, v1

    const/16 v1, 0x433

    const-string v8, "cloud_multi_backup_title"

    aput-object v8, v0, v1

    const/16 v1, 0x434

    const-string v8, "cloud_multi_restore_title"

    aput-object v8, v0, v1

    const/16 v1, 0x435

    const-string v8, "search_engine_title"

    aput-object v8, v0, v1

    const/16 v1, 0x436

    const-string v8, "directory_notes"

    aput-object v8, v0, v1

    const/16 v1, 0x437

    const-string v8, "replace"

    aput-object v8, v0, v1

    const/16 v1, 0x438

    const-string v8, "export_file"

    aput-object v8, v0, v1

    const/16 v1, 0x439

    const-string v8, "replace_to"

    aput-object v8, v0, v1

    const/16 v1, 0x43a

    const-string v8, "replace_regex"

    aput-object v8, v0, v1

    const/16 v1, 0x43b

    const-string v8, "msg_replaced"

    aput-object v8, v0, v1

    const/16 v1, 0x43c

    const-string v8, "use_touch_stop_title"

    aput-object v8, v0, v1

    const/16 v1, 0x43d

    const-string v8, "continuous_recognition"

    aput-object v8, v0, v1

    const/16 v1, 0x43e

    const-string v8, "edit_dict"

    aput-object v8, v0, v1

    const/16 v1, 0x43f

    const-string v8, "up_volume_key_off_title"

    aput-object v8, v0, v1

    const/16 v1, 0x440

    const-string v8, "down_volume_key_off_title"

    aput-object v8, v0, v1

    const/16 v1, 0x441

    const-string v8, "use_loop_move_space_title"

    aput-object v8, v0, v1

    const/16 v1, 0x442

    const-string v8, "use_view_type_move_mode_title"

    aput-object v8, v0, v1

    const/16 v1, 0x443

    const-string v8, "use_view_type_move_mode_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x444

    const-string v8, "app_hot_key_shortcut_title"

    aput-object v8, v0, v1

    const/16 v1, 0x445

    const-string v8, "shared_cloud_label"

    aput-object v8, v0, v1

    const/16 v1, 0x446

    const-string v8, "use_more_node_title"

    aput-object v8, v0, v1

    const/16 v1, 0x447

    const-string v8, "use_more_node_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x448

    const-string v8, "use_multi_hot_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0x449

    const-string v8, "up_volume_2_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0x44a

    const-string v8, "up_volume_3_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0x44b

    const-string v8, "down_volume_2_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0x44c

    const-string v8, "down_volume_3_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0x44d

    const-string v8, "command_to_next_char"

    aput-object v8, v0, v1

    const/16 v1, 0x44e

    const-string v8, "command_to_previous_char"

    aput-object v8, v0, v1

    const/16 v1, 0x44f

    const-string v8, "command_to_next_word"

    aput-object v8, v0, v1

    const/16 v1, 0x450

    const-string v8, "command_to_previous_word"

    aput-object v8, v0, v1

    const/16 v1, 0x451

    const-string v8, "command_to_next_row"

    aput-object v8, v0, v1

    const/16 v1, 0x452

    const-string v8, "command_to_previous_row"

    aput-object v8, v0, v1

    const/16 v1, 0x453

    const-string v8, "command_to_next_paragraph"

    aput-object v8, v0, v1

    const/16 v1, 0x454

    const-string v8, "command_to_previous_paragraph"

    aput-object v8, v0, v1

    const/16 v1, 0x455

    const-string v8, "command_to_head_set_key"

    aput-object v8, v0, v1

    const/16 v1, 0x456

    const-string v8, "msg_selected_from_to"

    aput-object v8, v0, v1

    const/16 v1, 0x457

    const-string v8, "album_activity"

    aput-object v8, v0, v1

    const/16 v1, 0x458

    const-string v8, "command_toggle_tts_engine"

    aput-object v8, v0, v1

    const/16 v1, 0x459

    const-string v8, "command_speak_light"

    aput-object v8, v0, v1

    const/16 v1, 0x45a

    const-string v8, "use_recording_stop_title"

    aput-object v8, v0, v1

    const/16 v1, 0x45b

    const-string v8, "use_speak_call_time_title"

    aput-object v8, v0, v1

    const/16 v1, 0x45c

    const-string v8, "use_speak_call_time_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x45d

    const-string v8, "use_list_item_index_real_time_title"

    aput-object v8, v0, v1

    const/16 v1, 0x45e

    const-string v8, "add_favorites"

    aput-object v8, v0, v1

    const/16 v1, 0x45f

    const-string v8, "save_as_file"

    aput-object v8, v0, v1

    const/16 v1, 0x460

    const-string v8, "save_as_cloud"

    aput-object v8, v0, v1

    const/16 v1, 0x461

    const-string v8, "msg_toggle_tts"

    aput-object v8, v0, v1

    const/16 v1, 0x462

    const-string v8, "curren_char_idx"

    aput-object v8, v0, v1

    const/16 v1, 0x463

    const-string v8, "command_add_content_blacklist"

    aput-object v8, v0, v1

    const/16 v1, 0x464

    const-string v8, "command_media_previous"

    aput-object v8, v0, v1

    const/16 v1, 0x465

    const-string v8, "command_media_next"

    aput-object v8, v0, v1

    const/16 v1, 0x466

    const-string v8, "use_answer_phone_calls_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x467

    const-string v8, "command_previous_window"

    aput-object v8, v0, v1

    const/16 v1, 0x468

    const-string v8, "command_next_window"

    aput-object v8, v0, v1

    const/16 v1, 0x469

    const-string v8, "accessibility_focus_appearance_title"

    aput-object v8, v0, v1

    const/16 v1, 0x46a

    const-string v8, "alpha"

    aput-object v8, v0, v1

    const/16 v1, 0x46b

    const-string v8, "red"

    aput-object v8, v0, v1

    const/16 v1, 0x46c

    const-string v8, "green"

    aput-object v8, v0, v1

    const/16 v1, 0x46d

    const-string v8, "blue"

    aput-object v8, v0, v1

    const/16 v1, 0x46e

    const-string v8, "stroke"

    aput-object v8, v0, v1

    const/16 v1, 0x46f

    const-string v8, "gesture_2_triple_tap_hold"

    aput-object v8, v0, v1

    const/16 v1, 0x470

    const-string v8, "gesture_3_triple_tap_hold"

    aput-object v8, v0, v1

    const/16 v1, 0x471

    const-string v8, "gesture_4_triple_tap_hold"

    aput-object v8, v0, v1

    const/16 v1, 0x472

    const-string v8, "up_long"

    aput-object v8, v0, v1

    const/16 v1, 0x473

    const-string v8, "up_right_long"

    aput-object v8, v0, v1

    const/16 v1, 0x474

    const-string v8, "up_down_long"

    aput-object v8, v0, v1

    const/16 v1, 0x475

    const-string v8, "up_left_long"

    aput-object v8, v0, v1

    const/16 v1, 0x476

    const-string v8, "down_long"

    aput-object v8, v0, v1

    const/16 v1, 0x477

    const-string v8, "down_right_long"

    aput-object v8, v0, v1

    const/16 v1, 0x478

    const-string v8, "down_up_long"

    aput-object v8, v0, v1

    const/16 v1, 0x479

    const-string v8, "down_left_long"

    aput-object v8, v0, v1

    const/16 v1, 0x47a

    const-string v8, "left_long"

    aput-object v8, v0, v1

    const/16 v1, 0x47b

    const-string v8, "left_up_long"

    aput-object v8, v0, v1

    const/16 v1, 0x47c

    const-string v8, "left_down_long"

    aput-object v8, v0, v1

    const/16 v1, 0x47d

    const-string v8, "left_right_long"

    aput-object v8, v0, v1

    const/16 v1, 0x47e

    const-string v8, "right_long"

    aput-object v8, v0, v1

    const/16 v1, 0x47f

    const-string v8, "right_up_long"

    aput-object v8, v0, v1

    const/16 v1, 0x480

    const-string v8, "right_down_long"

    aput-object v8, v0, v1

    const/16 v1, 0x481

    const-string v8, "right_left_long"

    aput-object v8, v0, v1

    const/16 v1, 0x482

    const-string v8, "keep_focus_position_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x483

    const-string v8, "save_as_cmd"

    aput-object v8, v0, v1

    const/16 v1, 0x484

    const-string v8, "execute_cmd"

    aput-object v8, v0, v1

    const/16 v1, 0x485

    const-string v8, "command_show_nodeinfo"

    aput-object v8, v0, v1

    const/16 v1, 0x486

    const-string v8, "copy_as_jieshuo_cmd"

    aput-object v8, v0, v1

    const/16 v1, 0x487

    const-string v8, "copy_text_auto_execute"

    aput-object v8, v0, v1

    const/16 v1, 0x488

    const-string v8, "msg_cmd_copyed"

    aput-object v8, v0, v1

    const/16 v1, 0x489

    const-string v8, "use_custom_dict_regex_title"

    aput-object v8, v0, v1

    const/16 v1, 0x48a

    const-string v8, "profiles_title"

    aput-object v8, v0, v1

    const/16 v1, 0x48b

    const-string v8, "node_details"

    aput-object v8, v0, v1

    const/16 v1, 0x48c

    const-string v8, "msg_has_storage"

    aput-object v8, v0, v1

    const/16 v1, 0x48d

    const-string v8, "msg_open_error"

    aput-object v8, v0, v1

    const/16 v1, 0x48e

    const-string v8, "message_load_gesture_error"

    aput-object v8, v0, v1

    const/16 v1, 0x48f

    const-string v8, "msg_gesture_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x490

    const-string v8, "msg_sound_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x491

    const-string v8, "msg_clipboard_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x492

    const-string v8, "msg_plugin_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x493

    const-string v8, "msg_tool_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x494

    const-string v8, "msg_label_empty"

    aput-object v8, v0, v1

    const/16 v1, 0x495

    const-string v8, "msg_setting_backup_error"

    aput-object v8, v0, v1

    const/16 v1, 0x496

    const-string v8, "msg_setting_backup_done"

    aput-object v8, v0, v1

    const/16 v1, 0x497

    const-string v8, "msg_clipboard_backup_error"

    aput-object v8, v0, v1

    const/16 v1, 0x498

    const-string v8, "msg_clipboard_backup_done"

    aput-object v8, v0, v1

    const/16 v1, 0x499

    const-string v8, "msg_favorite_backup_error"

    aput-object v8, v0, v1

    const/16 v1, 0x49a

    const-string v8, "msg_favorite_backup_done"

    aput-object v8, v0, v1

    const/16 v1, 0x49b

    const-string v8, "msg_timer_backup_error"

    aput-object v8, v0, v1

    const/16 v1, 0x49c

    const-string v8, "msg_timer_backup_done"

    aput-object v8, v0, v1

    const/16 v1, 0x49d

    const-string v8, "msg_label_backup_error"

    aput-object v8, v0, v1

    const/16 v1, 0x49e

    const-string v8, "msg_label_backup_done"

    aput-object v8, v0, v1

    const/16 v1, 0x49f

    const-string v8, "msg_gesture_backup_error"

    aput-object v8, v0, v1

    const/16 v1, 0x4a0

    const-string v8, "msg_gesture_backup_done"

    aput-object v8, v0, v1

    const/16 v1, 0x4a1

    const-string v8, "msg_cmd_backup_error"

    aput-object v8, v0, v1

    const/16 v1, 0x4a2

    const-string v8, "msg_cmd_backup_done"

    aput-object v8, v0, v1

    const/16 v1, 0x4a3

    const-string v8, "msg_hotkey_backup_error"

    aput-object v8, v0, v1

    const/16 v1, 0x4a4

    const-string v8, "msg_hotkey_backup_done"

    aput-object v8, v0, v1

    const/16 v1, 0x4a5

    const-string v8, "msg_restore_setting_error"

    aput-object v8, v0, v1

    const/16 v1, 0x4a6

    const-string v8, "msg_restore_setting_done"

    aput-object v8, v0, v1

    const/16 v1, 0x4a7

    const-string v8, "msg_restore_clipboard_error"

    aput-object v8, v0, v1

    const/16 v1, 0x4a8

    const-string v8, "msg_restore_clipboard_done"

    aput-object v8, v0, v1

    const/16 v1, 0x4a9

    const-string v8, "msg_restore_favorite_error"

    aput-object v8, v0, v1

    const/16 v1, 0x4aa

    const-string v8, "msg_restore_favorite_done"

    aput-object v8, v0, v1

    const/16 v1, 0x4ab

    const-string v8, "msg_restore_timer_error"

    aput-object v8, v0, v1

    const/16 v1, 0x4ac

    const-string v8, "msg_restore_timer_done"

    aput-object v8, v0, v1

    const/16 v1, 0x4ad

    const-string v8, "msg_restore_label_error"

    aput-object v8, v0, v1

    const/16 v1, 0x4ae

    const-string v8, "msg_restore_label_done"

    aput-object v8, v0, v1

    const/16 v1, 0x4af

    const-string v8, "msg_restore_gesture_error"

    aput-object v8, v0, v1

    const/16 v1, 0x4b0

    const-string v8, "msg_restore_gesture_done"

    aput-object v8, v0, v1

    const/16 v1, 0x4b1

    const-string v8, "msg_restore_cmd_error"

    aput-object v8, v0, v1

    const/16 v1, 0x4b2

    const-string v8, "msg_restore_cmd_done"

    aput-object v8, v0, v1

    const/16 v1, 0x4b3

    const-string v8, "msg_restore_hotkey_error"

    aput-object v8, v0, v1

    const/16 v1, 0x4b4

    const-string v8, "msg_restore_hotkey_done"

    aput-object v8, v0, v1

    const/16 v1, 0x4b5

    const-string v8, "profiles_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x4b6

    const-string v8, "msg_open_file_not_supported"

    aput-object v8, v0, v1

    const/16 v1, 0x4b7

    const-string v8, "ocr_clean_keyword_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4b8

    const-string v8, "ocr_clean_keyword_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x4b9

    const-string v8, "command_set_tts_engine"

    aput-object v8, v0, v1

    const/16 v1, 0x4ba

    const-string v8, "download_sound_package_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4bb

    const-string v8, "use_single_tts_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x4bc

    const-string v8, "notification_toast"

    aput-object v8, v0, v1

    const/16 v1, 0x4bd

    const-string v8, "notification"

    aput-object v8, v0, v1

    const/16 v1, 0x4be

    const-string v8, "gesture_3_single_tap_hold"

    aput-object v8, v0, v1

    const/16 v1, 0x4bf

    const-string v8, "alua_help_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4c0

    const-string v8, "lua_help_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4c1

    const-string v8, "command_disable_hotkey"

    aput-object v8, v0, v1

    const/16 v1, 0x4c2

    const-string v8, "fly_pinyin_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4c3

    const-string v8, "use_navigation_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4c4

    const-string v8, "use_navigation_gesture_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x4c5

    const-string v8, "msg_import"

    aput-object v8, v0, v1

    const/16 v1, 0x4c6

    const-string v8, "wallpaper_description"

    aput-object v8, v0, v1

    const/16 v1, 0x4c7

    const-string v8, "wallpaper_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4c8

    const-string v8, "wallpaper_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x4c9

    const-string v8, "nodeinfo_type"

    aput-object v8, v0, v1

    const/16 v1, 0x4ca

    const-string v8, "nodeinfo_text"

    aput-object v8, v0, v1

    const/16 v1, 0x4cb

    const-string v8, "nodeinfo_content_description"

    aput-object v8, v0, v1

    const/16 v1, 0x4cc

    const-string v8, "nodeinfo_state_description"

    aput-object v8, v0, v1

    const/16 v1, 0x4cd

    const-string v8, "nodeinfo_resource_name"

    aput-object v8, v0, v1

    const/16 v1, 0x4ce

    const-string v8, "nodeinfo_indoex"

    aput-object v8, v0, v1

    const/16 v1, 0x4cf

    const-string v8, "nodeinfo_bounds_in_screen"

    aput-object v8, v0, v1

    const/16 v1, 0x4d0

    const-string v8, "nodeinfo_parent"

    aput-object v8, v0, v1

    const/16 v1, 0x4d1

    const-string v8, "nodeinfo_childs"

    aput-object v8, v0, v1

    const/16 v1, 0x4d2

    const-string v8, "nodeinfo_actions"

    aput-object v8, v0, v1

    const/16 v1, 0x4d3

    const-string v8, "nodeinfo_clickable"

    aput-object v8, v0, v1

    const/16 v1, 0x4d4

    const-string v8, "nodeinfo_not_click"

    aput-object v8, v0, v1

    const/16 v1, 0x4d5

    const-string v8, "nodeinfo_checkable"

    aput-object v8, v0, v1

    const/16 v1, 0x4d6

    const-string v8, "nodeinfo_not_check"

    aput-object v8, v0, v1

    const/16 v1, 0x4d7

    const-string v8, "nodeinfo_focusable"

    aput-object v8, v0, v1

    const/16 v1, 0x4d8

    const-string v8, "nodeinfo_not_focus"

    aput-object v8, v0, v1

    const/16 v1, 0x4d9

    const-string v8, "nodeinfo_focused"

    aput-object v8, v0, v1

    const/16 v1, 0x4da

    const-string v8, "nodeinfo_unfocus"

    aput-object v8, v0, v1

    const/16 v1, 0x4db

    const-string v8, "nodeinfo_visible"

    aput-object v8, v0, v1

    const/16 v1, 0x4dc

    const-string v8, "nodeinfo_invisible"

    aput-object v8, v0, v1

    const/16 v1, 0x4dd

    const-string v8, "notification_listener_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4de

    const-string v8, "notification_listener_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x4df

    const-string v8, "use_scroll_list_keep_position_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4e0

    const-string v8, "use_scroll_list_keep_position_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x4e1

    const-string v8, "use_dim_screen_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4e2

    const-string v8, "use_new_web_type_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4e3

    const-string v8, "use_new_web_type_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x4e4

    const-string v8, "split_row_keyword_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4e5

    const-string v8, "split_row_keyword_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x4e6

    const-string v8, "command_false_touch_prevention"

    aput-object v8, v0, v1

    const/16 v1, 0x4e7

    const-string v8, "my"

    aput-object v8, v0, v1

    const/16 v1, 0x4e8

    const-string v8, "backgroud_download"

    aput-object v8, v0, v1

    const/16 v1, 0x4e9

    const-string v8, "cancel_download"

    aput-object v8, v0, v1

    const/16 v1, 0x4ea

    const-string v8, "comment"

    aput-object v8, v0, v1

    const/16 v1, 0x4eb

    const-string v8, "comment_done"

    aput-object v8, v0, v1

    const/16 v1, 0x4ec

    const-string v8, "use_proximity_false_touch_prevention_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4ed

    const-string v8, "use_proximity_false_touch_prevention_only_lock_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4ee

    const-string v8, "enbled_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x4ef

    const-string v8, "enabled_app_gesture"

    aput-object v8, v0, v1

    const/16 v1, 0x4f0

    const-string v8, "enabled_gesture"

    aput-object v8, v0, v1

    const/16 v1, 0x4f1

    const-string v8, "expand"

    aput-object v8, v0, v1

    const/16 v1, 0x4f2

    const-string v8, "fold"

    aput-object v8, v0, v1

    const/16 v1, 0x4f3

    const-string v8, "decoding"

    aput-object v8, v0, v1

    const/16 v1, 0x4f4

    const-string v8, "decode_start"

    aput-object v8, v0, v1

    const/16 v1, 0x4f5

    const-string v8, "hide_dialog"

    aput-object v8, v0, v1

    const/16 v1, 0x4f6

    const-string v8, "back_up"

    aput-object v8, v0, v1

    const/16 v1, 0x4f7

    const-string v8, "make_dir"

    aput-object v8, v0, v1

    const/16 v1, 0x4f8

    const-string v8, "input_dir_name"

    aput-object v8, v0, v1

    const/16 v1, 0x4f9

    const-string v8, "windows_notification"

    aput-object v8, v0, v1

    const/16 v1, 0x4fa

    const-string v8, "add_to_backlist"

    aput-object v8, v0, v1

    const/16 v1, 0x4fb

    const-string v8, "add_to_whitelist"

    aput-object v8, v0, v1

    const/16 v1, 0x4fc

    const-string v8, "edit_keyword"

    aput-object v8, v0, v1

    const/16 v1, 0x4fd

    const-string v8, "only_screen_on"

    aput-object v8, v0, v1

    const/16 v1, 0x4fe

    const-string v8, "only_screen_off"

    aput-object v8, v0, v1

    const/16 v1, 0x4ff

    const-string v8, "screen_on_and_off"

    aput-object v8, v0, v1

    const/16 v1, 0x500

    const-string v8, "offline_ocr"

    aput-object v8, v0, v1

    const/16 v1, 0x501

    const-string v8, "custom_ocr"

    aput-object v8, v0, v1

    const/16 v1, 0x502

    const-string v8, "call_duration"

    aput-object v8, v0, v1

    const/16 v1, 0x503

    const-string v8, "command_speak_time"

    aput-object v8, v0, v1

    const/16 v1, 0x504

    const-string v8, "command_speak_net"

    aput-object v8, v0, v1

    const/16 v1, 0x505

    const-string v8, "msg_disabled_quick_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x506

    const-string v8, "msg_enabled_quick_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x507

    const-string v8, "msg_enabled_hotkey"

    aput-object v8, v0, v1

    const/16 v1, 0x508

    const-string v8, "msg_disabled_hotkey"

    aput-object v8, v0, v1

    const/16 v1, 0x509

    const-string v8, "msg_enabled_false_touch_prevention"

    aput-object v8, v0, v1

    const/16 v1, 0x50a

    const-string v8, "msg_disabled_false_touch_prevention"

    aput-object v8, v0, v1

    const/16 v1, 0x50b

    const-string v8, "light_0"

    aput-object v8, v0, v1

    const/16 v1, 0x50c

    const-string v8, "light_5"

    aput-object v8, v0, v1

    const/16 v1, 0x50d

    const-string v8, "light_10"

    aput-object v8, v0, v1

    const/16 v1, 0x50e

    const-string v8, "light_50"

    aput-object v8, v0, v1

    const/16 v1, 0x50f

    const-string v8, "light_1000"

    aput-object v8, v0, v1

    const/16 v1, 0x510

    const-string v8, "light_10000"

    aput-object v8, v0, v1

    const/16 v1, 0x511

    const-string v8, "ambient_light"

    aput-object v8, v0, v1

    const/16 v1, 0x512

    const-string v8, "msg_load_fail"

    aput-object v8, v0, v1

    const/16 v1, 0x513

    const-string v8, "msg_up"

    aput-object v8, v0, v1

    const/16 v1, 0x514

    const-string v8, "msg_down"

    aput-object v8, v0, v1

    const/16 v1, 0x515

    const-string v8, "msg_enabled_auto_ocr"

    aput-object v8, v0, v1

    const/16 v1, 0x516

    const-string v8, "msg_disabled_auto_ocr"

    aput-object v8, v0, v1

    const/16 v1, 0x517

    const-string v8, "current_selected_text"

    aput-object v8, v0, v1

    const/16 v1, 0x518

    const-string v8, "msg_not_supported"

    aput-object v8, v0, v1

    const/16 v1, 0x519

    const-string v8, "msg_no_result"

    aput-object v8, v0, v1

    const/16 v1, 0x51a

    const-string v8, "fail"

    aput-object v8, v0, v1

    const/16 v1, 0x51b

    const-string v8, "msg_search_in_web"

    aput-object v8, v0, v1

    const/16 v1, 0x51c

    const-string v8, "continue_run"

    aput-object v8, v0, v1

    const/16 v1, 0x51d

    const-string v8, "msg_keyboard_hide"

    aput-object v8, v0, v1

    const/16 v1, 0x51e

    const-string v8, "msg_long_copying"

    aput-object v8, v0, v1

    const/16 v1, 0x51f

    const-string v8, "ringer_mode_vibate"

    aput-object v8, v0, v1

    const/16 v1, 0x520

    const-string v8, "ringer_mode_silent"

    aput-object v8, v0, v1

    const/16 v1, 0x521

    const-string v8, "msg_gesture_has_vip"

    aput-object v8, v0, v1

    const/16 v1, 0x522

    const-string v8, "announcement"

    aput-object v8, v0, v1

    const/16 v1, 0x523

    const-string v8, "command_disable_main_tts"

    aput-object v8, v0, v1

    const/16 v1, 0x524

    const-string v8, "command_disable_async_tts"

    aput-object v8, v0, v1

    const/16 v1, 0x525

    const-string v8, "command_start_log"

    aput-object v8, v0, v1

    const/16 v1, 0x526

    const-string v8, "delete_log_title"

    aput-object v8, v0, v1

    const/16 v1, 0x527

    const-string v8, "use_custom_speak_clear_title"

    aput-object v8, v0, v1

    const/16 v1, 0x528

    const-string v8, "custom_speak_clear_title"

    aput-object v8, v0, v1

    const/16 v1, 0x529

    const-string v8, "speak_clear_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x52a

    const-string v8, "use_custom_speak_symbol_number_title"

    aput-object v8, v0, v1

    const/16 v1, 0x52b

    const-string v8, "custom_speak_symbol_number_title"

    aput-object v8, v0, v1

    const/16 v1, 0x52c

    const-string v8, "use_emoji_speak_clear_title"

    aput-object v8, v0, v1

    const/16 v1, 0x52d

    const-string v8, "content_label_title"

    aput-object v8, v0, v1

    const/16 v1, 0x52e

    const-string v8, "custom_node_name_title"

    aput-object v8, v0, v1

    const/16 v1, 0x52f

    const-string v8, "use_custom_node_name_title"

    aput-object v8, v0, v1

    const/16 v1, 0x530

    const-string v8, "custom_content_title"

    aput-object v8, v0, v1

    const/16 v1, 0x531

    const-string v8, "directory_name"

    aput-object v8, v0, v1

    const/16 v1, 0x532

    const-string v8, "use_emoji_speak_mode_title"

    aput-object v8, v0, v1

    const/16 v1, 0x533

    const-string v8, "use_no_bluetooth_title"

    aput-object v8, v0, v1

    const/16 v1, 0x534

    const-string v8, "custom_speak_clear_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x535

    const-string v8, "input_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x536

    const-string v8, "use_input_method_speak_key_title"

    aput-object v8, v0, v1

    const/16 v1, 0x537

    const-string v8, "use_input_method_speak_candidate_title"

    aput-object v8, v0, v1

    const/16 v1, 0x538

    const-string v8, "use_input_method_speak_commit_title"

    aput-object v8, v0, v1

    const/16 v1, 0x539

    const-string v8, "use_input_method_speak_password_title"

    aput-object v8, v0, v1

    const/16 v1, 0x53a

    const-string v8, "use_input_method_double_tap_title"

    aput-object v8, v0, v1

    const/16 v1, 0x53b

    const-string v8, "split_word"

    aput-object v8, v0, v1

    const/16 v1, 0x53c

    const-string v8, "incall_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x53d

    const-string v8, "speak_call_phone_index_title"

    aput-object v8, v0, v1

    const/16 v1, 0x53e

    const-string v8, "edit_node_name"

    aput-object v8, v0, v1

    const/16 v1, 0x53f

    const-string v8, "edit_node"

    aput-object v8, v0, v1

    const/16 v1, 0x540

    const-string v8, "use_input_method_no_touch_title"

    aput-object v8, v0, v1

    const/16 v1, 0x541

    const-string v8, "use_input_method_speak_commit_space_title"

    aput-object v8, v0, v1

    const/16 v1, 0x542

    const-string v8, "use_screen_on_speak_battery_title"

    aput-object v8, v0, v1

    const/16 v1, 0x543

    const-string v8, "use_screen_on_speak_notification_title"

    aput-object v8, v0, v1

    const/16 v1, 0x544

    const-string v8, "command_virtual_table"

    aput-object v8, v0, v1

    const/16 v1, 0x545

    const-string v8, "command_incall_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x546

    const-string v8, "command_edit_node_name"

    aput-object v8, v0, v1

    const/16 v1, 0x547

    const-string v8, "command_pasue_timer"

    aput-object v8, v0, v1

    const/16 v1, 0x548

    const-string v8, "command_show_input_method_picker"

    aput-object v8, v0, v1

    const/16 v1, 0x549

    const-string v8, "command_raise_scr_volume"

    aput-object v8, v0, v1

    const/16 v1, 0x54a

    const-string v8, "command_lower_scr_volume"

    aput-object v8, v0, v1

    const/16 v1, 0x54b

    const-string v8, "command_speed_to_fast"

    aput-object v8, v0, v1

    const/16 v1, 0x54c

    const-string v8, "command_speed_to_slow"

    aput-object v8, v0, v1

    const/16 v1, 0x54d

    const-string v8, "use_fast_node_title"

    aput-object v8, v0, v1

    const/16 v1, 0x54e

    const-string v8, "use_fast_node_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x54f

    const-string v8, "use_input_method_double_tap_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x550

    const-string v8, "ocr_portrait_mode_title"

    aput-object v8, v0, v1

    const/16 v1, 0x551

    const-string v8, "ocr_landscape_mode_title"

    aput-object v8, v0, v1

    const/16 v1, 0x552

    const-string v8, "command_recognition_caption"

    aput-object v8, v0, v1

    const/16 v1, 0x553

    const-string v8, "command_auto_trans"

    aput-object v8, v0, v1

    const/16 v1, 0x554

    const-string v8, "has_notification_listener"

    aput-object v8, v0, v1

    const/16 v1, 0x555

    const-string v8, "ocr_mode_def"

    aput-object v8, v0, v1

    const/16 v1, 0x556

    const-string v8, "ocr_mode0"

    aput-object v8, v0, v1

    const/16 v1, 0x557

    const-string v8, "ocr_mode1"

    aput-object v8, v0, v1

    const/16 v1, 0x558

    const-string v8, "ocr_mode2"

    aput-object v8, v0, v1

    const/16 v1, 0x559

    const-string v8, "ocr_mode3"

    aput-object v8, v0, v1

    const/16 v1, 0x55a

    const-string v8, "ocr_mode4"

    aput-object v8, v0, v1

    const/16 v1, 0x55b

    const-string v8, "ocr_mode5"

    aput-object v8, v0, v1

    const/16 v1, 0x55c

    const-string v8, "ocr_mode6"

    aput-object v8, v0, v1

    const/16 v1, 0x55d

    const-string v8, "ocr_mode7"

    aput-object v8, v0, v1

    const/16 v1, 0x55e

    const-string v8, "ocr_mode8"

    aput-object v8, v0, v1

    const/16 v1, 0x55f

    const-string v8, "ocr_mode9"

    aput-object v8, v0, v1

    const/16 v1, 0x560

    const-string v8, "ocr_mode10"

    aput-object v8, v0, v1

    const/16 v1, 0x561

    const-string v8, "create_profiles_from_this"

    aput-object v8, v0, v1

    const/16 v1, 0x562

    const-string v8, "all_notification_count"

    aput-object v8, v0, v1

    const/16 v1, 0x563

    const-string v8, "command_speak_all_notification"

    aput-object v8, v0, v1

    const/16 v1, 0x564

    const-string v8, "msg_start_log"

    aput-object v8, v0, v1

    const/16 v1, 0x565

    const-string v8, "msg_loging"

    aput-object v8, v0, v1

    const/16 v1, 0x566

    const-string v8, "emoji_speak_mode0"

    aput-object v8, v0, v1

    const/16 v1, 0x567

    const-string v8, "emoji_speak_mode1"

    aput-object v8, v0, v1

    const/16 v1, 0x568

    const-string v8, "emoji_speak_mode2"

    aput-object v8, v0, v1

    const/16 v1, 0x569

    const-string v8, "use_log_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x56a

    const-string v8, "stat_info"

    aput-object v8, v0, v1

    const/16 v1, 0x56b

    const-string v8, "event_stat_info"

    aput-object v8, v0, v1

    const/16 v1, 0x56c

    const-string v8, "touch_stat_info"

    aput-object v8, v0, v1

    const/16 v1, 0x56d

    const-string v8, "hover_stat_info"

    aput-object v8, v0, v1

    const/16 v1, 0x56e

    const-string v8, "gesture_stat_info"

    aput-object v8, v0, v1

    const/16 v1, 0x56f

    const-string v8, "search_stat_info"

    aput-object v8, v0, v1

    const/16 v1, 0x570

    const-string v8, "zoom_in"

    aput-object v8, v0, v1

    const/16 v1, 0x571

    const-string v8, "zoom_out"

    aput-object v8, v0, v1

    const/16 v1, 0x572

    const-string v8, "msg_timer_no_run"

    aput-object v8, v0, v1

    const/16 v1, 0x573

    const-string v8, "msg_start_auto_trans"

    aput-object v8, v0, v1

    const/16 v1, 0x574

    const-string v8, "msg_stop_auto_trans"

    aput-object v8, v0, v1

    const/16 v1, 0x575

    const-string v8, "msg_auto_trans_has_vip"

    aput-object v8, v0, v1

    const/16 v1, 0x576

    const-string v8, "msg_start_auto_ocr"

    aput-object v8, v0, v1

    const/16 v1, 0x577

    const-string v8, "msg_stop_auto_ocr"

    aput-object v8, v0, v1

    const/16 v1, 0x578

    const-string v8, "start_auto_ocr_title"

    aput-object v8, v0, v1

    const/16 v1, 0x579

    const-string v8, "command_disable_edge_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x57a

    const-string v8, "use_game_mode_no_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x57b

    const-string v8, "use_game_mode_no_edge_title"

    aput-object v8, v0, v1

    const/16 v1, 0x57c

    const-string v8, "game_mode_setting"

    aput-object v8, v0, v1

    const/16 v1, 0x57d

    const-string v8, "timer_items_title"

    aput-object v8, v0, v1

    const/16 v1, 0x57e

    const-string v8, "timer_tags"

    aput-object v8, v0, v1

    const/16 v1, 0x57f

    const-string v8, "command_paste_from_cloud"

    aput-object v8, v0, v1

    const/16 v1, 0x580

    const-string v8, "command_copy_to_cloud"

    aput-object v8, v0, v1

    const/16 v1, 0x581

    const-string v8, "use_timer_stream_type_title"

    aput-object v8, v0, v1

    const/16 v1, 0x582

    const-string v8, "timer_tts_engine_title"

    aput-object v8, v0, v1

    const/16 v1, 0x583

    const-string v8, "command_up_page"

    aput-object v8, v0, v1

    const/16 v1, 0x584

    const-string v8, "command_down_page"

    aput-object v8, v0, v1

    const/16 v1, 0x585

    const-string v8, "command_left_page"

    aput-object v8, v0, v1

    const/16 v1, 0x586

    const-string v8, "command_right_page"

    aput-object v8, v0, v1

    const/16 v1, 0x587

    const-string v8, "vr_camera"

    aput-object v8, v0, v1

    const/16 v1, 0x588

    const-string v8, "language_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x589

    const-string v8, "vr_dialog_title"

    aput-object v8, v0, v1

    const/16 v1, 0x58a

    const-string v8, "vr_dialog_message"

    aput-object v8, v0, v1

    const/16 v1, 0x58b

    const-string v8, "vr_camera_ae"

    aput-object v8, v0, v1

    const/16 v1, 0x58c

    const-string v8, "vr_camera_flash_on"

    aput-object v8, v0, v1

    const/16 v1, 0x58d

    const-string v8, "vr_camera_flash_off"

    aput-object v8, v0, v1

    const/16 v1, 0x58e

    const-string v8, "vr_camera_distance"

    aput-object v8, v0, v1

    const/16 v1, 0x58f

    const-string v8, "vr_camera_light"

    aput-object v8, v0, v1

    const/16 v1, 0x590

    const-string v8, "vr_camera_zoom"

    aput-object v8, v0, v1

    const/16 v1, 0x591

    const-string v8, "use_show_text_title"

    aput-object v8, v0, v1

    const/16 v1, 0x592

    const-string v8, "use_window_title_changed_title"

    aput-object v8, v0, v1

    const/16 v1, 0x593    # 2.0E-42f

    const-string v8, "do_not_prompt_again"

    aput-object v8, v0, v1

    const/16 v1, 0x594

    const-string v8, "use_custom_language_title"

    aput-object v8, v0, v1

    const/16 v1, 0x595

    const-string v8, "msg_has_not_enabled"

    aput-object v8, v0, v1

    const/16 v1, 0x596

    const-string v8, "msg_has_not_enabled_33"

    aput-object v8, v0, v1

    const/16 v1, 0x597

    const-string v8, "use_edit_hint_title"

    aput-object v8, v0, v1

    const/16 v1, 0x598

    const-string v8, "check_manage_files_permissions_title"

    aput-object v8, v0, v1

    const/16 v1, 0x599

    const-string v8, "check_alarm_permissions_title"

    aput-object v8, v0, v1

    const/16 v1, 0x59a

    const-string v8, "setup_setting_file_permission_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x59b

    const-string v8, "setup_setting_not_file_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x59c

    const-string v8, "setup_setting_has_file_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x59d

    const-string v8, "setup_setting_not_alarm_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x59e

    const-string v8, "setup_setting_has_alarm_permission"

    aput-object v8, v0, v1

    const/16 v1, 0x59f

    const-string v8, "setup_setting_alarm_permission_msg"

    aput-object v8, v0, v1

    const/16 v1, 0x5a0

    const-string v8, "use_volume_on_long_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x5a1

    const-string v8, "message_title"

    aput-object v8, v0, v1

    const/16 v1, 0x5a2

    const-string v8, "msg_talkback_enabled"

    aput-object v8, v0, v1

    const/16 v1, 0x5a3

    const-string v8, "cur_timer_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x5a4

    const-string v8, "use_speak_uts"

    aput-object v8, v0, v1

    const/16 v1, 0x5a5

    const-string v8, "use_speak_rts"

    aput-object v8, v0, v1

    const/16 v1, 0x5a6

    const-string v8, "use_speak_nts"

    aput-object v8, v0, v1

    const/16 v1, 0x5a7

    const-string v8, "cur_timer_name"

    aput-object v8, v0, v1

    const/16 v1, 0x5a8

    const-string v8, "cur_timer_start_prompt"

    aput-object v8, v0, v1

    const/16 v1, 0x5a9

    const-string v8, "cur_timer_end_prompt"

    aput-object v8, v0, v1

    const/16 v1, 0x5aa

    const-string v8, "sound_power_connected"

    aput-object v8, v0, v1

    const/16 v1, 0x5ab

    const-string v8, "sound_power_disconnected"

    aput-object v8, v0, v1

    const/16 v1, 0x5ac

    const-string v8, "sound_power_full"

    aput-object v8, v0, v1

    const/16 v1, 0x5ad

    const-string v8, "sound_power_low"

    aput-object v8, v0, v1

    const/16 v1, 0x5ae

    const-string v8, "sound_scroll_top"

    aput-object v8, v0, v1

    const/16 v1, 0x5af

    const-string v8, "sound_scroll_bottom"

    aput-object v8, v0, v1

    const/16 v1, 0x5b0

    const-string v8, "sound_raise_volume"

    aput-object v8, v0, v1

    const/16 v1, 0x5b1

    const-string v8, "sound_lower_volume"

    aput-object v8, v0, v1

    const/16 v1, 0x5b2

    const-string v8, "sound_copy"

    aput-object v8, v0, v1

    const/16 v1, 0x5b3

    const-string v8, "sound_paste"

    aput-object v8, v0, v1

    const/16 v1, 0x5b4

    const-string v8, "sound_previous_text"

    aput-object v8, v0, v1

    const/16 v1, 0x5b5

    const-string v8, "sound_next_text"

    aput-object v8, v0, v1

    const/16 v1, 0x5b6

    const-string v8, "sound_to_back"

    aput-object v8, v0, v1

    const/16 v1, 0x5b7

    const-string v8, "sound_has_action"

    aput-object v8, v0, v1

    const/16 v1, 0x5b8

    const-string v8, "sound_has_link"

    aput-object v8, v0, v1

    const/16 v1, 0x5b9

    const-string v8, "sound_feedback_paused"

    aput-object v8, v0, v1

    const/16 v1, 0x5ba

    const-string v8, "sound_feedback_resume"

    aput-object v8, v0, v1

    const/16 v1, 0x5bb

    const-string v8, "sound_auto_ocr_start"

    aput-object v8, v0, v1

    const/16 v1, 0x5bc

    const-string v8, "sound_camera_screenshot"

    aput-object v8, v0, v1

    const/16 v1, 0x5bd

    const-string v8, "stream_type_ring"

    aput-object v8, v0, v1

    const/16 v1, 0x5be

    const-string v8, "stream_type_music"

    aput-object v8, v0, v1

    const/16 v1, 0x5bf

    const-string v8, "stream_type_alarm"

    aput-object v8, v0, v1

    const/16 v1, 0x5c0

    const-string v8, "stream_type_notification"

    aput-object v8, v0, v1

    const/16 v1, 0x5c1

    const-string v8, "stream_type_accessibility"

    aput-object v8, v0, v1

    const/16 v1, 0x5c2

    const-string v8, "move"

    aput-object v8, v0, v1

    const/16 v1, 0x5c3

    const-string v8, "msg_move_start"

    aput-object v8, v0, v1

    const/16 v1, 0x5c4

    const-string v8, "msg_move_done"

    aput-object v8, v0, v1

    const/16 v1, 0x5c5

    const-string v8, "timer_tts_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x5c6

    const-string v8, "other_res"

    aput-object v8, v0, v1

    const/16 v1, 0x5c7

    const-string v8, "language_title"

    aput-object v8, v0, v1

    const/16 v1, 0x5c8

    const-string v8, "msg_download_error"

    aput-object v8, v0, v1

    const/16 v1, 0x5c9

    const-string v8, "buy_with_alipay"

    aput-object v8, v0, v1

    const/16 v1, 0x5ca

    const-string v8, "buy_with_paypal"

    aput-object v8, v0, v1

    const/16 v1, 0x5cb

    const-string v8, "buy_with_unipay"

    aput-object v8, v0, v1

    const/16 v1, 0x5cc

    const-string v8, "msg_change_custom_gesture"

    aput-object v8, v0, v1

    const/16 v1, 0x5cd

    const-string v8, "msg_import_strings"

    aput-object v8, v0, v1

    const/16 v1, 0x5ce

    const-string v8, "browser"

    aput-object v8, v0, v1

    const/16 v1, 0x5cf

    const-string v8, "stop"

    aput-object v8, v0, v1

    const/16 v1, 0x5d0

    const-string v8, "read_next_chapter"

    aput-object v8, v0, v1

    const/16 v1, 0x5d1

    const-string v8, "read_previous_chapter"

    aput-object v8, v0, v1

    const/16 v1, 0x5d2

    const-string v8, "read_history"

    aput-object v8, v0, v1

    const/16 v1, 0x5d3

    const-string v8, "clear_history"

    aput-object v8, v0, v1

    const/16 v1, 0x5d4

    const-string v8, "web_back"

    aput-object v8, v0, v1

    const/16 v1, 0x5d5

    const-string v8, "web_reload"

    aput-object v8, v0, v1

    const/16 v1, 0x5d6

    const-string v8, "web_forward"

    aput-object v8, v0, v1

    const/16 v1, 0x5d7

    const-string v8, "web_enter_url"

    aput-object v8, v0, v1

    const/16 v1, 0x5d8

    const-string v8, "web_copy_url"

    aput-object v8, v0, v1

    const/16 v1, 0x5d9

    const-string v8, "web_are_you_open"

    aput-object v8, v0, v1

    const/16 v1, 0x5da

    const-string v8, "web_download_info"

    aput-object v8, v0, v1

    const/16 v1, 0x5db

    const-string v8, "web_direct_download"

    aput-object v8, v0, v1

    const/16 v1, 0x5dc

    const-string v8, "web_download_only_wifi"

    aput-object v8, v0, v1

    const/16 v1, 0x5dd

    const-string v8, "overlay"

    aput-object v8, v0, v1

    const/16 v1, 0x5de

    const-string v8, "merge"

    aput-object v8, v0, v1

    const/16 v1, 0x5df

    const-string v8, "msg_has_enabled"

    aput-object v8, v0, v1

    const/16 v1, 0x5e0

    const-string v8, "msg_read_done"

    aput-object v8, v0, v1

    const/16 v1, 0x5e1

    const-string v8, "are_you_delete_all_logs"

    aput-object v8, v0, v1

    const/16 v1, 0x5e2

    const-string v8, "msg_speech_error_audio"

    aput-object v8, v0, v1

    const/16 v1, 0x5e3

    const-string v8, "msg_speech_error_speech_timeout"

    aput-object v8, v0, v1

    const/16 v1, 0x5e4

    const-string v8, "msg_speech_error_client"

    aput-object v8, v0, v1

    const/16 v1, 0x5e5

    const-string v8, "msg_speech_error_permissions"

    aput-object v8, v0, v1

    const/16 v1, 0x5e6

    const-string v8, "msg_speech_error_network"

    aput-object v8, v0, v1

    const/16 v1, 0x5e7

    const-string v8, "msg_speech_error_busy"

    aput-object v8, v0, v1

    const/16 v1, 0x5e8

    const-string v8, "msg_speech_error_server"

    aput-object v8, v0, v1

    const/16 v1, 0x5e9

    const-string v8, "msg_speech_error_network_timeout"

    aput-object v8, v0, v1

    const/16 v1, 0x5ea

    const-string v8, "msg_use_custom_node_name"

    aput-object v8, v0, v1

    const/16 v1, 0x5eb

    const-string v8, "msg_use_custom_dict_speak"

    aput-object v8, v0, v1

    const/16 v1, 0x5ec

    const-string v8, "msg_continuous_recognition"

    aput-object v8, v0, v1

    const/16 v1, 0x5ed

    const-string v8, "enter_progress"

    aput-object v8, v0, v1

    const/16 v1, 0x5ee

    const-string v8, "msg_press_again_exit"

    aput-object v8, v0, v1

    const/16 v1, 0x5ef

    const-string v8, "msg_set_text_to_speech_listener"

    aput-object v8, v0, v1

    const/16 v1, 0x5f0

    const-string v8, "msg_remove_text_to_speech_listener"

    aput-object v8, v0, v1

    const/16 v1, 0x5f1

    const-string v8, "msg_set_speech_recognition_listener"

    aput-object v8, v0, v1

    const/16 v1, 0x5f2

    const-string v8, "msg_remove_speech_recognition_listener"

    aput-object v8, v0, v1

    const/16 v1, 0x5f3

    const-string v8, "timer_start"

    aput-object v8, v0, v1

    const/16 v1, 0x5f4

    const-string v8, "trans_error"

    aput-object v8, v0, v1

    const/16 v1, 0x5f5

    const-string v8, "incoming"

    aput-object v8, v0, v1

    const/16 v1, 0x5f6

    const-string v8, "net_2g_level"

    aput-object v8, v0, v1

    const/16 v1, 0x5f7

    const-string v8, "net_4g_level"

    aput-object v8, v0, v1

    const/16 v1, 0x5f8

    const-string v8, "net_3g_level"

    aput-object v8, v0, v1

    const/16 v1, 0x5f9

    const-string v8, "net_5g_level"

    aput-object v8, v0, v1

    const/16 v1, 0x5fa

    const-string v8, "wifi_level_5"

    aput-object v8, v0, v1

    const/16 v1, 0x5fb

    const-string v8, "wifi_level_4"

    aput-object v8, v0, v1

    const/16 v1, 0x5fc

    const-string v8, "wifi_level_3"

    aput-object v8, v0, v1

    const/16 v1, 0x5fd

    const-string v8, "wifi_level_2"

    aput-object v8, v0, v1

    const/16 v1, 0x5fe

    const-string v8, "wifi_level_1"

    aput-object v8, v0, v1

    const/16 v1, 0x5ff

    const-string v8, "timer_rts"

    aput-object v8, v0, v1

    const/16 v1, 0x600

    const-string v8, "timer_pause_and_now_time"

    aput-object v8, v0, v1

    const/16 v1, 0x601

    const-string v8, "battery_charging"

    aput-object v8, v0, v1

    const/16 v1, 0x602

    const-string v8, "default_gesture_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x603

    const-string v8, "default_gesture_setting_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x604

    const-string v8, "use_action_menu_show_cursor_title"

    aput-object v8, v0, v1

    const/16 v1, 0x605

    const-string v8, "use_action_menu_show_ext_title"

    aput-object v8, v0, v1

    const/16 v1, 0x606

    const-string v8, "find_next"

    aput-object v8, v0, v1

    const/16 v1, 0x607

    const-string v8, "find_previous"

    aput-object v8, v0, v1

    const/16 v1, 0x608

    const-string v8, "command_media_fast_forward"

    aput-object v8, v0, v1

    const/16 v1, 0x609

    const-string v8, "command_media_rewind"

    aput-object v8, v0, v1

    const/16 v1, 0x60a

    const-string v8, "command_selection_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x60b

    const-string v8, "timer_format_title"

    aput-object v8, v0, v1

    const/16 v1, 0x60c

    const-string v8, "timer_format_def"

    aput-object v8, v0, v1

    const/16 v1, 0x60d

    const-string v8, "timer_format_12"

    aput-object v8, v0, v1

    const/16 v1, 0x60e

    const-string v8, "timer_format_24"

    aput-object v8, v0, v1

    const/16 v1, 0x60f

    const-string v8, "default_gesture_type_title"

    aput-object v8, v0, v1

    const/16 v1, 0x610

    const-string v8, "default_gesture_type_def_up_down"

    aput-object v8, v0, v1

    const/16 v1, 0x611

    const-string v8, "default_gesture_type_web_up_down"

    aput-object v8, v0, v1

    const/16 v1, 0x612

    const-string v8, "default_gesture_type_web_up_down_new"

    aput-object v8, v0, v1

    const/16 v1, 0x613

    const-string v8, "default_gesture_type_view_up_down"

    aput-object v8, v0, v1

    const/16 v1, 0x614

    const-string v8, "default_gesture_type_view_up_down_new"

    aput-object v8, v0, v1

    const/16 v1, 0x615

    const-string v8, "default_gesture_type_def_left_right"

    aput-object v8, v0, v1

    const/16 v1, 0x616

    const-string v8, "default_gesture_type_web_left_right"

    aput-object v8, v0, v1

    const/16 v1, 0x617

    const-string v8, "default_gesture_type_web_left_right_new"

    aput-object v8, v0, v1

    const/16 v1, 0x618

    const-string v8, "default_gesture_type_view_left_right"

    aput-object v8, v0, v1

    const/16 v1, 0x619

    const-string v8, "default_gesture_type_view_left_right_new"

    aput-object v8, v0, v1

    const/16 v1, 0x61a

    const-string v8, "use_speak_state_title"

    aput-object v8, v0, v1

    const/16 v1, 0x61b

    const-string v8, "alarm_hours_title"

    aput-object v8, v0, v1

    const/16 v1, 0x61c

    const-string v8, "notification_in_call_no_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x61d

    const-string v8, "notification_in_auto_read_no_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x61e

    const-string v8, "timer_action_def_title"

    aput-object v8, v0, v1

    const/16 v1, 0x61f

    const-string v8, "timer_action_def_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x620

    const-string v8, "timer_item_formater"

    aput-object v8, v0, v1

    const/16 v1, 0x621

    const-string v8, "use_ocr_auto_speak_title"

    aput-object v8, v0, v1

    const/16 v1, 0x622

    const-string v8, "use_new_text_move_type_title"

    aput-object v8, v0, v1

    const/16 v1, 0x623

    const-string v8, "use_move_text_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x624

    const-string v8, "use_answer_phone_calls_incall_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x625

    const-string v8, "use_scroll_seek_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x626

    const-string v8, "use_scroll_list_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x627

    const-string v8, "use_click_dialog_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x628

    const-string v8, "use_click_button_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x629

    const-string v8, "export_all_file"

    aput-object v8, v0, v1

    const/16 v1, 0x62a

    const-string v8, "share_all"

    aput-object v8, v0, v1

    const/16 v1, 0x62b

    const-string v8, "command_image_to_text"

    aput-object v8, v0, v1

    const/16 v1, 0x62c

    const-string v8, "incall_tts_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x62d

    const-string v8, "reader_tts_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x62e

    const-string v8, "char_mode_tts_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x62f

    const-string v8, "auto_read_tts_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x630

    const-string v8, "auto_list_tts_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x631

    const-string v8, "notification_tts_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x632

    const-string v8, "use_up_tap_prompt_title"

    aput-object v8, v0, v1

    const/16 v1, 0x633

    const-string v8, "double_fling_time_title"

    aput-object v8, v0, v1

    const/16 v1, 0x634

    const-string v8, "jieshuo_beta_title"

    aput-object v8, v0, v1

    const/16 v1, 0x635

    const-string v8, "picture_description"

    aput-object v8, v0, v1

    const/16 v1, 0x636

    const-string v9, "more_tts_setting_title"

    aput-object v9, v0, v1

    const/16 v1, 0x637

    const-string v9, "use_virtual_screen_dim_background_title"

    aput-object v9, v0, v1

    const/16 v1, 0x638

    const-string v9, "ocr_lang_zh"

    aput-object v9, v0, v1

    const/16 v1, 0x639

    const-string v9, "ocr_lang_zh_rare"

    aput-object v9, v0, v1

    const/16 v1, 0x63a

    const-string v9, "ocr_lang_auto"

    aput-object v9, v0, v1

    const/16 v1, 0x63b

    const-string v9, "ocr_lang_mix"

    aput-object v9, v0, v1

    const/16 v1, 0x63c

    const-string v9, "ocr_lang_jap"

    aput-object v9, v0, v1

    const/16 v1, 0x63d

    const-string v9, "ocr_lang_kor"

    aput-object v9, v0, v1

    const/16 v1, 0x63e

    const-string v9, "ocr_lang_spa"

    aput-object v9, v0, v1

    const/16 v1, 0x63f

    const-string v9, "ocr_lang_fre"

    aput-object v9, v0, v1

    const/16 v1, 0x640

    const-string v9, "ocr_lang_ger"

    aput-object v9, v0, v1

    const/16 v1, 0x641

    const-string v9, "ocr_lang_por"

    aput-object v9, v0, v1

    const/16 v1, 0x642

    const-string v9, "ocr_lang_vie"

    aput-object v9, v0, v1

    const/16 v1, 0x643

    const-string v9, "ocr_lang_may"

    aput-object v9, v0, v1

    const/16 v1, 0x644

    const-string v9, "ocr_lang_rus"

    aput-object v9, v0, v1

    const/16 v1, 0x645

    const-string v9, "ocr_lang_ita"

    aput-object v9, v0, v1

    const/16 v1, 0x646

    const-string v9, "ocr_lang_hol"

    aput-object v9, v0, v1

    const/16 v1, 0x647

    const-string v9, "ocr_lang_swe"

    aput-object v9, v0, v1

    const/16 v1, 0x648

    const-string v9, "ocr_lang_fin"

    aput-object v9, v0, v1

    const/16 v1, 0x649

    const-string v9, "ocr_lang_dan"

    aput-object v9, v0, v1

    const/16 v1, 0x64a

    const-string v9, "ocr_lang_nor"

    aput-object v9, v0, v1

    const/16 v1, 0x64b

    const-string v9, "ocr_lang_hun"

    aput-object v9, v0, v1

    const/16 v1, 0x64c

    const-string v9, "ocr_lang_tha"

    aput-object v9, v0, v1

    const/16 v1, 0x64d

    const-string v9, "ocr_lang_hi"

    aput-object v9, v0, v1

    const/16 v1, 0x64e

    const-string v9, "ocr_lang_ara"

    aput-object v9, v0, v1

    const/16 v1, 0x64f

    const-string v9, "edit_ocr_lua_title"

    aput-object v9, v0, v1

    const/16 v1, 0x650

    const-string v9, "ocr_lua_template"

    aput-object v9, v0, v1

    const/16 v1, 0x651

    const-string v9, "resume_on_screen_on_title"

    aput-object v9, v0, v1

    const/16 v1, 0x652

    const-string v9, "resume_on_notification_show_title"

    aput-object v9, v0, v1

    const/16 v1, 0x653

    const-string v9, "resume_on_ringing_title"

    aput-object v9, v0, v1

    const/16 v1, 0x654

    const-string v9, "helper_supper_cmd_title"

    aput-object v9, v0, v1

    const/16 v1, 0x655

    const-string v9, "back_break_auto_mode_title"

    aput-object v9, v0, v1

    const/16 v1, 0x656

    const-string v9, "msg_export_all_file"

    aput-object v9, v0, v1

    const/16 v1, 0x657

    const-string v9, "msg_export_all_file_fail"

    aput-object v9, v0, v1

    const/16 v1, 0x658

    const-string v9, "import_all_title"

    aput-object v9, v0, v1

    const/16 v1, 0x659

    const-string v9, "msg_import_all"

    aput-object v9, v0, v1

    const/16 v1, 0x65a

    const-string v9, "command_image_to_text2"

    aput-object v9, v0, v1

    const/16 v1, 0x65b

    aput-object v8, v0, v1

    const/16 v1, 0x65c

    const-string v8, "picture_description2"

    aput-object v8, v0, v1

    const/16 v1, 0x65d

    const-string v8, "command_auto_list_speak"

    aput-object v8, v0, v1

    const/16 v1, 0x65e

    const-string v8, "command_auto_list_speak_history"

    aput-object v8, v0, v1

    const/16 v1, 0x65f

    const-string v8, "msg_start_auto_list"

    aput-object v8, v0, v1

    const/16 v1, 0x660

    const-string v8, "msg_stop_auto_list"

    aput-object v8, v0, v1

    const/16 v1, 0x661

    const-string v8, "msg_username_typo"

    aput-object v8, v0, v1

    const/16 v1, 0x662

    const-string v8, "msg_username_error"

    aput-object v8, v0, v1

    const/16 v1, 0x663

    const-string v8, "msg_invite_code_error"

    aput-object v8, v0, v1

    const/16 v1, 0x664

    const-string v8, "msg_username_used"

    aput-object v8, v0, v1

    const/16 v1, 0x665

    const-string v8, "msg_network_error"

    aput-object v8, v0, v1

    const/16 v1, 0x666

    const-string v8, "command_verification12"

    aput-object v8, v0, v1

    const/16 v1, 0x667

    const-string v8, "command_recognition_edu"

    aput-object v8, v0, v1

    const/16 v1, 0x668

    const-string v8, "app_no_supper_sound_package_title"

    aput-object v8, v0, v1

    const/16 v1, 0x669

    const-string v8, "use_split_line_title"

    aput-object v8, v0, v1

    const/16 v1, 0x66a

    const-string v8, "msg_use_single_tts_enabled"

    aput-object v8, v0, v1

    const/16 v1, 0x66b

    const-string v8, "msg_disable_use_single_tts"

    aput-object v8, v0, v1

    const/16 v1, 0x66c

    const-string v8, "use_input_method_speak_word_title"

    aput-object v8, v0, v1

    const/16 v1, 0x66d

    const-string v8, "trans_lua_engine_title"

    aput-object v8, v0, v1

    const/16 v1, 0x66e

    const-string v8, "edit_trans_lua_title"

    aput-object v8, v0, v1

    const/16 v1, 0x66f

    const-string v8, "trans_lua_template"

    aput-object v8, v0, v1

    const/16 v1, 0x670

    const-string v8, "match_all"

    aput-object v8, v0, v1

    const/16 v1, 0x671

    const-string v8, "match_start"

    aput-object v8, v0, v1

    const/16 v1, 0x672

    const-string v8, "match_end"

    aput-object v8, v0, v1

    const/16 v1, 0x673

    const-string v8, "match_contains"

    aput-object v8, v0, v1

    const/16 v1, 0x674

    const-string v8, "today"

    aput-object v8, v0, v1

    const/16 v1, 0x675

    const-string v8, "yesterday"

    aput-object v8, v0, v1

    const/16 v1, 0x676

    const-string v8, "before_yesterday"

    aput-object v8, v0, v1

    const/16 v1, 0x677

    const-string v8, "command_accept_call"

    aput-object v8, v0, v1

    const/16 v1, 0x678

    const-string v8, "command_end_call"

    aput-object v8, v0, v1

    const/16 v1, 0x679

    const-string v8, "command_pause_a11y_volume"

    aput-object v8, v0, v1

    const/16 v1, 0x67a

    const-string v8, "msg_supper_cmd_only_voice_helper"

    aput-object v8, v0, v1

    const/16 v1, 0x67b

    const-string v8, "msg_no_a11y_volume"

    aput-object v8, v0, v1

    const/16 v1, 0x67c

    const-string v8, "msg_a11y_volume_disabled"

    aput-object v8, v0, v1

    const/16 v1, 0x67d

    const-string v8, "msg_a11y_volume_enabled"

    aput-object v8, v0, v1

    const/16 v1, 0x67e

    const-string v8, "content_blacklist_description"

    aput-object v8, v0, v1

    const/16 v1, 0x67f

    const-string v8, "auto_speak_blacklist_description"

    aput-object v8, v0, v1

    const/16 v1, 0x680

    const-string v8, "notification_black_list_description"

    aput-object v8, v0, v1

    const/16 v1, 0x681

    const-string v8, "notification_white_list_description"

    aput-object v8, v0, v1

    const/16 v1, 0x682

    const-string v8, "nodeinfo_long_clickable"

    aput-object v8, v0, v1

    const/16 v1, 0x683

    const-string v8, "nodeinfo_not_long_click"

    aput-object v8, v0, v1

    const/16 v1, 0x684

    const-string v8, "nodeinfo_editable"

    aput-object v8, v0, v1

    const/16 v1, 0x685

    const-string v8, "nodeinfo_not_edit"

    aput-object v8, v0, v1

    const/16 v1, 0x686

    const-string v8, "sound_scroll_page"

    aput-object v8, v0, v1

    const/16 v1, 0x687

    const-string v8, "use_auto_mode_move_list_view_item_title"

    aput-object v8, v0, v1

    const/16 v1, 0x688

    const-string v8, "helper_tts_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x689

    const-string v8, "node_tts_setting_title"

    aput-object v8, v0, v1

    const/16 v1, 0x68a

    const-string v8, "voice_helper_use_big_title"

    aput-object v8, v0, v1

    const/16 v1, 0x68b

    const-string v8, "chat_history"

    aput-object v8, v0, v1

    const/16 v1, 0x68c

    const-string v8, "command_recognition_icon"

    aput-object v8, v0, v1

    const/16 v1, 0x68d

    const-string v8, "command_long_hold"

    aput-object v8, v0, v1

    const/16 v1, 0x68e

    const-string v8, "sound_progress"

    aput-object v8, v0, v1

    const/16 v1, 0x68f

    const-string v8, "sound_progress_100"

    aput-object v8, v0, v1

    const/16 v1, 0x690

    const-string v8, "sound_clear_notification"

    aput-object v8, v0, v1

    const/16 v1, 0x691

    const-string v8, "sound_talkman_start"

    aput-object v8, v0, v1

    const/16 v1, 0x692

    const-string v8, "sound_talkman_stop"

    aput-object v8, v0, v1

    const/16 v1, 0x693

    const-string v8, "sound_camera"

    aput-object v8, v0, v1

    const/16 v1, 0x694

    const-string v8, "voice_picture_description"

    aput-object v8, v0, v1

    const/16 v1, 0x695

    const-string v8, "voice_picture_description2"

    aput-object v8, v0, v1

    const/16 v1, 0x696

    const-string v8, "video_description"

    aput-object v8, v0, v1

    const/16 v1, 0x697

    const-string v8, "msg_start_video_description"

    aput-object v8, v0, v1

    const/16 v1, 0x698

    const-string v8, "msg_stop_video_description"

    aput-object v8, v0, v1

    const/16 v1, 0x699

    const-string v8, "use_image_to_text_title"

    aput-object v8, v0, v1

    const/16 v1, 0x69a

    const-string v8, "voice_question"

    aput-object v8, v0, v1

    const/16 v1, 0x69b

    const-string v8, "find_object"

    aput-object v8, v0, v1

    const/16 v1, 0x69c

    const-string v8, "use_long_click_voice_image_title"

    aput-object v8, v0, v1

    const/16 v1, 0x69d

    const-string v8, "use_text_stat_title"

    aput-object v8, v0, v1

    const/16 v1, 0x69e

    const-string v8, "use_text_stat_summary"

    aput-object v8, v0, v1

    const/16 v1, 0x69f

    const-string v8, "use_move_window_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6a0

    const-string v8, "ads_filter"

    aput-object v8, v0, v1

    const/16 v1, 0x6a1

    const-string v8, "prevent_jump"

    aput-object v8, v0, v1

    const/16 v1, 0x6a2

    const-string v8, "voice_helper_use_input_method_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6a3

    const-string v8, "input_content"

    aput-object v8, v0, v1

    const/16 v1, 0x6a4

    const-string v8, "select_segmentation_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x6a5

    const-string v8, "msg_start_find"

    aput-object v8, v0, v1

    const/16 v1, 0x6a6

    const-string v8, "msg_stop_find"

    aput-object v8, v0, v1

    const/16 v1, 0x6a7

    const-string v8, "command_all_node"

    aput-object v8, v0, v1

    const/16 v1, 0x6a8

    const-string v8, "sound_inputmethod_show"

    aput-object v8, v0, v1

    const/16 v1, 0x6a9

    const-string v8, "sound_inputmethod_hide"

    aput-object v8, v0, v1

    const/16 v1, 0x6aa

    const-string v8, "command_node_menu"

    aput-object v8, v0, v1

    const/16 v1, 0x6ab

    const-string v8, "command_take_screenshot2"

    aput-object v8, v0, v1

    const/16 v1, 0x6ac

    const-string v8, "sound_auto_ocr_done"

    aput-object v8, v0, v1

    const/16 v1, 0x6ad

    const-string v8, "sound_auto_ocr_error"

    aput-object v8, v0, v1

    const/16 v1, 0x6ae

    const-string v8, "custom_search_engine_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6af

    const-string v8, "app_profiles_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6b0

    const-string v8, "edit_app_profiles_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6b1

    const-string v8, "auto_focus_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6b2

    const-string v8, "command_pause_gesture"

    aput-object v8, v0, v1

    const/16 v1, 0x6b3

    const-string v8, "msg_gesture_disabled"

    aput-object v8, v0, v1

    const/16 v1, 0x6b4

    const-string v8, "msg_gesture_enabled"

    aput-object v8, v0, v1

    const/16 v1, 0x6b5

    const-string v8, "tts_low_latency_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6b6

    const-string v8, "use_ext_actions_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6b7

    const-string v8, "use_auto_view_type_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6b8

    const-string v8, "use_input_method_no_gesture_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6b9

    const-string v8, "command_grid_mode"

    aput-object v8, v0, v1

    const/16 v1, 0x6ba

    const-string v8, "resume_on_screen_off_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6bb

    const-string v8, "app_no_key_shortcut_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6bc

    const-string v8, "sort_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6bd

    const-string v8, "sort_name"

    aput-object v8, v0, v1

    const/16 v1, 0x6be

    const-string v8, "sort_time"

    aput-object v8, v0, v1

    const/16 v1, 0x6bf

    const-string v8, "use_reverse_scroll_home_page_title"

    aput-object v8, v0, v1

    const/16 v1, 0x6c0

    const-string v8, "all_description"

    aput-object v8, v0, v1

    const/16 v1, 0x6c1

    const-string v8, "checkbox_description"

    aput-object v8, v0, v1

    const/16 v1, 0x6c2

    const-string v8, "msg_checkbox_not_found"

    aput-object v8, v0, v1

    sput-object v0, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/androlua/LuaResources;->menu_def_items:[I

    new-array v0, v6, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/androlua/LuaResources;->menu_items:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/androlua/LuaResources;->action_menu_items:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/androlua/LuaResources;->left_menu_items:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/androlua/LuaResources;->right_menu_items:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/androlua/LuaResources;->execute_command:[I

    return-void

    :array_0
    .array-data 4
        0x7f07031b
        0x7f07036d
        0x7f0706b5
        0x7f0706b4
        0x7f070701
        0x7f070700
        0x7f070917
        0x7f070916
        0x7f0707f2
        0x7f0707f1
        0x7f0705a4
        0x7f0705a3
        0x7f070830
        0x7f07082f
        0x7f0707a4
        0x7f0707a3
        0x7f0707d5
        0x7f0707d4
        0x7f0706c3
        0x7f0706c2
        0x7f070790
        0x7f07078f
        0x7f0706b0
        0x7f0706af
        0x7f0706ad
        0x7f070277
        0x7f0701a3
        0x7f070516
        0x7f0706b7
        0x7f07065c
        0x7f07065d
        0x7f0708b4
        0x7f0708b9
        0x7f0708b8
        0x7f0708b7
        0x7f0708b5
        0x7f0708b2
        0x7f0708b6
        0x7f0708b3
        0x7f0708af
        0x7f07065b
        0x7f0704c0
        0x7f0704c1
        0x7f070002
        0x7f07053f
        0x7f07004c
        0x7f070930
        0x7f070947
        0x7f070978
        0x7f0702db
        0x7f0707ac
        0x7f0704b9
        0x7f070525
        0x7f070009
        0x7f0700bd
        0x7f0705ae
        0x7f07002c
        0x7f070863
        0x7f0706cb
        0x7f07000b
        0x7f070823
        0x7f070878
        0x7f07061f
        0x7f0704a1
        0x7f0704be
        0x7f07049d
        0x7f0704b3
        0x7f0702da
        0x7f07001e
        0x7f0704c6
        0x7f0704a6
        0x7f07093c
        0x7f070606
        0x7f0708ae
        0x7f07049f
        0x7f070877
        0x7f07084e
        0x7f070915
        0x7f0707ef
        0x7f070817
        0x7f070729
        0x7f070743
        0x7f07087e
        0x7f07051f
        0x7f0707d3
        0x7f07072c
        0x7f070629
        0x7f070627
        0x7f070256
        0x7f070524
        0x7f070603
        0x7f0700bc
        0x7f07031a
        0x7f07036b
        0x7f07036f
        0x7f07046b
        0x7f070508
        0x7f0705b6
        0x7f070354
        0x7f070353
        0x7f07062e
        0x7f07086e
        0x7f07086d
        0x7f07006c
        0x7f0708a0
        0x7f0706bf
        0x7f0706be
        0x7f0702ca
        0x7f0702c8
        0x7f070356
        0x7f0707e1
        0x7f0707e0
        0x7f07019e
        0x7f070476
        0x7f070391
        0x7f070397
        0x7f070382
        0x7f07038b
        0x7f07038a
        0x7f0704a7
        0x7f0700b4
        0x7f070379
        0x7f07037e
        0x7f070388
        0x7f070395
        0x7f070396
        0x7f07037c
        0x7f070378
        0x7f0701f3
        0x7f0701fc
        0x7f0701f9
        0x7f07038d
        0x7f07038f
        0x7f0701fb
        0x7f0701fa
        0x7f070279
        0x7f07027a
        0x7f0701f6
        0x7f0701ef
        0x7f070386
        0x7f070383
        0x7f07068f
        0x7f0701fe
        0x7f070505
        0x7f07068e
        0x7f070384
        0x7f070363
        0x7f070770
        0x7f070890
        0x7f0708a8
        0x7f0708a2
        0x7f07089a
        0x7f07089e
        0x7f0708ac
        0x7f0708a6
        0x7f0702c4
        0x7f07089c
        0x7f070351
        0x7f07055c
        0x7f070390
        0x7f0706a4
        0x7f0706bc
        0x7f0706a8
        0x7f0706b3
        0x7f0706b9
        0x7f07088f
        0x7f07004b
        0x7f07037a
        0x7f070035
        0x7f070034
        0x7f07009e
        0x7f07009d
        0x7f0704bb
        0x7f070773
        0x7f0702cc
        0x7f0705bb
        0x7f07001c
        0x7f070542
        0x7f0700b0
        0x7f07053e
        0x7f070274
        0x7f070273
        0x7f0707c3
        0x7f0707c2
        0x7f07079e
        0x7f0707a9
        0x7f07079d
        0x7f0707e4
        0x7f070072
        0x7f070829
        0x7f07071a
        0x7f0707e7
        0x7f07084a
        0x7f070099
        0x7f070871
        0x7f07081e
        0x7f070949
        0x7f07093f
        0x7f070696
        0x7f0707e6
        0x7f0705a7
        0x7f0700b7
        0x7f070317
        0x7f0702ce
        0x7f070822
        0x7f0707e3
        0x7f07076f
        0x7f07034c
        0x7f07091a
        0x7f070919
        0x7f07019f
        0x7f0702ed
        0x7f0707d2
        0x7f0707a8
        0x7f070816
        0x7f07087d
        0x7f0706ca
        0x7f0707ee
        0x7f070728
        0x7f07072b
        0x7f07019d
        0x7f070772
        0x7f070849
        0x7f070752
        0x7f070331
        0x7f070581
        0x7f070751
        0x7f070330
        0x7f070580
        0x7f070233
        0x7f070232
        0x7f0706f0
        0x7f0706ef
        0x7f070832
        0x7f070833
        0x7f070838
        0x7f070839
        0x7f07092c
        0x7f07053d
        0x7f07058c
        0x7f070336
        0x7f070335
        0x7f07058b
        0x7f070870
        0x7f0706f4
        0x7f0706f3
        0x7f070237
        0x7f070236
        0x7f070808
        0x7f070807
        0x7f0706d8
        0x7f0706d9
        0x7f0706a2
        0x7f070049
        0x7f070048
        0x7f0706a1
        0x7f070670
        0x7f070769
        0x7f070768
        0x7f070841
        0x7f070840
        0x7f070320
        0x7f070570
        0x7f070245
        0x7f070321
        0x7f070571
        0x7f07070e
        0x7f07070d
        0x7f070541
        0x7f070513
        0x7f070514
        0x7f070711
        0x7f070710
        0x7f070025
        0x7f0706fb
        0x7f0707b0
        0x7f070963
        0x7f0702a6
        0x7f0702a4
        0x7f0702a2
        0x7f070732
        0x7f0701c0
        0x7f070767
        0x7f070766
        0x7f0707ec
        0x7f0707eb
        0x7f070527
        0x7f07000c
        0x7f070315
        0x7f07023a
        0x7f0707d7
        0x7f07077b
        0x7f07077a
        0x7f070888
        0x7f0708aa
        0x7f07051b
        0x7f0701b8
        0x7f070899
        0x7f0705a6
        0x7f070810
        0x7f07080a
        0x7f070707
        0x7f070706
        0x7f0708b1
        0x7f07033d
        0x7f0707ba
        0x7f070478
        0x7f0707e9
        0x7f07006d
        0x7f070070
        0x7f070566
        0x7f070565
        0x7f07006f
        0x7f070310
        0x7f07084c
        0x7f070726
        0x7f070725
        0x7f0701f4
        0x7f0702dc
        0x7f070024
        0x7f07085d
        0x7f070861
        0x7f070740
        0x7f0707f9
        0x7f0702d4
        0x7f0707f8
        0x7f07092f
        0x7f07092e
        0x7f07083b
        0x7f07085b
        0x7f070679
        0x7f070938
        0x7f0701f1
        0x7f0707b9
        0x7f070011
        0x7f07054b
        0x7f070742
        0x7f070959
        0x7f07094c
        0x7f070957
        0x7f07095f
        0x7f07095d
        0x7f070961
        0x7f07037f
        0x7f0702d5
        0x7f07093d
        0x7f07088e
        0x7f07088d
        0x7f07039a
        0x7f070318
        0x7f0704a5
        0x7f0704c5
        0x7f070657
        0x7f0704b1
        0x7f070377
        0x7f070633
        0x7f070597
        0x7f0701ee
        0x7f0702d0
        0x7f070664
        0x7f070686
        0x7f07069c
        0x7f070662
        0x7f070248
        0x7f070255
        0x7f07009b
        0x7f070295
        0x7f070053
        0x7f070374
        0x7f070371
        0x7f07065e
        0x7f070854
        0x7f070850
        0x7f070357
        0x7f0706f6
        0x7f070359
        0x7f0706f9
        0x7f070358
        0x7f0706f7
        0x7f0706f8
        0x7f07035a
        0x7f0706fa
        0x7f07082b
        0x7f0702d6
        0x7f070380
        0x7f070105
        0x7f070126
        0x7f070187
        0x7f070161
        0x7f070115
        0x7f070134
        0x7f070159
        0x7f070155
        0x7f07011b
        0x7f070196
        0x7f0700f6
        0x7f070118
        0x7f070106
        0x7f070136
        0x7f07011e
        0x7f070124
        0x7f070152
        0x7f070127
        0x7f070130
        0x7f070197
        0x7f070109
        0x7f07018c
        0x7f07018e
        0x7f07018f
        0x7f070275
        0x7f070119
        0x7f07011a
        0x7f070192
        0x7f070143
        0x7f07014d
        0x7f07018a
        0x7f07018b
        0x7f07017a
        0x7f07016e
        0x7f07017c
        0x7f070170
        0x7f070180
        0x7f070174
        0x7f07017e
        0x7f070172
        0x7f07012b
        0x7f07014a
        0x7f070138
        0x7f070167
        0x7f070168
        0x7f070147
        0x7f0700ff
        0x7f070100
        0x7f070107
        0x7f0700fc
        0x7f07013e
        0x7f070547
        0x7f07054a
        0x7f070549
        0x7f070548
        0x7f070546
        0x7f070545
        0x7f0700b8
        0x7f070690
        0x7f07047f
        0x7f0702fa
        0x7f070518
        0x7f070512
        0x7f0700bf
        0x7f0700b2
        0x7f0706c4
        0x7f07051a
        0x7f070202
        0x7f070263
        0x7f070645
        0x7f070641
        0x7f070355
        0x7f0704a8
        0x7f070533
        0x7f07030c
        0x7f07030d
        0x7f070526
        0x7f0705b2
        0x7f0701ff
        0x7f070534
        0x7f07091b
        0x7f07091d
        0x7f07091e
        0x7f070928
        0x7f070921
        0x7f070926
        0x7f070927
        0x7f070923
        0x7f07091c
        0x7f070925
        0x7f070922
        0x7f070924
        0x7f070920
        0x7f07091f
        0x7f070381
        0x7f07037d
        0x7f070387
        0x7f07038c
        0x7f070393
        0x7f070372
        0x7f070373
        0x7f07037b
        0x7f070543
        0x7f070065
        0x7f070064
        0x7f0705da
        0x7f0705d9
        0x7f0705d8
        0x7f0705d6
        0x7f070389
        0x7f070207
        0x7f07013c
        0x7f070125
        0x7f0700f5
        0x7f070186
        0x7f07010b
        0x7f070113
        0x7f070114
        0x7f070183
        0x7f070104
        0x7f070153
        0x7f070135
        0x7f070189
        0x7f070166
        0x7f070133
        0x7f07016b
        0x7f070169
        0x7f0700fa
        0x7f070128
        0x7f0700fb
        0x7f0700f9
        0x7f070194
        0x7f070195
        0x7f070139
        0x7f07013b
        0x7f070091
        0x7f070110
        0x7f07010d
        0x7f070177
        0x7f070137
        0x7f070103
        0x7f070102
        0x7f070146
        0x7f07011c
        0x7f0700b9
        0x7f070270
        0x7f070305
        0x7f07035d
        0x7f070055
        0x7f07034b
        0x7f070360
        0x7f070074
        0x7f070205
        0x7f07020a
        0x7f070206
        0x7f070204
        0x7f070221
        0x7f070216
        0x7f070749
        0x7f070747
        0x7f070575
        0x7f0707ff
        0x7f070325
        0x7f070792
        0x7f0706cf
        0x7f070867
        0x7f07020e
        0x7f070745
        0x7f0706de
        0x7f07086b
        0x7f0706e5
        0x7f070873
        0x7f070586
        0x7f070803
        0x7f07033b
        0x7f070799
        0x7f0706d4
        0x7f070869
        0x7f070228
        0x7f07074b
        0x7f07032a
        0x7f070794
        0x7f070342
        0x7f0707a0
        0x7f07057a
        0x7f070801
        0x7f070591
        0x7f070805
        0x7f07015a
        0x7f070122
        0x7f070032
        0x7f070181
        0x7f070175
        0x7f07017b
        0x7f07016f
        0x7f070179
        0x7f07016d
        0x7f070650
        0x7f070095
        0x7f07066b
        0x7f0702c6
        0x7f0705e2
        0x7f070280
        0x7f070281
        0x7f070761
        0x7f070163
        0x7f07013a
        0x7f070469
        0x7f0706c8
        0x7f0706c7
        0x7f070027
        0x7f070020
        0x7f070191
        0x7f070955
        0x7f07094e
        0x7f07094d
        0x7f070954
        0x7f070247
        0x7f07073f
        0x7f07032f
        0x7f07057f
        0x7f070467
        0x7f07035f
        0x7f070750
        0x7f070796
        0x7f07082d
        0x7f07030f
        0x7f070969
        0x7f070852
        0x7f070942
        0x7f070698
        0x7f070558
        0x7f07028b
        0x7f070763
        0x7f0706aa
        0x7f070054
        0x7f0700f2
        0x7f0705e4
        0x7f07034f
        0x7f070060
        0x7f070261
        0x7f070350
        0x7f0705e3
        0x7f0701fd
        0x7f07067d
        0x7f0708b0
        0x7f0703bb
        0x7f07069e
        0x7f0705a1
        0x7f07024b
        0x7f07043b
        0x7f0703ab
        0x7f0701d3
        0x7f0701d4
        0x7f070399
        0x7f070017
        0x7f0702d2
        0x7f07047e
        0x7f07047c
        0x7f07047d
        0x7f070544
        0x7f0701d7
        0x7f0701d6
        0x7f0701d5
        0x7f0702e9
        0x7f0702e8
        0x7f0702e2
        0x7f0702e1
        0x7f0702e4
        0x7f0702ec
        0x7f0702e5
        0x7f0702eb
        0x7f0702e3
        0x7f0702e6
        0x7f0702e0
        0x7f0702e7
        0x7f0702ea
        0x7f0701d8
        0x7f070691
        0x7f0701ba
        0x7f0701ad
        0x7f0701aa
        0x7f07029a
        0x7f07064c
        0x7f07064a
        0x7f07064b
        0x7f07063d
        0x7f07063f
        0x7f070640
        0x7f07063e
        0x7f070644
        0x7f070642
        0x7f070643
        0x7f070649
        0x7f070648
        0x7f070646
        0x7f070647
        0x7f07026b
        0x7f0701a9
        0x7f070599
        0x7f07059d
        0x7f070251
        0x7f07000d
        0x7f0705dc
        0x7f07039e
        0x7f07039d
        0x7f0701ea
        0x7f0705ab
        0x7f07055d
        0x7f07029c
        0x7f07029b
        0x7f070973
        0x7f0702cf
        0x7f07004e
        0x7f070308
        0x7f07024c
        0x7f07087a
        0x7f07065a
        0x7f070659
        0x7f070403
        0x7f0703ae
        0x7f070934
        0x7f070931
        0x7f070936
        0x7f07050b
        0x7f070939
        0x7f070933
        0x7f070932
        0x7f070935
        0x7f070080
        0x7f070090
        0x7f07008a
        0x7f07007f
        0x7f07007c
        0x7f07008b
        0x7f07007e
        0x7f070083
        0x7f070626
        0x7f070625
        0x7f07062f
        0x7f070628
        0x7f07062a
        0x7f07004f
        0x7f070453
        0x7f070477
        0x7f070892
        0x7f070528
        0x7f070529
        0x7f07036c
        0x7f0701f2
        0x7f0703e5
        0x7f070369
        0x7f07023e
        0x7f070475
        0x7f070479
        0x7f07046c
        0x7f0700ae
        0x7f070392
        0x7f07008d
        0x7f070084
        0x7f070081
        0x7f070082
        0x7f070085
        0x7f07008c
        0x7f070094
        0x7f07007d
        0x7f07008f
        0x7f07008e
        0x7f070087
        0x7f070088
        0x7f070089
        0x7f070086
        0x7f070092
        0x7f070093
        0x7f070856
        0x7f070563
        0x7f070069
        0x7f0701f0
        0x7f0702a0
        0x7f07029f
        0x7f0703a8
        0x7f0703f0
        0x7f070410
        0x7f070250
        0x7f07074d
        0x7f0704d4
        0x7f070364
        0x7f0703aa
        0x7f07030b
        0x7f070451
        0x7f0703cd
        0x7f0703c4
        0x7f0703ce
        0x7f0703c5
        0x7f0703a7
        0x7f070428
        0x7f07006a
        0x7f0703de
        0x7f07043a
        0x7f0703b5
        0x7f0703d5
        0x7f070459
        0x7f07040d
        0x7f07045c
        0x7f0703f6
        0x7f0703a9
        0x7f0703b9
        0x7f0700be
        0x7f070465
        0x7f07014c
        0x7f0703cc
        0x7f0703c3
        0x7f070653
        0x7f0705b4
        0x7f070952
        0x7f07038e
        0x7f070940
        0x7f070964
        0x7f070945
        0x7f070946
        0x7f070944
        0x7f070943
        0x7f07042a
        0x7f0703e7
        0x7f0700ee
        0x7f0700f0
        0x7f07049a
        0x7f070375
        0x7f0700cf
        0x7f0700d1
        0x7f0700e9
        0x7f0700c1
        0x7f0700db
        0x7f0700c6
        0x7f0700e0
        0x7f0700d5
        0x7f0700ed
        0x7f0700cc
        0x7f0700e6
        0x7f0700c8
        0x7f0700e2
        0x7f0700d3
        0x7f0700eb
        0x7f0700c3
        0x7f0700dd
        0x7f0704cc
        0x7f0704ca
        0x7f0704c8
        0x7f0704cd
        0x7f0707de
        0x7f0707dd
        0x7f0707dc
        0x7f070504
        0x7f0704ef
        0x7f0704ec
        0x7f0704ce
        0x7f070013
        0x7f070016
        0x7f070015
        0x7f0707df
        0x7f0700ef
        0x7f070677
        0x7f0703e6
        0x7f070895
        0x7f070894
        0x7f0702f8
        0x7f070398
        0x7f070429
        0x7f0703ac
        0x7f070432
        0x7f0703a3
        0x7f0703f2
        0x7f0703b1
        0x7f07042c
        0x7f070431
        0x7f07042d
        0x7f0703f7
        0x7f0700ad
        0x7f0705d3
        0x7f0700aa
        0x7f0700a4
        0x7f07050d
        0x7f070510
        0x7f0700a8
        0x7f0701ed
        0x7f070985
        0x7f07079a
        0x7f0706fd
        0x7f0707a2
        0x7f0704b6
        0x7f070825
        0x7f07079c
        0x7f07079b
        0x7f0706ff
        0x7f0706fe
        0x7f0704b8
        0x7f0704b7
        0x7f070827
        0x7f070826
        0x7f07051d
        0x7f07051c
        0x7f0700ac
        0x7f070471
        0x7f0705c0
        0x7f0705bf
        0x7f0705c1
        0x7f0705ce
        0x7f0705cf
        0x7f0705d2
        0x7f0705cc
        0x7f0705d0
        0x7f0705c3
        0x7f0705c7
        0x7f07009a
        0x7f0705ca
        0x7f0705be
        0x7f0705c5
        0x7f0705cd
        0x7f0705d1
        0x7f0705c8
        0x7f0701a8
        0x7f0708ad
        0x7f070278
        0x7f07055b
        0x7f0703d6
        0x7f07073b
        0x7f0701d2
        0x7f070730
        0x7f0701be
        0x7f0703e4
        0x7f0706c5
        0x7f07055a
        0x7f07031e
        0x7f0701ac
        0x7f07050e
        0x7f0701b0
        0x7f070297
        0x7f070288
        0x7f070596
        0x7f07075a
        0x7f070309
        0x7f07042e
        0x7f07042f
        0x7f07040c
        0x7f070304
        0x7f070306
        0x7f0707b4
        0x7f070376
        0x7f0700b3
        0x7f070014
        0x7f070617
        0x7f0705f6
        0x7f0705f7
        0x7f0705f8
        0x7f0705f9
        0x7f0705ef
        0x7f070600
        0x7f0705f5
        0x7f070616
        0x7f070613
        0x7f07061a
        0x7f0705eb
        0x7f0705f0
        0x7f070610
        0x7f070611
        0x7f070620
        0x7f0705f2
        0x7f0705fa
        0x7f070555
        0x7f0705fb
        0x7f070553
        0x7f070556
        0x7f070554
        0x7f070552
        0x7f070148
        0x7f070164
        0x7f07013d
        0x7f070144
        0x7f07071e
        0x7f07071f
        0x7f070029
        0x7f0701ae
        0x7f0701ab
        0x7f0702ee
        0x7f0702f4
        0x7f0702f0
        0x7f0702f6
        0x7f0701c2
        0x7f070038
        0x7f070037
        0x7f0701f5
        0x7f0702f7
        0x7f07061b
        0x7f07061c
        0x7f070812
        0x7f070884
        0x7f070883
        0x7f07014b
        0x7f07068a
        0x7f070688
        0x7f070689
        0x7f070687
        0x7f0705ad
        0x7f070983
        0x7f07092a
        0x7f0704ae
        0x7f07078d
        0x7f0702f2
        0x7f0703e8
        0x7f0700ca
        0x7f0700e4
        0x7f0707c5
        0x7f0703a4
        0x7f0703a2
        0x7f0705af
        0x7f0703ad
        0x7f070449
        0x7f0703a5
        0x7f07059e
        0x7f0705a0
        0x7f07059f
        0x7f0702fc
        0x7f070519
        0x7f0702a9
        0x7f0702b2
        0x7f0702bc
        0x7f0702a7
        0x7f0702b0
        0x7f0702ba
        0x7f0702ae
        0x7f0702b8
        0x7f0702c1
        0x7f0702a8
        0x7f0702b1
        0x7f0702bb
        0x7f0702ad
        0x7f0702b7
        0x7f0702c0
        0x7f0702aa
        0x7f0702b4
        0x7f0702bd
        0x7f0702ab
        0x7f0702b5
        0x7f0702be
        0x7f0702ac
        0x7f0702b6
        0x7f0702bf
        0x7f0703dd
        0x7f0703d2
        0x7f070438
        0x7f070437
        0x7f0705b0
        0x7f07047a
        0x7f070018
        0x7f07064d
        0x7f070405
        0x7f070406
        0x7f0703ee
        0x7f070705
        0x7f070704
        0x7f0703cf
        0x7f07052e
        0x7f070913
        0x7f0705e0
        0x7f0708a3
        0x7f07055e
        0x7f070407
        0x7f07045d
        0x7f070456
        0x7f070457
        0x7f0703fe
        0x7f0703fd
        0x7f07000f
        0x7f07000e
        0x7f0705ac
        0x7f070184
        0x7f070249
        0x7f07083d
        0x7f07005e
        0x7f070059
        0x7f070058
        0x7f0703e3
        0x7f07005d
        0x7f07054e
        0x7f070474
        0x7f07052d
        0x7f070473
        0x7f07052c
        0x7f0703a1
        0x7f070289
        0x7f0700d7
        0x7f0700d9
        0x7f0705a9
        0x7f0701f8
        0x7f07055f
        0x7f07026e
        0x7f070561
        0x7f070560
        0x7f070413
        0x7f070865
        0x7f0701a5
        0x7f07024d
        0x7f0706ee
        0x7f070231
        0x7f0707b3
        0x7f070882
        0x7f070881
        0x7f07003a
        0x7f0705de
        0x7f0707b7
        0x7f0707b6
        0x7f0707c0
        0x7f0706e9
        0x7f0706eb
        0x7f07022c
        0x7f07022e
        0x7f07016c
        0x7f070178
        0x7f070176
        0x7f070182
        0x7f070173
        0x7f07017f
        0x7f070171
        0x7f07017d
        0x7f07016a
        0x7f070430
        0x7f070028
        0x7f070185
        0x7f07015c
        0x7f0707fb
        0x7f070836
        0x7f070835
        0x7f0707a7
        0x7f070012
        0x7f07059c
        0x7f07059a
        0x7f07045a
        0x7f0701b6
        0x7f0700f7
        0x7f07012e
        0x7f07012d
        0x7f070713
        0x7f070145
        0x7f070131
        0x7f070005
        0x7f07002d
        0x7f070559
        0x7f0702d1
        0x7f070076
        0x7f07063c
        0x7f0702af
        0x7f0702b9
        0x7f0702c2
        0x7f0706e1
        0x7f0706e7
        0x7f0706d6
        0x7f0706e0
        0x7f07021a
        0x7f070224
        0x7f07022a
        0x7f070219
        0x7f070333
        0x7f070344
        0x7f07032c
        0x7f07033e
        0x7f070589
        0x7f070593
        0x7f07057c
        0x7f070588
        0x7f070314
        0x7f07059b
        0x7f07026a
        0x7f070158
        0x7f0701a6
        0x7f0701a7
        0x7f0703b8
        0x7f07072e
        0x7f070532
        0x7f07047b
        0x7f0703e2
        0x7f070409
        0x7f070385
        0x7f0703da
        0x7f070439
        0x7f0703b4
        0x7f07040b
        0x7f07045b
        0x7f0703f5
        0x7f070436
        0x7f070435
        0x7f0703b3
        0x7f0703b2
        0x7f0703d4
        0x7f0703d3
        0x7f070455
        0x7f070454
        0x7f0703f4
        0x7f0703f3
        0x7f0703d8
        0x7f0703d7
        0x7f0703b7
        0x7f0703b6
        0x7f0703ea
        0x7f0703e9
        0x7f070425
        0x7f070424
        0x7f070415
        0x7f070414
        0x7f07041b
        0x7f07041a
        0x7f070427
        0x7f070426
        0x7f070421
        0x7f070420
        0x7f07041d
        0x7f07041c
        0x7f070417
        0x7f070416
        0x7f07041f
        0x7f07041e
        0x7f070531
        0x7f07040a
        0x7f0704d2
        0x7f0704d1
        0x7f070156
        0x7f07023c
        0x7f070828
        0x7f0704bc
        0x7f07049b
        0x7f0702b3
        0x7f07002f
        0x7f07035c
        0x7f07010e
        0x7f070290
        0x7f0707c8
        0x7f0707c7
        0x7f0703eb
        0x7f070975
        0x7f070977
        0x7f070976
        0x7f070496
        0x7f070495
        0x7f070486
        0x7f070494
        0x7f070493
        0x7f07048a
        0x7f070482
        0x7f070492
        0x7f070484
        0x7f070481
        0x7f070485
        0x7f07048e
        0x7f070483
        0x7f07048d
        0x7f070488
        0x7f070490
        0x7f070489
        0x7f070497
        0x7f070498
        0x7f07048b
        0x7f0704b0
        0x7f0704af
        0x7f07081a
        0x7f070819
        0x7f07073d
        0x7f0707cd
        0x7f0707cc
        0x7f07062d
        0x7f07062c
        0x7f070117
        0x7f070468
        0x7f070068
        0x7f070096
        0x7f070198
        0x7f070199
        0x7f0707f6
        0x7f0707f5
        0x7f07025e
        0x7f07025c
        0x7f07025d
        0x7f07026c
        0x7f070296
        0x7f0701da
        0x7f0701d9
        0x7f0702df
        0x7f070067
        0x7f070361
        0x7f070303
        0x7f07098b
        0x7f070019
        0x7f07001a
        0x7f07024f
        0x7f07050a
        0x7f070509
        0x7f0705a5
        0x7f070506
        0x7f0701c5
        0x7f07007b
        0x7f07015e
        0x7f07015d
        0x7f0703c2
        0x7f0703cb
        0x7f0703ca
        0x7f0703c1
        0x7f0703c9
        0x7f0703c0
        0x7f070345
        0x7f070349
        0x7f070346
        0x7f07034a
        0x7f070347
        0x7f070348
        0x7f070030
        0x7f0703f8
        0x7f07045e
        0x7f0703c6
        0x7f0703c8
        0x7f0703bf
        0x7f0701b7
        0x7f070408
        0x7f070404
        0x7f07026f
        0x7f07042b
        0x7f0701a4
        0x7f0703f1
        0x7f0703fa
        0x7f070595
        0x7f070594
        0x7f0703dc
        0x7f070031
        0x7f07010f
        0x7f07010a
        0x7f070162
        0x7f0701ec
        0x7f070737
        0x7f0701cc
        0x7f070624
        0x7f070739
        0x7f0701cf
        0x7f070757
        0x7f0701a1
        0x7f0701c4
        0x7f070735
        0x7f0701bb
        0x7f0701f7
        0x7f070759
        0x7f0707cf
        0x7f0701cb
        0x7f070307
        0x7f070787
        0x7f070781
        0x7f070785
        0x7f070789
        0x7f070778
        0x7f070630
        0x7f0702ff
        0x7f070623
        0x7f070253
        0x7f070252
        0x7f07077f
        0x7f070784
        0x7f07080d
        0x7f07080f
        0x7f070193
        0x7f070121
        0x7f070112
        0x7f070140
        0x7f070157
        0x7f070149
        0x7f07012a
        0x7f07015f
        0x7f070160
        0x7f07075f
        0x7f07075e
        0x7f070777
        0x7f070503
        0x7f0704d6
        0x7f07014e
        0x7f070101
        0x7f0702d3
        0x7f070501
        0x7f0704f6
        0x7f0704f7
        0x7f0704f9
        0x7f0704fa
        0x7f0704fb
        0x7f0704fc
        0x7f0704fd
        0x7f0704fe
        0x7f0704ff
        0x7f070500
        0x7f0704f8
        0x7f0701af
        0x7f07002b
        0x7f07015b
        0x7f070448
        0x7f0703f9
        0x7f070259
        0x7f07025a
        0x7f07025b
        0x7f0707ab
        0x7f070634
        0x7f070269
        0x7f070692
        0x7f0702f9
        0x7f0702cd
        0x7f0705aa
        0x7f07098e
        0x7f07098f
        0x7f070458
        0x7f070446
        0x7f07044d
        0x7f0703a6
        0x7f070445
        0x7f07044c
        0x7f070632
        0x7f07010c
        0x7f07076d
        0x7f07076b
        0x7f07029e
        0x7f07066e
        0x7f07067b
        0x7f07013f
        0x7f070108
        0x7f07085f
        0x7f070680
        0x7f070188
        0x7f070111
        0x7f070123
        0x7f070151
        0x7f07096a
        0x7f07031c
        0x7f070972
        0x7f070971
        0x7f07096b
        0x7f07096e
        0x7f07096d
        0x7f07096c
        0x7f07096f
        0x7f070970
        0x7f070820
        0x7f070897
        0x7f070201
        0x7f070733
        0x7f0703e0
        0x7f0703e1
        0x7f070754
        0x7f0700a6
        0x7f0700a2
        0x7f0705c2
        0x7f0705cb
        0x7f0705c6
        0x7f0705c9
        0x7f0705c4
        0x7f0705bd
        0x7f07088a
        0x7f070394
        0x7f070452
        0x7f0701b3
        0x7f070845
        0x7f070842
        0x7f07083e
        0x7f0701b2
        0x7f0701b4
        0x7f0701b1
        0x7f070608
        0x7f070609
        0x7f07060a
        0x7f07060b
        0x7f070615
        0x7f070612
        0x7f07060f
        0x7f070601
        0x7f0705f1
        0x7f070607
        0x7f07060c
        0x7f070604
        0x7f07061d
        0x7f0705fc
        0x7f0705fd
        0x7f0705f3
        0x7f0705f4
        0x7f0705ea
        0x7f0705ed
        0x7f07063b
        0x7f070639
        0x7f070638
        0x7f07063a
        0x7f070637
        0x7f07039c
        0x7f0703fc
        0x7f0703fb
        0x7f070683
        0x7f070515
        0x7f07031d
        0x7f0703c7
        0x7f070078
        0x7f070079
        0x7f07007a
        0x7f0703af
        0x7f0703ed
        0x7f070077
        0x7f070636
        0x7f07054f
        0x7f070550
        0x7f07054c
        0x7f0700b5
        0x7f07097a
        0x7f070981
        0x7f070980
        0x7f07097f
        0x7f07097b
        0x7f070979
        0x7f07097d
        0x7f07097c
        0x7f07097e
        0x7f070517
        0x7f070370
        0x7f0703df
        0x7f07040f
        0x7f070042
        0x7f07043c
        0x7f070443
        0x7f07043e
        0x7f070441
        0x7f07043f
        0x7f07043d
        0x7f070442
        0x7f070440
        0x7f070460
        0x7f07045f
        0x7f0703ba
        0x7f070260
        0x7f07040e
        0x7f070434
        0x7f070412
        0x7f070433
        0x7f070411
        0x7f07067a
        0x7f070694
        0x7f070301
        0x7f07046d
        0x7f07046f
        0x7f07046e
        0x7f070470
        0x7f07098a
        0x7f070989
        0x7f070988
        0x7f070987
        0x7f070986
        0x7f070675
        0x7f070674
        0x7f070073
        0x7f0701dd
        0x7f0701dc
        0x7f070709
        0x7f07070b
        0x7f07027b
        0x7f07027d
        0x7f07012c
        0x7f07012f
        0x7f070154
        0x7f070669
        0x7f070668
        0x7f070666
        0x7f070667
        0x7f0701e1
        0x7f0701e0
        0x7f0701e8
        0x7f0701e9
        0x7f0701e4
        0x7f0701e5
        0x7f0701df
        0x7f0701e6
        0x7f0701e7
        0x7f0701e2
        0x7f0701e3
        0x7f070844
        0x7f070022
        0x7f0704ac
        0x7f0704aa
        0x7f070661
        0x7f070660
        0x7f07066c
        0x7f0707da
        0x7f0707ca
        0x7f0707bc
        0x7f070715
        0x7f07081c
        0x7f070814
        0x7f070723
        0x7f070721
        0x7f07026d
        0x7f0705dd
        0x7f07011f
        0x7f070300
        0x7f070551
        0x7f07009f
        0x7f070056
        0x7f070052
        0x7f0704bf
        0x7f070876
        0x7f070209
        0x7f070311
        0x7f070520
        0x7f07039b
        0x7f070886
        0x7f0704f1
        0x7f0704f2
        0x7f0704d9
        0x7f0704e7
        0x7f0704e4
        0x7f0704e5
        0x7f0704eb
        0x7f0704de
        0x7f0704df
        0x7f0704e9
        0x7f0704f0
        0x7f0704e6
        0x7f0704ea
        0x7f0704e3
        0x7f0704e1
        0x7f0704ed
        0x7f0704dd
        0x7f0704da
        0x7f0704e8
        0x7f0704e2
        0x7f0704ee
        0x7f0704e0
        0x7f0704d8
        0x7f070254
        0x7f0704f5
        0x7f07056e
        0x7f070568
        0x7f07056a
        0x7f0702dd
        0x7f070062
        0x7f0703d0
        0x7f0703d1
        0x7f0702fb
        0x7f0703ec
        0x7f070120
        0x7f070520
        0x7f070521
        0x7f0700fd
        0x7f0700fe
        0x7f070444
        0x7f07044b
        0x7f070463
        0x7f070462
        0x7f0703ef
        0x7f070464
        0x7f070401
        0x7f07018d
        0x7f07014f
        0x7f07003f
        0x7f070847
        0x7f070461
        0x7f0703be
        0x7f07078b
        0x7f07069a
        0x7f070258
        0x7f07069b
        0x7f070365
        0x7f070368
        0x7f070367
        0x7f070366
        0x7f07068b
        0x7f07098d
        0x7f070075
        0x7f0700f4
        0x7f070116
        0x7f070141
        0x7f070450
        0x7f070402
        0x7f07039f
        0x7f0703a0
        0x7f07019c
        0x7f07005c
        0x7f0704a4
        0x7f0704c4
        0x7f07048c
        0x7f070491
        0x7f070487
        0x7f07048f
        0x7f070614
        0x7f070718
        0x7f0702de
        0x7f070480
        0x7f070950
        0x7f0700a0
        0x7f070150
        0x7f070129
        0x7f07060d
        0x7f07060e
        0x7f0705ee
        0x7f070618
        0x7f070619
        0x7f0705ec
        0x7f070965
        0x7f070966
        0x7f070918
        0x7f07044a
        0x7f07044f
        0x7f070775
        0x7f070967
        0x7f07027c
        0x7f0707ae
        0x7f070859
        0x7f070858
        0x7f0707be
        0x7f07001b
        0x7f07052a
        0x7f07095b
        0x7f070302
        0x7f0705b1
        0x7f070447
        0x7f07044e
        0x7f0700f8
        0x7f0705ff
        0x7f0705fe
        0x7f070132
        0x7f070165
        0x7f0705e8
        0x7f0705e9
        0x7f0701c7
        0x7f070040
        0x7f07024a
        0x7f070051
        0x7f070142
        0x7f0703d9
        0x7f0703db
        0x7f0706a6
        0x7f07075c
        0x7f07071c
        0x7f07077d
        0x7f07011d
        0x7f07056c
        0x7f07003d
        0x7f0705e7
        0x7f0705e5
        0x7f0705e6
        0x7f0707fd
        0x7f07002a
        0x7f0700b1
        0x7f0703b0
    .end array-data

    :array_1
    .array-data 4
        0x7f070629
        0x7f07034b
        0x7f0700fa
        0x7f070194
        0x7f070525
        0x7f070360
        0x7f07010d
    .end array-data

    :array_2
    .array-data 4
        0x7f070009
        0x7f07001c
        0x7f0700ff
        0x7f07014d
        0x7f07034b
        0x7f070133
        0x7f070629
        0x7f07018b
        0x7f0700fa
        0x7f07002c
        0x7f0700f9
        0x7f070194
        0x7f07013b
        0x7f070091
        0x7f070525
        0x7f07068f
        0x7f070360
        0x7f070110
        0x7f07010d
        0x7f070135
        0x7f070177
        0x7f070128
        0x7f07011c
        0x7f070113
        0x7f070192
        0x7f070147
        0x7f070163
        0x7f070191
    .end array-data

    :array_3
    .array-data 4
        0x7f070104
        0x7f070153
        0x7f070107
        0x7f0700fc
        0x7f07013e
        0x7f0700bd
        0x7f070274
        0x7f070627
        0x7f070127
    .end array-data

    :array_4
    .array-data 4
        0x7f0700ff
        0x7f07014d
        0x7f07034b
        0x7f070629
        0x7f07018b
        0x7f0700fa
        0x7f0700f9
        0x7f07013b
        0x7f070525
        0x7f070135
        0x7f070177
        0x7f070128
        0x7f07011c
        0x7f070192
        0x7f070095
    .end array-data

    :array_5
    .array-data 4
        0x7f070105
        0x7f070126
        0x7f070161
        0x7f070115
        0x7f070107
        0x7f0700fc
        0x7f07013e
        0x7f0700bd
        0x7f070274
        0x7f070627
        0x7f070127
        0x7f070186
        0x7f07018e
        0x7f070167
    .end array-data

    :array_6
    .array-data 4
        0x7f070134
        0x7f0701f9
        0x7f0701f1
        0x7f0701fe
        0x7f0701fd
        0x7f070032
        0x7f070532
        0x7f070525
        0x7f07068f
        0x7f07035d
        0x7f07001c
        0x7f070542
        0x7f070009
        0x7f070360
        0x7f070162
        0x7f070119
        0x7f070110
        0x7f07010d
        0x7f07010e
        0x7f070117
        0x7f070113
        0x7f07010c
        0x7f07010f
        0x7f07010a
        0x7f070121
        0x7f07064d
        0x7f070156
        0x7f070185
        0x7f070149
        0x7f07012a
        0x7f07015f
        0x7f070160
        0x7f07014a
        0x7f07012b
        0x7f070194
        0x7f070195
        0x7f07000d
        0x7f0706fb
        0x7f070018
        0x7f07047a
        0x7f07024d
        0x7f070112
        0x7f0700f7
        0x7f07018b
        0x7f070629
        0x7f07011c
        0x7f070101
        0x7f07014e
        0x7f0707e1
        0x7f070192
        0x7f070193
        0x7f07013b
        0x7f07013a
        0x7f07018c
        0x7f070186
        0x7f070091
        0x7f070138
        0x7f070167
        0x7f070140
        0x7f070109
        0x7f07015c
        0x7f07015e
        0x7f07015d
        0x7f07016a
        0x7f07012e
        0x7f07012d
        0x7f0700bd
        0x7f070274
        0x7f07013e
        0x7f070107
        0x7f0700fc
        0x7f070127
        0x7f070104
        0x7f070627
        0x7f070128
        0x7f0700f9
        0x7f070183
        0x7f07016b
        0x7f070169
        0x7f070177
        0x7f070148
        0x7f070164
        0x7f07013d
        0x7f070144
        0x7f070184
        0x7f070135
        0x7f070105
        0x7f070126
        0x7f070545
        0x7f070546
        0x7f07014b
        0x7f070548
        0x7f070549
        0x7f07054a
        0x7f070547
        0x7f070191
        0x7f07009b
        0x7f07034b
        0x7f07002c
        0x7f070133
        0x7f0700fa
        0x7f070163
        0x7f07014c
        0x7f070189
        0x7f070166
        0x7f07014d
        0x7f0700ff
        0x7f070054
        0x7f070305
        0x7f070157
        0x7f07015b
        0x7f070124
        0x7f070152
        0x7f070161
        0x7f070115
        0x7f0705ad
        0x7f070689
        0x7f070687
        0x7f07068a
        0x7f070688
        0x7f070145
        0x7f070131
        0x7f07017a
        0x7f07016e
        0x7f070180
        0x7f070174
        0x7f07017e
        0x7f070172
        0x7f070181
        0x7f070175
        0x7f07017b
        0x7f07016f
        0x7f070179
        0x7f07016d
        0x7f070178
        0x7f07016c
        0x7f070182
        0x7f070176
        0x7f07017f
        0x7f070173
        0x7f07017d
        0x7f070171
        0x7f070108
        0x7f07013f
        0x7f070188
        0x7f070111
        0x7f070123
        0x7f070151
        0x7f07012c
        0x7f07012f
        0x7f070154
        0x7f07011f
        0x7f070120
        0x7f070520
        0x7f070521
        0x7f0700fd
        0x7f0700fe
        0x7f070147
        0x7f0700f4
        0x7f070116
        0x7f070141
        0x7f0700a0
        0x7f070129
        0x7f070150
        0x7f070965
        0x7f070966
        0x7f070918
        0x7f0700f8
        0x7f070132
        0x7f070165
        0x7f070964
        0x7f070142
        0x7f07011d
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/androlua/LuaResources;->superRes:Landroid/content/res/Resources;

    return-void
.end method

.method public static clear()V
    .locals 1

    sget-object v0, Lcom/androlua/LuaResources;->mTextMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    sget-object v0, Lcom/androlua/LuaResources;->mStringArraysMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Lk2/j;->b()V

    invoke-static {}, Lk2/f0;->a()V

    return-void
.end method

.method public static export(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/androlua/LuaApplication;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "_strings.json"

    invoke-static {p1, v0}, Lcom/androlua/LuaApplication;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaApplication;->getResourcesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    const-string v0, "strings.json"

    invoke-virtual {p1, v0}, Lcom/androlua/LuaApplication;->getDeLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/androlua/LuaUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static export(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_all_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/androlua/LuaApplication;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "_strings.json"

    invoke-static {p2, v0}, Lcom/androlua/LuaApplication;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/androlua/LuaApplication;->getResourcesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method

.method public static export(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p0

    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/androlua/LuaApplication;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_strings.json"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/androlua/LuaApplication;->getResourcesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v1, "strings.json"

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getDeLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/androlua/LuaUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static export(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_all_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/androlua/LuaApplication;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_strings.json"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/androlua/LuaApplication;->getResourcesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V

    return-object p1
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4

    sget-object v0, Lcom/androlua/LuaResources;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    sget-object v2, Lcom/androlua/LuaResources;->stringIds:[I

    aget v2, v2, v0

    sget-object v3, Lcom/androlua/LuaResources;->mNamesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v3, Lcom/androlua/LuaResources;->mIdMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/androlua/LuaResources;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getResName(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/androlua/LuaResources;->mNamesMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static init(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 6

    sget-object v0, Lcom/androlua/LuaResources;->mTextMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/androlua/LuaResources;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/androlua/LuaResources;->load(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/androlua/LuaResources;->stringNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v1, v1, v0

    sget-object v2, Lcom/androlua/LuaResources;->stringIds:[I

    aget v2, v2, v0

    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "date_format"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_2

    :try_start_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sget-object v4, Lcom/androlua/LuaResources;->mTextMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    :try_start_2
    sget-object v3, Lcom/androlua/LuaResources;->mTextMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/androlua/LuaResources;->mTextMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/androlua/LuaResources;->mTextMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :goto_2
    sget-object v3, Lcom/androlua/LuaResources;->mNamesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v3, Lcom/androlua/LuaResources;->mIdMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    const p0, 0x7f010008

    sget-object v0, Lcom/androlua/LuaResources;->execute_command:[I

    invoke-static {p1, p0, v0}, Lcom/androlua/LuaResources;->setStringArrays(Landroid/content/res/Resources;I[I)V

    const/high16 p0, 0x7f010000

    sget-object v0, Lcom/androlua/LuaResources;->action_menu_items:[I

    invoke-static {p1, p0, v0}, Lcom/androlua/LuaResources;->setStringArrays(Landroid/content/res/Resources;I[I)V

    const p0, 0x7f010012

    sget-object v0, Lcom/androlua/LuaResources;->menu_def_items:[I

    invoke-static {p1, p0, v0}, Lcom/androlua/LuaResources;->setStringArrays(Landroid/content/res/Resources;I[I)V

    const p0, 0x7f010013

    sget-object v0, Lcom/androlua/LuaResources;->menu_items:[I

    invoke-static {p1, p0, v0}, Lcom/androlua/LuaResources;->setStringArrays(Landroid/content/res/Resources;I[I)V

    const p0, 0x7f01000f

    sget-object v0, Lcom/androlua/LuaResources;->left_menu_items:[I

    invoke-static {p1, p0, v0}, Lcom/androlua/LuaResources;->setStringArrays(Landroid/content/res/Resources;I[I)V

    const p0, 0x7f010017

    sget-object v0, Lcom/androlua/LuaResources;->right_menu_items:[I

    invoke-static {p1, p0, v0}, Lcom/androlua/LuaResources;->setStringArrays(Landroid/content/res/Resources;I[I)V

    invoke-static {}, Lcom/nirenr/talkman/g;->a()V

    invoke-static {}, Lk2/j;->c()V

    invoke-static {}, Lk2/f0;->b()V

    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/androlua/LuaResources;->sEnabled:Z

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "custom_language"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/androlua/LuaResources;->sEnabled:Z

    return p0
.end method

.method public static load(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p0

    const-string v0, "strings.json"

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getDeLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/nirenr/talkman/o;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/androlua/LuaResources;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/androlua/LuaResources;->mIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/androlua/LuaResources;->mId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/androlua/LuaResources;->mId:I

    :goto_0
    instance-of v1, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lcom/androlua/LuaResources;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/androlua/LuaResources;->setText(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/androlua/LuaResources;->setColor(II)V

    :goto_1
    sget-object p1, Lcom/androlua/LuaResources;->mIdMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static save(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p0

    const-string v0, "strings.json"

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getDeLuaPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setColor(II)V
    .locals 1

    sget-object v0, Lcom/androlua/LuaResources;->mColorMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static setDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/androlua/LuaResources;->mDrawableMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 1

    sput-boolean p1, Lcom/androlua/LuaResources;->sEnabled:Z

    invoke-static {p0}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "custom_language"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method private static setStringArrays(Landroid/content/res/Resources;I[I)V
    .locals 4

    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/androlua/LuaResources;->mTextMap:Landroid/util/SparseArray;

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_1

    :cond_0
    aget v2, p2, v1

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/androlua/LuaResources;->mStringArraysMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static setText(ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/androlua/LuaResources;->mTextMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public varargs __call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public __index(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/androlua/LuaResources;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public __newIndex(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/androlua/LuaResources;->put(Ljava/lang/String;Ljava/lang/Object;)I

    return-void
.end method

.method public getColor(I)I
    .locals 1

    sget-object v0, Lcom/androlua/LuaResources;->mColorMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaResources;->superRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/androlua/LuaResources;->mDrawableMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaResources;->superRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Lcom/androlua/LuaResources;->mDrawableMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaResources;->superRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/androlua/LuaResources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androlua/LuaResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    iget-object v0, p0, Lcom/androlua/LuaResources;->superRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :try_start_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object p1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/androlua/LuaResources;->mStringArraysMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaResources;->superRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/androlua/LuaResources;->mTextMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaResources;->superRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lcom/androlua/LuaResources;->mTextMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaResources;->superRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
