.class public Lcom/vivo/speechsdk/asr/api/ASREngine;
.super Lcom/vivo/speechsdk/c/a;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/asr/api/IRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vivo/speechsdk/c/a<",
        "Lcom/vivo/speechsdk/api/InitListener;",
        ">;",
        "Lcom/vivo/speechsdk/asr/api/IRecognizer;"
    }
.end annotation


# static fields
.field private static final EVENT_ACTION:I = 0x6a

.field private static final EVENT_CANCEL:I = 0x66

.field private static final EVENT_DESTROY:I = 0x67

.field private static final EVENT_FEEDDATA:I = 0x68

.field private static final EVENT_INIT:I = 0x69

.field private static final EVENT_START:I = 0x64

.field private static final EVENT_STOP:I = 0x65

.field private static final STATUS_DESTROYED:I = 0x3

.field private static final STATUS_INITED:I = 0x2

.field private static final STATUS_INITING:I = 0x1

.field private static final STATUS_UNINIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ASREngine"

.field private static final WAIT_PREPARE_TIMEOUT:I = 0xbb8


# instance fields
.field private final mActionCallBack:Landroid/os/Handler$Callback;

.field private mAsrHandler:Landroid/os/Handler;

.field private mInitListener:Lcom/vivo/speechsdk/a/h/b;

.field private final mLog:Lcom/vivo/speechsdk/common/utils/ILog;

.field private mRecognizer:Lcom/vivo/speechsdk/asr/api/IRecognizer;

.field private mRecognizerBuilder:Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

.field private mRecognizerListener:Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

.field private mRecognizerProListener:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

.field private final mRecognizerProListenerWrap:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

.field private mStartLatch:Ljava/util/concurrent/CountDownLatch;

