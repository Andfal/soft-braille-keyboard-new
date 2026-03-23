.class public Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;
.super Lcom/nirenr/talkman/settings/BasePreferenceFragment;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/settings/AdvancedSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdvancedPreferenceFragment"
.end annotation


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field private d:Z

.field private e:[Ljava/lang/String;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:[Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->l:Ljava/lang/String;

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
    .locals 13

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->f:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->g:Ljava/util/HashMap;

    const-string v1, "-1"

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "2"

    const-string v5, "3"

    const-string v6, "4"

    const-string v7, "5"

    const-string v8, "6"

    const-string v9, "7"

    const-string v10, "8"

    const-string v11, "9"

    const-string v12, "10"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->h:[Ljava/lang/String;

    const-string v0, "2"

    const-string v1, "5"

    const-string v2, "6"

    const-string v3, "1"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->j:[Ljava/lang/String;

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

    sget-object v1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->l:Ljava/lang/String;

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

.method static bridge synthetic c(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->i()V

    return-void
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->l(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->m()V

    return-void
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->r()V

    return-void
.end method

.method static bridge synthetic g(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->s()V

    return-void
.end method

.method static bridge synthetic h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 14

    const-string v0, "\u5907\u4efd"

    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v3

    const-string v4, "\u8bbe\u7f6e.dat"

    invoke-virtual {v3, v0, v4}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    const v3, 0x7f07089d

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x7f0708ab

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x7f070898

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x7f0708a1

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const v7, 0x7f0708a4

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v8

    const-string v9, "\u526a\u5207\u677f.dat"

    invoke-virtual {v8, v0, v9}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Lk2/c;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v8

    const-string v9, "\u6536\u85cf\u5939.dat"

    invoke-virtual {v8, v0, v9}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Lk2/c;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v8, 0x7f070530

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "[]"

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    new-instance v9, Ljava/io/ObjectOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".dat"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v0, v12}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10, v8}, Lk2/b0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0703a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private j([Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private static k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f070973

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    const/16 v0, 0x64

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const v0, 0x7f070068

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$5;

    invoke-direct {v1, v6}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$5;-><init>(Landroid/app/ProgressDialog;)V

    const/4 v2, -0x1

    invoke-virtual {v6, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/androlua/LuaApplication;->getDownloadPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$6;

    move-object v0, v8

    move-object v1, v6

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$6;-><init>(Landroid/app/ProgressDialog;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v7, v8}, Lcom/nirenr/talkman/util/HttpUtil;->b(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$7;

    invoke-direct {p2, v6}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$7;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/util/HttpUtil$d;->i(Lcom/nirenr/talkman/util/HttpUtil$UpdateListener;)V

    const p2, 0x7f070096

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$8;

    invoke-direct {p2, p1, v6}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$8;-><init>(Lcom/nirenr/talkman/util/HttpUtil$d;Landroid/app/ProgressDialog;)V

    const/4 p1, -0x2

    invoke-virtual {v6, p1, p0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private m()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070973

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    new-instance v2, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;

    invoke-direct {v2, p0, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$25;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Landroid/app/ProgressDialog;)V

    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/androlua/util/AsyncTaskX;->execute([Ljava/lang/Object;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string v1, "com.ara.accessibilityservice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private o()Z
    .locals 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "com.ara.accessibilityservice"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_3
    return v1
.end method

.method private p(Landroid/preference/Preference;)V
    .locals 6

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f0704d0

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->isCN()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "[\"\u817e\u8baf\u89c6\u9891\",\"\n[a-zA-Z ]*\"]"

    goto :goto_0

    :cond_0
    const-string v5, "[]"

    :goto_0
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0704d2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$31;

    invoke-direct {v3, p0, v2, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$31;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;[Ljava/lang/String;Lorg/json/JSONArray;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$30;

    invoke-direct {v2, p0, v0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$30;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Lorg/json/JSONArray;Landroid/preference/Preference;)V

    const v3, 0x7f0701a9

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$32;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$32;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Lorg/json/JSONArray;Landroid/app/AlertDialog;Landroid/preference/Preference;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private q(Landroid/preference/Preference;)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f07052f

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const v6, 0x7f070530

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[]"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const v6, 0x7f0708ae

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    aput-object v2, v4, v3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    aput-object v3, v4, v6

    aget-object v3, v5, v6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v6

    :cond_1
    move v3, v6

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070532

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$28;

    invoke-direct {v3, p0, v4}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$28;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;[Ljava/lang/String;)V

    invoke-virtual {v0, v5, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;

    invoke-direct {v2, p0, v1, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$27;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Lorg/json/JSONArray;Landroid/preference/Preference;)V

    const v3, 0x7f0701a9

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$26;

    invoke-direct {v2, p0, v1, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$26;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Lorg/json/JSONArray;Landroid/preference/Preference;)V

    const v3, 0x7f0701af

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-static {v0, v4, v2, v3}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v4, -0x2

    invoke-static {v0, v4, v2, v3}, Lh2/i;->a(Landroid/app/AlertDialog;III)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v4, -0x3

    invoke-static {v0, v4, v2, v3}, Lh2/i;->a(Landroid/app/AlertDialog;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$29;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$29;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Lorg/json/JSONArray;Landroid/app/AlertDialog;Landroid/preference/Preference;)V

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private r()V
    .locals 5

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33;

    invoke-direct {v2, p0, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$33;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private s()V
    .locals 9

    const-string v0, "\u5907\u4efd"

    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v3

    const-string v4, "\u526a\u5207\u677f.dat"

    invoke-virtual {v3, v0, v4}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lh2/e;->d(Landroid/content/Context;Ljava/util/ArrayList;)Z

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    :try_start_3
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v3

    const-string v4, "\u6536\u85cf\u5939.dat"

    invoke-virtual {v3, v0, v4}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lh2/e;->f(Landroid/content/Context;Ljava/util/ArrayList;)Z

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    :try_start_6
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v3

    const-string v4, "\u8bbe\u7f6e.dat"

    invoke-virtual {v3, v0, v4}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1, v2}, Lk2/b0;->m(Landroid/content/SharedPreferences;Ljava/util/Map;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :try_start_8
    new-instance v1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const v3, 0x7f070530

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "[]"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_0
    :try_start_9
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :try_start_a
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lk2/b0;->g(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3, v5}, Lk2/b0;->m(Landroid/content/SharedPreferences;Ljava/util/Map;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_3

    :catch_4
    move-exception v3

    :try_start_b
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_3

    :catch_5
    move-exception v3

    :try_start_c
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_6
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->r()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_4

    :catch_7
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_4

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public static setSpeakPasswords(Landroid/content/Context;Z)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "speak_password"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static shouldSpeakPasswords(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "speak_password"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private t(Landroid/preference/ListPreference;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "5"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    new-array p2, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array p2, v1, [Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const p2, 0x7f0704ec

    invoke-virtual {p0, p2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/baidu/paddle/lite/ocr/Predictor;->getLang()[[Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0704d7

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_5"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    aget-object v0, p2, v1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    aget-object v4, p2, v0

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v1, p2, v1

    aget-object p2, p2, v0

    const-string v0, "zh"

    invoke-direct {p0, v2, v0, v1, p2}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f0704ef

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f070506

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private u(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, p4, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->j([Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    aget-object p1, p3, p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-direct {p0, p4, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->j([Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    aget-object p1, p3, p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->isCN()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u89e3\u8bf4.zip"

    goto :goto_0

    :cond_0
    const-string v0, "jieshuo.zip"

    :goto_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->setPreferencesFromResource(I)V

    invoke-super {p0, p1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xc

    new-array v0, p1, [Ljava/lang/String;

    const v1, 0x7f070501

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0704f6

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const v1, 0x7f0704f7

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const v1, 0x7f0704f9

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const v1, 0x7f0704fa

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const v1, 0x7f0704fb

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const v1, 0x7f0704fc

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const v1, 0x7f0704fd

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x7

    aput-object v1, v0, v8

    const v1, 0x7f0704fe

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x8

    aput-object v1, v0, v8

    const v1, 0x7f0704ff

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0x9

    aput-object v1, v0, v8

    const v1, 0x7f070500

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0xa

    aput-object v1, v0, v8

    const v1, 0x7f0704f8

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v8, 0xb

    aput-object v1, v0, v8

    iput-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->e:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->e:[Ljava/lang/String;

    array-length v8, v1

    if-ge v0, v8, :cond_1

    iget-object v8, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->f:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->h:[Ljava/lang/String;

    aget-object v9, v9, v0

    aget-object v1, v1, v0

    invoke-virtual {v8, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "vivo"

    aput-object v1, v0, v2

    const v1, 0x7f0707de

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const v1, 0x7f0701c5

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f070506

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->i:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f07052f

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->d:Z

    :cond_2
    const v0, 0x7f0707d8

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f070774

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-array v0, v7, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->checkVip([I)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getPluginsDir()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    new-instance v6, Lk2/p;

    invoke-direct {v6}, Lk2/p;-><init>()V

    invoke-static {v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, v5, v7

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "main.lua"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const v1, 0x7f0705ba

    invoke-virtual {p0, v1, v0, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->setEntriesAndValues2(I[Ljava/lang/String;[Ljava/lang/String;)V

    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const p1, 0x7f070478

    invoke-virtual {p0, p1, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const p1, 0x7f0704d3

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->i:[Ljava/lang/String;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->j:[Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v3}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->setEntriesAndValues(I[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->i:[Ljava/lang/String;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->j:[Ljava/lang/String;

    const-string v5, "6"

    invoke-direct {p0, p1, v5, v1, v3}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->u(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const p1, 0x7f0704d7

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->k:Landroid/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->k:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->t(Landroid/preference/ListPreference;Ljava/lang/String;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/androlua/LuaApplication;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    iget-boolean p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->d:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string v1, "\u65e0\u969c\u788d\u8054\u76df\u670d\u52a1\u63d2\u4ef6"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->n()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->o()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u670d\u52a1\u5df2\u542f\u7528,\u7248\u672c "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$1;

    invoke-direct {p1, p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$1;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V

    goto :goto_2

    :cond_5
    const-string p1, "\u670d\u52a1\u672a\u542f\u7528\uff0c\u70b9\u51fb\u542f\u7528"

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$2;

    invoke-direct {p1, p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$2;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V

    goto :goto_2

    :cond_6
    const-string p1, "\u70b9\u51fb\u4e0b\u8f7d\u63d2\u4ef6"

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$3;

    invoke-direct {p1, p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$3;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V

    :goto_2
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_7
    new-instance p1, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f070977

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    const v1, 0x7f070976

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    invoke-static {}, Lcom/androlua/LuaWallpaperService;->getInstance()Lcom/androlua/LuaWallpaperService;

    move-result-object v1

    const-string v3, " "

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0700bf

    goto :goto_3

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f070512

    :goto_3
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$4;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$4;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->e:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->h:[Ljava/lang/String;

    const v1, 0x7f0704d5

    invoke-virtual {p0, v1, p1, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->setEntriesAndValues(I[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->e:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->h:[Ljava/lang/String;

    const v3, 0x7f070502

    invoke-virtual {p0, v3, p1, v0}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->setEntriesAndValues(I[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->e:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->h:[Ljava/lang/String;

    const-string v4, "-1"

    invoke-direct {p0, v1, v4, p1, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->u(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->e:[Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->h:[Ljava/lang/String;

    invoke-direct {p0, v3, v4, p1, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->u(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f070507

    invoke-static {p1, v0, v2}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result p1

    if-eqz p1, :cond_9

    const p1, 0x7f070567

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    const p1, 0x7f07056d

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    const p1, 0x7f070569

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_9
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0707d8
        0x7f070774
        0x7f0705ba
        0x7f070779
        0x7f0707c6
    .end array-data
.end method

.method public onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 2

    iget v0, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->a:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    iget-object p1, p1, Lcom/nirenr/talkman/util/HttpUtil$c;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    const v0, 0x7f070202

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->l(Ljava/lang/String;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitleRes()I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    const p1, 0x7f070508

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const v3, 0x7f070569

    const v4, 0x7f07056d

    const v5, 0x7f070567

    if-eqz p1, :cond_0

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0704d4

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->k:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->t(Landroid/preference/ListPreference;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f0704cb

    const v5, 0x7f0704c9

    const v6, 0x7f0704c7

    const/4 v7, 0x0

    const-string v8, ""

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseTouchMode(Z)V

    goto/16 :goto_3

    :sswitch_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseShowText(Z)V

    goto/16 :goto_3

    :sswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseProximityFalseTouchPrevention(Z)V

    goto/16 :goto_3

    :sswitch_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseProximityFalseTouchPreventionOnlyLock(Z)V

    goto/16 :goto_3

    :sswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUsePowerSave(Z)V

    goto/16 :goto_3

    :sswitch_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUsePinyinSpeak(Z)V

    goto/16 :goto_3

    :sswitch_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseOCR(Z)V

    goto/16 :goto_3

    :sswitch_7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-static {v7, v7, v7}, Lcom/nirenr/talkman/ai/BaiduAI;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseNavigationGesture(Z)V

    goto/16 :goto_3

    :sswitch_9
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseInputMethodSpeakWord(Z)V

    goto/16 :goto_3

    :sswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseInputMethodSpeakPassword(Z)V

    goto/16 :goto_3

    :sswitch_b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseInputMethodSpeakKey(Z)V

    goto/16 :goto_3

    :sswitch_c
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseInputMethodSpeakCommit(Z)V

    goto/16 :goto_3

    :sswitch_d
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseInputMethodSpeakCommitSpace(Z)V

    goto/16 :goto_3

    :sswitch_e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseInputMethodSpeakCandidate(Z)V

    goto/16 :goto_3

    :sswitch_f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseInputMethodNoTouch(Z)V

    goto/16 :goto_3

    :sswitch_10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseInputMethodNoGesture(Z)V

    goto/16 :goto_3

    :sswitch_11
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseInputMethodGesture(Z)V

    goto/16 :goto_3

    :sswitch_12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseInputMethodDoubleTap(Z)V

    goto/16 :goto_3

    :sswitch_13
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseImageToText(Z)V

    goto/16 :goto_3

    :sswitch_14
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForeground(Z)V

    goto/16 :goto_3

    :sswitch_15
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForegroundPro(Z)V

    goto/16 :goto_3

    :sswitch_16
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseFloatMenu(Z)V

    goto/16 :goto_3

    :sswitch_17
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmedEnabled(Z)V

    goto/16 :goto_3

    :sswitch_18
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseCloudLabel(Z)V

    goto/16 :goto_3

    :sswitch_19
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/nirenr/talkman/settings/GithubActivity;->checkUpdate(Landroid/content/Context;)V

    goto/16 :goto_3

    :sswitch_1a
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->d:Z

    if-eqz p2, :cond_5

    const-string p2, "\\.[ \r\n]| +\n+|[^a-zA-Z0-9][\\. ]+|[,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?\\!]+"

    goto :goto_1

    :cond_5
    const-string p2, "[\\.,!?;\u3002\uff1f\uff01\uff0c\r\n\u201c\u201d\uff1a\uff1b\\?\\!\u060c\u061f\u061b]+"

    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f07062b

    invoke-static {p1, v0, p2}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    return v2

    :cond_6
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u5173\u952e\u5b57\u9519\u8bef"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    invoke-virtual {p1, p2, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return v1

    :sswitch_1b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setOnlyNotification(Z)V

    goto :goto_3

    :sswitch_1c
    iget-object p1, p0, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->k:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->t(Landroid/preference/ListPreference;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    :sswitch_1d
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v3, p2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/nirenr/talkman/ai/BaiduAI;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :sswitch_1e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setNaviUpTap(Z)V

    goto :goto_3

    :sswitch_1f
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setMenuUpTap(Z)V

    goto :goto_3

    :sswitch_20
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setKeepFocusPosition(Z)V

    goto :goto_3

    :sswitch_21
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseAutoFocus(Z)V

    :cond_7
    :goto_3
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070051 -> :sswitch_21
        0x7f070315 -> :sswitch_20
        0x7f07036f -> :sswitch_1f
        0x7f07046b -> :sswitch_1e
        0x7f0704c8 -> :sswitch_1d
        0x7f0704ca -> :sswitch_1d
        0x7f0704cc -> :sswitch_1d
        0x7f0704d4 -> :sswitch_1c
        0x7f070508 -> :sswitch_1b
        0x7f07062d -> :sswitch_1a
        0x7f07071a -> :sswitch_19
        0x7f070726 -> :sswitch_18
        0x7f07073d -> :sswitch_17
        0x7f070763 -> :sswitch_16
        0x7f070767 -> :sswitch_15
        0x7f070769 -> :sswitch_14
        0x7f070775 -> :sswitch_13
        0x7f070778 -> :sswitch_12
        0x7f07077b -> :sswitch_11
        0x7f07077d -> :sswitch_10
        0x7f07077f -> :sswitch_f
        0x7f070781 -> :sswitch_e
        0x7f070784 -> :sswitch_d
        0x7f070785 -> :sswitch_c
        0x7f070787 -> :sswitch_b
        0x7f070789 -> :sswitch_a
        0x7f07078b -> :sswitch_9
        0x7f0707c8 -> :sswitch_8
        0x7f0707de -> :sswitch_7
        0x7f0707e1 -> :sswitch_6
        0x7f0707e9 -> :sswitch_5
        0x7f0707ec -> :sswitch_4
        0x7f0707f5 -> :sswitch_3
        0x7f0707f6 -> :sswitch_2
        0x7f070820 -> :sswitch_1
        0x7f070863 -> :sswitch_0
        0x7f07087a -> :sswitch_5
    .end sparse-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getTitleRes()I

    move-result v1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    const-class v4, Lcom/nirenr/talkman/settings/StringListSetting;

    const-class v5, Lcom/androlua/LuaEditActivity;

    const-string v6, "time.dat"

    const-string v7, "label.dat"

    const-string v8, "hot_key.dat"

    const-string v9, "gesture.dat"

    const-string v10, "favorites.json"

    const-string v11, "cmd.dat"

    const-string v12, "clipboard.json"

    const-class v13, Lcom/nirenr/talkman/settings/CommandListSetting;

    const-string v15, "settings.json"

    const-string v14, "DEF_VALUE"

    move-object/from16 v16, v3

    const-string v3, "NAME"

    move-object/from16 v17, v12

    const-string v12, "RES_ID"

    move-object/from16 v18, v11

    const-string v11, "backup"

    move-object/from16 v19, v10

    const/4 v10, 0x1

    sparse-switch v1, :sswitch_data_0

    const/4 v1, 0x0

    return v1

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0705a8

    const-string v3, "https://bing.com/search?q="

    invoke-static {v1, v2, v3}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0701c6

    invoke-static {v1, v2, v3}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/nirenr/talkman/WebActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v10

    :sswitch_1
    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getToolsDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lh2/h;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f07068e

    invoke-direct {v2, v3, v1, v4}, Lh2/h;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lh2/h;->n()V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07045b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v10

    :sswitch_2
    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getSoundsDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lh2/h;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070603

    invoke-direct {v2, v3, v1, v4}, Lh2/h;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lh2/h;->n()V

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070439

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_1
    return v10

    :sswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070566

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070565

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$10;

    invoke-direct {v2, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$10;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return v10

    :sswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->q(Landroid/preference/Preference;)V

    return v10

    :sswitch_5
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f07052b

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f07052d

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f07052c

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v10

    :sswitch_6
    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getPluginsDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lh2/h;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f070524

    invoke-direct {v2, v3, v1, v4}, Lh2/h;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lh2/h;->n()V

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07040b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_2
    return v10

    :sswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->p(Landroid/preference/Preference;)V

    return v10

    :sswitch_8
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f070472

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f070474

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f070473

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v10

    :sswitch_9
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f070466

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f070467

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f010013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v10

    :sswitch_a
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f07035e

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f07035f

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f010012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v10

    :sswitch_b
    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getLabelsDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lh2/h;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f07031a

    invoke-direct {v2, v3, v1, v4}, Lh2/h;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lh2/h;->n()V

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0703f5

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_3
    return v10

    :sswitch_c
    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getGesturesDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lh2/h;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0702c8

    invoke-direct {v2, v3, v1, v4}, Lh2/h;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v2}, Lh2/h;->n()V

    goto :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0703da

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_4
    return v10

    :sswitch_d
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x7f07028a

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f07028b

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/String;

    const v3, 0x7f07035d

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v10

    :sswitch_e
    const/4 v4, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0703d0

    invoke-virtual {v0, v3, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$24;

    invoke-direct {v2, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$24;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return v10

    :sswitch_f
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    const-string v3, "ocr.lua"

    invoke-virtual {v2, v3}, Lcom/androlua/LuaApplication;->getResourcesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0704f5

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/androlua/LuaUtil;->save(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v10

    :sswitch_10
    new-instance v1, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getNotesDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/settings/BasePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return v10

    :sswitch_11
    new-instance v1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$14;

    invoke-direct {v1, v0, v2}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$14;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Lcom/androlua/LuaApplication;)V

    invoke-static {v11, v6, v1}, Lcom/nirenr/talkman/util/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_12
    new-instance v1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$13;

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$13;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V

    invoke-static {v11, v15, v1}, Lcom/nirenr/talkman/util/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_13
    new-instance v1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$15;

    invoke-direct {v1, v0, v2}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$15;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Lcom/androlua/LuaApplication;)V

    invoke-static {v11, v7, v1}, Lcom/nirenr/talkman/util/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_14
    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getHotKeysDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v8, v1, v0}, Lcom/nirenr/talkman/util/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_15
    new-instance v1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$16;

    invoke-direct {v1, v0, v2}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$16;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Lcom/androlua/LuaApplication;)V

    invoke-static {v11, v9, v1}, Lcom/nirenr/talkman/util/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_16
    new-instance v1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$12;

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$12;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V

    move-object/from16 v2, v19

    invoke-static {v11, v2, v1}, Lcom/nirenr/talkman/util/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_17
    new-instance v1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$18;

    invoke-direct {v1, v0, v2}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$18;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Lcom/androlua/LuaApplication;)V

    move-object/from16 v3, v18

    invoke-static {v11, v3, v1}, Lcom/nirenr/talkman/util/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_18
    new-instance v1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$11;

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$11;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V

    move-object/from16 v2, v17

    invoke-static {v11, v2, v1}, Lcom/nirenr/talkman/util/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_19
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->a()Z

    move-result v1

    if-nez v1, :cond_7

    new-instance v1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$21;

    invoke-direct {v1, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$21;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V

    invoke-static {v11, v15, v1}, Lcom/nirenr/talkman/util/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :cond_7
    const/16 v1, 0xa

    new-array v3, v1, [Z

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0700d9

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/String;

    const v5, 0x7f0700e9

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    const v5, 0x7f0700db

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    const v5, 0x7f0700e0

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const v5, 0x7f0700ed

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v1, v6

    const v5, 0x7f0700e6

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v1, v6

    const v5, 0x7f0700e2

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v1, v6

    const v5, 0x7f0700dd

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v1, v6

    const v5, 0x7f0700e4

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v1, v6

    const v5, 0x7f0700de

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    aput-object v5, v1, v6

    const v5, 0x7f0700e7

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v1, v6

    new-instance v5, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$23;

    invoke-direct {v5, v0, v3}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$23;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;[Z)V

    invoke-virtual {v4, v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;

    invoke-direct {v4, v0, v3, v2}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$22;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;[ZLcom/androlua/LuaApplication;)V

    const v2, 0x104000a

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return v10

    :sswitch_1a
    invoke-direct/range {p0 .. p0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;->a()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-static {v11, v15, v1, v0}, Lcom/nirenr/talkman/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :cond_8
    const/16 v1, 0xa

    new-array v3, v1, [Z

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0700d7

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/String;

    const v5, 0x7f0700d1

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    const v5, 0x7f0700c1

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v10

    const v5, 0x7f0700c6

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    const v5, 0x7f0700d5

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v1, v6

    const v5, 0x7f0700cc

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v1, v6

    const v5, 0x7f0700c8

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v1, v6

    const v5, 0x7f0700c3

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    aput-object v5, v1, v6

    const v5, 0x7f0700ca

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    aput-object v5, v1, v6

    const v5, 0x7f0700c4

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    aput-object v5, v1, v6

    const v5, 0x7f0700cd

    invoke-virtual {v0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    aput-object v5, v1, v6

    new-instance v5, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$20;

    invoke-direct {v5, v0, v3}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$20;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;[Z)V

    invoke-virtual {v4, v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;

    invoke-direct {v4, v0, v3, v2}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$19;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;[ZLcom/androlua/LuaApplication;)V

    const v2, 0x104000a

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return v10

    :sswitch_1b
    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getTimerDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v6, v1, v0}, Lcom/nirenr/talkman/util/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-static {v11, v15, v1, v0}, Lcom/nirenr/talkman/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_1d
    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getLabelsDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v7, v1, v0}, Lcom/nirenr/talkman/util/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_1e
    new-instance v1, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$17;

    invoke-direct {v1, v0, v2}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$17;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;Lcom/androlua/LuaApplication;)V

    invoke-static {v11, v8, v1}, Lcom/nirenr/talkman/util/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_1f
    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getGesturesDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v9, v1, v0}, Lcom/nirenr/talkman/util/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_20
    move-object/from16 v2, v19

    invoke-static {}, Lk2/c;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v11, v2, v1, v0}, Lcom/nirenr/talkman/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_21
    move-object/from16 v3, v18

    invoke-virtual {v2}, Lcom/androlua/LuaApplication;->getCmdDir()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v3, v1, v0}, Lcom/nirenr/talkman/util/a;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_22
    move-object/from16 v2, v17

    invoke-static {}, Lk2/c;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v11, v2, v1, v0}, Lcom/nirenr/talkman/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return v10

    :sswitch_23
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const v2, 0x7f0700ba

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lk2/c;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object v2, v1

    :cond_9
    if-eqz v16, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getClipboardList()Ljava/util/ArrayList;

    move-result-object v2

    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v2, Lh2/h;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0700bc

    invoke-direct {v2, v3, v1, v4}, Lh2/h;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v2}, Lh2/h;->n()V

    goto :goto_5

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0703b4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_5
    return v10

    :sswitch_24
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070070

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07006f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$9;

    invoke-direct {v2, v0}, Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment$9;-><init>(Lcom/nirenr/talkman/settings/AdvancedSetting$AdvancedPreferenceFragment;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return v10

    :sswitch_25
    new-instance v1, Lh2/g;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070003

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x77ff0100

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lh2/g;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1}, Lh2/g;->e()V

    return v10

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070005 -> :sswitch_25
        0x7f070070 -> :sswitch_24
        0x7f0700bc -> :sswitch_23
        0x7f0700c1 -> :sswitch_22
        0x7f0700c3 -> :sswitch_21
        0x7f0700c6 -> :sswitch_20
        0x7f0700c8 -> :sswitch_1f
        0x7f0700ca -> :sswitch_1e
        0x7f0700cc -> :sswitch_1d
        0x7f0700d1 -> :sswitch_1c
        0x7f0700d5 -> :sswitch_1b
        0x7f0700d7 -> :sswitch_1a
        0x7f0700d9 -> :sswitch_19
        0x7f0700db -> :sswitch_18
        0x7f0700dd -> :sswitch_17
        0x7f0700e0 -> :sswitch_16
        0x7f0700e2 -> :sswitch_15
        0x7f0700e4 -> :sswitch_14
        0x7f0700e6 -> :sswitch_13
        0x7f0700e9 -> :sswitch_12
        0x7f0700ed -> :sswitch_11
        0x7f070249 -> :sswitch_10
        0x7f070254 -> :sswitch_f
        0x7f07026d -> :sswitch_e
        0x7f07028b -> :sswitch_d
        0x7f0702c8 -> :sswitch_c
        0x7f07031a -> :sswitch_b
        0x7f07035f -> :sswitch_a
        0x7f070467 -> :sswitch_9
        0x7f070474 -> :sswitch_8
        0x7f0704d2 -> :sswitch_7
        0x7f070524 -> :sswitch_6
        0x7f07052d -> :sswitch_5
        0x7f070532 -> :sswitch_4
        0x7f070566 -> :sswitch_3
        0x7f070603 -> :sswitch_2
        0x7f07068e -> :sswitch_1
        0x7f070978 -> :sswitch_0
    .end sparse-switch
.end method
