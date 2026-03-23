.class public Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;
.super Lcom/nirenr/talkman/settings/BasePreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/settings/GestureSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GesturePreferenceFragment"
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


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

.field private i:Ljava/lang/String;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->m:Ljava/lang/String;

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

    sget-object v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->m:Ljava/lang/String;

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

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->h:Z

    return p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->h:Z

    return-void
.end method

.method static bridge synthetic h(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->k:Z

    return-void
.end method

.method static bridge synthetic i(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->n()V

    return-void
.end method

.method private j(Ljava/lang/String;)Ljava/lang/String;
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

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const p1, 0x7f0702d0

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private k(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

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

    invoke-static {}, Lcom/nirenr/talkman/settings/GestureSetting;->c()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

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

.method private l()Ljava/util/Map;
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

    iget-object v1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->d:Ljava/lang/String;

    const-string v2, "config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nirenr/talkman/o;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$4;-><init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    :cond_0
    new-instance v2, Lk2/p;

    invoke-direct {v2}, Lk2/p;-><init>()V

    invoke-static {v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v2, v0

    add-int/lit8 v2, v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v3, 0x7f0708ae

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v3, 0x7f070134

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v3, 0x7f0701f9

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v3, 0x7f0701f1

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v3, 0x7f0701fe

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v3, 0x7f0701fd

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v3, 0x7f070032

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v3, 0x7f07029a

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x8

    aget-object v5, v0, v2

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    return-void
.end method

.method private n()V
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g:Ljava/util/Map;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i:Ljava/lang/String;

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->d:Ljava/lang/String;

    const-string v2, "config"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/o;->m(Ljava/lang/String;Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f07059d

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v2, 0x7f0702c9

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0708ae

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070033

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveConfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/androlua/LuaUtil;->printStackTrace(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-boolean v3, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->h:Z

    if-nez v3, :cond_3

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->h:Z

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getAllApp()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v3, Lcom/androlua/LuaDialog;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/androlua/LuaDialog;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f07025e

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/androlua/LuaDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/androlua/LuaApplication;->isAbc()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f07025c

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$5;

    invoke-direct {v4, p0, v0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$5;-><init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Ljava/util/Set;)V

    invoke-virtual {v3, v1, v4}, Lcom/androlua/LuaDialog;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f07025d

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$6;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$6;-><init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)V

    invoke-virtual {v3, v0, v1}, Lcom/androlua/LuaDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7f6

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_7
    const v0, 0x7f070095

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/androlua/LuaDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :try_start_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-static {v3, v2, v0, v1}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    const/4 v2, -0x2

    invoke-static {v3, v2, v0, v1}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    const/4 v2, -0x3

    invoke-static {v3, v2, v0, v1}, Lh2/i;->a(Landroid/app/AlertDialog;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-virtual {v3}, Lcom/androlua/LuaDialog;->show()V

    return-void

    :cond_8
    :goto_2
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/lang/String;)Z

    invoke-virtual {v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->loadGesturePackage(Ljava/util/Set;)V

    iget-boolean v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->h:Z

    if-eqz v0, :cond_9

    const v0, 0x7f07037a

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    :cond_9
    iput-boolean v1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->h:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->setSummaryNoSet(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "RES_ID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "GESTURE_ID"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i:Ljava/lang/String;

    iput-boolean v2, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->l:Z

    :cond_1
    iget-object v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0701ba

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v3, "gesture"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v3

    iget-object v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/androlua/LuaApplication;->getGesturesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->d:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v4, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->d:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$1;

    invoke-direct {v4, v1}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$1;-><init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_3

    new-array v0, v4, [Ljava/lang/String;

    :cond_3
    new-instance v5, Lk2/p;

    invoke-direct {v5}, Lk2/p;-><init>()V

    invoke-static {v0, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v5, v0

    add-int/lit8 v5, v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v6, 0x7f0708ae

    invoke-virtual {v1, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    iget-object v5, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v7, 0x7f070134

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v2

    iget-object v5, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v7, 0x7f0701f9

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v5, v8

    iget-object v5, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v7, 0x7f0701f1

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v5, v9

    iget-object v5, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v7, 0x7f0701fe

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x4

    aput-object v7, v5, v10

    iget-object v5, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v7, 0x7f0701fd

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x5

    aput-object v7, v5, v10

    iget-object v5, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v7, 0x7f070032

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    aput-object v7, v5, v10

    iget-object v5, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    const v7, 0x7f07029a

    invoke-virtual {v1, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x7

    aput-object v7, v5, v10

    const/4 v5, 0x0

    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_4

    iget-object v7, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    add-int/lit8 v10, v5, 0x8

    aget-object v11, v0, v5

    aput-object v11, v7, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->l()Ljava/util/Map;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g:Ljava/util/Map;

    iget-object v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v5, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g:Ljava/util/Map;

    iget-object v7, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v10, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    const v0, 0x7f0a000c

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-static {}, Lcom/nirenr/talkman/settings/GestureSetting;->d()[Ljava/lang/String;

    move-result-object v7

    array-length v10, v7

    const/4 v11, 0x0

    :goto_2
    const-string v12, "2_swipe"

    const/16 v13, 0x1f

    if-ge v11, v10, :cond_8

    aget-object v14, v7, v11

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v15, v13, :cond_6

    invoke-virtual {v14, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto :goto_4

    :cond_6
    iget-object v12, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    if-eqz v12, :cond_7

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_3

    :cond_7
    iget-object v12, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g:Ljava/util/Map;

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_3
    check-cast v12, Ljava/lang/String;

    invoke-interface {v5, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v10, 0x7f0707c4

    invoke-static {v7, v10, v4}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    iget-object v14, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i:Ljava/lang/String;

    const v15, 0x7f07037f

    if-eqz v14, :cond_b

    iget-object v14, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    const-string v8, "enabled"

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    iget-object v14, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i:Ljava/lang/String;

    iget-object v9, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v0, v14, v8}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_9
    new-instance v0, Landroid/preference/SwitchPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const v8, 0x7f070743

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(I)V

    iget-object v8, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    if-eqz v8, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->a()Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v0, v15}, Landroid/preference/Preference;->setSummary(I)V

    :cond_a
    new-instance v8, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$2;

    invoke-direct {v8, v1}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$2;-><init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;)V

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_b
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const v0, 0x7f0702c9

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getAllApp()Ljava/util/ArrayList;

    move-result-object v0

    const v8, 0x7f070033

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v11, v8, v9}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    iget-object v9, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-virtual {v1, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v9, 0x1

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->a()Z

    move-result v14

    if-eqz v14, :cond_f

    iget-object v14, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const/4 v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_7
    const v8, 0x7f07074e

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v8, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_10

    if-nez v9, :cond_10

    new-instance v0, Ljava/io/File;

    invoke-virtual {v3, v5}, Lcom/androlua/LuaApplication;->getGesturesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "config"

    invoke-direct {v0, v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nirenr/talkman/o;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    iget-object v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i:Ljava/lang/String;

    if-eqz v0, :cond_10

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i:Ljava/lang/String;

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    iget-boolean v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->l:Z

    const/16 v2, 0x28

    const/16 v3, 0xf

    const/16 v9, 0x2b

    if-nez v0, :cond_25

    const/4 v0, 0x0

    :goto_9
    invoke-static {}, Lcom/nirenr/talkman/settings/GestureSetting;->d()[Ljava/lang/String;

    move-result-object v15

    array-length v15, v15

    if-ge v0, v15, :cond_25

    invoke-static {}, Lcom/nirenr/talkman/settings/GestureSetting;->d()[Ljava/lang/String;

    move-result-object v15

    aget-object v15, v15, v0

    if-nez v7, :cond_11

    if-le v0, v3, :cond_11

    if-ge v0, v9, :cond_11

    goto :goto_a

    :cond_11
    iget-object v3, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    if-eqz v3, :cond_12

    if-lt v0, v9, :cond_12

    :goto_a
    move/from16 v17, v8

    move-object/from16 v18, v12

    const v4, 0x7f07037f

    const v8, 0x7f0708ae

    goto/16 :goto_16

    :cond_12
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v13, :cond_13

    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_14

    goto :goto_a

    :cond_13
    if-le v0, v2, :cond_14

    if-ge v0, v9, :cond_14

    goto :goto_a

    :cond_14
    if-nez v8, :cond_15

    const-string v2, "edge"

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_a

    :cond_15
    new-instance v2, Landroid/preference/ListPreference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v2, v13}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/nirenr/talkman/settings/GestureSetting;->c()Ljava/util/HashMap;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-virtual {v2, v13}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v15}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    if-eqz v13, :cond_16

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_b

    :cond_16
    iget-object v13, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g:Ljava/util/Map;

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :goto_b
    check-cast v13, Ljava/lang/String;

    const-string v9, "/"

    const-string v4, ")"

    move/from16 v17, v8

    const-string v8, "("

    move-object/from16 v18, v12

    if-eqz v13, :cond_19

    invoke-virtual {v1, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    goto :goto_d

    :cond_17
    invoke-virtual {v13, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v9, 0x1

    invoke-virtual {v13, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v13, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_18
    invoke-virtual {v2, v13}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_c
    const v8, 0x7f0708ae

    goto/16 :goto_13

    :cond_19
    :goto_d
    iget-object v6, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    if-eqz v6, :cond_1a

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_e

    :cond_1a
    invoke-interface {v11, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_e
    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1c

    const v12, 0x7f0708ae

    invoke-virtual {v1, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_1b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_1b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_12

    :cond_1c
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v9, -0x1

    sparse-switch v6, :sswitch_data_0

    goto :goto_f

    :sswitch_0
    const-string v6, "edge_left_long"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    goto :goto_f

    :cond_1d
    const/4 v9, 0x3

    goto :goto_f

    :sswitch_1
    const-string v6, "edge_left"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_f

    :cond_1e
    const/4 v9, 0x2

    goto :goto_f

    :sswitch_2
    const-string v6, "edge_right"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    goto :goto_f

    :cond_1f
    const/4 v9, 0x1

    goto :goto_f

    :sswitch_3
    const-string v6, "edge_right_long"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    goto :goto_f

    :cond_20
    const/4 v9, 0x0

    :goto_f
    packed-switch v9, :pswitch_data_0

    iget-object v6, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i:Ljava/lang/String;

    if-eqz v6, :cond_21

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->i:Ljava/lang/String;

    invoke-static {v9, v15}, Lk2/j;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_11

    :cond_21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lk2/j;->g()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    goto :goto_11

    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {}, Lk2/j;->g()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const v13, 0x7f07016b

    goto :goto_10

    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {}, Lk2/j;->g()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const v13, 0x7f070169

    :goto_10
    invoke-virtual {v1, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v12, v13}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :goto_11
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0708ae

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_12
    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    :pswitch_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {}, Lk2/j;->g()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const v13, 0x7f070183

    goto :goto_10

    :pswitch_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {}, Lk2/j;->g()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const v13, 0x7f070177

    invoke-virtual {v1, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v12, v13}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0708ae

    invoke-virtual {v1, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_13
    invoke-static {}, Lcom/nirenr/talkman/settings/GestureSetting;->c()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    if-eqz v4, :cond_22

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_14

    :cond_22
    iget-object v4, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g:Ljava/util/Map;

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_14
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->e:[Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    if-eqz v4, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->a()Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    const v4, 0x7f07037f

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_15

    :cond_23
    const v4, 0x7f07037f

    :goto_15
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const/16 v6, 0x1e

    if-ge v3, v6, :cond_24

    const/16 v3, 0xf

    if-le v0, v3, :cond_24

    const/16 v3, 0x2b

    if-ge v0, v3, :cond_24

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v6, v9

    const v3, 0x7f070478

    invoke-virtual {v1, v3, v6}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_24
    invoke-virtual {v10, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :goto_16
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, v17

    move-object/from16 v12, v18

    const/16 v2, 0x28

    const/16 v3, 0xf

    const/4 v4, 0x0

    const v6, 0x7f0708ae

    const/16 v9, 0x2b

    const/16 v13, 0x1f

    goto/16 :goto_9

    :cond_25
    move-object/from16 v18, v12

    iget-object v0, v1, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    if-eqz v0, :cond_26

    return-void

    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f070741

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-nez v0, :cond_27

    return-void

    :cond_27
    const/4 v6, 0x0

    :goto_17
    invoke-static {}, Lcom/nirenr/talkman/settings/GestureSetting;->d()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v6, v0, :cond_2f

    invoke-static {}, Lcom/nirenr/talkman/settings/GestureSetting;->d()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    const/16 v2, 0xf

    const/16 v3, 0x2b

    if-nez v7, :cond_28

    if-le v6, v2, :cond_28

    if-ge v6, v3, :cond_28

    goto :goto_18

    :cond_28
    if-lt v6, v3, :cond_29

    :goto_18
    move-object/from16 v4, v18

    const/16 v5, 0x1f

    :goto_19
    const/16 v8, 0x28

    :goto_1a
    const/4 v12, 0x1

    const/4 v14, 0x0

    goto/16 :goto_1e

    :cond_29
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_2b

    move-object/from16 v4, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2a

    goto :goto_19

    :cond_2a
    const/16 v8, 0x28

    goto :goto_1b

    :cond_2b
    move-object/from16 v4, v18

    const/16 v8, 0x28

    if-le v6, v8, :cond_2c

    if-ge v6, v3, :cond_2c

    goto :goto_1c

    :cond_2c
    :goto_1b
    const-string v9, "tap"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2d

    :goto_1c
    goto :goto_1a

    :cond_2d
    new-instance v9, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/nirenr/talkman/settings/GestureSetting;->c()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "_double_fling"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const v11, 0x7f070207

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setSummary(I)V

    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->a()Z

    move-result v12

    if-nez v12, :cond_2e

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual {v1, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v13, v14

    const v11, 0x7f0702d4

    invoke-virtual {v1, v11, v13}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_2e
    const/4 v12, 0x1

    const/4 v14, 0x0

    :goto_1d
    invoke-virtual {v10, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v11, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;

    invoke-direct {v11, v1, v0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$3;-><init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_1e
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v18, v4

    goto/16 :goto_17

    :cond_2f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x63d9717f -> :sswitch_3
        -0x61486ee6 -> :sswitch_2
        0xd5df949 -> :sswitch_1
        0x2d74ebb2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->h:Z

    const v1, 0x7f0701f9

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f0701f1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f0701fe

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f0701fd

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const v1, 0x7f070032

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaApplication;->getAllApp()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v1, Lk2/p;

    invoke-direct {v1}, Lk2/p;-><init>()V

    invoke-static {v2, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v1, Lcom/nirenr/talkman/dialog/FileDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$8;

    invoke-direct {v4, p0, p1}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$8;-><init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Landroid/preference/Preference;)V

    check-cast p2, Ljava/lang/String;

    invoke-direct {v1, v3, v4, p2, v2}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;[Ljava/lang/String;)V

    return v0

    :cond_1
    const v1, 0x7f07029a

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f010008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/dialog/FileDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$9;

    invoke-direct {v4, p0, p1}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$9;-><init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Landroid/preference/Preference;)V

    check-cast p2, Ljava/lang/String;

    array-length p1, v1

    const/4 v5, 0x5

    invoke-static {v1, v5, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-direct {v2, v3, v4, p2, p1}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;[Ljava/lang/String;)V

    return v0

    :cond_2
    iget-object v1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    return v0

    :cond_4
    :goto_1
    new-instance v1, Lcom/nirenr/talkman/dialog/FileDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$7;

    invoke-direct {v3, p0, p1}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment$7;-><init>(Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;Landroid/preference/Preference;)V

    check-cast p2, Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/nirenr/talkman/dialog/FileDialog;-><init>(Landroid/content/Context;Lcom/nirenr/talkman/dialog/FileDialog$OnAddListener;Ljava/lang/String;)V

    return v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const p1, 0x7f0708ae

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f0702c9

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, ":\n"

    if-eqz p1, :cond_0

    const-string p1, "\u9ed8\u8ba4\u624b\u52bf:\n\u53c2\u770b\u5e2e\u52a9\u4e0e\u53cd\u9988\u624b\u52bf\u8bf4\u660e"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f070033

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

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

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->m()V

    iget-boolean v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->l()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->g:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->k:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    iget-boolean v0, p0, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->h:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/GestureSetting$GesturePreferenceFragment;->n()V

    return-void
.end method
