.class public Lcom/vivo/speechsdk/tts/api/TTSEngine;
.super Lcom/vivo/speechsdk/c/a;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/tts/api/ISynthesize;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vivo/speechsdk/c/a<",
        "Lcom/vivo/speechsdk/api/InitListener;",
        ">;",
        "Lcom/vivo/speechsdk/tts/api/ISynthesize;"
    }
.end annotation


# static fields
.field public static final ACTION_CONNECT:I = 0x64

.field private static final i:Ljava/lang/String; = "TTSEngine"

.field private static final j:I = 0x0

.field private static final k:I = 0x1

.field private static final l:I = 0x2

.field private static final m:I = 0x64

.field private static final n:I = 0x65

.field private static final o:I = 0x66

.field private static final p:I = 0x67

.field private static final q:I = 0x68

.field private static final r:I = 0x69

.field private static final s:I = 0x6a

.field private static final t:I = 0xbb8

.field private static u:Lcom/vivo/speechsdk/tts/api/TTSEngine;


# instance fields
.field private a:Landroid/os/Handler;

.field private volatile b:I

.field private volatile c:Lcom/vivo/speechsdk/d/c;

.field private volatile d:Lcom/vivo/speechsdk/d/f/a;

.field private e:Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

.field private f:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

.field private g:Landroid/os/Handler$Callback;

