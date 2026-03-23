.class public Lcom/vivo/speechsdk/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/asr/api/IRecognizer;
.implements Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;
.implements Lcom/vivo/speechsdk/module/api/session/SessionListener;


# static fields
.field public static final A:I = 0x67

.field public static final B:I = 0x68

.field public static final C:I = 0x69

.field public static final D:I = 0x6a

.field public static final E:I = 0x6b

.field public static final F:I = 0x6c

.field public static final G:I = 0x6d

.field public static final H:I = 0x6e

.field public static final I:I = 0x6f

.field public static final J:I = 0x1

.field public static final K:I = 0x2

.field public static final L:I = 0x4

.field public static final M:I = 0x8

.field public static final N:I = 0x10

.field public static final O:I = 0x20

.field private static final P:I = 0x44c

.field private static final Q:I = 0x3e8

.field private static final R:I = 0x7d0

.field private static final S:I = 0x3e8

.field private static final T:I = 0x0

.field private static final U:I = 0x1

.field private static final V:I = 0x2

.field private static final W:I = 0x3

.field private static final X:I = 0x4

.field private static final Y:I = 0x0

.field private static final Z:I = 0x2

.field private static final a0:I = 0x4

.field private static final b0:I = -0x1

.field private static final v:Ljava/lang/String; = "Recognizer"

.field private static final w:I = 0x32

.field private static final x:I = 0xea60

.field public static final y:I = 0x65

.field public static final z:I = 0x66


# instance fields
.field private volatile a:I

.field private final b:Ljava/lang/Object;

.field private volatile c:I

.field private volatile d:I

.field private volatile e:I

.field private volatile f:I

.field private g:Lcom/vivo/speechsdk/module/api/vad/IVadService;

.field private final h:Lcom/vivo/speechsdk/api/ISpeechEngine;

.field private volatile i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

.field private j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

.field private k:I

.field private final l:Landroid/os/Handler;

.field private m:Landroid/os/Bundle;

.field private n:Landroid/os/Bundle;

.field private final o:Lcom/vivo/speechsdk/a/h/c;

.field private p:Lcom/vivo/speechsdk/b/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/speechsdk/b/e/d<",
            "[B>;"
        }
    .end annotation
.end field

.field private volatile q:J

.field private r:I

.field private s:I

.field private t:Lcom/vivo/speechsdk/common/utils/ILog;

