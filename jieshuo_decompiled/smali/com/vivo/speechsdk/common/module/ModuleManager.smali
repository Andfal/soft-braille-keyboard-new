.class public Lcom/vivo/speechsdk/common/module/ModuleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;,
        Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleName;
    }
.end annotation


# static fields
.field private static final MODULE:Ljava/lang/String; = "Module"

.field private static final MODULES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODULE_ASRIPC:Ljava/lang/String; = "ASRIpc"

.field public static final MODULE_ASR_OFFLINE:Ljava/lang/String; = "ASROffline"

.field public static final MODULE_ASR_ONLINE:Ljava/lang/String; = "ASROnline"

.field public static final MODULE_LASR:Ljava/lang/String; = "LASR"

.field public static final MODULE_MIXER:Ljava/lang/String; = "ASRMixer"

.field public static final MODULE_NET:Ljava/lang/String; = "Net"

.field public static final MODULE_NLU:Ljava/lang/String; = "Nlu"

.field public static final MODULE_OPUS:Ljava/lang/String; = "Opus"

.field private static final MODULE_PKG:Ljava/lang/String; = "com.vivo.speechsdk.module."

.field public static final MODULE_PLAYER:Ljava/lang/String; = "Player"

.field public static final MODULE_RECORD:Ljava/lang/String; = "Record"

.field public static final MODULE_SEC:Ljava/lang/String; = "Security"

.field public static final MODULE_SESSION:Ljava/lang/String; = "Session"

.field public static final MODULE_SPEEX:Ljava/lang/String; = "Speex"

.field public static final MODULE_TRACKER:Ljava/lang/String; = "Tracker"

.field public static final MODULE_TTS_FILE:Ljava/lang/String; = "TTSFile"

.field public static final MODULE_TTS_IPC:Ljava/lang/String; = "TTSIpc"

.field public static final MODULE_TTS_MIXER:Ljava/lang/String; = "TTSMixer"

.field public static final MODULE_TTS_OFFLINE:Ljava/lang/String; = "TTSOffline"

.field public static final MODULE_TTS_ONLINE:Ljava/lang/String; = "TTSOnline"

.field public static final MODULE_VAD:Ljava/lang/String; = "Vad"

.field public static final MODULE_VOLUME:Ljava/lang/String; = "Volume"

.field public static final MODULE_YM:Ljava/lang/String; = "Ym"

.field private static final TAG:Ljava/lang/String; = "ModuleManager"

.field private static volatile sInstance:Lcom/vivo/speechsdk/common/module/ModuleManager;


# instance fields
.field private mSpeechContext:Lcom/vivo/speechsdk/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/common/module/ModuleManager;->MODULES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;
    .locals 2

    const-class v0, Lcom/vivo/speechsdk/common/module/ModuleManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/common/module/ModuleManager;->sInstance:Lcom/vivo/speechsdk/common/module/ModuleManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/common/module/ModuleManager;

    invoke-direct {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/common/module/ModuleManager;->sInstance:Lcom/vivo/speechsdk/common/module/ModuleManager;

    :cond_0
    sget-object v1, Lcom/vivo/speechsdk/common/module/ModuleManager;->sInstance:Lcom/vivo/speechsdk/common/module/ModuleManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getModuleInfo(Lcom/vivo/speechsdk/common/module/IModule;)Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;

    invoke-direct {v1, v0}, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;-><init>(Lcom/vivo/speechsdk/common/module/ModuleManager$1;)V

    iput-object p1, v1, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mModule:Lcom/vivo/speechsdk/common/module/IModule;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Lcom/vivo/speechsdk/common/module/ModuleAnno;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/common/module/ModuleAnno;

    invoke-interface {p1}, Lcom/vivo/speechsdk/common/module/ModuleAnno;->lazyLoad()Z

    move-result v0

    iput-boolean v0, v1, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mLazyLoad:Z

    invoke-interface {p1}, Lcom/vivo/speechsdk/common/module/ModuleAnno;->singleTon()Z

    move-result p1

    iput-boolean p1, v1, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mSingleTon:Z

    :cond_0
    return-object v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/vivo/speechsdk/b/b;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getModule(Ljava/lang/String;)Lcom/vivo/speechsdk/common/module/IModule;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/common/module/IModule;->getFactory()Lcom/vivo/speechsdk/b/b;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "factory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ModuleManager"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getModule(Ljava/lang/String;)Lcom/vivo/speechsdk/common/module/IModule;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/common/module/ModuleManager;->MODULES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;

    if-eqz v0, :cond_1

    iget-boolean p1, v0, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mIsLoad:Z

    if-nez p1, :cond_0

    iget-boolean p1, v0, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mLazyLoad:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/common/module/ModuleManager;->mSpeechContext:Lcom/vivo/speechsdk/b/c;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->load(Lcom/vivo/speechsdk/b/c;)I

    :cond_0
    iget-object p1, v0, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mModule:Lcom/vivo/speechsdk/common/module/IModule;

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ModuleManager"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getService(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getService(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Looper;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/b/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p3}, Lcom/vivo/speechsdk/b/a;->a(Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "service "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ModuleManager"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSpeechContext()Lcom/vivo/speechsdk/b/c;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/common/module/ModuleManager;->mSpeechContext:Lcom/vivo/speechsdk/b/c;

    return-object v0
.end method

.method public register(Ljava/lang/String;)V
    .locals 5

    const-string v0, "ModuleManager"

    sget-object v1, Lcom/vivo/speechsdk/common/module/ModuleManager;->MODULES:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.vivo.speechsdk.module."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Module"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/speechsdk/common/module/IModule;

    invoke-direct {p0, v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getModuleInfo(Lcom/vivo/speechsdk/common/module/IModule;)Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register module | "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, v3, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mLazyLoad:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/common/module/ModuleManager;->mSpeechContext:Lcom/vivo/speechsdk/b/c;

    invoke-virtual {v3, p1}, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->load(Lcom/vivo/speechsdk/b/c;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "module load failed | "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "module not found | "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSpeechContext(Lcom/vivo/speechsdk/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/common/module/ModuleManager;->mSpeechContext:Lcom/vivo/speechsdk/b/c;

    return-void
.end method

.method public unRegister(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/vivo/speechsdk/common/module/ModuleManager;->MODULES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegister module | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ModuleManager"

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, v0, Lcom/vivo/speechsdk/common/module/ModuleManager$ModuleInfo;->mModule:Lcom/vivo/speechsdk/common/module/IModule;

    invoke-interface {p1}, Lcom/vivo/speechsdk/common/module/IModule;->release()V

    :cond_0
    return-void
.end method

.method public workLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/common/module/ModuleManager;->mSpeechContext:Lcom/vivo/speechsdk/b/c;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->h()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
