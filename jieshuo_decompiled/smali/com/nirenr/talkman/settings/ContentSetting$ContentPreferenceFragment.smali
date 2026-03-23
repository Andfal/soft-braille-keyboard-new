.class public Lcom/nirenr/talkman/settings/ContentSetting$ContentPreferenceFragment;
.super Lcom/nirenr/talkman/settings/BasePreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/settings/ContentSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentPreferenceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 2

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isAbc()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->checkVip()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/ContentSetting$ContentPreferenceFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/ContentSetting$ContentPreferenceFragment;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->setPreferencesFromResource(I)V

    invoke-super {p0, p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->isCN()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "text_format_settings"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceScreen;

    const v0, 0x7f070855

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const/4 p1, 0x3

    new-array v0, p1, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->checkVip([I)V

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "10"

    const-string v11, "15"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f070622

    invoke-virtual {p0, v1, v0, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->setEntriesAndValues(I[Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v0, Lcom/nirenr/talkman/settings/ContentSetting$ContentPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/ContentSetting$ContentPreferenceFragment$1;-><init>(Lcom/nirenr/talkman/settings/ContentSetting$ContentPreferenceFragment;)V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/androlua/LuaApplication;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f070724

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v2, 0x7f070475

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f070665

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "0"

    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    new-array p1, p1, [Ljava/lang/String;

    const v4, 0x7f070668

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v1

    const v1, 0x7f070666

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, p1, v4

    const v1, 0x7f070667

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, p1, v4

    invoke-virtual {v2, p1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :array_0
    .array-data 4
        0x7f070771
        0x7f070848
        0x7f07082c
    .end array-data
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    instance-of v1, p2, Ljava/util/Set;

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    const v1, 0x7f070836

    const/4 v2, 0x0

    const/16 v3, 0x17

    const-string v4, "android.permission.READ_CALL_LOG"

    if-ne v0, v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/androlua/s;->a(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v2}, Lcom/androlua/a0;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    const v1, 0x7f070833

    if-ne v0, v1, :cond_6

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v3, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v1, v3}, Lcom/androlua/s;->a(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v1

    const/16 v5, 0x1c8

    const-string v6, "android.permission.READ_PHONE_NUMBERS"

    const-string v7, "android.permission.READ_CONTACTS"

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v7, v4, v3, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lcom/androlua/a0;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/androlua/s;->a(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v7, v4, v3, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lcom/androlua/a0;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/androlua/s;->a(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v7, v4, v3, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lcom/androlua/a0;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/androlua/s;->a(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v7, v4, v3, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v5}, Lcom/androlua/a0;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_6
    :goto_1
    const v1, 0x7f07080f

    if-ne v0, v1, :cond_7

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/nirenr/talkman/NotificationListener;->c()Lcom/nirenr/talkman/NotificationListener;

    move-result-object v1

    if-nez v1, :cond_7

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v1, v3, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/nirenr/talkman/NotificationListener;->e(Landroid/content/Context;)V

    :cond_7
    const v1, 0x7f070669

    const/4 v3, 0x1

    if-ne v0, v1, :cond_8

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const v4, 0x7f070668

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const v2, 0x7f070666

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f070667

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_2
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-nez p1, :cond_9

    return v3

    :cond_9
    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseWindowTitleChanged(Z)V

    goto/16 :goto_3

    :sswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseWebViewName(Z)V

    goto/16 :goto_3

    :sswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseViewName(Z)V

    goto/16 :goto_3

    :sswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseTextFormatReadWord(Z)V

    goto/16 :goto_3

    :sswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseTextFormatFirst(Z)V

    goto/16 :goto_3

    :sswitch_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseTextFormatCharUpper(Z)V

    goto/16 :goto_3

    :sswitch_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseTextFormatCharNumber(Z)V

    goto/16 :goto_3

    :sswitch_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseSupperFilter(Z)V

    goto/16 :goto_3

    :sswitch_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseSpeakState(Z)V

    goto/16 :goto_3

    :sswitch_9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseSpeakQqChanged(Z)V

    goto/16 :goto_3

    :sswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseSpeakKey(Z)V

    goto/16 :goto_3

    :sswitch_b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseSpeakWindowAllChanged(Z)V

    goto/16 :goto_3

    :sswitch_c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseSmallFilter(Z)V

    goto/16 :goto_3

    :sswitch_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseScrollListKeepPosition(Z)V

    goto/16 :goto_3

    :sswitch_e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseScrollListIndex(Z)V

    goto/16 :goto_3

    :sswitch_f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseScrollListContent(Z)V

    goto/16 :goto_3

    :sswitch_10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseScreenOnSpeak(Z)V

    goto/16 :goto_3

    :sswitch_11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseScreenOnSpeakNotification(Z)V

    goto/16 :goto_3

    :sswitch_12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseScreenOnSpeakBattery(Z)V

    goto/16 :goto_3

    :sswitch_13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseScreenOffSpeak(Z)V

    goto/16 :goto_3

    :sswitch_14
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseRingtoneVolume(Z)V

    goto/16 :goto_3

    :sswitch_15
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseProgress(Z)V

    goto/16 :goto_3

    :sswitch_16
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseNodeInfo(Z)V

    goto/16 :goto_3

    :sswitch_17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseListItemIndex(Z)V

    goto/16 :goto_3

    :sswitch_18
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseListItemIndexRealTime(Z)V

    goto/16 :goto_3

    :sswitch_19
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseListIndex(Z)V

    goto/16 :goto_3

    :sswitch_1a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseImageFilter(Z)V

    goto/16 :goto_3

    :sswitch_1b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseEditHint(Z)V

    goto :goto_3

    :sswitch_1c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseCustomNodeName(Z)V

    goto :goto_3

    :sswitch_1d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseCustomDictSpeak(Z)V

    goto :goto_3

    :sswitch_1e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseCustomDictRegex(Z)V

    goto :goto_3

    :sswitch_1f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseContentTreeChanged(Z)V

    goto :goto_3

    :sswitch_20
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseContentChanged(Z)V

    goto :goto_3

    :sswitch_21
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseCloudLabel(Z)V

    goto :goto_3

    :sswitch_22
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUsageHints(Z)V

    goto :goto_3

    :sswitch_23
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUnknownLabel(Z)V

    goto :goto_3

    :sswitch_24
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUnknownIndex(Z)V

    goto :goto_3

    :sswitch_25
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setContentBlacklist(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_26
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAutoSpeakApps(Ljava/util/Set;)V

    :goto_3
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070059 -> :sswitch_26
        0x7f07019e -> :sswitch_25
        0x7f0706c8 -> :sswitch_24
        0x7f0706cb -> :sswitch_23
        0x7f070701 -> :sswitch_22
        0x7f070726 -> :sswitch_21
        0x7f070729 -> :sswitch_20
        0x7f07072c -> :sswitch_1f
        0x7f07072e -> :sswitch_1e
        0x7f070730 -> :sswitch_1d
        0x7f070735 -> :sswitch_1c
        0x7f070754 -> :sswitch_1b
        0x7f070773 -> :sswitch_1a
        0x7f0707a4 -> :sswitch_19
        0x7f0707a7 -> :sswitch_18
        0x7f0707a9 -> :sswitch_17
        0x7f0707d3 -> :sswitch_16
        0x7f0707ef -> :sswitch_15
        0x7f070808 -> :sswitch_14
        0x7f07080a -> :sswitch_13
        0x7f07080d -> :sswitch_12
        0x7f07080f -> :sswitch_11
        0x7f070810 -> :sswitch_10
        0x7f070812 -> :sswitch_f
        0x7f070817 -> :sswitch_e
        0x7f07081a -> :sswitch_d
        0x7f07082d -> :sswitch_c
        0x7f07083b -> :sswitch_b
        0x7f07083d -> :sswitch_a
        0x7f070841 -> :sswitch_9
        0x7f070844 -> :sswitch_8
        0x7f07084a -> :sswitch_7
        0x7f070850 -> :sswitch_6
        0x7f070852 -> :sswitch_5
        0x7f070854 -> :sswitch_4
        0x7f070856 -> :sswitch_3
        0x7f07087e -> :sswitch_2
        0x7f070895 -> :sswitch_1
        0x7f070897 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitleRes()I

    move-result p1

    const-class v0, Lcom/nirenr/talkman/settings/LabelSetting;

    const-class v1, Lcom/nirenr/talkman/settings/BlackListSetting;

    const/4 v2, 0x1

    const-string v3, "NAME"

    const-string v4, "RES_ID"

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return p1

    :sswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f0701c3

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f0701c4

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getNamesDir()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v2

    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/nirenr/talkman/settings/JSONSetting;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f0701bd

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f0701be

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const v1, 0x7f070278

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androlua/LuaApplication;->getResourcesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f0701a0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f0701a1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getLabelsDir()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f07019b

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f07019e

    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_1

    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x7f07005d

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x7f07005d -> :sswitch_4
        0x7f07019e -> :sswitch_3
        0x7f0701a1 -> :sswitch_2
        0x7f0701be -> :sswitch_1
        0x7f0701c4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onResume()V

    invoke-static {}, Lcom/nirenr/talkman/NotificationListener;->c()Lcom/nirenr/talkman/NotificationListener;

    move-result-object v0

    const v1, 0x7f07080e

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0702d3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
