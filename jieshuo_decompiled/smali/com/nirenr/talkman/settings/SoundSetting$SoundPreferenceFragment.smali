.class public Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;
.super Lcom/nirenr/talkman/settings/BasePreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/settings/SoundSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundPreferenceFragment"
.end annotation


# instance fields
.field private d:Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Landroid/media/MediaPlayer;

.field private j:[Ljava/lang/String;

.field private k:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->g:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->k:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->h:Z

    return-void
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Landroid/preference/Preference;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->k(Landroid/preference/Preference;Ljava/io/File;)V

    return-void
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->m(Ljava/lang/String;)V

    return-void
.end method

.method private j()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d:Ljava/lang/String;

    const-string v2, "config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nirenr/talkman/o;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private k(Landroid/preference/Preference;Ljava/io/File;)V
    .locals 8

    iput-object p2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->k:Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getSoundsDir()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$4;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, p0, v1, v2, v4}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$5;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Landroid/content/Context;I[Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/nirenr/talkman/h;->b:Z

    const v1, 0x7f070067

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/ArrayListAdapter;->insert(ILjava/lang/Object;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;

    invoke-direct {v2, p0, p2, p1, v4}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$9;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Ljava/io/File;Landroid/preference/Preference;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$8;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Landroid/preference/Preference;)V

    const v2, 0x7f0708ae

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$7;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Landroid/preference/Preference;)V

    const v2, 0x7f0708b0

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$6;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$6;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p2

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$10;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;[Ljava/lang/String;Ljava/io/File;Landroid/app/AlertDialog;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i:Landroid/media/MediaPlayer;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private m(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private n()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d:Ljava/lang/String;

    const-string v2, "config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "RES_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0701ba

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->f:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    const-string v0, "sound"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/androlua/LuaApplication;->getSoundsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$1;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    new-array p1, v0, [Ljava/lang/String;

    :cond_2
    new-instance v1, Lk2/p;

    invoke-direct {v1}, Lk2/p;-><init>()V

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, p1

    add-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->e:[Ljava/lang/String;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->j:[Ljava/lang/String;

    const-string v3, "default"

    aput-object v3, v1, v0

    const-string v3, "none"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const v1, 0x7f0708ae

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->j:[Ljava/lang/String;

    const v3, 0x7f0708b0

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v2, 0x0

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->e:[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    aget-object v6, p1, v2

    aput-object v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->j()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->g:Ljava/util/Map;

    const p1, 0x7f0a000c

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Lcom/nirenr/talkman/settings/SoundSetting;->d()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-object v6, v2, v5

    iget-object v7, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->g:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-static {}, Lcom/nirenr/talkman/settings/SoundSetting;->d()[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_2
    if-ge v0, v4, :cond_7

    aget-object v5, v2, v0

    new-instance v6, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/nirenr/talkman/settings/SoundSetting;->c()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->g:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, "value_default"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_6
    const-string v7, "value_none"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :goto_4
    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setOnAccessibilityFocusedListener(Lcom/nirenr/talkman/OnAccessibilityFocusedListener;)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nirenr/talkman/h;->b:Z

    :try_start_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->i:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->h:Z

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->g:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->l(Ljava/lang/String;)V

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->k(Landroid/preference/Preference;Ljava/io/File;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onResume()V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment$2;-><init>(Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setOnAccessibilityFocusedListener(Lcom/nirenr/talkman/OnAccessibilityFocusedListener;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    iget-boolean v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/settings/SoundSetting$SoundPreferenceFragment;->h:Z

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f070605

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0708ae

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadSoundPackage(Ljava/lang/String;)Z

    const v1, 0x7f07037a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    return-void
.end method
