.class public Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;
.super Lcom/nirenr/talkman/settings/BasePreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/settings/TimerTtsSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerTtsPreferenceFragment"
.end annotation


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field private d:Z

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->g:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x5fs
        0x59s
        0x6fs
        0x75s
        0x54s
        0x75s
        0x5fs
        0x4bs
        0x65s
        0x79s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->e:Ljava/lang/String;

    const/4 v0, 0x7

    iput v0, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    return-void
.end method

.method private a()Z
    .locals 3

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isAbc()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private c()Z
    .locals 1

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/androlua/w;->a(Landroid/preference/PreferenceManager;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v3, 0x7f07052f

    invoke-virtual {v1, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "zh"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    iput-boolean v3, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->d:Z

    :cond_3
    const v0, 0x7f0a0019

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->addPreferencesFromResource(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x64

    if-gt v5, v6, :cond_4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->a()Z

    move-result v5

    const v6, 0x7f070682

    if-eqz v5, :cond_6

    const/16 v5, 0x6e

    :goto_1
    const/16 v7, 0xc8

    if-gt v5, v7, :cond_5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0xa

    goto :goto_1

    :cond_5
    const/16 v5, 0xfa

    :goto_2
    const/16 v7, 0x3e8

    if-gt v5, v7, :cond_7

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x32

    goto :goto_2

    :cond_6
    invoke-virtual {v1, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v1, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/Object;

    const v8, 0x7f070653

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const v8, 0x7f0702d4

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    const v5, 0x7f070685

    invoke-virtual {v1, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f0706a2

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "main"

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->e:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v10, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x3

    const-string v11, "async"

    if-nez v0, :cond_8

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    const v0, 0x7f070049

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x7f01001c

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v13, 0x7f01001d

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_a

    const-string v0, "eSpeak"

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f01001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const v2, 0x7f07067f

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, v7, v8}, Lcom/nirenr/talkman/settings/VoiceSetting$VoicePreferenceFragment;->reloadInstalledTtsEngines(Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v12, 0x7f0708ae

    invoke-virtual {v1, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v2, v12}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const v0, 0x7f07085e

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/String;

    const v8, 0x7f07063b

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const v8, 0x7f070639

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const v8, 0x7f070638

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    const v8, 0x7f07063a

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const v8, 0x7f070637

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    const-string v8, "5"

    const-string v12, "10"

    const-string v13, "2"

    const-string v14, "3"

    const-string v15, "4"

    filled-new-array {v13, v14, v15, v8, v12}, [Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v8, :cond_c

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_c
    const/16 v7, 0x5b

    new-array v8, v7, [Ljava/lang/String;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v7, :cond_e

    rem-int/lit8 v13, v12, 0xa

    if-nez v13, :cond_d

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v3, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v15, v4

    const-string v7, "%.0f"

    invoke-static {v13, v7, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v12

    goto :goto_6

    :cond_d
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v4

    const-string v15, "%.1f"

    invoke-static {v7, v15, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v12

    :goto_6
    const v7, 0x3dcccccd    # 0.1f

    add-float/2addr v10, v7

    add-int/lit8 v12, v12, 0x1

    const/16 v7, 0x5b

    goto :goto_5

    :cond_e
    invoke-virtual {v1, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->e:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    const-string v7, "TimerTextToSpeak"

    iget-object v8, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->e:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_8

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f070480

    goto :goto_7

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0702de

    goto :goto_7

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f070300

    goto :goto_7

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f07009f

    goto :goto_7

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f070056

    goto :goto_7

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f070052

    goto :goto_7

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f070551

    goto :goto_7

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0704bf

    :goto_7
    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f070652

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v10, "1"

    invoke-interface {v8, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f070656

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "100"

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const v5, 0x7f070684

    invoke-virtual {v1, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f070654

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "50"

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const v5, 0x7f070681

    invoke-virtual {v1, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f070651

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f07064f

    invoke-virtual {v1, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    sget-object v7, Lcom/nirenr/talkman/a;->t:[Ljava/lang/String;

    iget v8, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    aget-object v7, v7, v8

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const/4 v6, 0x1

    :goto_9
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    if-ge v6, v7, :cond_10

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const/4 v8, 0x1

    goto :goto_a

    :cond_f
    const/4 v8, 0x0

    :goto_a
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070655

    invoke-virtual {v1, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, v2, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_d

    :cond_11
    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v5, 0x1

    :goto_b
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-ge v5, v6, :cond_13

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    const/4 v7, 0x1

    goto :goto_c

    :cond_12
    const/4 v7, 0x0

    :goto_c
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_13
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    invoke-static {}, Lcom/nirenr/talkman/a;->l()Lcom/nirenr/talkman/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/a;->m(I)Lcom/nirenr/talkman/tts/TextToSpeak;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/a;->k(I)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "nirenr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const p2, 0x7f0702d4

    invoke-virtual {p0, p2, v0}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f070095

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    const v3, 0x7f070156

    if-ne v0, v3, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    const-string v6, "main"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "async"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, p2}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-static {}, Lcom/nirenr/talkman/a;->l()Lcom/nirenr/talkman/a;

    move-result-object v3

    if-eqz v1, :cond_7

    if-nez v3, :cond_3

    goto/16 :goto_2

    :cond_3
    iget v4, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    invoke-virtual {v3, v4}, Lcom/nirenr/talkman/a;->m(I)Lcom/nirenr/talkman/tts/TextToSpeak;

    move-result-object v4

    if-nez v4, :cond_4

    return v2

    :cond_4
    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v5, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment$1;

    invoke-direct {v5, p0, v4, p1}, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment$1;-><init>(Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;Lcom/nirenr/talkman/tts/TextToSpeak;Landroid/preference/Preference;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setStreamType(I)V

    iget p1, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_7

    invoke-static {}, Lcom/nirenr/talkman/TimerService;->c()Lcom/nirenr/talkman/TimerService;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/nirenr/talkman/TimerService;->g()V

    :cond_5
    invoke-static {}, Lcom/nirenr/talkman/ClockService;->c()Lcom/nirenr/talkman/ClockService;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/nirenr/talkman/ClockService;->d()V

    :cond_6
    invoke-static {}, Lj2/g;->d()Lj2/g;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lj2/g;->e()V

    goto :goto_2

    :sswitch_1
    check-cast p2, Ljava/lang/String;

    const/high16 p1, 0x42c80000    # 100.0f

    invoke-static {p2, p1}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result p1

    invoke-interface {v4, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsVolume(F)V

    goto :goto_2

    :sswitch_2
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsSpeed(I)V

    goto :goto_2

    :sswitch_3
    check-cast p2, Ljava/lang/String;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result p1

    invoke-interface {v4, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsScale(F)V

    goto :goto_2

    :sswitch_4
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v4, p1}, Lcom/nirenr/talkman/tts/TextToSpeak;->setTtsPitch(I)V

    goto :goto_2

    :sswitch_5
    iget p1, p0, Lcom/nirenr/talkman/settings/TimerTtsSetting$TimerTtsPreferenceFragment;->f:I

    invoke-virtual {v3, p1}, Lcom/nirenr/talkman/a;->k(I)V

    :cond_7
    :goto_2
    return v2

    :sswitch_data_0
    .sparse-switch
        0x7f070156 -> :sswitch_5
        0x7f0706a8 -> :sswitch_4
        0x7f0706aa -> :sswitch_3
        0x7f0706b5 -> :sswitch_2
        0x7f0706c3 -> :sswitch_1
        0x7f07085f -> :sswitch_0
    .end sparse-switch
.end method