.field private volatile mStatus:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/c/a;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStatus:I

    new-instance v0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/asr/api/ASREngine$2;-><init>(Lcom/vivo/speechsdk/asr/api/ASREngine;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mActionCallBack:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/asr/api/ASREngine$6;-><init>(Lcom/vivo/speechsdk/asr/api/ASREngine;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizerProListenerWrap:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-virtual {p0}, Lcom/vivo/speechsdk/c/a;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/LoggerManager;->getLogger(I)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mLog:Lcom/vivo/speechsdk/common/utils/ILog;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizer:Lcom/vivo/speechsdk/asr/api/IRecognizer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/vivo/speechsdk/asr/api/ASREngine;Lcom/vivo/speechsdk/asr/api/IRecognizer;)Lcom/vivo/speechsdk/asr/api/IRecognizer;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizer:Lcom/vivo/speechsdk/asr/api/IRecognizer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/vivo/speechsdk/asr/api/ASREngine;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->doStart(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/speechsdk/asr/api/ASREngine;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->doInit(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/speechsdk/asr/api/ASREngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->doDestroy()V

    return-void
.end method

.method static synthetic access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStatus:I

    return p0
.end method

.method static synthetic access$402(Lcom/vivo/speechsdk/asr/api/ASREngine;I)I
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStatus:I

    return p1
.end method

.method static synthetic access$500(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/common/utils/ILog;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mLog:Lcom/vivo/speechsdk/common/utils/ILog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizerBuilder:Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    return-object p0
.end method

.method static synthetic access$602(Lcom/vivo/speechsdk/asr/api/ASREngine;Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizerBuilder:Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/a/h/b;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    return-object p0
.end method

.method static synthetic access$800(Lcom/vivo/speechsdk/asr/api/ASREngine;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStartLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizerListener:Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    return-object p0
.end method

.method private callOnErrorEnd(I)V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/a/h/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizerProListener:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-direct {v1, v0, v2}, Lcom/vivo/speechsdk/a/h/c;-><init>(Landroid/os/Looper;Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)V

    new-instance v0, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v0, p1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/c/a;->getId()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/vivo/speechsdk/a/h/c;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/c/a;->getId()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/vivo/speechsdk/a/h/c;->onEnd(I)V

    return-void
.end method

.method public static createEngine()Lcom/vivo/speechsdk/asr/api/ASREngine;
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-direct {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;-><init>()V

    return-object v0
.end method

.method private doDestroy()V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/c;->a()Lcom/vivo/speechsdk/common/thread/c;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/asr/api/ASREngine$3;

    invoke-direct {v1, p0}, Lcom/vivo/speechsdk/asr/api/ASREngine$3;-><init>(Lcom/vivo/speechsdk/asr/api/ASREngine;)V

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/thread/c;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private doInit(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    new-instance v0, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 v1, 0x7533

    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/a/h/b;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->isInit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    new-instance v0, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 v1, 0x4e22

    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/vivo/speechsdk/b/f/a;->a()Lcom/vivo/speechsdk/b/f/a;

    move-result-object v0

    const-string v1, "asr_init"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/b/f/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/c/a;->getId()I

    move-result v0

    const-string v1, "key_engine_hash_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_engine_mode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->initRemoteRecognizer(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->initLocalRecognizer(Landroid/os/Bundle;)V

    :goto_2
    return-void
.end method

.method private doStart(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result v0

    const-string v1, "ASREngine"

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizer:Lcom/vivo/speechsdk/asr/api/IRecognizer;

    iget-object v2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizerProListener:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-interface {v0, p1, v2}, Lcom/vivo/speechsdk/asr/api/IRecognizer;->start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)I

    move-result p1

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStartLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    iget-object v2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mLog:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waiting prepare result | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x7531

    :goto_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizerProListener:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/vivo/speechsdk/a/h/c;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizerProListener:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-direct {v0, v2, v3}, Lcom/vivo/speechsdk/a/h/c;-><init>(Landroid/os/Looper;Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)V

    new-instance v2, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v2, p1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/c/a;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/vivo/speechsdk/a/h/c;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    const/16 v2, 0x7603

    if-eq p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/vivo/speechsdk/c/a;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/speechsdk/a/h/c;->onEnd(I)V

    :cond_3
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mLog:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private initLocalRecognizer(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStartLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/c;->a()Lcom/vivo/speechsdk/common/thread/c;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/asr/api/ASREngine$4;

    invoke-direct {v1, p0, p1}, Lcom/vivo/speechsdk/asr/api/ASREngine$4;-><init>(Lcom/vivo/speechsdk/asr/api/ASREngine;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/thread/c;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initRemoteRecognizer(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStartLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/c;->a()Lcom/vivo/speechsdk/common/thread/c;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/asr/api/ASREngine$5;

    invoke-direct {v1, p0, p1}, Lcom/vivo/speechsdk/asr/api/ASREngine$5;-><init>(Lcom/vivo/speechsdk/asr/api/ASREngine;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/thread/c;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isWorkThreadAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mLog:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel state | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/speechsdk/c/a;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASREngine"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isWorkThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/16 v1, 0x66

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mLog:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "has other action drop this action"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-super {p0}, Lcom/vivo/speechsdk/c/a;->destroy()V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mLog:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy state | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/speechsdk/c/a;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASREngine"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isWorkThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/c/b;->b()Lcom/vivo/speechsdk/c/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/c/b;->b(Lcom/vivo/speechsdk/api/IEngine;)V

    return-void
.end method

.method public doAction(ILandroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isWorkThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public feedAudioData([BI)V
    .locals 3

    invoke-virtual {p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isWorkThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "5.2.4.00"

    return-object v0
.end method

.method public init(Landroid/os/Bundle;Lcom/vivo/speechsdk/api/InitListener;)V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mLog:Lcom/vivo/speechsdk/common/utils/ILog;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ASREngine init SpeechSdk VERSION "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "5.2.4.00"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " BUILD "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "240725_3af788f8"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASREngine"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/vivo/speechsdk/a/h/b;

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
    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/a/h/b;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mActionCallBack:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mInitListener:Lcom/vivo/speechsdk/a/h/b;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/a/h/b;->a(Lcom/vivo/speechsdk/api/InitListener;)V

    invoke-static {}, Lcom/vivo/speechsdk/c/b;->b()Lcom/vivo/speechsdk/c/b;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/vivo/speechsdk/c/b;->a(Lcom/vivo/speechsdk/api/IEngine;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    const/16 v0, 0x69

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public isDestroy()Z
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInit()Z
    .locals 3

    iget v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStatus:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public isListening()Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizer:Lcom/vivo/speechsdk/asr/api/IRecognizer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/asr/api/IRecognizer;->isListening()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IRecognizerListener;)I
    .locals 0

    iput-object p2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizerListener:Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    iget-object p2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizerProListenerWrap:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/asr/api/ASREngine;->start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)I

    const/4 p1, 0x0

    return p1
.end method

.method public start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)I
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mLog:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start state | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/speechsdk/c/a;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASREngine"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->track(I)V

    iput-object p2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mRecognizerProListener:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-direct {p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isWorkThreadAlive()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p1, 0x7531

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->callOnErrorEnd(I)V

    return v1

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/b/f/a;->a()Lcom/vivo/speechsdk/b/f/a;

    move-result-object p2

    const-string v0, "asr_start"

    invoke-virtual {p2, p1, v0}, Lcom/vivo/speechsdk/b/f/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return v1
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mLog:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop state | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/speechsdk/c/a;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASREngine"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isWorkThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/16 v1, 0x65

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    const/16 v3, 0x67

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mLog:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "has other action drop this action"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateHotWord(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStatus:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/b/f/a;->a()Lcom/vivo/speechsdk/b/f/a;

    move-result-object v0

    const-string v1, "asr_start"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/b/f/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine;->mAsrHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/speechsdk/asr/api/ASREngine$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/vivo/speechsdk/asr/api/ASREngine$1;-><init>(Lcom/vivo/speechsdk/asr/api/ASREngine;Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
