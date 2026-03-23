.class public Lcom/vivo/speechsdk/api/SpeechSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;
    }
.end annotation


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final FOLDER_ASR:Ljava/lang/String; = "ASR"

.field private static final FOLDER_BBKLOG:Ljava/lang/String; = "bbklog"

.field private static final FOLDER_DATA:Ljava/lang/String; = "data"

.field private static final FOLDER_SPEECHSDK:Ljava/lang/String; = "speechsdk"

.field private static final INITED:I = 0x2

.field private static final INITING:I = 0x1

.field private static final LOG_STORAGE_PATH_DATA:Ljava/lang/String; = "2"

.field private static final LOG_STORAGE_PATH_SDCARD:Ljava/lang/String; = "0"

.field private static final MODULES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SpeechSdk"

.field private static final UNINITED:I = 0x0

.field public static final VERSION_BUILD:Ljava/lang/String; = "240726_c920c487"

.field public static final VERSION_CODE:I = 0xccb0

.field public static final VERSION_NAME:Ljava/lang/String; = "5.2.4.00"

.field private static mContext:Landroid/content/Context;

.field private static mInitListener:Lcom/vivo/speechsdk/api/InitListener;

.field private static mToolListener:Lcom/vivo/speechsdk/b/i/d;

.field private static volatile sInitStatus:I