.field private u:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/vivo/speechsdk/a/d;->a:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/d;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/a/d;->c:I

    iput v0, p0, Lcom/vivo/speechsdk/a/d;->d:I

    iput v0, p0, Lcom/vivo/speechsdk/a/d;->e:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/vivo/speechsdk/a/d;->f:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/vivo/speechsdk/a/d;->k:I

    iput v0, p0, Lcom/vivo/speechsdk/a/d;->r:I

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/vivo/speechsdk/a/d;->s:I

    new-instance v0, Lcom/vivo/speechsdk/a/d$c;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/a/d$c;-><init>(Lcom/vivo/speechsdk/a/d;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/d;->u:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/speechsdk/a/d;->u:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->getEngine()Lcom/vivo/speechsdk/api/ISpeechEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/a/d;->h:Lcom/vivo/speechsdk/api/ISpeechEngine;

    invoke-interface {p1}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/LoggerManager;->getLogger(I)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance p1, Lcom/vivo/speechsdk/a/h/c;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/vivo/speechsdk/a/h/c;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/a/d;->o:Lcom/vivo/speechsdk/a/h/c;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/api/ISpeechEngine;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/d;->h:Lcom/vivo/speechsdk/api/ISpeechEngine;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/session/EngineInfo;
    .locals 5

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/api/session/EngineInfo;-><init>()V

    iput-object p1, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->bizName:Ljava/lang/String;

    iget p1, p0, Lcom/vivo/speechsdk/a/d;->k:I

    iput p1, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->ent:I

    const-string p1, "asr"

    iput-object p1, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mdName:Ljava/lang/String;

    const-string p1, "key_sdk_version"

    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mdVersion:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->initStartTime:J

    const-string p1, "key_package"

    invoke-virtual {v0, p1, v2}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mPkg:Ljava/lang/String;

    return-object v1
.end method

.method private declared-synchronized a(II)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/vivo/speechsdk/a/d;->a(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(IIILjava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->u:Landroid/os/Handler$Callback;

    invoke-interface {p1, v0}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private declared-synchronized a(I[B)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/vivo/speechsdk/b/e/d;->a(ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/a/d;->h(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/d;IIILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/a/d;->b(IIILjava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/vivo/speechsdk/module/api/asr/ResultInfo;)V
    .locals 5

    iget v0, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-boolean v0, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mVadCode:I

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/vivo/speechsdk/a/d;->b(IIILjava/lang/Object;)V

    iget v0, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mCode:I

    const/16 v2, 0x2718

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->o:Lcom/vivo/speechsdk/a/h/c;

    iget-object v2, p0, Lcom/vivo/speechsdk/a/d;->h:Lcom/vivo/speechsdk/api/ISpeechEngine;

    invoke-interface {v2}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v2

    const/16 v3, 0x1390

    invoke-virtual {v0, v3, v4, v2}, Lcom/vivo/speechsdk/a/h/c;->onEvent(ILandroid/os/Bundle;I)V

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/a/d;->isListening()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/d;->b()V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Recognizer"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop reason | isLast=true vadCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mVadCode:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/vivo/speechsdk/a/d;->d:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/a/d;->c(I)V

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private a(I)Z
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->e:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/vivo/speechsdk/a/d;I)I
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/a/d;->r:I

    return p1
.end method

.method static synthetic b(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/a/h/c;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/d;->o:Lcom/vivo/speechsdk/a/h/c;

    return-object p0
.end method

.method private b()V
    .locals 3

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->d:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/vivo/speechsdk/a/d;->d:I

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized b(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/a/d;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCancel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/a/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Recognizer"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/a/d;->e(I)V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/a/d;->c(I)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/vivo/speechsdk/a/d;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(IIILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->event(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const-string v0, "Recognizer"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v2, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System load faild "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private b(Lcom/vivo/speechsdk/module/api/asr/ResultInfo;)Z
    .locals 4

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->getAudioInfo()Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    if-eqz v2, :cond_0

    const-string v3, "key_audio"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget v0, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mSlice:I

    const-string v2, "key_segment_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object p1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    const-string v0, "key_asr_result"

    invoke-virtual {v1, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->o:Lcom/vivo/speechsdk/a/h/c;

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->h:Lcom/vivo/speechsdk/api/ISpeechEngine;

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v0

    const/16 v2, 0x1b58

    invoke-virtual {p1, v2, v1, v0}, Lcom/vivo/speechsdk/a/h/c;->onEvent(ILandroid/os/Bundle;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/vivo/speechsdk/a/d;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/a/d;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/a/d;->g(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized c(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/b/e/d;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private c()Z
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const-string v1, "key_vad_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const-string v3, "key_request_mode"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const-string v4, "key_denoise"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->k:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_0

    if-nez v1, :cond_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method static synthetic d(Lcom/vivo/speechsdk/a/d;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/a/d;->r:I

    return p0
.end method

.method private d(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/vivo/speechsdk/a/d;->a(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcom/vivo/speechsdk/a/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/a/d;->e(I)V

    return-void
.end method

.method static synthetic e(Lcom/vivo/speechsdk/a/d;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/a/d;->a:I

    return p0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/a/d;I)I
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/a/d;->d:I

    return p1
.end method

.method private e(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/vivo/speechsdk/a/d;->b(IIILjava/lang/Object;)V

    return-void
.end method

.method static synthetic f(Lcom/vivo/speechsdk/a/d;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/a/d;->c:I

    return p0
.end method

.method private f(I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/vivo/speechsdk/a/d;->a:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/vivo/speechsdk/a/d;->a:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic f(Lcom/vivo/speechsdk/a/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/a/d;->c(I)V

    return-void
.end method

.method static synthetic g(Lcom/vivo/speechsdk/a/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/a/d;->q:J

    return-wide v0
.end method

.method private g(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string p1, "encoder stoped !! "

    return-object p1

    :cond_1
    const-string p1, "vad stoped !! "

    return-object p1

    :cond_2
    const-string p1, "cache stoped !! "

    return-object p1

    :cond_3
    const-string p1, "record stoped !! "

    return-object p1

    :cond_4
    const-string p1, "wait timeout !! "

    return-object p1

    :cond_5
    const-string p1, "asr stoped !! "

    return-object p1
.end method

.method static synthetic g(Lcom/vivo/speechsdk/a/d;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/a/d;->a(I)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/vivo/speechsdk/a/d;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/a/d;->s:I

    return p0
.end method

.method private h(I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/vivo/speechsdk/a/d;->c:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/vivo/speechsdk/a/d;->c:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic h(Lcom/vivo/speechsdk/a/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/a/d;->i(I)V

    return-void
.end method

.method static synthetic i(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/module/api/asr/IASRService;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    return-object p0
.end method

.method private i(I)V
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->e:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vivo/speechsdk/a/d;->e:I

    return-void
.end method

.method static synthetic j(Lcom/vivo/speechsdk/a/d;)Z
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/d;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/module/api/session/ISessionCollect;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/d;->j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    return-object p0
.end method

.method static synthetic l(Lcom/vivo/speechsdk/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/d;->b()V

    return-void
.end method

.method static synthetic m(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/common/utils/ILog;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    return-object p0
.end method

.method static synthetic n(Lcom/vivo/speechsdk/a/d;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/a/d;->d:I

    return p0
.end method


# virtual methods
.method public a()I
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    const-string v1, "key_business_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    const-string v2, "key_appid"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    const-string v3, "key_native_library"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/speechsdk/a/d;->b(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/a/d;->a(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2, v0}, Lcom/vivo/speechsdk/a/d;->b(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    invoke-interface {v0, v1, p0}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->init(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;)I

    move-result v0

    monitor-enter p0

    :try_start_0
    iput v0, p0, Lcom/vivo/speechsdk/a/d;->f:I

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->f:I

    const/16 v1, 0x6a

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    iget v3, p0, Lcom/vivo/speechsdk/a/d;->f:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "Recognizer"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop reason | engine init failed code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/vivo/speechsdk/a/d;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-interface {v0, v1, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    iget-object v3, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    invoke-interface {v0, v3}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->start(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    invoke-virtual {v3, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "Recognizer"

    const-string v3, "stop reason | engine start failed "

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "Recognizer"

    const-string v3, "fireProcess EVENT_START on engine ready"

    invoke-interface {v0, v1, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/b/e/d;->a(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v1, "Recognizer"

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "engine init | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/vivo/speechsdk/a/d;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->f:I

    const/16 v1, 0xd

    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/vivo/speechsdk/a/d;->b(IIILjava/lang/Object;)V

    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    const/16 v2, 0x2713

    invoke-virtual {v0, v2, v1}, Lcom/vivo/speechsdk/b/i/b;->a(ILandroid/os/Bundle;)V

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->f:I

    return v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public a(Landroid/os/Bundle;)I
    .locals 5

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v1, "Session"

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/session/ISessionCollectFactory;

    const/16 v1, 0x2af8

    const-string v2, "Recognizer"

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v0, "session module not found "

    :goto_0
    invoke-interface {p1, v2, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v3, p0, Lcom/vivo/speechsdk/a/d;->h:Lcom/vivo/speechsdk/api/ISpeechEngine;

    invoke-interface {v3}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/vivo/speechsdk/module/api/session/ISessionCollectFactory;->getAsrSessionCollect(I)Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/a/d;->j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->init(Landroid/os/Bundle;Landroid/os/Looper;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/c;->a(Landroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    const-string v0, "key_engine_mode"

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/a/d;->k:I

    if-ne p1, v3, :cond_2

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "ASROnline"

    :goto_1
    invoke-virtual {p1, v4, v0, v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/module/api/asr/IASRService;

    :goto_2
    iput-object p1, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    goto :goto_4

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "ASROffline"

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    const-string v0, "Ym"

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/module/api/ym/YmFactory;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/module/api/ym/YmFactory;->createASRService(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/asr/IASRService;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "ASRIpc"

    goto :goto_1

    :cond_6
    const/16 p1, 0x75a1

    return p1

    :cond_7
    :goto_3
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v3

    const-string v4, "ASRMixer"

    goto :goto_1

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v0, "asr module not found "

    goto/16 :goto_0

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized a(III)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/vivo/speechsdk/b/e/d;->a(ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized cancel()V
    .locals 1

    monitor-enter p0

    const/16 v0, 0x16

    :try_start_0
    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/a/d;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .locals 4

    invoke-virtual {p0}, Lcom/vivo/speechsdk/a/d;->isListening()Z

    move-result v0

    const/16 v1, 0x17

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/a/d;->b(I)V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v2, "Recognizer"

    const-string v3, "start destroy"

    invoke-interface {v1, v2, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->destroy()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/a/d;->c(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->release()V

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "destroy delay"

    invoke-static {v0}, Lcom/vivo/speechsdk/b/g/a;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public doAction(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->action(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public feedAudioData([BI)V
    .locals 1

    iget p2, p0, Lcom/vivo/speechsdk/a/d;->d:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    const/4 p2, 0x4

    invoke-direct {p0, p2, p1}, Lcom/vivo/speechsdk/a/d;->a(I[B)V

    :cond_0
    return-void
.end method

.method public isListening()Z
    .locals 3

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->d:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->d:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->d:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "module event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/asr/ASRConstants;->eventName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/vivo/speechsdk/common/utils/StringUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Recognizer"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x69

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const/16 p1, 0x1397

    goto/16 :goto_1

    :pswitch_2
    const/16 p1, 0x13

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->o:Lcom/vivo/speechsdk/a/h/c;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->h:Lcom/vivo/speechsdk/api/ISpeechEngine;

    invoke-interface {p2}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result p2

    const/16 v1, 0x1393

    invoke-virtual {p1, v1, v0, p2}, Lcom/vivo/speechsdk/a/h/c;->onEvent(ILandroid/os/Bundle;I)V

    goto :goto_2

    :pswitch_4
    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->track(I)V

    const/16 p1, 0x14

    :goto_0
    invoke-direct {p0, p1, v2, v2, p2}, Lcom/vivo/speechsdk/a/d;->b(IIILjava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    const-string p1, "key_net_reuse"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object p2

    const/4 v1, 0x5

    invoke-virtual {p2, v1, p1}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->track(II)V

    const/16 p2, 0x11

    invoke-direct {p0, p2, p1, v2, v0}, Lcom/vivo/speechsdk/a/d;->b(IIILjava/lang/Object;)V

    goto :goto_2

    :pswitch_6
    const/16 p1, 0x1391

    goto :goto_1

    :pswitch_7
    const/16 p1, 0x1770

    goto :goto_1

    :pswitch_8
    const/16 p1, 0x6b

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/vivo/speechsdk/a/d;->a(IIILjava/lang/Object;)V

    goto :goto_2

    :pswitch_9
    const-string p1, "key_close_code"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/a/d;->s:I

    goto :goto_2

    :pswitch_a
    const-string p1, "key_sid"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    invoke-direct {p0, v0, v2, v2, p1}, Lcom/vivo/speechsdk/a/d;->b(IIILjava/lang/Object;)V

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->track(I)V

    const/16 p1, 0x138b

    goto :goto_1

    :pswitch_b
    const-string p1, "key_error_code"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->error(I)V

    const/16 p1, 0x138a

    :goto_1
    invoke-direct {p0, v1, p1, v2, p2}, Lcom/vivo/speechsdk/a/d;->a(IIILjava/lang/Object;)V

    :cond_0
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onResult(Lcom/vivo/speechsdk/module/api/asr/ResultInfo;)V
    .locals 7

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->track(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/a/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop onResult | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Recognizer"

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    invoke-interface {v1}, Lcom/vivo/speechsdk/common/utils/ILog;->isPrivateLog()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResult | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Recognizer"

    invoke-interface {v1, v3, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    if-eq v1, v0, :cond_2

    iget-boolean v1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    iget v2, p0, Lcom/vivo/speechsdk/a/d;->k:I

    iget-object v3, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/vivo/speechsdk/a/d;->b(IIILjava/lang/Object;)V

    :cond_2
    iget-object v1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/a/d;->i(I)V

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/module/api/asr/ResultInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->o:Lcom/vivo/speechsdk/a/h/c;

    iget v2, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    iget-object v3, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/speechsdk/a/d;->h:Lcom/vivo/speechsdk/api/ISpeechEngine;

    invoke-interface {v4}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/vivo/speechsdk/a/h/c;->onResult(ILjava/lang/String;I)V

    :cond_4
    const/4 v1, 0x7

    iget-boolean v2, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    invoke-direct {p0, v1, v2}, Lcom/vivo/speechsdk/a/d;->a(II)V

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/module/api/asr/ResultInfo;)V

    iget v1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    iget-boolean v1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    if-eqz v1, :cond_8

    iget v1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mVadCode:I

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v1, v5, v6}, Lcom/vivo/speechsdk/a/d;->b(IIILjava/lang/Object;)V

    iget v1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mCode:I

    const/16 v4, 0x2718

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->o:Lcom/vivo/speechsdk/a/h/c;

    iget-object v4, p0, Lcom/vivo/speechsdk/a/d;->h:Lcom/vivo/speechsdk/api/ISpeechEngine;

    invoke-interface {v4}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v4

    const/16 v5, 0x1390

    invoke-virtual {v1, v5, v6, v4}, Lcom/vivo/speechsdk/a/h/c;->onEvent(ILandroid/os/Bundle;I)V

    :cond_5
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/a/d;->isListening()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/d;->b()V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "Recognizer"

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stop reason | isLast=true vadCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mVadCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/vivo/speechsdk/a/d;->d:I

    if-ne v1, v3, :cond_6

    const/4 v1, 0x2

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    :goto_0
    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/a/d;->c(I)V

    :cond_7
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    :goto_1
    iget v1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    if-ne v1, v0, :cond_b

    const/16 v1, 0xf

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/a/d;->e(I)V

    iget-boolean v1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    if-eqz v1, :cond_b

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/vivo/speechsdk/a/d;->isListening()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/d;->b()V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v4, "Recognizer"

    const-string v5, "stop reason | get nlu"

    invoke-interface {v1, v4, v5}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/vivo/speechsdk/a/d;->d:I

    if-ne v1, v3, :cond_9

    const/4 v1, 0x2

    goto :goto_2

    :cond_9
    const/4 v1, 0x3

    :goto_2
    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/a/d;->c(I)V

    :cond_a
    monitor-exit p0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_b
    :goto_3
    iget v1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    if-nez v1, :cond_f

    iget v1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mCode:I

    const/16 v4, 0x9

    if-eq v1, v4, :cond_c

    iget-boolean p1, p1, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    if-eqz p1, :cond_f

    :cond_c
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/vivo/speechsdk/a/d;->isListening()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/d;->b()V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "Recognizer"

    const-string v4, "stop reason | lasr code=9"

    invoke-interface {p1, v1, v4}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/vivo/speechsdk/a/d;->d:I

    if-ne p1, v3, :cond_d

    goto :goto_4

    :cond_d
    const/4 v0, 0x3

    :goto_4
    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/a/d;->c(I)V

    :cond_e
    monitor-exit p0

    goto :goto_5

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_f
    :goto_5
    return-void
.end method

.method public onSessionFinished(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object v0

    const/16 v1, 0x2716

    invoke-virtual {v0, v1, p1}, Lcom/vivo/speechsdk/b/i/b;->a(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->o:Lcom/vivo/speechsdk/a/h/c;

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->h:Lcom/vivo/speechsdk/api/ISpeechEngine;

    invoke-interface {v1}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v1

    const/16 v2, 0x1392

    invoke-virtual {v0, v2, p1, v1}, Lcom/vivo/speechsdk/a/h/c;->onEvent(ILandroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->o:Lcom/vivo/speechsdk/a/h/c;

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->h:Lcom/vivo/speechsdk/api/ISpeechEngine;

    invoke-interface {v1}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/a/h/c;->onEnd(I)V

    const-string v0, "Recognizer"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnd | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "onEnd | null"

    invoke-interface {p1, v0, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->h:Lcom/vivo/speechsdk/api/ISpeechEngine;

    invoke-interface {p1}, Lcom/vivo/speechsdk/api/IEngine;->isDestroy()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "destroy delay"

    invoke-static {p1}, Lcom/vivo/speechsdk/b/g/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "destroy thread delay"

    invoke-interface {p1, v0, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)I
    .locals 9

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/a/d;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/16 p1, 0x7531

    return p1

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/vivo/speechsdk/a/d;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    monitor-exit p0

    const/16 p1, 0x7603

    return p1

    :cond_1
    :try_start_2
    iget v0, p0, Lcom/vivo/speechsdk/a/d;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_b

    iget v0, p0, Lcom/vivo/speechsdk/a/d;->d:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v0, "record start"

    invoke-static {v0}, Lcom/vivo/speechsdk/b/g/a;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->n:Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/c;->b(Landroid/os/Bundle;)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    monitor-exit p0

    return p1

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->track(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    invoke-interface {v0, p0}, Lcom/vivo/speechsdk/module/api/session/ISessionCollect;->setSessionListener(Lcom/vivo/speechsdk/module/api/session/SessionListener;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    invoke-direct {p0, v3, v3, v3, v0}, Lcom/vivo/speechsdk/a/d;->b(IIILjava/lang/Object;)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/vivo/speechsdk/a/d;->a:I

    iput v3, p0, Lcom/vivo/speechsdk/a/d;->c:I

    iput v3, p0, Lcom/vivo/speechsdk/a/d;->e:I

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->o:Lcom/vivo/speechsdk/a/h/c;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/a/h/c;->a(Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)V

    iput v1, p0, Lcom/vivo/speechsdk/a/d;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/vivo/speechsdk/a/d;->q:J

    new-instance p2, Lcom/vivo/speechsdk/b/e/d;

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    iget-object v5, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    invoke-direct {p2, v0, v5}, Lcom/vivo/speechsdk/b/e/d;-><init>(Landroid/os/Handler;Landroid/os/Bundle;)V

    iput-object p2, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const-string v0, "key_inner_record"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const-string v5, "key_volume_enable"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "add chain "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    new-instance v6, Lcom/vivo/speechsdk/a/g/h;

    invoke-direct {v6}, Lcom/vivo/speechsdk/a/g/h;-><init>()V

    invoke-virtual {p2, v6}, Lcom/vivo/speechsdk/b/e/d;->a(Lcom/vivo/speechsdk/b/e/a;)V

    const/4 p2, 0x4

    invoke-direct {p0, p2}, Lcom/vivo/speechsdk/a/d;->f(I)V

    const-string p2, "RecordInterceptor "

    :goto_0
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    new-instance v6, Lcom/vivo/speechsdk/a/g/g;

    invoke-direct {v6}, Lcom/vivo/speechsdk/a/g/g;-><init>()V

    invoke-virtual {p2, v6}, Lcom/vivo/speechsdk/b/e/d;->a(Lcom/vivo/speechsdk/b/e/a;)V

    const-string p2, "NullRecordInterceptor "

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    new-instance v6, Lcom/vivo/speechsdk/a/g/c;

    iget-object v7, p0, Lcom/vivo/speechsdk/a/d;->j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    invoke-direct {v6, v0, v3, v7}, Lcom/vivo/speechsdk/a/g/c;-><init>(ZZLcom/vivo/speechsdk/module/api/session/ISessionCollect;)V

    invoke-virtual {p2, v6}, Lcom/vivo/speechsdk/b/e/d;->a(Lcom/vivo/speechsdk/b/e/a;)V

    const-string p2, "CacheInterceptor "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/d;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v6

    const-string v7, "Vad"

    invoke-virtual {p2, v7, v0, v6}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vivo/speechsdk/module/api/vad/IVadService;

    iput-object p2, p0, Lcom/vivo/speechsdk/a/d;->g:Lcom/vivo/speechsdk/module/api/vad/IVadService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_5

    monitor-exit p0

    const/16 p1, 0x2af8

    return p1

    :cond_5
    :try_start_4
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    new-instance v6, Lcom/vivo/speechsdk/a/g/i;

    iget v7, p0, Lcom/vivo/speechsdk/a/d;->k:I

    iget-object v8, p0, Lcom/vivo/speechsdk/a/d;->j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    invoke-direct {v6, p2, v7, v8}, Lcom/vivo/speechsdk/a/g/i;-><init>(Lcom/vivo/speechsdk/module/api/vad/IVadService;ILcom/vivo/speechsdk/module/api/session/ISessionCollect;)V

    invoke-virtual {v0, v6}, Lcom/vivo/speechsdk/b/e/d;->a(Lcom/vivo/speechsdk/b/e/a;)V

    const/16 p2, 0x10

    invoke-direct {p0, p2}, Lcom/vivo/speechsdk/a/d;->f(I)V

    const-string p2, "VadInterceptor "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const-string v0, "key_encode_enable"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_7

    iget p2, p0, Lcom/vivo/speechsdk/a/d;->k:I

    if-ne p2, v2, :cond_7

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const-string v0, "key_opus_type"

    invoke-virtual {p2, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    new-instance v6, Lcom/vivo/speechsdk/a/g/d;

    iget-object v7, p0, Lcom/vivo/speechsdk/a/d;->j:Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    invoke-direct {v6, p2, v7}, Lcom/vivo/speechsdk/a/g/d;-><init>(ILcom/vivo/speechsdk/module/api/session/ISessionCollect;)V

    invoke-virtual {v0, v6}, Lcom/vivo/speechsdk/b/e/d;->a(Lcom/vivo/speechsdk/b/e/a;)V

    const/16 p2, 0x20

    invoke-direct {p0, p2}, Lcom/vivo/speechsdk/a/d;->f(I)V

    const-string p2, "EncoderInterceptor "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    new-instance v0, Lcom/vivo/speechsdk/a/g/a;

    iget-object v6, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    iget-object v7, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v0, v6, v7, v8}, Lcom/vivo/speechsdk/a/g/a;-><init>(Lcom/vivo/speechsdk/module/api/asr/IASRService;Landroid/os/Bundle;Landroid/os/Looper;)V

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/b/e/d;->a(Lcom/vivo/speechsdk/b/e/a;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    invoke-virtual {p2, v3}, Lcom/vivo/speechsdk/b/e/d;->a(I)V

    const-string p2, "ASRInterceptor "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const/16 v6, 0x3e8

    invoke-interface {p2, v6, v0}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->action(ILandroid/os/Bundle;)V

    iget p2, p0, Lcom/vivo/speechsdk/a/d;->f:I

    if-nez p2, :cond_a

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    invoke-interface {p1, p2}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->start(Landroid/os/Bundle;)I

    move-result p1

    if-nez p1, :cond_9

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    invoke-virtual {p2, v2}, Lcom/vivo/speechsdk/b/e/d;->a(I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const-string v0, "key_request_mode"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const-string v0, "key_infinite"

    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    const/16 v0, 0x6d

    const/16 v1, 0x75fd

    invoke-static {p2, v0, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p2, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const-string v0, "key_delay_crash_for_test"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const-string v0, "key_delay_crash_for_test"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/speechsdk/a/d$a;

    invoke-direct {v1, p0}, Lcom/vivo/speechsdk/a/d$a;-><init>(Lcom/vivo/speechsdk/a/d;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_9
    invoke-direct {p0, v4}, Lcom/vivo/speechsdk/a/d;->i(I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->p:Lcom/vivo/speechsdk/b/e/d;

    invoke-virtual {p2, v1}, Lcom/vivo/speechsdk/b/e/d;->a(I)V

    :cond_a
    :goto_2
    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object p2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->m:Landroid/os/Bundle;

    const/16 v1, 0x2714

    invoke-virtual {p2, v1, v0}, Lcom/vivo/speechsdk/b/i/b;->a(ILandroid/os/Bundle;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Recognizer"

    invoke-interface {p2, v1, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return p1

    :cond_b
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string p2, "Recognizer"

    const-string v1, "waiting onEnd then start !!!"

    invoke-interface {p1, p2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/a/d;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->t:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/a/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Recognizer"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->l:Landroid/os/Handler;

    const/16 v1, 0x44c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/a/d;->e(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/a/d;->c(I)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/d;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateHotWord(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vivo/speechsdk/a/h/d;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/vivo/speechsdk/a/h/d;-><init>(Landroid/os/Looper;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/a/d;->i:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    new-instance v1, Lcom/vivo/speechsdk/a/d$b;

    invoke-direct {v1, p0, v0}, Lcom/vivo/speechsdk/a/d$b;-><init>(Lcom/vivo/speechsdk/a/d;Lcom/vivo/speechsdk/a/h/d;)V

    invoke-interface {p2, p1, v1}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->updateHotWord(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)V

    :cond_0
    return-void
.end method
