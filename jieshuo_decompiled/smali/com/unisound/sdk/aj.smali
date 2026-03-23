.class public Lcom/unisound/sdk/aj;
.super Lcom/unisound/common/u;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/sdk/ag;
.implements Lcom/unisound/sdk/ap;
.implements Lcom/unisound/sdk/ce;


# static fields
.field private static final A:I = 0x10

.field private static final B:I = 0x15

.field private static final C:I = 0x16

.field private static final D:I = 0x17

.field private static final E:I = 0x18

.field public static a:I = 0x0

.field public static b:I = 0x0

.field private static final r:I = 0x1

.field private static final s:I = 0x2

.field private static final t:I = 0x3

.field private static final u:I = 0x5

.field private static final v:I = 0xb

.field private static final w:I = 0xc

.field private static final x:I = 0xd

.field private static final y:I = 0xe

.field private static final z:I = 0xf


# instance fields
.field protected c:Lcom/unisound/common/an;

.field private d:Lcom/unisound/common/am;

.field private e:Lcom/unisound/sdk/at;

.field private f:Lcom/unisound/sdk/at;

.field private g:Lcom/unisound/sdk/ai;

.field private h:Lcom/unisound/sdk/w;

.field private i:Lcom/unisound/sdk/z;

.field private j:Lcom/unisound/sdk/an;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Landroid/content/Context;

.field private n:Lcom/unisound/sdk/x;

.field private o:Landroid/os/Looper;

.field private p:Lcom/unisound/sdk/ac;