.field private final h:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/c/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b:I

    new-instance v0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;-><init>(Lcom/vivo/speechsdk/tts/api/TTSEngine;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->g:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;-><init>(Lcom/vivo/speechsdk/tts/api/TTSEngine;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->h:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/tts/api/TTSEngine;I)I
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b:I

    return p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/d/c;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c:Lcom/vivo/speechsdk/d/c;

    return-object p0
.end method

.method private a(II)V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/d/f/b;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->f:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-direct {v1, v0, v2}, Lcom/vivo/speechsdk/d/f/b;-><init>(Landroid/os/Looper;Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;)V

    new-instance v0, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v0, p1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {v1, v0, p2}, Lcom/vivo/speechsdk/d/f/b;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    invoke-virtual {v1, p2}, Lcom/vivo/speechsdk/d/f/b;->onEnd(I)V

    return-void
.end method

.method private a(Landroid/os/Bundle;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_request_id"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c:Lcom/vivo/speechsdk/d/c;

    iget-object v1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->f:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/d/c;->speak(Landroid/os/Bundle;Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x7531

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(II)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start speak error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TTSEngine"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/tts/api/TTSEngine;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->doInit(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/tts/api/TTSEngine;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Landroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/speechsdk/tts/api/TTSEngine;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b:I

    return p0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->e:Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    return-object p0
.end method

.method public static createEngine()Lcom/vivo/speechsdk/tts/api/TTSEngine;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->u:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/tts/api/TTSEngine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/tts/api/TTSEngine;->u:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-direct {v1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/tts/api/TTSEngine;->u:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->u:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    return-object v0
.end method

.method private doInit(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->d:Lcom/vivo/speechsdk/d/f/a;

    new-instance v0, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 v1, 0x4e22

    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/d/f/a;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->d:Lcom/vivo/speechsdk/d/f/a;

    new-instance v0, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 v1, 0x7533

    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b:I

    const-string v1, "TTSEngine"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->d:Lcom/vivo/speechsdk/d/f/a;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/d/f/a;->onSuccess()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "already init success status "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/vivo/speechsdk/b/f/a;->a()Lcom/vivo/speechsdk/b/f/a;

    move-result-object v0

    const-string v3, "tts_init"

    invoke-virtual {v0, p1, v3}, Lcom/vivo/speechsdk/b/f/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/c/a;->getId()I

    move-result v0

    const-string v3, "key_engine_hash_code"

    invoke-virtual {p1, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/vivo/speechsdk/d/c$c;

    invoke-direct {v0}, Lcom/vivo/speechsdk/d/c$c;-><init>()V

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vivo/speechsdk/d/c$c;->a(Landroid/os/Looper;)Lcom/vivo/speechsdk/d/c$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/d/c$c;->a(Lcom/vivo/speechsdk/api/IEngine;)Lcom/vivo/speechsdk/d/c$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/c$c;->a()Lcom/vivo/speechsdk/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c:Lcom/vivo/speechsdk/d/c;

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c:Lcom/vivo/speechsdk/d/c;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/d/c;->a(Landroid/os/Bundle;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tts init result code "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " status "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b:I

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->d:Lcom/vivo/speechsdk/d/f/a;

    new-instance v1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v1, p1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/d/f/a;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b:I

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->d:Lcom/vivo/speechsdk/d/f/a;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/d/f/a;->onSuccess()V

    :goto_1
    return-void
.end method

.method private isWorkThreadAlive()Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    invoke-super {p0}, Lcom/vivo/speechsdk/c/a;->destroy()V

    invoke-direct {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isWorkThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/c/b;->b()Lcom/vivo/speechsdk/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/c/b;->b(Lcom/vivo/speechsdk/api/IEngine;)V

    return-void
.end method

.method public doAction(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c:Lcom/vivo/speechsdk/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/speechsdk/tts/api/TTSEngine$1;

    invoke-direct {v1, p0, p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine$1;-><init>(Lcom/vivo/speechsdk/tts/api/TTSEngine;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getSupportSpeakers()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportSpeakers state | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSEngine"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c:Lcom/vivo/speechsdk/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c:Lcom/vivo/speechsdk/d/c;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/c;->getSupportSpeakers()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.2.4.00"

    return-object v0
.end method

.method public init(Landroid/os/Bundle;Lcom/vivo/speechsdk/api/InitListener;)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "TTSEngine init SpeechSdk VERSION "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "5.2.4.00"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, " BUILD "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "240725_3af788f8"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSEngine"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->d:Lcom/vivo/speechsdk/d/f/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/vivo/speechsdk/d/f/a;

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->isInit()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/d/f/a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->d:Lcom/vivo/speechsdk/d/f/a;

    :cond_1
    invoke-direct {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isWorkThreadAlive()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->g:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->d:Lcom/vivo/speechsdk/d/f/a;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/d/f/a;->a(Lcom/vivo/speechsdk/api/InitListener;)V

    invoke-static {}, Lcom/vivo/speechsdk/c/b;->b()Lcom/vivo/speechsdk/c/b;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/vivo/speechsdk/c/b;->a(Lcom/vivo/speechsdk/api/IEngine;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    const/16 v0, 0x68

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public isDestroy()Z
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInit()Z
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSpeaking()Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c:Lcom/vivo/speechsdk/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c:Lcom/vivo/speechsdk/d/c;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/d/c;->isSpeaking()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    invoke-virtual {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isWorkThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    invoke-virtual {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isWorkThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public speak(Landroid/os/Bundle;Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;)I
    .locals 0

    iput-object p2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->e:Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    iget-object p2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->h:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->speak(Landroid/os/Bundle;Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;)I

    const/4 p1, 0x0

    return p1
.end method

.method public speak(Landroid/os/Bundle;Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;)I
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SessionUtils;->generateReqId()I

    move-result v0

    iput-object p2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->f:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-virtual {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isWorkThreadAlive()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/b/f/a;->a()Lcom/vivo/speechsdk/b/f/a;

    move-result-object p2

    const-string v2, "tts_start"

    invoke-virtual {p2, p1, v2}, Lcom/vivo/speechsdk/b/f/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    invoke-virtual {p2, v2, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x7531

    invoke-direct {p0, p1, v0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(II)V

    :goto_0
    return v1
.end method

.method public stop()V
    .locals 3

    invoke-virtual {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isWorkThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/16 v1, 0x65

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const-string v0, "TTSEngine"

    const-string v1, "has other action drop this action"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public uploadText(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isWorkThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
