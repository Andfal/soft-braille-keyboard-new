.class public Lcom/androlua/LuaApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lcom/androlua/LuaContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaApplication$UpdateTask;
    }
.end annotation


# static fields
.field private static final L:Lcom/luajava/LuaState;

.field private static data:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static mApp:Lcom/androlua/LuaApplication;

.field private static mAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private idx:I

.field private isUpdata:Z

.field private isVersionChanged:Z

.field protected libDir:Ljava/lang/String;

.field protected localDir:Ljava/lang/String;

.field protected luaCpath:Ljava/lang/String;

.field protected luaExtDir:Ljava/lang/String;

.field protected luaLpath:Ljava/lang/String;

.field protected luaMdDir:Ljava/lang/String;

.field private mBackupDir:Ljava/lang/String;

.field private mCmdDir:Ljava/lang/String;

.field private mDloadDir:Ljava/lang/String;

.field private mGestureDir:Ljava/lang/String;

.field private mHelperDir:Ljava/lang/String;

.field private mHotkeyDir:Ljava/lang/String;

.field private mLabelDir:Ljava/lang/String;

.field private mNameDir:Ljava/lang/String;

.field private mNaviDir:Ljava/lang/String;

.field private mNoteDir:Ljava/lang/String;

.field private mPluginDir:Ljava/lang/String;

.field private mResDir:Ljava/lang/String;

.field private mResources:Lcom/androlua/LuaResources;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSoundDir:Ljava/lang/String;

.field private mTimerDir:Ljava/lang/String;

.field private mToolDir:Ljava/lang/String;

.field private mVip:Z

.field protected odexDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/luajava/LuaStateFactory;->c()Lcom/luajava/LuaState;

    move-result-object v0

    sput-object v0, Lcom/androlua/LuaApplication;->L:Lcom/luajava/LuaState;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/androlua/LuaApplication;->data:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/androlua/LuaApplication;->mAppList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaApplication;->idx:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androlua/LuaApplication;->aList:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic a(Lcom/androlua/LuaApplication;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaApplication;->aList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/androlua/LuaApplication;)I
    .locals 0

    iget p0, p0, Lcom/androlua/LuaApplication;->idx:I

    return p0
.end method

.method static bridge synthetic c(Lcom/androlua/LuaApplication;I)V
    .locals 0

    iput p1, p0, Lcom/androlua/LuaApplication;->idx:I

    return-void
.end method

.method public static getAppList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/androlua/LuaApplication;->mAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "_yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/androlua/LuaApplication;
    .locals 1

    sget-object v0, Lcom/androlua/LuaApplication;->mApp:Lcom/androlua/LuaApplication;

    return-object v0
.end method

.method private runFunc(Ljava/lang/String;Lcom/androlua/LuaContext;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/androlua/LuaApplication;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->o(Ljava/lang/String;)Lcom/luajava/LuaFunction;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1, v0}, Lcom/luajava/LuaFunction;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "ERROR"

    return-object p1
.end method