.field private q:Lcom/unisound/sdk/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "uscasr"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const v0, 0xea60

    sput v0, Lcom/unisound/sdk/aj;->a:I

    const/16 v0, 0x2710

    sput v0, Lcom/unisound/sdk/aj;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unisound/sdk/an;)V
    .locals 2

    invoke-direct {p0}, Lcom/unisound/common/u;-><init>()V

    new-instance v0, Lcom/unisound/common/am;

    invoke-direct {v0}, Lcom/unisound/common/am;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/aj;->d:Lcom/unisound/common/am;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/aj;->e:Lcom/unisound/sdk/at;

    iput-object v0, p0, Lcom/unisound/sdk/aj;->f:Lcom/unisound/sdk/at;

    iput-object v0, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    iput-object v0, p0, Lcom/unisound/sdk/aj;->h:Lcom/unisound/sdk/w;

    iput-object v0, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    iput-object v0, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    const-string v1, ""

    iput-object v1, p0, Lcom/unisound/sdk/aj;->k:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisound/sdk/aj;->l:Z

    iput-object v0, p0, Lcom/unisound/sdk/aj;->n:Lcom/unisound/sdk/x;

    new-instance v1, Lcom/unisound/sdk/ak;

    invoke-direct {v1, p0}, Lcom/unisound/sdk/ak;-><init>(Lcom/unisound/sdk/aj;)V

    iput-object v1, p0, Lcom/unisound/sdk/aj;->p:Lcom/unisound/sdk/ac;

    iput-object v0, p0, Lcom/unisound/sdk/aj;->c:Lcom/unisound/common/an;

    iput-object p1, p0, Lcom/unisound/sdk/aj;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/unisound/common/k;->a(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unisound/sdk/an;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0, p3}, Lcom/unisound/common/u;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/unisound/common/am;

    invoke-direct {v0}, Lcom/unisound/common/am;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/aj;->d:Lcom/unisound/common/am;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/aj;->e:Lcom/unisound/sdk/at;

    iput-object v0, p0, Lcom/unisound/sdk/aj;->f:Lcom/unisound/sdk/at;

    iput-object v0, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    iput-object v0, p0, Lcom/unisound/sdk/aj;->h:Lcom/unisound/sdk/w;

    iput-object v0, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    iput-object v0, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    const-string v1, ""

    iput-object v1, p0, Lcom/unisound/sdk/aj;->k:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisound/sdk/aj;->l:Z

    iput-object v0, p0, Lcom/unisound/sdk/aj;->n:Lcom/unisound/sdk/x;

    new-instance v1, Lcom/unisound/sdk/ak;

    invoke-direct {v1, p0}, Lcom/unisound/sdk/ak;-><init>(Lcom/unisound/sdk/aj;)V

    iput-object v1, p0, Lcom/unisound/sdk/aj;->p:Lcom/unisound/sdk/ac;

    iput-object v0, p0, Lcom/unisound/sdk/aj;->c:Lcom/unisound/common/an;

    iput-object p1, p0, Lcom/unisound/sdk/aj;->m:Landroid/content/Context;

    invoke-static {p1}, Lcom/unisound/common/k;->a(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    iput-object p3, p0, Lcom/unisound/sdk/aj;->o:Landroid/os/Looper;

    new-instance p1, Lcom/unisound/sdk/ab;

    iget-object p2, p0, Lcom/unisound/sdk/aj;->p:Lcom/unisound/sdk/ac;

    invoke-direct {p1, p2, p3}, Lcom/unisound/sdk/ab;-><init>(Lcom/unisound/sdk/ac;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/unisound/sdk/aj;->q:Lcom/unisound/sdk/ab;

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/aj;)Lcom/unisound/sdk/ab;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/aj;->q:Lcom/unisound/sdk/ab;

    return-object p0
.end method

.method static synthetic a(Lcom/unisound/sdk/aj;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/aj;->d(Z)V

    return-void
.end method

.method static synthetic b(Lcom/unisound/sdk/aj;)Lcom/unisound/sdk/z;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Before startRecognition :cancelRecognition()"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unisound/sdk/aj;->d(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    iget-object v2, p0, Lcom/unisound/sdk/aj;->d:Lcom/unisound/common/am;

    invoke-virtual {v2}, Lcom/unisound/common/am;->a()I

    move-result v2

    iput v2, v1, Lcom/unisound/sdk/an;->aM:I

    iget-object v1, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    invoke-static {}, Lcom/unisound/common/k;->b()I

    move-result v2

    iput v2, v1, Lcom/unisound/sdk/an;->aP:I

    iget-object v1, p0, Lcom/unisound/sdk/aj;->f:Lcom/unisound/sdk/at;

    iput-object v1, p0, Lcom/unisound/sdk/aj;->e:Lcom/unisound/sdk/at;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/sdk/aj;->c:Lcom/unisound/common/an;

    iput-boolean v0, p0, Lcom/unisound/sdk/aj;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/aj;->k:Ljava/lang/String;

    new-instance v0, Lcom/unisound/sdk/ai;

    iget-object v1, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    iget-object v2, p0, Lcom/unisound/sdk/aj;->m:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/unisound/sdk/ai;-><init>(Lcom/unisound/sdk/an;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    invoke-virtual {v0, p0}, Lcom/unisound/sdk/ai;->a(Lcom/unisound/sdk/ag;)V

    iget-object p1, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    const-string v0, "usc_net_thread"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    invoke-virtual {p1}, Lcom/unisound/sdk/an;->y()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    const-string p1, "Recognizer:: recognitionThread start"

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    return-void
.end method

.method private d(Z)V
    .locals 0

    iget-object p1, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/unisound/sdk/ai;->d()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    invoke-virtual {p1}, Lcom/unisound/sdk/ai;->c()V

    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Lcom/unisound/common/an;

    iget-object v1, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    iget v1, v1, Lcom/unisound/sdk/an;->aO:I

    iget-object v2, p0, Lcom/unisound/sdk/aj;->d:Lcom/unisound/common/am;

    invoke-virtual {v2}, Lcom/unisound/common/am;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/unisound/common/an;-><init>(II)V

    iput-object v0, p0, Lcom/unisound/sdk/aj;->c:Lcom/unisound/common/an;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/aj;->l:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/aj;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unisound/sdk/ai;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/sdk/aj;->k:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/aj;->q:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/unisound/sdk/aj;->q:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->e()V

    iget-object v0, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/unisound/sdk/z;->b(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private r()V
    .locals 1

    const-string v0, "Recognizer stopRecording"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/aj;->l:Z

    iget-object v0, p0, Lcom/unisound/sdk/aj;->h:Lcom/unisound/sdk/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->d()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/aj;->l:Z

    iget-object v0, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/ai;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    invoke-virtual {v0}, Lcom/unisound/sdk/ai;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/aj;->q:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->c()V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->h:Lcom/unisound/sdk/w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/w;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unisound/common/af;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/aj;->r()V

    const/16 v0, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/unisound/common/aj;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/unisound/sdk/cd;

    invoke-direct {v0}, Lcom/unisound/sdk/cd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unisound/sdk/cd;->a(Lcom/unisound/sdk/ce;)V

    iget-object v1, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/sdk/cd;->a(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public a(Lcn/yunzhisheng/asr/VAD;)V
    .locals 0

    const/16 p1, 0x15

    invoke-virtual {p0, p1}, Lcom/unisound/common/u;->sendMessage(I)V

    return-void
.end method

.method public a(Lcom/unisound/sdk/at;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aj;->f:Lcom/unisound/sdk/at;

    iput-object p1, p0, Lcom/unisound/sdk/aj;->e:Lcom/unisound/sdk/at;

    return-void
.end method

.method public a(Lcom/unisound/sdk/w;ZLjava/lang/String;Lcom/unisound/sdk/x;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->q:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->d()V

    invoke-direct {p0, p3}, Lcom/unisound/sdk/aj;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iput-object p4, p0, Lcom/unisound/sdk/aj;->n:Lcom/unisound/sdk/x;

    iput-object p1, p0, Lcom/unisound/sdk/aj;->h:Lcom/unisound/sdk/w;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public a(Lcom/unisound/sdk/z;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/unisound/sdk/cd;

    invoke-direct {v0}, Lcom/unisound/sdk/cd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unisound/sdk/cd;->a(Lcom/unisound/sdk/ce;)V

    iget-object v1, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/sdk/cd;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2}, Lcom/unisound/sdk/an;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Lcom/unisound/sdk/ah;

    invoke-direct {v0}, Lcom/unisound/sdk/ah;-><init>()V

    iput-object p1, v0, Lcom/unisound/sdk/ah;->a:Ljava/lang/String;

    iput-boolean p2, v0, Lcom/unisound/sdk/ah;->b:Z

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZI)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/unisound/sdk/aj;->d(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    invoke-virtual {p2, p1}, Lcom/unisound/sdk/ai;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    invoke-virtual {p1}, Lcom/unisound/sdk/ai;->b()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/unisound/sdk/cd;

    invoke-direct {v0}, Lcom/unisound/sdk/cd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/unisound/sdk/cd;->a(Lcom/unisound/sdk/ce;)V

    iget-object v1, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->ab()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/unisound/sdk/cd;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/an;->n(Z)V

    return-void
.end method

.method public a(Z[BII)V
    .locals 0

    iget-object p1, p0, Lcom/unisound/sdk/aj;->n:Lcom/unisound/sdk/x;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/x;->a([B)V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/aj;->o:Landroid/os/Looper;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    monitor-exit v0

    return v3

    :pswitch_0
    iget-object v1, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    if-eqz v1, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    invoke-interface {v1, p1}, Lcom/unisound/sdk/z;->c(I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/unisound/sdk/aj;->c(Z)V

    const-string p1, "max_speech_timeout cancel()"

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    const/16 p1, -0x7532

    invoke-direct {p0, p1}, Lcom/unisound/sdk/aj;->f(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    if-eqz v1, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    invoke-interface {v1, p1}, Lcom/unisound/sdk/d;->a(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/unisound/sdk/d;->b()V

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/aj;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/unisound/sdk/aj;->t()V

    const p1, -0xf231

    invoke-direct {p0, p1}, Lcom/unisound/sdk/aj;->f(I)V

    goto :goto_0

    :pswitch_6
    const-string p1, "recognizer cancel"

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/unisound/sdk/aj;->t()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/aj;->f(I)V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0, v3}, Lcom/unisound/sdk/aj;->f(I)V

    goto :goto_0

    :pswitch_9
    iget-object v1, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    if-eqz v1, :cond_5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unisound/sdk/ah;

    iget-object v3, p1, Lcom/unisound/sdk/ah;->a:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/unisound/sdk/ah;->b:Z

    invoke-interface {v1, v3, p1}, Lcom/unisound/sdk/ad;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/unisound/sdk/aj;->e()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/unisound/sdk/aj;->d(Z)V

    const p1, -0xee4a

    invoke-direct {p0, p1}, Lcom/unisound/sdk/aj;->f(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/unisound/sdk/aj;->s()V

    iget-object p1, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/unisound/sdk/z;->e()V

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/unisound/sdk/z;->c()V

    goto :goto_0

    :cond_4
    const p1, -0xee49

    invoke-direct {p0, p1}, Lcom/unisound/sdk/aj;->f(I)V

    const-string p1, "startRecognition Error:cancelRecognition()"

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/unisound/sdk/aj;->d(Z)V

    :cond_5
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->q:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->a()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    const/16 v0, 0x16

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Z[BII)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/ai;->a([B)V

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/z;->a(Z[BII)V

    :cond_2
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    sget v0, Lcom/unisound/sdk/aj;->a:I

    if-le p1, v0, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    sget v0, Lcom/unisound/sdk/aj;->b:I

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/unisound/sdk/aj;->q:Lcom/unisound/sdk/ab;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/ab;->a(I)V

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->e:Lcom/unisound/sdk/at;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/at;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/aj;->e:Lcom/unisound/sdk/at;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/aj;->l:Z

    iget-object v0, p0, Lcom/unisound/sdk/aj;->q:Lcom/unisound/sdk/ab;

    invoke-virtual {v0}, Lcom/unisound/sdk/ab;->e()V

    invoke-direct {p0}, Lcom/unisound/sdk/aj;->t()V

    invoke-direct {p0, p1}, Lcom/unisound/sdk/aj;->d(Z)V

    const-string p1, "Recognizer: cancelRecognition()"

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/common/u;->removeSendMessage()V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/sdk/aj;->r()V

    invoke-direct {p0}, Lcom/unisound/sdk/aj;->s()V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->j:Lcom/unisound/sdk/an;

    iput p1, v0, Lcom/unisound/sdk/an;->aT:I

    return-void
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->i:Lcom/unisound/sdk/z;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/z;->f()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1

    const/16 v0, 0x18

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/unisound/common/u;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->k:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/aj;->l:Z

    return v0
.end method

.method public h()V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/aj;->h:Lcom/unisound/sdk/w;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 1

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/unisound/common/u;->sendMessage(I)V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()Lcom/unisound/common/am;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->d:Lcom/unisound/common/am;

    return-object v0
.end method

.method public p()Lcom/unisound/common/an;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->c:Lcom/unisound/common/an;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aj;->g:Lcom/unisound/sdk/ai;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unisound/sdk/ai;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
