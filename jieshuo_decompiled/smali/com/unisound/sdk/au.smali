.class public Lcom/unisound/sdk/au;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static q:Ljava/lang/Object;


# instance fields
.field a:Lcom/unisound/sdk/bt;

.field private b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

.field private c:Lcom/unisound/sdk/bi;

.field private d:Lcom/unisound/sdk/bj;

.field private e:Lcom/unisound/sdk/bl;

.field private f:Lcom/unisound/client/SpeechSynthesizerListener;

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Lcom/unisound/sdk/bk;

.field private j:Ljava/lang/String;

.field private k:Lcom/unisound/client/IAudioSource;

.field private l:Ljava/lang/Integer;

.field private m:Landroid/os/HandlerThread;

.field private n:Lcom/unisound/common/u;

.field private o:Lcom/unisound/sdk/bn;

.field private p:Lcom/unisound/sdk/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/unisound/sdk/au;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/sdk/au;->h:I

    invoke-static {}, Lcom/unisound/sdk/bk;->a()Lcom/unisound/sdk/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/au;->j:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/au;->l:Ljava/lang/Integer;

    new-instance v0, Lcom/unisound/sdk/av;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/av;-><init>(Lcom/unisound/sdk/au;)V

    iput-object v0, p0, Lcom/unisound/sdk/au;->o:Lcom/unisound/sdk/bn;

    new-instance v0, Lcom/unisound/sdk/aw;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/aw;-><init>(Lcom/unisound/sdk/au;)V

    iput-object v0, p0, Lcom/unisound/sdk/au;->p:Lcom/unisound/sdk/bm;

    new-instance v0, Lcom/unisound/sdk/bt;

    new-instance v1, Lcom/unisound/sdk/ax;

    invoke-direct {v1, p0}, Lcom/unisound/sdk/ax;-><init>(Lcom/unisound/sdk/au;)V

    invoke-direct {v0, v1}, Lcom/unisound/sdk/bt;-><init>(Lcom/unisound/sdk/bu;)V

    iput-object v0, p0, Lcom/unisound/sdk/au;->a:Lcom/unisound/sdk/bt;

    iput-object p1, p0, Lcom/unisound/sdk/au;->g:Landroid/content/Context;

    iget-object v0, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bk;->b(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p2, p3}, Lcom/unisound/sdk/bk;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unisound/common/k;->a(Landroid/content/Context;)V

    new-instance p2, Lcom/unisound/sdk/ay;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/unisound/sdk/ay;-><init>(Lcom/unisound/sdk/au;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    return-void
.end method

.method private a()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/au;->c:Lcom/unisound/sdk/bi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/bi;->h()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic a(Lcom/unisound/sdk/au;I)I
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/au;->h:I

    return p1
.end method

.method private a(Ljava/lang/String;Lcom/unisound/sdk/az;)I
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/au;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    const p2, -0xfa01

    invoke-static {p2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x8fd

    invoke-interface {p1, v0, p2}, Lcom/unisound/client/SpeechSynthesizerListener;->onError(ILjava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "SpeechSynthesizerInterface beginTts: text is unusable"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const p2, -0x15f93

    invoke-static {p2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xca

    invoke-static {p1, v0, p2}, Lcom/unisound/sdk/au;->sendMsg(Lcom/unisound/common/u;ILjava/lang/String;)V

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/unisound/sdk/au;->f()I

    invoke-direct {p0}, Lcom/unisound/sdk/au;->a()I

    invoke-direct {p0}, Lcom/unisound/sdk/au;->d()I

    invoke-direct {p0}, Lcom/unisound/sdk/au;->g()I

    invoke-direct {p0}, Lcom/unisound/sdk/au;->b()I

    invoke-direct {p0}, Lcom/unisound/sdk/au;->e()I

    iget-object v0, p0, Lcom/unisound/sdk/au;->c:Lcom/unisound/sdk/bi;

    const/16 v1, 0x2710

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bi;->b(I)V

    :cond_2
    iget-object v0, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bl;->c(I)V

    :cond_3
    iget-object v0, p0, Lcom/unisound/sdk/au;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iput-object v2, p0, Lcom/unisound/sdk/au;->c:Lcom/unisound/sdk/bi;

    new-instance v0, Lcom/unisound/sdk/bi;

    iget-object v3, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-direct {v0, p1, v3}, Lcom/unisound/sdk/bi;-><init>(Ljava/lang/String;Lcom/unisound/sdk/bk;)V

    iput-object v0, p0, Lcom/unisound/sdk/au;->c:Lcom/unisound/sdk/bi;

    const-string p1, "TTSOfflineSynthesizerThread"

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/au;->c:Lcom/unisound/sdk/bi;

    iget-object v0, p0, Lcom/unisound/sdk/au;->o:Lcom/unisound/sdk/bn;

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/bi;->a(Lcom/unisound/sdk/bn;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-static {}, Lcom/unisound/common/k;->b()I

    move-result v3

    iput v3, v0, Lcom/unisound/sdk/bk;->a:I

    iput-object v2, p0, Lcom/unisound/sdk/au;->d:Lcom/unisound/sdk/bj;

    new-instance v0, Lcom/unisound/sdk/bj;

    iget-object v3, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-direct {v0, p1, v3}, Lcom/unisound/sdk/bj;-><init>(Ljava/lang/String;Lcom/unisound/sdk/bk;)V

    iput-object v0, p0, Lcom/unisound/sdk/au;->d:Lcom/unisound/sdk/bj;

    const-string p1, "TTSOnlineSynthesizerThread"

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/au;->d:Lcom/unisound/sdk/bj;

    iget-object v0, p0, Lcom/unisound/sdk/au;->o:Lcom/unisound/sdk/bn;

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/bj;->a(Lcom/unisound/sdk/bn;)V

    :goto_0
    iput-object v2, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    new-instance p1, Lcom/unisound/sdk/bl;

    iget-object v0, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-direct {p1, v0}, Lcom/unisound/sdk/bl;-><init>(Lcom/unisound/sdk/bk;)V

    iput-object p1, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    const-string v0, "TTSPlayThread"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    iget-object v0, p0, Lcom/unisound/sdk/au;->p:Lcom/unisound/sdk/bm;

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/bl;->a(Lcom/unisound/sdk/bm;)V

    iget-object p1, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    iget-object v0, p0, Lcom/unisound/sdk/au;->k:Lcom/unisound/client/IAudioSource;

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/bl;->a(Lcom/unisound/client/IAudioSource;)V

    sget-object p1, Lcom/unisound/sdk/az;->b:Lcom/unisound/sdk/az;

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bl;->a(Ljava/lang/Boolean;)V

    const-string p1, "SpeechSynthesizerInterface beginTts: onlySynthesize executed"

    invoke-static {p1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "SpeechSynthesizerInterface beginTts: mTTSPlayThread.start()"

    invoke-static {p1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/au;->l:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/unisound/sdk/au;->c:Lcom/unisound/sdk/bi;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "SpeechSynthesizerInterface beginTts: mOfflineSynthesizeThread.start()"

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/unisound/sdk/au;->d:Lcom/unisound/sdk/bj;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const-string p1, "SpeechSynthesizerInterface beginTts: mOnlineSynthesizerThread.start(text)"

    :goto_1
    invoke-static {p1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    return-object p0
.end method

.method static synthetic a(Lcom/unisound/sdk/au;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/au;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private varargs a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/au;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    aget-object p1, p1, v3

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v0, 0x65

    invoke-static {p1, v0}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const v0, -0x15f92

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-static {p1, v1, v0}, Lcom/unisound/sdk/au;->sendMsg(Lcom/unisound/common/u;ILjava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private b()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/au;->c:Lcom/unisound/sdk/bi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/bi;->b()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic b(Lcom/unisound/sdk/au;)Lcom/unisound/sdk/bl;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    return-object p0
.end method

.method private c()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/au;->c:Lcom/unisound/sdk/bi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/bi;->g()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic c(Lcom/unisound/sdk/au;)Lcom/unisound/sdk/bi;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/au;->c:Lcom/unisound/sdk/bi;

    return-object p0
.end method

.method private d()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/au;->d:Lcom/unisound/sdk/bj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/bj;->g()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic d(Lcom/unisound/sdk/au;)Lcom/unisound/client/SpeechSynthesizerListener;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/au;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    return-object p0
.end method

.method private e()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/au;->d:Lcom/unisound/sdk/bj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/bj;->b()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private f()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/bl;->j()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private g()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/bl;->b()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SpeechSynthesizerInterface removeMessage : remvoeMessage = 107"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SpeechSynthesizerInterface removeMessage : remvoeMessage = 103"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SpeechSynthesizerInterface removeMessage : remvoeMessage = 102"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SpeechSynthesizerInterface removeMessage : remvoeMessage = 104"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "SpeechSynthesizerInterface removeMessage : remvoeMessage = 105"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SpeechSynthesizerInterface removeMessage : remvoeMessage = 106"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "SpeechSynthesizerInterface removeMessage : remvoeMessage = 101"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "SpeechSynthesizerInterface removeMessage : remvoeMessage = 108"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "SpeechSynthesizerInterface removeMessage : remvoeMessage = 109"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SpeechSynthesizerInterface removeMessage : remvoeMessage = 111"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "SpeechSynthesizerInterface removeMessage : remvoeMessage = 112"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    return-void
.end method

.method private i()V
    .locals 3

    const-string v0, "SpeechSynthesizerInterface switchSpeeker begin"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    const/16 v1, 0xe1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const v2, -0x163df

    invoke-static {v2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unisound/sdk/au;->sendMsg(Lcom/unisound/common/u;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {v2}, Lcom/unisound/sdk/bk;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x72

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/unisound/sdk/au;->sendMsg(Lcom/unisound/common/u;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    invoke-static {v1, v0}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    :goto_0
    const-string v0, "SpeechSynthesizerInterface switchSpeeker end"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x163e1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private j()V
    .locals 5

    iget-object v0, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/unisound/sdk/au;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d(I)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTtsField...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public static sendEmptyMsg(Lcom/unisound/common/u;I)V
    .locals 1

    sget-object v0, Lcom/unisound/sdk/au;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static sendMsg(Lcom/unisound/common/u;ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/unisound/sdk/au;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected cancel()I
    .locals 5

    const-string v0, "SpeechSynthesizerInterface cancel begin"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    sget-object v0, Lcom/unisound/sdk/au;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/unisound/sdk/au;->f()I

    move-result v1

    iget-object v2, p0, Lcom/unisound/sdk/au;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/unisound/sdk/au;->a()I

    move-result v2

    move v3, v2

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/unisound/sdk/au;->d()I

    move-result v2

    const/4 v3, -0x1

    :goto_0
    invoke-direct {p0}, Lcom/unisound/sdk/au;->h()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/unisound/sdk/au;->stop()V

    if-eq v2, v3, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "SpeechSynthesizerInterface cancel end"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_1
    return v4

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getOption(I)Ljava/lang/Object;
    .locals 2

    const/16 v0, 0x40c

    if-eq p1, v0, :cond_3

    const/16 v0, 0x7e4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7f1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->q()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->z()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->w()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->f()Lcom/unisound/common/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->x()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->v()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->u()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_8
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->t()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/unisound/sdk/au;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const v0, -0x163e2

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe1

    invoke-static {p1, v1, v0}, Lcom/unisound/sdk/au;->sendMsg(Lcom/unisound/common/u;ILjava/lang/String;)V

    const-string p1, ""

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->C()Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/unisound/sdk/au;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/unisound/common/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7db
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getParams()Lcom/unisound/sdk/bk;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/au;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected getStatus()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/au;->h:I

    return v0
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0.10.30"

    return-object v0
.end method

.method protected init(Ljava/lang/String;)I
    .locals 6

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->D()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unisound/common/o;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/unisound/sdk/au;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "SpeechSynthesizerInterface init: jsonString init param executed"

    invoke-static {p1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->k()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ht_outer"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unisound/sdk/au;->m:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/unisound/sdk/ay;

    iget-object v0, p0, Lcom/unisound/sdk/au;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/unisound/sdk/ay;-><init>(Lcom/unisound/sdk/au;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    :cond_3
    iget-object p1, p0, Lcom/unisound/sdk/au;->l:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    const-string p1, "SpeechSynthesizerInterface init: TTS_SERVICE_MODE_LOCAL"

    invoke-static {p1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-static {}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->b()Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/sdk/au;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDicModelPath= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {v2}, Lcom/unisound/sdk/bk;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getSpeakerModelPath= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {v2}, Lcom/unisound/sdk/bk;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getAnnotationFilePath = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {v2}, Lcom/unisound/sdk/bk;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/au;->a:Lcom/unisound/sdk/bt;

    invoke-virtual {p1}, Lcom/unisound/sdk/bt;->c()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/unisound/sdk/au;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->h()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {v2}, Lcom/unisound/sdk/bk;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {v3}, Lcom/unisound/sdk/bk;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unisound/sdk/au;->a:Lcom/unisound/sdk/bt;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v2, v5, v0

    const/4 p1, 0x2

    aput-object v3, v5, p1

    invoke-virtual {v4, v5}, Lcom/unisound/sdk/bt;->a([Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unisound/sdk/au;->a:Lcom/unisound/sdk/bt;

    invoke-virtual {p1}, Lcom/unisound/sdk/bt;->a()V

    const-string p1, "SpeechSynthesizerInterface init: asyncTask.start()"

    invoke-static {p1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/unisound/sdk/au;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    invoke-virtual {p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 v0, 0x65

    invoke-static {p1, v0}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    const-string p1, "SpeechSynthesizerInterface init: mTts.isInit()"

    :goto_1
    invoke-static {p1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return v1

    :cond_6
    const-string p1, "SpeechSynthesizerInterface init: TTS_SERVICE_MODE_NET"

    goto :goto_1
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/bl;->k()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected pause()V
    .locals 1

    const-string v0, "SpeechSynthesizerInterface pause begin"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/bl;->d()V

    :cond_0
    const-string v0, "SpeechSynthesizerInterface pause end"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected playSynWav()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/bl;->a(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method protected playText(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/unisound/sdk/az;->a:Lcom/unisound/sdk/az;

    invoke-direct {p0, p1, v0}, Lcom/unisound/sdk/au;->a(Ljava/lang/String;Lcom/unisound/sdk/az;)I

    move-result p1

    return p1
.end method

.method protected release(ILjava/lang/String;)I
    .locals 1

    const-string p2, "SpeechSynthesizerInterface release begin"

    invoke-static {p2}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    const/16 p2, 0x961

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    const-string p1, "SpeechSynthesizerInterface release : release type error"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/sdk/au;->stop()V

    iget-object p1, p0, Lcom/unisound/sdk/au;->c:Lcom/unisound/sdk/bi;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/unisound/sdk/au;->c()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/unisound/sdk/au;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/yunzhisheng/tts/offline/lib/YzsTts;->c()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unisound/sdk/au;->b:Lcn/yunzhisheng/tts/offline/lib/YzsTts;

    iget-object p1, p0, Lcom/unisound/sdk/au;->n:Lcom/unisound/common/u;

    const/16 p2, 0x70

    invoke-static {p1, p2}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/unisound/sdk/au;->c:Lcom/unisound/sdk/bi;

    const/16 p2, 0x2710

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bi;->b(I)V

    :cond_3
    iget-object p1, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bl;->c(I)V

    :cond_4
    :goto_1
    const-string p1, "SpeechSynthesizerInterface release end"

    invoke-static {p1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    return v0
.end method

.method protected resume()V
    .locals 1

    const-string v0, "SpeechSynthesizerInterface resume begin"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/au;->e:Lcom/unisound/sdk/bl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/bl;->f()V

    :cond_0
    const-string v0, "SpeechSynthesizerInterface resume end"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/au;->k:Lcom/unisound/client/IAudioSource;

    const/4 p1, 0x0

    return p1
.end method

.method protected setOption(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x7f2

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/unisound/sdk/au;->cancel()I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpeechSynthesizerInterface setOption switch backend_model: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->a(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/unisound/sdk/au;->i()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->b(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->d(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->e(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->h(Ljava/lang/Object;)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->g(Ljava/lang/Object;)V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->f(Ljava/lang/Object;)V

    return-void

    :pswitch_8
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/unisound/sdk/au;->l:Ljava/lang/Integer;

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->i(Ljava/lang/Object;)V

    return-void

    :pswitch_a
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->k(Ljava/lang/Object;)V

    return-void

    :pswitch_b
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->j(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->q()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/unisound/common/r;->k:Z

    return-void

    :pswitch_c
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->u(Ljava/lang/Object;)V

    return-void

    :pswitch_d
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->p(Ljava/lang/Object;)V

    return-void

    :pswitch_e
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->t(Ljava/lang/Object;)Z

    return-void

    :pswitch_f
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->l(Ljava/lang/Object;)V

    return-void

    :pswitch_10
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->r(Ljava/lang/Object;)V

    return-void

    :pswitch_11
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->o(Ljava/lang/Object;)V

    return-void

    :pswitch_12
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->n(Ljava/lang/Object;)V

    return-void

    :pswitch_13
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->m(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bk;->c(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7db
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e4
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7ee
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setServer(Ljava/lang/String;S)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/au;->i:Lcom/unisound/sdk/bk;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/unisound/sdk/bk;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected setTTSListener(Lcom/unisound/client/SpeechSynthesizerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/au;->f:Lcom/unisound/client/SpeechSynthesizerListener;

    return-void
.end method

.method protected stop()V
    .locals 2

    const-string v0, "SpeechSynthesizerInterface stop begin"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisound/sdk/au;->g()I

    iget-object v0, p0, Lcom/unisound/sdk/au;->l:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/unisound/sdk/au;->b()I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/unisound/sdk/au;->e()I

    :goto_0
    const-string v0, "SpeechSynthesizerInterface stop end"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected synthesizeText(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/unisound/sdk/az;->b:Lcom/unisound/sdk/az;

    invoke-direct {p0, p1, v0}, Lcom/unisound/sdk/au;->a(Ljava/lang/String;Lcom/unisound/sdk/az;)I

    return-void
.end method