.method private saveUser()V
    .locals 9

    const-string v0, "user_id_sign"

    const-string v1, "user_id"

    const-string v2, "user_key"

    const-string v3, "user_password"

    const-string v4, ""

    const-string v5, "user_name"

    invoke-virtual {p0, v5, v4}, Lcom/androlua/LuaApplication;->getSharedData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v4, v6, :cond_1

    :try_start_0
    const-class v4, Landroid/os/UserManager;

    invoke-virtual {p0, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/androlua/k;->a(Landroid/os/UserManager;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :try_start_1
    const-string v4, "\u5907\u4efd"

    const-string v6, "\u7528\u6237.dat"

    invoke-virtual {p0, v4, v6}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v7, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setAppList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/androlua/LuaApplication;->mAppList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/androlua/LuaApplication;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->v(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public varargs callStringFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/androlua/LuaApplication;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0, p1}, Lcom/luajava/LuaState;->v(Ljava/lang/String;)Lcom/luajava/LuaObject;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/luajava/LuaObject;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Lcom/luajava/LuaException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public checkInfo()Z
    .locals 9

    const-string v0, "lastUpdateTime"

    const-string v1, "versionName"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-wide v4, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {p0}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v6, v1, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const-wide/16 v7, 0x0

    invoke-interface {v6, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    cmp-long v1, v7, v4

    if-eqz v1, :cond_1

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androlua/LuaApplication;->isUpdata:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return v2
.end method

.method public final checkVip()Z
    .locals 2

    sget-object v0, Lcom/androlua/LuaApplication;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->f()V

    iget-boolean v0, p0, Lcom/androlua/LuaApplication;->mVip:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "_YouTu_Key"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearAllActivity()V
    .locals 2

    iget v0, p0, Lcom/androlua/LuaApplication;->idx:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->aList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->aList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public clearAndExit()V
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaApplication;->aList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->finishAndRemoveTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->aList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public varargs doAsset(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/androlua/LuaApplication;->readAsset(Ljava/lang/String;)[B

    move-result-object v0

    sget-object v1, Lcom/androlua/LuaApplication;->L:Lcom/luajava/LuaState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/luajava/LuaState;->p0(I)V

    invoke-virtual {v1, v0, p1}, Lcom/luajava/LuaState;->a([BLjava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_1

    const-string p1, "debug"

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    const-string p1, "traceback"

    invoke-virtual {v1, v0, p1}, Lcom/luajava/LuaState;->m(ILjava/lang/String;)I

    const/4 p1, -0x2

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->j0(I)V

    invoke-virtual {v1, p1}, Lcom/luajava/LuaState;->A(I)V

    array-length p1, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    sget-object v3, Lcom/androlua/LuaApplication;->L:Lcom/luajava/LuaState;

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Lcom/luajava/LuaState;->a0(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/androlua/LuaApplication;->L:Lcom/luajava/LuaState;

    rsub-int/lit8 v1, p1, -0x2

    invoke-virtual {p2, p1, v2, v1}, Lcom/luajava/LuaState;->P(III)I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, v0}, Lcom/luajava/LuaState;->t0(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lcom/luajava/LuaException;

    sget-object p2, Lcom/androlua/LuaApplication;->L:Lcom/luajava/LuaState;

    invoke-virtual {p2, v0}, Lcom/luajava/LuaState;->v0(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/luajava/LuaException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaApplication;->sendMsg(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public doFile(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/androlua/LuaApplication;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAllApp()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAllAppList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Lcom/androlua/LuaApplication;->mAppList:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "com."

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v5, 0xa

    if-ge v2, v5, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    new-instance v5, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v5, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_2
    if-ge v1, v5, :cond_5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v6, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v0, Lk2/p;

    invoke-direct {v0}, Lk2/p;-><init>()V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v3, Lcom/androlua/LuaApplication;->mAppList:Ljava/util/ArrayList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/androlua/LuaApplication;->mAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBackupDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mBackupDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701ef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mBackupDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mBackupDir:Ljava/lang/String;

    return-object v0
.end method

.method public getClassLoaders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCmdDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mCmdDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mCmdDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mCmdDir:Ljava/lang/String;

    return-object v0
.end method

.method public getCmdPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getCmdDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getDeLuaPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Application;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mDloadDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701f2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mDloadDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mDloadDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "temp.txt"

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getDownloadDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGesturePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaApplication;->getGesturesDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGesturesDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mGestureDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701f3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mGestureDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mGestureDir:Ljava/lang/String;

    return-object v0
.end method

.method public getGesturesDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getGesturesDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGlobalData()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/androlua/LuaApplication;->data:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public getHelpersDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mHelperDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701f4

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mHelperDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mHelperDir:Ljava/lang/String;

    return-object v0
.end method

.method public getHelpersDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getHelpersDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHelpersPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaApplication;->getHelpersDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHotKeysDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mHotkeyDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701f5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mHotkeyDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mHotkeyDir:Ljava/lang/String;

    return-object v0
.end method

.method public getHotKeysDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getHotKeysDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHotKeysPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaApplication;->getHotKeysDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "getSerialId"

    invoke-direct {p0, v0, p0}, Lcom/androlua/LuaApplication;->runFunc(Ljava/lang/String;Lcom/androlua/LuaContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mLabelDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701f6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mLabelDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mLabelDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelsDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getLabelsDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLibDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->libDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLibrarys()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getLocalDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->localDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaCpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->luaCpath:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->localDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getLuaDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtDir()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaApplication;->luaExtDir:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "no_storage"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lk2/b0;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/\u89e3\u8bf4"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->luaExtDir:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/androlua/LuaApplication;->luaExtDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->luaExtDir:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaApplication;->luaExtDir:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getLuaExtDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaLpath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->luaLpath:Ljava/lang/String;

    return-object v0
.end method

.method public getLuaPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLuaPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getLuaDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaApplication;->getLuaDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLuaState()Lcom/luajava/LuaState;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMdDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->luaMdDir:Ljava/lang/String;

    return-object v0
.end method

.method public getNamesDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mNameDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701f7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mNameDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mNameDir:Ljava/lang/String;

    return-object v0
.end method

.method public getNamesPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getNamesDir()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".json"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNaviDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mNaviDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f070469

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mNaviDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mNaviDir:Ljava/lang/String;

    return-object v0
.end method

.method public getNaviPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getNaviDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNotesDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mNoteDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701f8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mNoteDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mNoteDir:Ljava/lang/String;

    return-object v0
.end method

.method public getNotesPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getNotesDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOdexDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->odexDir:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginsDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mPluginDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701f9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mPluginDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mPluginDir:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginsDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getPluginsDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPluginsPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/androlua/LuaApplication;->getPluginsDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 5

    invoke-static {}, Lcom/androlua/LuaResources;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mResources:Lcom/androlua/LuaResources;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/androlua/LuaResources;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    new-instance v1, Lcom/androlua/LuaResources;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/androlua/LuaResources;-><init>(Landroid/content/res/Resources;Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/androlua/LuaApplication;->mResources:Lcom/androlua/LuaResources;

    return-object v1
.end method

.method public getResourcesDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mResDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701fa

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mResDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mResDir:Ljava/lang/String;

    return-object v0
.end method

.method public getResourcesDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getResourcesDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSharedData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSharedData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Application;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public getSoundsDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mSoundDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701fb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mSoundDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mSoundDir:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundsDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getSoundsDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getTimerDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mTimerDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701fd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mTimerDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mTimerDir:Ljava/lang/String;

    return-object v0
.end method

.method public getTimerPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getTimerDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getToolsDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mToolDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const v0, 0x7f0701fe

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mToolDir:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mToolDir:Ljava/lang/String;

    return-object v0
.end method

.method public getToolsDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getToolsDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUriForFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Landroid/content/FileProvider;->g(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getUriForPath(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Landroid/content/FileProvider;->g(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    const v1, 0x7f070898

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    const v1, 0x7f0708a1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public inJieshuoActivity()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inJieshuoActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/androlua/LuaApplication;->idx:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jieshuo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/androlua/LuaApplication;->idx:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final init()V
    .locals 7

    const-string v0, "user_id"

    const-string v1, "user_password"

    invoke-static {p0}, Lcom/androlua/LuaResources;->isEnabled(Landroid/content/Context;)Z

    const-string v2, "\u5907\u4efd"

    const-string v3, "\u7528\u6237.dat"

    invoke-virtual {p0, v2, v3}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "user_id_sign"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "user_name"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/androlua/LuaUtil;->checkStorage2(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    iget-object v3, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/androlua/LuaApplication;->saveUser()V

    :cond_2
    :goto_0
    :try_start_1
    sget-object v0, Lcom/androlua/LuaApplication;->L:Lcom/luajava/LuaState;

    invoke-virtual {v0}, Lcom/luajava/LuaState;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/androlua/LuaApplication;->doAsset(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    invoke-static {}, Lcom/nirenr/talkman/ai/h;->q()Z

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->init()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 1
        0x69t
        0x6et
        0x69t
        0x74t
    .end array-data
.end method

.method public final isAbc()Z
    .locals 2

    iget-boolean v0, p0, Lcom/androlua/LuaApplication;->mVip:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    const-string v1, "_YouTu_Key"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isVip()Z
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->isAbc()Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .locals 11

    const-string v0, "error"

    const-string v1, "\u65e5\u5fd7"

    const-string v2, "crash_time"

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/androlua/LuaApplication;->mApp:Lcom/androlua/LuaApplication;

    invoke-static {}, Lcom/nirenr/talkman/i;->b()Lcom/nirenr/talkman/i;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/nirenr/talkman/i;->d(Landroid/content/Context;)V

    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-static {p0}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    const v4, 0x7f0708a1

    :try_start_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaApplication;->localDir:Ljava/lang/String;

    const-string v3, "odex"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaApplication;->odexDir:Ljava/lang/String;

    const-string v3, "lib"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaApplication;->libDir:Ljava/lang/String;

    const-string v3, "lua"

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaApplication;->luaMdDir:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/lib?.so;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/androlua/LuaApplication;->libDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/lib?.so"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaApplication;->luaCpath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/androlua/LuaApplication;->luaMdDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/?.lua;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/androlua/LuaApplication;->luaMdDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/lua/?.lua;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/androlua/LuaApplication;->luaMdDir:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/?/init.lua;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androlua/LuaApplication;->luaLpath:Ljava/lang/String;

    sget-object v3, Lcom/androlua/LuaApplication;->L:Lcom/luajava/LuaState;

    invoke-virtual {v3}, Lcom/luajava/LuaState;->O()V

    invoke-virtual {v3, p0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v5, "this"

    invoke-virtual {v3, v5}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/luajava/LuaState;->X(Ljava/lang/Object;)V

    const-string v5, "service"

    invoke-virtual {v3, v5}, Lcom/luajava/LuaState;->m0(Ljava/lang/String;)V

    const-string v5, "package"

    invoke-virtual {v3, v5}, Lcom/luajava/LuaState;->p(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/androlua/LuaApplication;->luaLpath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    const-string v5, "path"

    const/4 v6, -0x2

    invoke-virtual {v3, v6, v5}, Lcom/luajava/LuaState;->l0(ILjava/lang/String;)V

    iget-object v5, p0, Lcom/androlua/LuaApplication;->luaCpath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/luajava/LuaState;->c0(Ljava/lang/String;)V

    const-string v5, "cpath"

    invoke-virtual {v3, v6, v5}, Lcom/luajava/LuaState;->l0(ILjava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/luajava/LuaState;->Q(I)V

    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->init()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v3, v6, :cond_0

    :try_start_1
    const-class v3, Landroid/os/UserManager;

    invoke-virtual {p0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/androlua/k;->a(Landroid/os/UserManager;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_0

    return-void

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-virtual {p0}, Lcom/androlua/LuaApplication;->checkInfo()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/androlua/LuaApplication$UpdateTask;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Lcom/androlua/LuaApplication$UpdateTask;-><init>(Lcom/androlua/LuaApplication;Lcom/androlua/q;)V

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v6}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    new-instance v3, Lcom/androlua/LuaApplication$1;

    invoke-direct {v3, p0}, Lcom/androlua/LuaApplication$1;-><init>(Lcom/androlua/LuaApplication;)V

    invoke-virtual {p0, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const v3, 0x7f0707aa

    invoke-static {p0, v3, v4}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/androlua/LuaApplication;->setDebug(Z)V

    :try_start_2
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/androlua/LuaApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4, v5}, Lcom/androlua/l;->a(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-static {p0}, Lk2/b0;->f(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v4, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    add-long/2addr v5, v7

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ApplicationExitInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    invoke-static {v7}, Lcom/androlua/m;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v8

    cmp-long v10, v8, v5

    if-gtz v10, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v4, v2, v8}, Lk2/b0;->l(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-static {v7}, Lcom/androlua/n;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v7}, Lcom/androlua/n;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "installPackage"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v8

    const-string v9, ".log"

    invoke-static {v0, v9}, Lcom/androlua/LuaApplication;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/androlua/o;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/androlua/LuaUtil;->save(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/androlua/p;->a(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    move-result-object v7

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v9

    const-string v10, ".txt"

    invoke-static {v0, v10}, Lcom/androlua/LuaApplication;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lcom/androlua/LuaApplication;->getLuaExtPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/androlua/LuaUtil;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v7

    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    :cond_5
    invoke-static {p0}, Ll2/d;->g(Landroid/content/Context;)V

    return-void
.end method

.method public readAsset(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method public regGc(Lcom/androlua/LuaGcable;)V
    .locals 0

    return-void
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerReceiver:0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jieshuo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerReceiver:04 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jieshuo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerReceiver:05 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jieshuo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerReceiver:06 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jieshuo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p5}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public sendError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "talkman"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendMsg(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "talkman"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/androlua/LuaApplication;->data:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    return-void
.end method

.method public setSharedData(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3

    const-string v0, "user_id_sign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/androlua/LuaApplication;->getSharedData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaApplication;->saveUser()V

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p2, :cond_1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_2
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_3

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_3
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_4
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_5

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_5
    instance-of v1, p2, Ljava/util/Set;

    if-eqz v1, :cond_6

    check-cast p2, Ljava/util/Set;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_6
    instance-of v1, p2, Lcom/luajava/LuaTable;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/util/HashSet;

    check-cast p2, Lcom/luajava/LuaTable;

    invoke-virtual {p2}, Lcom/luajava/LuaTable;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_7
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public setVip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/androlua/LuaApplication;->mVip:Z

    return-void
.end method

.method public updateAllActivity()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mGestureDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mSoundDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mPluginDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mToolDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mLabelDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mTimerDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mCmdDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mNoteDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mResDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mNameDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mHotkeyDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mNaviDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mDloadDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mBackupDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/androlua/LuaApplication;->mHelperDir:Ljava/lang/String;

    iget v0, p0, Lcom/androlua/LuaApplication;->idx:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/androlua/LuaApplication;->aList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->recreate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaApplication;->aList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method
