.class public Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;
.super Lcom/nirenr/talkman/settings/BasePreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/settings/ActionSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionPreferenceFragment"
.end annotation


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private d:Landroid/content/SharedPreferences;

.field private e:Landroid/preference/Preference;

.field private f:Landroid/preference/Preference;

.field private g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->h:Ljava/lang/String;

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
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;-><init>()V

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

    sget-object v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->h:Ljava/lang/String;

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

.method private b(Landroid/preference/PreferenceScreen;)V
    .locals 7

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Landroid/preference/PreferenceScreen;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v2}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->b(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    instance-of v3, v2, Landroid/preference/ListPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->d:Landroid/content/SharedPreferences;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_5

    :cond_1
    instance-of v3, v2, Landroid/preference/MultiSelectListPreference;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->d:Landroid/content/SharedPreferences;

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070929

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f010025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v4, v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070982

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f010029

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v6, v4, v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->d:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0701f3

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v3

    const-string v4, "\u8bf4\u660e"

    invoke-virtual {v3, v0, v4}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const p1, 0x7f0702d0

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0701f3

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0708ae

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v4

    const-string v5, "config"

    invoke-virtual {v4, p1, v5}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, ",\n"

    const-string v5, ":"

    const-string v6, ""

    const-string v7, "_double_fling"

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/nirenr/talkman/settings/ActionSetting;->a()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/nirenr/talkman/settings/ActionSetting;->a()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_3

    :try_start_2
    new-instance v8, Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nirenr/talkman/settings/ActionSetting;->a()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f070207

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "enabled"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f070512

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const v3, 0x7f0700bf

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {}, Lcom/nirenr/talkman/settings/ActionSetting;->a()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "  "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nirenr/talkman/settings/ActionSetting;->a()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const p1, 0x7f0702d0

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0701f5

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0708ae

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v4

    const-string v5, "config"

    invoke-virtual {v4, p1, v5}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const p1, 0x7f0702d0

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 70

    move-object/from16 v15, p0

    invoke-super/range {p0 .. p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070973

    invoke-virtual {v15, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-static {v1}, Lcom/androlua/w;->a(Landroid/preference/PreferenceManager;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f07052f

    invoke-virtual {v15, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v13, ""

    invoke-interface {v1, v2, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v12

    const v1, 0x7f0a0002

    invoke-virtual {v15, v1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->addPreferencesFromResource(I)V

    const v11, 0x7f0702cb

    invoke-virtual {v15, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/nirenr/talkman/settings/GestureManager;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const v1, 0x7f07032e

    invoke-virtual {v15, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/nirenr/talkman/settings/CommandListSetting;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v15, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "RES_ID"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v3, 0x7f07032f

    invoke-virtual {v15, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "NAME"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f01000f

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const-string v7, "DEF_VALUE"

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const v1, 0x7f07057e

    invoke-virtual {v15, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v3, v8, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v15, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v3, 0x7f07057f

    invoke-virtual {v15, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f010017

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const v1, 0x7f0702ef

    invoke-virtual {v15, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const v1, 0x7f0702c3

    invoke-virtual {v15, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const v10, 0x7f07031f

    invoke-virtual {v15, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/nirenr/talkman/settings/StringListSetting;

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v15, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f070321

    invoke-virtual {v15, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f070320

    invoke-virtual {v15, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const v9, 0x7f07056f

    invoke-virtual {v15, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v15, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f070571

    invoke-virtual {v15, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const v3, 0x7f070570

    invoke-virtual {v15, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const v8, 0x7f0702c9

    invoke-virtual {v15, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/preference/ListPreference;

    const v1, 0x7f070033

    invoke-virtual {v15, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v7, v15}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v6, v15}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f07029d

    invoke-virtual {v15, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/preference/MultiSelectListPreference;

    const v2, 0x7f07003c

    invoke-virtual {v15, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v4, v15}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v3, v15}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v15, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v16

    const v1, 0x7f0702f3

    invoke-virtual {v15, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Landroid/preference/ListPreference;

    const v8, 0x7f070036

    invoke-virtual {v15, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/MultiSelectListPreference;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v15, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    move-object/from16 v21, v0

    new-instance v0, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;

    move-object/from16 v22, v1

    move-object v1, v0

    move-object/from16 v19, v2

    move-object/from16 v2, p0

    move-object/from16 v24, v3

    move-object v3, v12

    move-object/from16 v25, v4

    move-object/from16 v4, v16

    move-object/from16 p1, v6

    move-object v6, v8

    move-object/from16 v16, v7

    move-object v7, v9

    const v9, 0x7f0702c9

    move-object/from16 v8, v16

    move-object/from16 v9, p1

    move-object/from16 v10, v19

    move-object/from16 v11, v18

    move-object/from16 v31, v12

    move-object/from16 v12, v22

    move-object/from16 v17, v13

    move-object/from16 v13, v25

    move-object/from16 v14, v24

    move-object/from16 v15, v21

    invoke-direct/range {v1 .. v15}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$1;-><init>(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;Lcom/androlua/LuaApplication;Ljava/util/Set;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/HashSet;Landroid/preference/ListPreference;Landroid/preference/MultiSelectListPreference;Landroid/content/SharedPreferences;Landroid/preference/ListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/preference/MultiSelectListPreference;Landroid/app/ProgressDialog;)V

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const v0, 0x7f070929

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/MultiSelectListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f010025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v14, 0x0

    :goto_0
    array-length v4, v2

    if-ge v14, v4, :cond_3

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const v0, 0x7f070982

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/MultiSelectListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f010029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v14, 0x0

    :goto_1
    array-length v4, v2

    if-ge v14, v4, :cond_4

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Landroid/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->d:Landroid/content/SharedPreferences;

    const v0, 0x7f0702c9

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0708ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, v19

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v16

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->b(Landroid/preference/PreferenceScreen;)V

    const v2, 0x7f0701bf

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->e:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->e:Landroid/preference/Preference;

    new-instance v2, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;

    invoke-direct {v2, v1}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$2;-><init>(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f070039

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/nirenr/talkman/settings/HotKeyShortcutSetting;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const v2, 0x7f070208

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    const-string v5, "750"

    const-string v6, "1000"

    const-string v7, "250"

    const-string v8, "300"

    const-string v9, "500"

    filled-new-array {v7, v8, v9, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->a()Z

    move-result v2

    if-nez v2, :cond_5

    const v2, 0x7f0702cb

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const v5, 0x7f0702d6

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSummary(I)V

    move-object/from16 v2, p1

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const v8, 0x7f070034

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    const v8, 0x7f0702d4

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v2, 0x7f070741

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    const v9, 0x7f07037f

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f07031f

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f07056f

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f0707f7

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f0707f7

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    const v9, 0x7f0707f8

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v2, 0x7f07086f

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f07086f

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    const v9, 0x7f070870

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v2, 0x7f07074e

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    const v9, 0x7f070751

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v2, 0x7f07074e

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f07032d

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    const v9, 0x7f070330

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v2, 0x7f07032d

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f07057d

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    const v9, 0x7f070580

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v2, 0x7f07057d

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f070334

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    const v9, 0x7f070335

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v2, 0x7f070334

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f07058a

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    const v9, 0x7f07058b

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v2, 0x7f07058a

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f070230

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    const v9, 0x7f070232

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v2, 0x7f070230

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f0706ed

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    const v9, 0x7f0706ef

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v2, 0x7f0706ed

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f070235

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    const v9, 0x7f070236

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v2, 0x7f070235

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v2, 0x7f0706f2

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    const v9, 0x7f0706f3

    invoke-virtual {v1, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v2, 0x7f0706f2

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v17, v7, v5

    invoke-virtual {v1, v8, v7}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f0707bf

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v17, v2, v5

    invoke-virtual {v1, v8, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v0, 0x7f0707bf

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f0706e8

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v17, v2, v5

    invoke-virtual {v1, v8, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v0, 0x7f0706e8

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f0706ea

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v17, v2, v5

    invoke-virtual {v1, v8, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v0, 0x7f0706ea

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f07022b

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v17, v2, v5

    invoke-virtual {v1, v8, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v0, 0x7f07022b

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f07022d

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v17, v2, v5

    invoke-virtual {v1, v8, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const v0, 0x7f07022d

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    new-array v2, v6, [Ljava/lang/Object;

    const v7, 0x7f070037

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-virtual {v1, v8, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_2
    const v0, 0x7f0702f3

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0701c1

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->f:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_6
    iget-object v0, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->f:Landroid/preference/Preference;

    new-instance v2, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$3;

    invoke-direct {v2, v1}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$3;-><init>(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x7f0702f5

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/nirenr/talkman/settings/HotKeyManager;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_7

    const v0, 0x7f0707c4

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f070478

    invoke-virtual {v1, v3, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->checkVip([I)V

    const v0, 0x7f0701de

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    const-string v7, "0"

    const-string v8, "1"

    const-string v9, "2"

    const-string v10, "3"

    const-string v11, "4"

    const-string v12, "5"

    const-string v13, "6"

    const-string v14, "7"

    const-string v15, "8"

    const-string v16, "9"

    filled-new-array/range {v7 .. v16}, [Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/String;

    const v4, 0x7f0701e0

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0701e8

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0701e9

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const v4, 0x7f0701e4

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v3, v6

    const v4, 0x7f0701e5

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v3, v6

    const v4, 0x7f0701df

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x5

    aput-object v4, v3, v6

    const v4, 0x7f0701e6

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x6

    aput-object v4, v3, v6

    const v4, 0x7f0701e7

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x7

    aput-object v4, v3, v6

    const v4, 0x7f0701e2

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    aput-object v4, v3, v6

    const v4, 0x7f0701e3

    move-object/from16 v6, v31

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x9

    aput-object v4, v3, v6

    iput-object v3, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->g:[Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070797

    invoke-static {v2, v3, v5}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070891

    invoke-static {v3, v4, v5}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f07087f

    invoke-static {v4, v6, v5}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f070880

    invoke-static {v6, v7, v5}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v6

    if-eqz v4, :cond_9

    if-eqz v6, :cond_9

    if-eqz v2, :cond_8

    const-string v2, "9"

    goto :goto_3

    :cond_8
    const-string v2, "4"

    goto :goto_3

    :cond_9
    if-eqz v4, :cond_b

    if-eqz v2, :cond_a

    const-string v2, "8"

    goto :goto_3

    :cond_a
    const-string v2, "3"

    :goto_3
    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    if-eqz v3, :cond_d

    if-eqz v6, :cond_d

    if-eqz v2, :cond_c

    const-string v2, "7"

    goto :goto_3

    :cond_c
    const-string v2, "2"

    goto :goto_3

    :cond_d
    if-eqz v3, :cond_f

    if-eqz v2, :cond_e

    const-string v2, "6"

    goto :goto_3

    :cond_e
    const-string v2, "1"

    goto :goto_3

    :cond_f
    if-eqz v2, :cond_10

    const-string v2, "5"

    goto :goto_3

    :cond_10
    const-string v2, "0"

    goto :goto_3

    :goto_4
    :try_start_0
    iget-object v2, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->g:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    const-string v6, "down_right_double_fling_left_gesture"

    const-string v7, "down_right_double_fling_up_gesture"

    const-string v8, "down_right_double_fling_right_gesture"

    const-string v9, "down_right_double_fling_down_gesture"

    const-string v10, "down_left_double_fling_left_gesture"

    const-string v11, "down_left_double_fling_up_gesture"

    const-string v12, "down_left_double_fling_right_gesture"

    const-string v13, "down_left_double_fling_down_gesture"

    const-string v14, "right_double_fling_left_gesture"

    const-string v15, "right_double_fling_right_gesture"

    const-string v16, "right_double_fling_up_gesture"

    const-string v17, "right_double_fling_down_gesture"

    const-string v18, "left_double_fling_left_gesture"

    const-string v19, "left_double_fling_right_gesture"

    const-string v20, "left_double_fling_up_gesture"

    const-string v21, "left_double_fling_down_gesture"

    const-string v22, "up_double_fling_left_gesture"

    const-string v23, "up_double_fling_right_gesture"

    const-string v24, "up_double_fling_up_gesture"

    const-string v25, "up_double_fling_down_gesture"

    const-string v26, "down_double_fling_left_gesture"

    const-string v27, "down_double_fling_right_gesture"

    const-string v28, "down_double_fling_up_gesture"

    const-string v29, "down_double_fling_down_gesture"

    const-string v30, "up_left_double_fling_left_gesture"

    const-string v31, "up_left_double_fling_right_gesture"

    const-string v32, "up_left_double_fling_up_gesture"

    const-string v33, "up_left_double_fling_down_gesture"

    const-string v34, "up_right_double_fling_left_gesture"

    const-string v35, "up_right_double_fling_right_gesture"

    const-string v36, "up_right_double_fling_up_gesture"

    const-string v37, "up_right_double_fling_down_gesture"

    const-string v38, "right_left_double_fling_left_gesture"

    const-string v39, "right_left_double_fling_right_gesture"

    const-string v40, "right_left_double_fling_up_gesture"

    const-string v41, "right_left_double_fling_down_gesture"

    const-string v42, "left_right_double_fling_left_gesture"

    const-string v43, "left_right_double_fling_right_gesture"

    const-string v44, "left_right_double_fling_up_gesture"

    const-string v45, "left_right_double_fling_down_gesture"

    const-string v46, "up_down_double_fling_left_gesture"

    const-string v47, "up_down_double_fling_right_gesture"

    const-string v48, "up_down_double_fling_up_gesture"

    const-string v49, "up_down_double_fling_down_gesture"

    const-string v50, "down_up_double_fling_left_gesture"

    const-string v51, "down_up_double_fling_right_gesture"

    const-string v52, "down_up_double_fling_up_gesture"

    const-string v53, "down_up_double_fling_down_gesture"

    const-string v54, "left_down_double_fling_left_gesture"

    const-string v55, "left_down_double_fling_right_gesture"

    const-string v56, "left_down_double_fling_up_gesture"

    const-string v57, "left_down_double_fling_down_gesture"

    const-string v58, "left_up_double_fling_left_gesture"

    const-string v59, "left_up_double_fling_right_gesture"

    const-string v60, "left_up_double_fling_up_gesture"

    const-string v61, "left_up_double_fling_down_gesture"

    const-string v62, "right_down_double_fling_left_gesture"

    const-string v63, "right_down_double_fling_right_gesture"

    const-string v64, "right_down_double_fling_up_gesture"

    const-string v65, "right_down_double_fling_down_gesture"

    const-string v66, "right_up_double_fling_left_gesture"

    const-string v67, "right_up_double_fling_right_gesture"

    const-string v68, "right_up_double_fling_up_gesture"

    const-string v69, "right_up_double_fling_down_gesture"

    filled-new-array/range {v6 .. v69}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/androlua/LuaResources;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f010008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x0

    :goto_6
    const/16 v3, 0x40

    if-ge v14, v3, :cond_11

    aget-object v3, v0, v14

    invoke-virtual {v1, v3, v2, v2}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->setEntriesAndValues(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_11
    return-void

    :array_0
    .array-data 4
        0x7f0707d8
        0x7f0705ba
        0x7f070779
        0x7f0707c6
    .end array-data
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    const v4, 0x7f0701f9

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_59

    const v4, 0x7f0701f1

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    const v4, 0x7f0701fe

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    const v4, 0x7f0701fd

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1b

    :cond_0
    const v4, 0x7f070032

    invoke-virtual {v1, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androlua/LuaApplication;->getAllApp()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v3, Lk2/p;

    invoke-direct {v3}, Lk2/p;-><init>()V

    invoke-static {v4, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v3, Lcom/nirenr/talkman/dialog/FileDialog;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$5;

    invoke-direct {v7, v1, v0}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$5;-><init>(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;Landroid/preference/Preference;)V

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v6, v7, v0, v4}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;[Ljava/lang/String;)V

    return v5

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v2}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_2
    instance-of v4, v2, Ljava/util/Set;

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->d:Landroid/content/SharedPreferences;

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070929

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f010025

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v6, v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070982

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f010029

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v8, v6, v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const v6, 0x7f0702c9

    invoke-virtual {v1, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0708ae

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f070033

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v8

    const-string v10, "6"

    const-string v12, "5"

    const-string v14, "4"

    const-string v9, "3"

    const-string v11, "2"

    const-string v13, "1"

    const/16 v16, -0x1

    const v15, 0x7f0702f4

    const v5, 0x7f0702ca

    const/4 v7, 0x1

    if-nez v8, :cond_15

    if-ne v3, v5, :cond_8

    iget-object v0, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->e:Landroid/preference/Preference;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_8
    if-ne v3, v15, :cond_a

    iget-object v0, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->f:Landroid/preference/Preference;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0708ae

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->f:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_e

    :cond_9
    iget-object v0, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_e

    :cond_a
    const v4, 0x7f0701e1

    if-ne v3, v4, :cond_14

    :try_start_0
    iget-object v3, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->g:[Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_7
    const/4 v5, -0x1

    goto/16 :goto_8

    :pswitch_0
    const-string v2, "9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7

    :cond_b
    const/16 v5, 0x8

    goto :goto_8

    :pswitch_1
    const-string v2, "8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_7

    :cond_c
    const/4 v5, 0x7

    goto :goto_8

    :pswitch_2
    const-string v2, "7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_7

    :cond_d
    const/4 v5, 0x6

    goto :goto_8

    :pswitch_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_7

    :cond_e
    const/4 v5, 0x5

    goto :goto_8

    :pswitch_4
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_7

    :cond_f
    const/4 v5, 0x4

    goto :goto_8

    :pswitch_5
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    const/4 v5, 0x3

    goto :goto_8

    :pswitch_6
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_7

    :cond_11
    const/4 v5, 0x2

    goto :goto_8

    :pswitch_7
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_7

    :cond_12
    const/4 v5, 0x1

    goto :goto_8

    :pswitch_8
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_7

    :cond_13
    const/4 v5, 0x0

    :goto_8
    packed-switch v5, :pswitch_data_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v3, 0x7f070891

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f07087f

    invoke-static {v0, v4, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v5, 0x7f070880

    invoke-static {v0, v5, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v6, 0x7f070797

    goto/16 :goto_d

    :pswitch_9
    const v3, 0x7f070891

    const v4, 0x7f07087f

    const v5, 0x7f070880

    const v6, 0x7f070797

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_9

    :pswitch_a
    const v3, 0x7f070891

    const v4, 0x7f07087f

    const v5, 0x7f070880

    const v6, 0x7f070797

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    :pswitch_b
    const v3, 0x7f070891

    const v5, 0x7f070880

    const v6, 0x7f070797

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v4, 0x7f07087f

    invoke-static {v0, v4, v3}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_c
    const v3, 0x7f070891

    const v4, 0x7f07087f

    const v5, 0x7f070880

    const v6, 0x7f070797

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v4, v3}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_a
    invoke-static {v0, v5, v3}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_d
    const v3, 0x7f070891

    const v4, 0x7f07087f

    const v5, 0x7f070880

    const v6, 0x7f070797

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_d

    :pswitch_e
    const v3, 0x7f070891

    const v4, 0x7f07087f

    const v5, 0x7f070880

    const v6, 0x7f070797

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_d

    :pswitch_f
    const v3, 0x7f070891

    const v4, 0x7f07087f

    const v6, 0x7f070797

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v4, 0x7f070880

    goto :goto_b

    :pswitch_10
    const v3, 0x7f070891

    const v4, 0x7f070880

    const v6, 0x7f070797

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v5, 0x7f07087f

    invoke-static {v0, v5, v3}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v6, v3}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_e

    :pswitch_11
    const v3, 0x7f070891

    const v4, 0x7f070880

    const v5, 0x7f07087f

    const v6, 0x7f070797

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v5, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_b
    invoke-static {v0, v4, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_d
    invoke-static {v0, v6, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_14
    :goto_e
    return v7

    :cond_15
    const v5, 0x7f0701e1

    if-ne v3, v5, :cond_1f

    :try_start_1
    iget-object v3, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->g:[Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    :goto_10
    const/4 v9, -0x1

    goto/16 :goto_11

    :pswitch_12
    const-string v2, "9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_10

    :cond_16
    const/16 v9, 0x8

    goto :goto_11

    :pswitch_13
    const-string v2, "8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_10

    :cond_17
    const/4 v9, 0x7

    goto :goto_11

    :pswitch_14
    const-string v2, "7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_10

    :cond_18
    const/4 v9, 0x6

    goto :goto_11

    :pswitch_15
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_10

    :cond_19
    const/4 v9, 0x5

    goto :goto_11

    :pswitch_16
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_10

    :cond_1a
    const/4 v9, 0x4

    goto :goto_11

    :pswitch_17
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v9, 0x3

    goto :goto_11

    :pswitch_18
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_10

    :cond_1c
    const/4 v9, 0x2

    goto :goto_11

    :pswitch_19
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_10

    :cond_1d
    const/4 v9, 0x1

    goto :goto_11

    :pswitch_1a
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_10

    :cond_1e
    const/4 v9, 0x0

    :goto_11
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    packed-switch v9, :pswitch_data_3

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v3, 0x7f070891

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f07087f

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070880

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070797

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLeftRight(Z)V

    goto/16 :goto_12

    :pswitch_1b
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f070891

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f07087f

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070880

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070797

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLeftRight(Z)V

    goto/16 :goto_13

    :pswitch_1c
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f070891

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f07087f

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v4, 0x7f070880

    invoke-static {v0, v4, v3}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070797

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLeftRight(Z)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseWebMove(Z)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseViewMove(Z)V

    const/4 v2, 0x0

    goto/16 :goto_17

    :pswitch_1d
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f070891

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v4, 0x7f07087f

    invoke-static {v0, v4, v3}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070880

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070797

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLeftRight(Z)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseWebMove(Z)V

    const/4 v2, 0x0

    goto/16 :goto_14

    :pswitch_1e
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f070891

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v4, 0x7f07087f

    invoke-static {v0, v4, v3}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f070880

    invoke-static {v0, v4, v3}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070797

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLeftRight(Z)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseWebMove(Z)V

    const/4 v2, 0x0

    goto/16 :goto_16

    :pswitch_1f
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v3, 0x7f070891

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f07087f

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070880

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f070797

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLeftRight(Z)V

    const/4 v2, 0x0

    :goto_12
    invoke-virtual {v8, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseWebMove(Z)V

    goto/16 :goto_16

    :pswitch_20
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f070891

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f07087f

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070880

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v3, 0x7f070797

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLeftRight(Z)V

    :goto_13
    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseWebMove(Z)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseViewMove(Z)V

    goto :goto_15

    :pswitch_21
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f070891

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f07087f

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v3, 0x7f070880

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070797

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLeftRight(Z)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseWebMove(Z)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseViewMove(Z)V

    goto :goto_17

    :pswitch_22
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f070891

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v4, 0x7f07087f

    invoke-static {v0, v4, v3}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v4, 0x7f070880

    invoke-static {v0, v4, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f070797

    invoke-static {v0, v2, v3}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLeftRight(Z)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseWebMove(Z)V

    :goto_14
    invoke-virtual {v8, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseViewMove(Z)V

    :goto_15
    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseViewTypeMoveMode(Z)V

    goto/16 :goto_1a

    :pswitch_23
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v3, 0x7f070891

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v3, 0x7f07087f

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070880

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f070797

    invoke-static {v0, v3, v2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLeftRight(Z)V

    invoke-virtual {v8, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseWebMove(Z)V

    :goto_16
    invoke-virtual {v8, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseViewMove(Z)V

    :goto_17
    invoke-virtual {v8, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseViewTypeMoveMode(Z)V

    goto/16 :goto_1a

    :cond_1f
    const v0, 0x7f07037a

    if-ne v3, v15, :cond_21

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadHotKeyPackage(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->f:Landroid/preference/Preference;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0708ae

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->f:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_18

    :cond_20
    iget-object v0, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->f:Landroid/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_18
    invoke-virtual {v8, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadHotKeyPackage(Ljava/util/Set;)V

    goto/16 :goto_1a

    :cond_21
    const v5, 0x7f070038

    if-ne v3, v5, :cond_22

    invoke-virtual {v8, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadHotKeyPackage(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadHotKeyPackage(Ljava/util/Set;)V

    goto/16 :goto_1a

    :cond_22
    const v5, 0x7f0702ca

    if-ne v3, v5, :cond_24

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    const v0, 0x7f070385

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    :goto_19
    const/4 v2, 0x0

    return v2

    :cond_23
    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->e:Landroid/preference/Preference;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/util/Set;)V

    goto/16 :goto_1a

    :cond_24
    const v0, 0x7f070035

    if-ne v3, v0, :cond_25

    invoke-virtual {v8, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/lang/String;)Z

    move-object v0, v2

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/util/Set;)V

    goto/16 :goto_1a

    :cond_25
    const v0, 0x7f070863

    if-ne v3, v0, :cond_26

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseTouchMode(Z)V

    goto/16 :goto_1a

    :cond_26
    const v0, 0x7f0707c5

    if-ne v3, v0, :cond_27

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseMultiTouchMode(Z)V

    goto/16 :goto_1a

    :cond_27
    const v0, 0x7f0707d5

    if-ne v3, v0, :cond_28

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseNode(Z)V

    goto/16 :goto_1a

    :cond_28
    const v0, 0x7f0707d3

    if-ne v3, v0, :cond_29

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseNodeInfo(Z)V

    goto/16 :goto_1a

    :cond_29
    const v0, 0x7f070743

    if-ne v3, v0, :cond_2a

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDoubleFling(Z)V

    goto/16 :goto_1a

    :cond_2a
    const v0, 0x7f070209

    if-ne v3, v0, :cond_2b

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDoubleFlingTime(I)V

    goto/16 :goto_1a

    :cond_2b
    const v0, 0x7f07009e

    if-ne v3, v0, :cond_2c

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setCharModeGesture(Z)V

    goto/16 :goto_1a

    :cond_2c
    const v0, 0x7f0707ca

    if-ne v3, v0, :cond_2d

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseNewTextMoveType(Z)V

    goto/16 :goto_1a

    :cond_2d
    const v0, 0x7f07079e

    if-ne v3, v0, :cond_2e

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLeftRight(Z)V

    goto/16 :goto_1a

    :cond_2e
    const v0, 0x7f0707e4

    if-ne v3, v0, :cond_2f

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseOldPrevious(Z)V

    goto/16 :goto_1a

    :cond_2f
    const v0, 0x7f0707e7

    if-ne v3, v0, :cond_30

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUsePagerScroll(Z)V

    goto/16 :goto_1a

    :cond_30
    const v0, 0x7f0707be

    if-ne v3, v0, :cond_31

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseMoveWindow(Z)V

    goto/16 :goto_1a

    :cond_31
    const v0, 0x7f0707c8

    if-ne v3, v0, :cond_32

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseNavigationGesture(Z)V

    goto/16 :goto_1a

    :cond_32
    const v0, 0x7f070752

    if-ne v3, v0, :cond_33

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseEdgeGesture(Z)V

    goto/16 :goto_1a

    :cond_33
    const v0, 0x7f07071f

    if-ne v3, v0, :cond_34

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseBottomMenuEdgeGesture(Z)V

    goto/16 :goto_1a

    :cond_34
    const v0, 0x7f070247

    if-ne v3, v0, :cond_35

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGestureWidth(Ljava/lang/Integer;)V

    goto/16 :goto_1a

    :cond_35
    const v0, 0x7f070321

    if-ne v3, v0, :cond_36

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setLeftButton(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_36
    const v0, 0x7f070571

    if-ne v3, v0, :cond_37

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setRightButton(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_37
    const v0, 0x7f0707ba

    if-ne v3, v0, :cond_38

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseMoveListViewItem(Z)V

    goto/16 :goto_1a

    :cond_38
    const v0, 0x7f0707cd

    if-ne v3, v0, :cond_39

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseNewWebMove(Z)V

    goto/16 :goto_1a

    :cond_39
    const v0, 0x7f070892

    if-ne v3, v0, :cond_3a

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseWebMove(Z)V

    goto/16 :goto_1a

    :cond_3a
    const v0, 0x7f070884

    if-ne v3, v0, :cond_3b

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseViewMove(Z)V

    goto/16 :goto_1a

    :cond_3b
    const v0, 0x7f070882

    if-ne v3, v0, :cond_3c

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseViewTypeMoveMode(Z)V

    goto/16 :goto_1a

    :cond_3c
    const v0, 0x7f07078d

    if-ne v3, v0, :cond_3d

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseKeepType(Z)V

    goto/16 :goto_1a

    :cond_3d
    const v0, 0x7f0705d8

    if-ne v3, v0, :cond_3e

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lk2/e0;->f(Ljava/lang/Integer;)V

    goto/16 :goto_1a

    :cond_3e
    const v0, 0x7f07003d

    if-ne v3, v0, :cond_3f

    move-object v0, v2

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setNoKeyList(Ljava/util/Set;)V

    goto/16 :goto_1a

    :cond_3f
    const v0, 0x7f0702a0

    if-ne v3, v0, :cond_40

    move-object v0, v2

    check-cast v0, Ljava/util/Set;

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setGameModeList(Ljava/util/Set;)V

    goto/16 :goto_1a

    :cond_40
    const v0, 0x7f07076d

    if-ne v3, v0, :cond_41

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseGameModeNoSpeak(Z)V

    goto/16 :goto_1a

    :cond_41
    const v0, 0x7f07076b

    if-ne v3, v0, :cond_42

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseGameModeNoEdge(Z)V

    goto/16 :goto_1a

    :cond_42
    const v0, 0x7f070315

    if-ne v3, v0, :cond_43

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setKeepFocusPosition(Z)V

    goto/16 :goto_1a

    :cond_43
    const v0, 0x7f070508

    if-ne v3, v0, :cond_44

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setOnlyNotification(Z)V

    goto/16 :goto_1a

    :cond_44
    const v0, 0x7f0707b7

    if-ne v3, v0, :cond_45

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseMoreNode(Z)V

    goto/16 :goto_1a

    :cond_45
    const v0, 0x7f070823

    if-ne v3, v0, :cond_46

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSingleTap(Z)V

    goto/16 :goto_1a

    :cond_46
    const v0, 0x7f070878

    if-ne v3, v0, :cond_47

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUpTapEnabled(Z)V

    goto/16 :goto_1a

    :cond_47
    const v0, 0x7f07086e

    if-ne v3, v0, :cond_48

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseUpLongClick(Z)V

    goto/16 :goto_1a

    :cond_48
    const v0, 0x7f070354

    if-ne v3, v0, :cond_49

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setLongClickTime(I)V

    goto/16 :goto_1a

    :cond_49
    const v0, 0x7f0707f9

    if-ne v3, v0, :cond_4a

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseRawClick(Z)V

    goto/16 :goto_1a

    :cond_4a
    const v0, 0x7f070871

    if-ne v3, v0, :cond_4b

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseUpLongQuickMenu(Z)V

    goto/16 :goto_1a

    :cond_4b
    const v0, 0x7f07081e

    if-ne v3, v0, :cond_4c

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseShowDisabledQuickMenu(Z)V

    goto/16 :goto_1a

    :cond_4c
    const v0, 0x7f07036f

    if-ne v3, v0, :cond_4d

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setMenuUpTap(Z)V

    goto/16 :goto_1a

    :cond_4d
    const v0, 0x7f07046b

    if-ne v3, v0, :cond_4e

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setNaviUpTap(Z)V

    goto/16 :goto_1a

    :cond_4e
    const v0, 0x7f070790

    if-ne v3, v0, :cond_4f

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseVolumeKeyEnabled(Z)V

    goto/16 :goto_1a

    :cond_4f
    const v0, 0x7f070770

    if-ne v3, v0, :cond_50

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseHeadSetKey(Z)V

    goto/16 :goto_1a

    :cond_50
    const v0, 0x7f070888

    if-ne v3, v0, :cond_51

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseVolumeKeyMoveText(Z)V

    goto/16 :goto_1a

    :cond_51
    const v0, 0x7f070761

    if-ne v3, v0, :cond_52

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseFingerprintGesture(Z)V

    goto :goto_1a

    :cond_52
    const v0, 0x7f07074d

    if-ne v3, v0, :cond_53

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseDpadKey(Z)V

    goto :goto_1a

    :cond_53
    const v0, 0x7f0707b4

    if-ne v3, v0, :cond_54

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLoopMove(Z)V

    goto :goto_1a

    :cond_54
    const v0, 0x7f0707b3

    if-ne v3, v0, :cond_55

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseLoopMoveSpace(Z)V

    goto :goto_1a

    :cond_55
    const v0, 0x7f07077b

    if-ne v3, v0, :cond_56

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseInputMethodGesture(Z)V

    goto :goto_1a

    :cond_56
    const v0, 0x7f07075f

    if-ne v3, v0, :cond_57

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseFastMode(Z)V

    goto :goto_1a

    :cond_57
    const v0, 0x7f07071c

    if-ne v3, v0, :cond_58

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseAutoViewType(Z)V

    :cond_58
    :goto_1a
    return v7

    :cond_59
    :goto_1b
    new-instance v3, Lcom/nirenr/talkman/dialog/FileDialog;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$4;

    invoke-direct {v5, v1, v0}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment$4;-><init>(Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;Landroid/preference/Preference;)V

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v4, v5, v0}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;)V

    goto/16 :goto_19

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const v0, 0x7f0708ae

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitleRes()I

    move-result p1

    const v3, 0x7f0702c4

    const-string v4, ":\n"

    if-ne p1, v3, :cond_1

    const p1, 0x7f0702c9

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f010009

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const v3, 0x7f0702f0

    if-ne p1, v3, :cond_3

    const p1, 0x7f0702f3

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f01000b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f070036

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/nirenr/talkman/settings/ActionSetting$ActionPreferenceFragment;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const-string p1, ""

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
