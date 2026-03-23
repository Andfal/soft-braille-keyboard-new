.class public Lcom/vivo/speechsdk/asr/service/RecognizerService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final A:[I

.field public static final B:[I

.field private static final h:Ljava/lang/String; = "RecognizerService"

.field private static final i:I = 0x5

.field private static final j:I = 0xc8

.field private static final k:I = 0x7d0

.field private static final l:I = 0x1388

.field private static final m:I = 0x1

.field private static final n:I = 0x2

.field private static final o:I = 0x3

.field private static final p:I = 0x4

.field private static final q:I = 0x5

.field private static final r:I = 0x249f0

.field private static final s:I = 0x5

.field private static final t:I = 0x3

.field private static final u:Ljava/lang/String; = "keep_user_data"

.field private static final v:Ljava/lang/String; = "keep_user_data_result"

.field private static final w:Ljava/lang/String; = "keep_user_data_bundle"

.field private static final x:I = -0x1

.field private static final y:I = 0x0

.field private static final z:I = 0x1


# instance fields
.field private a:Lcom/vivo/speechsdk/asr/api/ASREngine;

.field private b:Lcom/vivo/speechsdk/asr/service/a;

.field private c:Landroid/os/HandlerThread;

.field private d:Landroid/os/Handler;

.field private e:I

.field private f:Ljava/util/concurrent/CountDownLatch;

.field private g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1d4e40

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/vivo/speechsdk/asr/service/RecognizerService;->A:[I

    new-array v0, v0, [I

    const v1, 0x1d80c0

    aput v1, v0, v3

    sput-object v0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->B:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->e:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->g:Ljava/util/Set;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    invoke-direct {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->add(Landroid/os/Bundle;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    const-string p1, "key_sdk_init_mode"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->add(Ljava/lang/String;I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->build()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/asr/service/RecognizerService$a;

    invoke-direct {v1, p0}, Lcom/vivo/speechsdk/asr/service/RecognizerService$a;-><init>(Lcom/vivo/speechsdk/asr/service/RecognizerService;)V

    invoke-static {p1, v0, v1}, Lcom/vivo/speechsdk/api/SpeechSdk;->init(Landroid/app/Application;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Lcom/vivo/speechsdk/api/InitListener;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/asr/service/RecognizerService;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a([I)V

    return-void
.end method

.method private a(ZLandroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/asr/service/RecognizerService$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/speechsdk/asr/service/RecognizerService$c;-><init>(Lcom/vivo/speechsdk/asr/service/RecognizerService;ZLandroid/os/Bundle;)V

    invoke-static {p1, p2, v0}, Lcom/vivo/speechsdk/api/SpeechSdk;->allowUseUserData(ZLandroid/os/Bundle;Lcom/vivo/speechsdk/api/ResultListener;)V

    return-void
.end method

.method private a([I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    shr-int/lit8 v1, v1, 0x6

    shl-int/lit8 v1, v1, 0x6

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/asr/service/RecognizerService;[II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a([II)Z

    move-result p0

    return p0
.end method

.method private a([II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    shr-int/lit8 v2, v2, 0x6

    if-ne v2, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private b([II)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget v2, p1, v1

    shr-int/lit8 v3, v2, 0x6

    if-ne v3, p2, :cond_0

    shl-int/lit8 p1, p2, 0x6

    xor-int/2addr p1, v2

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->f:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v0

    const-string v1, "keep_user_data_result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/SpUtil;->get(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key_allow_use_user_data"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v3

    const-string v4, "keep_user_data"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/vivo/speechsdk/common/utils/SpUtil;->get(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "key_allow_use_user_bundle"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-ne v0, v2, :cond_0

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(ZLandroid/os/Bundle;)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    if-eq v1, v3, :cond_2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object p1

    const-string v0, "keep_user_data_bundle"

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getBeanFromSp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(ZLandroid/os/Bundle;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private b(Landroid/os/Bundle;Z)V
    .locals 1

    iget-object p2, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a:Lcom/vivo/speechsdk/asr/api/ASREngine;

    new-instance v0, Lcom/vivo/speechsdk/asr/service/RecognizerService$b;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/asr/service/RecognizerService$b;-><init>(Lcom/vivo/speechsdk/asr/service/RecognizerService;)V

    invoke-virtual {p2, p1, v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->init(Landroid/os/Bundle;Lcom/vivo/speechsdk/api/InitListener;)V

    return-void
.end method

.method static synthetic c(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Lcom/vivo/speechsdk/asr/service/a;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b:Lcom/vivo/speechsdk/asr/service/a;

    return-object p0
.end method

.method private c([II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    shr-int/lit8 v2, v1, 0x6

    if-ne v2, p2, :cond_0

    shl-int/lit8 v2, p2, 0x6

    xor-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    or-int/2addr v1, v2

    aput v1, p1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->e:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayReleaseEngine | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerService"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->d:Landroid/os/Handler;

    iget v2, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->B:[I

    invoke-direct {p0, v0, p1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->c([II)V

    invoke-direct {p0, v0, p1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b([II)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->d:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;Z)V
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->d:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->d:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "key_engine_delay_release"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x249f0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->e:I

    :cond_0
    const-string v0, "key_engine_mode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    xor-int/lit16 v3, v2, 0x1000

    and-int/2addr v3, v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "maskedEntMode=%s entMode=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecognizerService"

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->isInit()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->f:Ljava/util/concurrent/CountDownLatch;

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "kill self reason : %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecognizerService"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public b()Lcom/vivo/speechsdk/asr/api/ASREngine;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a:Lcom/vivo/speechsdk/asr/api/ASREngine;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->e:I

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->B:[I

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a([I)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->destroy()V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public d()V
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->e:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeDelayReleaseEngineMessage | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerService"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->d:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_2

    :cond_0
    const/16 v1, 0x7538

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v1}, Lcom/vivo/speechsdk/api/SpeechError;->getErrorDescribe(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/asr/service/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b:Lcom/vivo/speechsdk/asr/service/a;

    invoke-static {v1}, Lcom/vivo/speechsdk/api/SpeechError;->getErrorDescribe(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/asr/service/a;->b(ILjava/lang/String;)V

    :goto_0
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const-string v0, "engine init timeout"

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Ljava/lang/String;)V

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a:Lcom/vivo/speechsdk/asr/api/ASREngine;

    if-eqz v0, :cond_3

    const-string v0, "RecognizerService"

    const-string v1, "delay timeout ! release engine"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->destroy()V

    invoke-static {}, Lcom/vivo/speechsdk/asr/api/ASREngine;->createEngine()Lcom/vivo/speechsdk/asr/api/ASREngine;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a:Lcom/vivo/speechsdk/asr/api/ASREngine;

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b:Lcom/vivo/speechsdk/asr/service/a;

    invoke-virtual {v1, v0}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/api/ASREngine;)V

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->c(Landroid/os/Bundle;)V

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Ljava/lang/String;)V

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->g:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->g:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "key_sdkinit_bundle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind uid = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecognizerService"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b:Lcom/vivo/speechsdk/asr/service/a;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/a/b$a;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GuardThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->d:Landroid/os/Handler;

    invoke-static {}, Lcom/vivo/speechsdk/asr/api/ASREngine;->createEngine()Lcom/vivo/speechsdk/asr/api/ASREngine;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a:Lcom/vivo/speechsdk/asr/api/ASREngine;

    new-instance v0, Lcom/vivo/speechsdk/asr/service/a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/asr/service/a;-><init>(Lcom/vivo/speechsdk/asr/service/RecognizerService;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b:Lcom/vivo/speechsdk/asr/service/a;

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/asr/service/a;->a(Lcom/vivo/speechsdk/asr/api/ASREngine;)V

    const-string v0, "RecognizerService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->destroy()V

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->destroy()V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->d:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "onDestroy"

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnbind uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->g:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecognizerService"

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->g:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    const-string v0, "stopSelf"

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