.field private static sSdkParams:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "Net"

    const-string v1, "Session"

    const-string v2, "Tracker"

    const-string v3, "Record"

    const-string v4, "Opus"

    const-string v5, "Volume"

    const-string v6, "Vad"

    const-string v7, "ASROnline"

    const-string v8, "Security"

    const-string v9, "TTSOnline"

    const-string v10, "Player"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/speechsdk/api/SpeechSdk;->MODULES:[Ljava/lang/String;

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/a;->a()Lcom/vivo/speechsdk/common/thread/a;

    move-result-object v0

    sput-object v0, Lcom/vivo/speechsdk/api/SpeechSdk;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/vivo/speechsdk/api/SpeechSdk$4;

    invoke-direct {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$4;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/api/SpeechSdk;->mToolListener:Lcom/vivo/speechsdk/b/i/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized _init(Landroid/content/Context;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Lcom/vivo/speechsdk/api/InitListener;)V
    .locals 3

    const-class v0, Lcom/vivo/speechsdk/api/SpeechSdk;

    monitor-enter v0

    :try_start_0
    const-string v1, "SpeechSdk"

    const-string v2, "SDK VERSION 5.2.4.00 BUILD 240726_c920c487"

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p2, Lcom/vivo/speechsdk/api/SpeechSdk;->mInitListener:Lcom/vivo/speechsdk/api/InitListener;

    sget p2, Lcom/vivo/speechsdk/api/SpeechSdk;->sInitStatus:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    sget-object p0, Lcom/vivo/speechsdk/api/SpeechSdk;->mInitListener:Lcom/vivo/speechsdk/api/InitListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/vivo/speechsdk/api/InitListener;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    const/4 p2, 0x1

    :try_start_1
    sput p2, Lcom/vivo/speechsdk/api/SpeechSdk;->sInitStatus:I

    if-nez p0, :cond_2

    const/16 p0, 0x4e8f

    invoke-static {p0}, Lcom/vivo/speechsdk/api/SpeechSdk;->callOnInitFailed(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    if-nez p1, :cond_3

    const/16 p0, 0x4e90

    :try_start_2
    invoke-static {p0}, Lcom/vivo/speechsdk/api/SpeechSdk;->callOnInitFailed(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    :try_start_3
    sput-object p0, Lcom/vivo/speechsdk/api/SpeechSdk;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/c;->a()Lcom/vivo/speechsdk/common/thread/c;

    move-result-object p2

    new-instance v1, Lcom/vivo/speechsdk/api/SpeechSdk$1;

    invoke-direct {v1, p1, p0}, Lcom/vivo/speechsdk/api/SpeechSdk$1;-><init>(Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Lcom/vivo/speechsdk/common/thread/c;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/vivo/speechsdk/api/SpeechSdk;->sInitStatus:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Lcom/vivo/speechsdk/api/SpeechSdk;->sInitStatus:I

    return p0
.end method

.method static synthetic access$100()Lcom/vivo/speechsdk/api/InitListener;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/api/SpeechSdk;->mInitListener:Lcom/vivo/speechsdk/api/InitListener;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/vivo/speechsdk/api/SpeechSdk;->initUserId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(ZI)V
    .locals 0

    invoke-static {p0, p1}, Lcom/vivo/speechsdk/api/SpeechSdk;->initStoreManager(ZI)V

    return-void
.end method

.method static synthetic access$1200()V
    .locals 0

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->unregisterModule()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/api/SpeechSdk;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/api/SpeechSdk;->sSdkParams:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    return-object v0
.end method

.method static synthetic access$302(Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;
    .locals 0

    sput-object p0, Lcom/vivo/speechsdk/api/SpeechSdk;->sSdkParams:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/vivo/speechsdk/api/SpeechSdk;->initLogUtil(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$500()Lcom/vivo/speechsdk/b/i/d;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/api/SpeechSdk;->mToolListener:Lcom/vivo/speechsdk/b/i/d;

    return-object v0
.end method

.method static synthetic access$600(I)V
    .locals 0

    invoke-static {p0}, Lcom/vivo/speechsdk/api/SpeechSdk;->callOnInitFailed(I)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/api/SpeechSdk;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;)Lcom/vivo/speechsdk/b/c;
    .locals 0

    invoke-static {p0, p1}, Lcom/vivo/speechsdk/api/SpeechSdk;->makeSpeechContext(Landroid/content/Context;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;)Lcom/vivo/speechsdk/b/c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/vivo/speechsdk/b/c;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/vivo/speechsdk/api/SpeechSdk;->registerModule(Lcom/vivo/speechsdk/b/c;ZZ)V

    return-void
.end method

.method public static declared-synchronized allowUseUserData(ZLandroid/os/Bundle;Lcom/vivo/speechsdk/api/ResultListener;)V
    .locals 3

    const-class v0, Lcom/vivo/speechsdk/api/SpeechSdk;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/vivo/speechsdk/api/UiResultListener;

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->isInit()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, p2, v2}, Lcom/vivo/speechsdk/api/UiResultListener;-><init>(Lcom/vivo/speechsdk/api/ResultListener;Landroid/os/Looper;)V

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->isInit()Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p0, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 p1, 0x4e22

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/vivo/speechsdk/api/UiResultListener;->onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    sget-object p2, Lcom/vivo/speechsdk/api/SpeechSdk;->sSdkParams:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isNetEnable()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p0, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 p1, 0x2afa

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/vivo/speechsdk/api/UiResultListener;->onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    sget-object p2, Lcom/vivo/speechsdk/api/SpeechSdk;->sSdkParams:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isLite()Z

    :cond_3
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vivo/speechsdk/b/c;->c()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/vivo/speechsdk/b/c;->c()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_4
    sget-object p2, Lcom/vivo/speechsdk/api/SpeechSdk;->sSdkParams:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {p2}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isLite()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p2

    const-string v2, "Net"

    invoke-virtual {p2, v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->register(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p2

    const-string v2, "Net"

    invoke-virtual {p2, v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object p2

    check-cast p2, Lcom/vivo/speechsdk/module/api/net/INetFactory;

    invoke-interface {p2}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->createHttpClient()Lcom/vivo/speechsdk/module/api/net/IHttp;

    move-result-object p2

    if-nez p2, :cond_7

    sget-object p0, Lcom/vivo/speechsdk/api/SpeechSdk;->sSdkParams:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {p0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isLite()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p0

    const-string p1, "Net"

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->unRegister(Ljava/lang/String;)V

    :cond_6
    new-instance p0, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 p1, 0x3a99

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {v1, p0}, Lcom/vivo/speechsdk/api/UiResultListener;->onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :cond_7
    :try_start_3
    new-instance v2, Lcom/vivo/speechsdk/api/SpeechSdk$5;

    invoke-direct {v2, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$5;-><init>(Lcom/vivo/speechsdk/api/UiResultListener;)V

    invoke-static {p1, v2, p2, p0}, Lcom/vivo/speechsdk/api/CommMethod;->req(Landroid/os/Bundle;Lcom/vivo/speechsdk/api/ResultListener;Lcom/vivo/speechsdk/module/api/net/IHttp;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static callOnInitFailed(I)V
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/api/SpeechSdk;->mInitListener:Lcom/vivo/speechsdk/api/InitListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v1, p0}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/api/InitListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    :cond_0
    const/4 p0, 0x0

    sput p0, Lcom/vivo/speechsdk/api/SpeechSdk;->sInitStatus:I

    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 3

    const-class v0, Lcom/vivo/speechsdk/api/SpeechSdk;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/vivo/speechsdk/common/thread/c;->a()Lcom/vivo/speechsdk/common/thread/c;

    move-result-object v1

    new-instance v2, Lcom/vivo/speechsdk/api/SpeechSdk$3;

    invoke-direct {v2}, Lcom/vivo/speechsdk/api/SpeechSdk$3;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vivo/speechsdk/common/thread/c;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static generateUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getUserId()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/common/utils/SpUtil;->setUserId(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "userId | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechSdk"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static getBaseFileDir(Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v0, "key_work_dir"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SpeechSdk"

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isExternal()Z

    move-result p0

    const-string v0, "speechsdk"

    if-eqz p0, :cond_1

    const-string p0, "isExternal = true"

    invoke-static {v2, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt p0, v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string v5, "2"

    if-eqz v1, :cond_3

    move-object v1, v5

    goto :goto_1

    :cond_3
    const-string v1, "0"

    :goto_1
    const-string v6, "ro.log.storage.type"

    invoke-static {v6, v1}, Lcom/vivo/speechsdk/common/utils/SystemPropertiesUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "bbklog"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v7, 0x1a

    if-lt p0, v7, :cond_5

    :try_start_0
    invoke-static {v5}, Lcom/vivo/speechsdk/common/utils/FileUtils;->changeFolderPermission(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create folder : "

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-nez v6, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "folder create failed | "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    goto :goto_3

    :cond_6
    move-object p0, v1

    goto :goto_4

    :cond_7
    const/4 p0, 0x0

    :goto_3
    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_9

    const-string p0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, p0}, Lcom/vivo/speechsdk/common/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ASR"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_5

    :cond_8
    const-string p0, "No Permission android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :cond_9
    :goto_5
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " debug dump path | "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static declared-synchronized init(Landroid/app/Application;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Lcom/vivo/speechsdk/api/InitListener;)V
    .locals 1

    const-class v0, Lcom/vivo/speechsdk/api/SpeechSdk;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/vivo/speechsdk/api/SpeechSdk;->_init(Landroid/content/Context;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Lcom/vivo/speechsdk/api/InitListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/app/Application;Ljava/lang/String;Lcom/vivo/speechsdk/api/InitListener;)V
    .locals 4

    const-class v0, Lcom/vivo/speechsdk/api/SpeechSdk;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    invoke-direct {v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withUserId(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withVaid(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withDid(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getCustomOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withRom(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withModel(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withSysVer(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withAppVer(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getProduct()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withProduct(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->getAndroidVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withAnVer(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withNetEnable(Z)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withDebugEnable(Z)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withLogValue(I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withPkg(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    const/16 v3, 0x7530

    invoke-virtual {p1, v3}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withConnPoolKeepTime(I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    const-string v3, "key_connection_resue_enable"

    invoke-virtual {p1, v3, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->add(Ljava/lang/String;Z)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    const-string v3, "key_silence_count"

    invoke-virtual {p1, v3, v2}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->add(Ljava/lang/String;I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    const-string v2, "key_save_audio_max_count"

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->add(Ljava/lang/String;I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    const-string v2, "key_sdk_init_mode"

    invoke-virtual {p1, v2, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->add(Ljava/lang/String;I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    const-string v2, "key_track_channel_priority"

    invoke-virtual {p1, v2, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->add(Ljava/lang/String;I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->build()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/vivo/speechsdk/api/SpeechSdk;->init(Landroid/app/Application;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Lcom/vivo/speechsdk/api/InitListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Lcom/vivo/speechsdk/api/InitListener;)V
    .locals 1

    const-class v0, Lcom/vivo/speechsdk/api/SpeechSdk;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/vivo/speechsdk/api/SpeechSdk;->_init(Landroid/content/Context;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Lcom/vivo/speechsdk/api/InitListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initLogUtil(Ljava/lang/String;IZ)V
    .locals 3

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->setTag(Ljava/lang/String;)V

    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, " level:"

    aput-object v1, p0, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, " isDebug:"

    const/4 v1, 0x2

    aput-object v0, p0, v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p0, v2

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SpeechSdk"

    invoke-static {v0, p0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->setLogValue(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->setLogValue(I)V

    :goto_0
    return-void
.end method

.method private static initStoreManager(ZI)V
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/vivo/speechsdk/b/h/c;->b(Z)V

    invoke-static {p1}, Lcom/vivo/speechsdk/b/h/c;->a(I)V

    return-void
.end method

.method private static initUserId(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/vivo/speechsdk/api/SpeechSdk;->generateUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_user_id"

    invoke-virtual {v0, v1, p0}, Lcom/vivo/speechsdk/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized isInit()Z
    .locals 3

    const-class v0, Lcom/vivo/speechsdk/api/SpeechSdk;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/vivo/speechsdk/api/SpeechSdk;->sInitStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static makeSpeechContext(Landroid/content/Context;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;)Lcom/vivo/speechsdk/b/c;
    .locals 2

    new-instance v0, Lcom/vivo/speechsdk/b/c;

    invoke-direct {v0}, Lcom/vivo/speechsdk/b/c;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isDebugEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/b/c;->a(Z)V

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/b/c;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/b/c;->a(Landroid/os/Bundle;)V

    invoke-static {p1, p0}, Lcom/vivo/speechsdk/api/SpeechSdk;->getBaseFileDir(Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/b/c;->a(Landroid/os/Looper;)V

    const-string p0, "key_sdk_version"

    const-string v1, "5.2.4.00"

    invoke-virtual {v0, p0, v1}, Lcom/vivo/speechsdk/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0xccb0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_sdk_version_code"

    invoke-virtual {v0, v1, p0}, Lcom/vivo/speechsdk/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isExternal()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/b/c;->b(Z)V

    return-object v0
.end method

.method private static registerModule(Lcom/vivo/speechsdk/b/c;ZZ)V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->setSpeechContext(Lcom/vivo/speechsdk/b/c;)V

    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/vivo/speechsdk/api/SpeechSdk;->MODULES:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_2

    aget-object v1, v0, p0

    const-string v2, "Net"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    aget-object v0, v0, p0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    aget-object v0, v0, p0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->register(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static declared-synchronized setNetEnable(Z)V
    .locals 3

    const-class v0, Lcom/vivo/speechsdk/api/SpeechSdk;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/vivo/speechsdk/api/SpeechSdk;->sInitStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/c;->a()Lcom/vivo/speechsdk/common/thread/c;

    move-result-object v1

    new-instance v2, Lcom/vivo/speechsdk/api/SpeechSdk$2;

    invoke-direct {v2, p0}, Lcom/vivo/speechsdk/api/SpeechSdk$2;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/vivo/speechsdk/common/thread/c;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static unregisterModule()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/vivo/speechsdk/api/SpeechSdk;->MODULES:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v2

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->unRegister(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
