.class public Lcom/unisound/sdk/bb;
.super Lcom/unisound/sdk/m;
.source "SourceFile"


# static fields
.field private static final C:Ljava/lang/String; = "asr_recongize"

.field private static final Q:I = 0x1

.field private static final R:I = 0x5

.field private static final S:I = 0x6

.field private static final T:I = 0x7

.field private static final U:I = 0x8

.field private static final V:I = 0xb

.field private static final W:I = 0xc

.field private static final X:I = 0xd

.field private static final Y:I = 0xe

.field private static final Z:I = 0xf

.field private static final aa:I = 0x10

.field private static final ab:I = 0x11

.field private static final ac:I = 0x12

.field private static final ad:I = 0x14

.field private static final aq:I = 0x0

.field private static final ar:I = 0x1

.field private static final as:I = 0x2

.field private static final at:I = 0x3


# instance fields
.field private A:Lcom/unisound/client/SpeechUnderstanderListener;

.field private B:Lcom/unisound/sdk/bz;

.field private D:Lcom/unisound/sdk/v;

.field private E:Z

.field private F:Z

.field private G:Ljava/lang/String;

.field private H:I

.field private I:Lcom/unisound/sdk/ar;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:I

.field private N:Z

.field private O:Z

.field private P:Ljava/lang/StringBuffer;

.field private ae:Lcom/unisound/common/ag;

.field private af:Landroid/content/Context;

.field private ag:Landroid/os/HandlerThread;

.field private ah:Landroid/os/Handler;

.field private ai:I

.field private aj:Z

.field private ak:Ljava/lang/String;

.field private al:Z

.field private am:Z

.field private an:Z

.field private ao:Z

.field private ap:Lcom/unisound/sdk/z;

.field protected o:Lcom/unisound/sdk/aj;

.field protected p:Lcom/unisound/sdk/cn;

.field protected final q:I

.field protected final r:I

.field protected final s:I

.field protected final t:I

.field protected final u:I

.field v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/unisound/sdk/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bb;->D:Lcom/unisound/sdk/v;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bb;->E:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/bb;->F:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/unisound/sdk/bb;->G:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, p0, Lcom/unisound/sdk/bb;->H:I

    new-instance v2, Lcom/unisound/sdk/ar;

    invoke-direct {v2}, Lcom/unisound/sdk/ar;-><init>()V

    iput-object v2, p0, Lcom/unisound/sdk/bb;->I:Lcom/unisound/sdk/ar;

    new-instance v2, Lcom/unisound/sdk/cn;

    invoke-direct {v2}, Lcom/unisound/sdk/cn;-><init>()V

    iput-object v2, p0, Lcom/unisound/sdk/bb;->p:Lcom/unisound/sdk/cn;

    const-string v2, "main"

    iput-object v2, p0, Lcom/unisound/sdk/bb;->J:Ljava/lang/String;

    const-string v2, "wakeup"

    iput-object v2, p0, Lcom/unisound/sdk/bb;->K:Ljava/lang/String;

    const/16 v2, 0x33

    iput v2, p0, Lcom/unisound/sdk/bb;->q:I

    const/16 v2, 0x34

    iput v2, p0, Lcom/unisound/sdk/bb;->r:I

    const/16 v2, 0x35

    iput v2, p0, Lcom/unisound/sdk/bb;->s:I

    const/16 v2, 0x36

    iput v2, p0, Lcom/unisound/sdk/bb;->t:I

    const/16 v2, 0x37

    iput v2, p0, Lcom/unisound/sdk/bb;->u:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unisound/sdk/bb;->L:Z

    iput v2, p0, Lcom/unisound/sdk/bb;->M:I

    iput-boolean v2, p0, Lcom/unisound/sdk/bb;->N:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/bb;->O:Z

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, p0, Lcom/unisound/sdk/bb;->P:Ljava/lang/StringBuffer;

    iput-boolean v2, p0, Lcom/unisound/sdk/bb;->aj:Z

    iput-object v1, p0, Lcom/unisound/sdk/bb;->ak:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/unisound/sdk/bb;->al:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/bb;->am:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/bb;->an:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/bb;->ao:Z

    new-instance v1, Lcom/unisound/sdk/be;

    invoke-direct {v1, p0}, Lcom/unisound/sdk/be;-><init>(Lcom/unisound/sdk/bb;)V

    iput-object v1, p0, Lcom/unisound/sdk/bb;->ap:Lcom/unisound/sdk/z;

    iput-object p1, p0, Lcom/unisound/sdk/bb;->af:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisound/sdk/bb;->y:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/sdk/bb;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/bb;->p:Lcom/unisound/sdk/cn;

    iget-object v3, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v3, v3, Lcom/unisound/sdk/y;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/unisound/sdk/cn;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->Z()Lcom/unisound/sdk/bz;

    move-result-object v1

    iput-object v1, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/aa;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v1, p3}, Lcom/unisound/sdk/aa;->c(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    sget-object v1, Lcom/unisound/common/k;->x:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/unisound/sdk/aa;->e(Ljava/lang/String;)V

    new-instance p3, Lcom/unisound/sdk/aj;

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object v3, p0, Lcom/unisound/sdk/m;->mLooper:Landroid/os/Looper;

    invoke-direct {p3, p1, v1, v3}, Lcom/unisound/sdk/aj;-><init>(Landroid/content/Context;Lcom/unisound/sdk/an;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    iget-object p1, p0, Lcom/unisound/sdk/bb;->ap:Lcom/unisound/sdk/z;

    invoke-virtual {p3, p1}, Lcom/unisound/sdk/aj;->a(Lcom/unisound/sdk/z;)V

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->h(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/an;->q(I)V

    iput-boolean v2, p0, Lcom/unisound/sdk/bb;->N:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/unisound/sdk/bb;->v:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/unisound/sdk/bb;->w:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/unisound/sdk/bb;->x:Ljava/util/ArrayList;

    new-instance p1, Lcom/unisound/common/ag;

    new-instance p2, Lcom/unisound/sdk/bc;

    invoke-direct {p2, p0}, Lcom/unisound/sdk/bc;-><init>(Lcom/unisound/sdk/bb;)V

    iget-object p3, p0, Lcom/unisound/sdk/m;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p2, p3}, Lcom/unisound/common/ag;-><init>(Lcom/unisound/common/ah;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/unisound/sdk/bb;->ae:Lcom/unisound/common/ag;

    invoke-virtual {p1}, Lcom/unisound/common/ag;->c()V

    return-void
.end method

.method private E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bb;->E:Z

    return v0
.end method

.method private F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bb;->F:Z

    return v0
.end method

.method private G()Lcom/unisound/common/an;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {v0}, Lcom/unisound/sdk/aj;->p()Lcom/unisound/common/an;

    move-result-object v0

    return-object v0
.end method

.method private H()Lcom/unisound/common/am;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {v0}, Lcom/unisound/sdk/aj;->o()Lcom/unisound/common/am;

    move-result-object v0

    return-object v0
.end method

.method private I()V
    .locals 6

    invoke-direct {p0}, Lcom/unisound/sdk/bb;->E()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/unisound/sdk/bb;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/unisound/sdk/bb;->H:I

    const/4 v1, 0x1

    const/16 v2, 0x4ba

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/sdk/bb;->v:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/unisound/sdk/bb;->w:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/unisound/sdk/bb;->x:Ljava/util/ArrayList;

    invoke-static {v3, v4, v5}, Lcom/unisound/common/o;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->J:Ljava/lang/String;

    iget-object v3, p0, Lcom/unisound/sdk/bb;->K:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/sdk/bb;->v:Ljava/util/ArrayList;

    invoke-static {v3, v4, v4}, Lcom/unisound/common/o;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/unisound/sdk/bb;->H:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unisound/sdk/bb;->w:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/unisound/sdk/bb;->x:Ljava/util/ArrayList;

    invoke-static {v4, v3, v5}, Lcom/unisound/common/o;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/unisound/sdk/bb;->am:Z

    invoke-virtual {p0}, Lcom/unisound/sdk/bb;->stop()V

    iget-boolean v0, p0, Lcom/unisound/sdk/bb;->an:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method private J()V
    .locals 8

    iget-object v0, p0, Lcom/unisound/sdk/bb;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bb;->w:Ljava/util/ArrayList;

    iget v1, p0, Lcom/unisound/sdk/bb;->H:I

    const-string v2, "full"

    const-string v3, ""

    const-string v4, ""

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/unisound/common/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v0}, Lcom/unisound/sdk/bz;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->x:Ljava/util/ArrayList;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/unisound/common/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bb;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->v:Ljava/util/ArrayList;

    iget v1, p0, Lcom/unisound/sdk/bb;->H:I

    const-string v2, "full"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x3e600000    # -20.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/unisound/common/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private K()I
    .locals 3

    iget-boolean v0, p0, Lcom/unisound/sdk/bb;->N:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, -0xfa01

    invoke-static {v1}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_0

    const/16 v2, 0x514

    invoke-static {v1}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private L()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/unisound/sdk/bb;->w()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    const-string v2, ""

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unisound/sdk/bb;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unisound/sdk/bb;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/unisound/sdk/bb;->y()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/unisound/sdk/bb;->x()Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "commit="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unisound/sdk/bb;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "authorized_status="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/unisound/sdk/bb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/bb;->af:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/unisound/sdk/bb;Ljava/lang/String;)Lcom/unisound/sdk/cb;
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bb;->o(Ljava/lang/String;)Lcom/unisound/sdk/cb;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/unisound/sdk/bb;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bb;->k(I)V

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/bb;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisound/sdk/bb;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/bz;->a(Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/bb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/bb;->ao:Z

    return p1
.end method

.method static synthetic b(Lcom/unisound/sdk/bb;)Lcom/unisound/common/ag;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/bb;->ae:Lcom/unisound/common/ag;

    return-object p0
.end method

.method static synthetic b(Lcom/unisound/sdk/bb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bb;->G:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/unisound/sdk/bb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisound/sdk/bb;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/unisound/sdk/bb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/bb;->E:Z

    return p1
.end method

.method static synthetic c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    return-object p0
.end method

.method private c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/bz;->a(Z)V

    return-void
.end method

.method static synthetic c(Lcom/unisound/sdk/bb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/bb;->am:Z

    return p1
.end method

.method static synthetic d(Lcom/unisound/sdk/bb;)I
    .locals 0

    iget p0, p0, Lcom/unisound/sdk/bb;->H:I

    return p0
.end method

.method private d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-boolean v0, v0, Lcom/unisound/sdk/y;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/m;->a(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "loadModel::isInit=false"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const p1, -0xf80f

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bb;->g(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/unisound/sdk/bb;->p:Lcom/unisound/sdk/cn;

    invoke-virtual {p1}, Lcom/unisound/sdk/cn;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "wakeup"

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic d(Lcom/unisound/sdk/bb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/bb;->an:Z

    return p1
.end method

.method private e(Z)I
    .locals 3

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-boolean v0, v0, Lcom/unisound/sdk/y;->g:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/m;->a(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "loadModel::isInit=false"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v0, v0, Lcom/unisound/sdk/y;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "wakeup.dat"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v1, v1, Lcom/unisound/sdk/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v1, v1, Lcom/unisound/sdk/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wakeup,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v1, v1, Lcom/unisound/sdk/y;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "init_asr"

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method static synthetic e(Lcom/unisound/sdk/bb;)Ljava/lang/StringBuffer;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/bb;->P:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method static synthetic f(Lcom/unisound/sdk/bb;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/unisound/sdk/bb;)Lcom/unisound/sdk/bz;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    return-object p0
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method private g(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aa;->l(Ljava/lang/String;)V

    return-void
.end method

.method private h(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/an;->r(I)Z

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aa;->i(Ljava/lang/String;)V

    return-void
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcn/yunzhisheng/asr/JniUscClient;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/JniUscClient;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1}, Lcom/unisound/sdk/an;->ad()Lcom/unisound/common/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/unisound/common/a;->c()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcn/yunzhisheng/asr/JniUscClient;->a(Ljava/lang/String;I)J

    move-result-wide v2

    const/16 v4, 0x9

    invoke-virtual {v0, v4, p1}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    const/16 p1, 0xcc

    invoke-virtual {v0, p1, p2}, Lcn/yunzhisheng/asr/JniUscClient;->a(ILjava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "server :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " port: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/unisound/common/a;->c()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SpeechUnderstanderInterface"

    invoke-static {p2, p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "juc.create() returns "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/JniUscClient;->g()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initUscClient : loginstate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/unisound/common/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/16 p1, 0xce

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/asr/JniUscClient;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/sdk/bb;->ak:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/unisound/sdk/bb;->k(I)V

    :goto_0
    invoke-virtual {v0}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SpeechUnderstanderInterface : initUscClient -> mLoginToken = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/unisound/sdk/bb;->ak:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/unisound/sdk/bb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisound/sdk/bb;->F:Z

    return p0
.end method

.method private i(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aj;->c(I)V

    return-void
.end method

.method static synthetic i(Lcom/unisound/sdk/bb;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/sdk/bb;->I()V

    return-void
.end method

.method private i(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aa;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/unisound/sdk/bb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/bb;->G:Ljava/lang/String;

    return-object p0
.end method

.method private j(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x36

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aa;->j(Ljava/lang/String;)V

    return-void
.end method

.method private k(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x37

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private k(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aa;->k(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/unisound/sdk/bb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisound/sdk/bb;->al:Z

    return p0
.end method

.method private l(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aa;->f(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic l(Lcom/unisound/sdk/bb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisound/sdk/bb;->am:Z

    return p0
.end method

.method private m(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aa;->d(Ljava/lang/String;)V

    return-void
.end method

.method private n(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aa;->g(Ljava/lang/String;)V

    return-void
.end method

.method private o(Ljava/lang/String;)Lcom/unisound/sdk/cb;
    .locals 3

    const-string v0, "nluProcessTime"

    const-string v1, "asr_recongize"

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/an;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    const-string v0, "0"

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/an;->r(Ljava/lang/String;)V

    :goto_0
    new-instance p1, Lcom/unisound/sdk/cb;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\/"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/unisound/sdk/cb;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    new-instance p1, Lcom/unisound/sdk/cb;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/unisound/sdk/cb;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private p(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/an;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetEngine::error: unkown param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private q(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/an;->l(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNetEngineSubModel::error: unkown param "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/unisound/sdk/bb;->H:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private r(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/an;->i(Ljava/lang/String;)V

    return-void
.end method

.method private s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeechUnderstanderInterface -> getversion : SDK_Version = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method protected A()I
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/m;->A()I

    move-result v0

    return v0
.end method

.method protected B()I
    .locals 3

    iget v0, p0, Lcom/unisound/sdk/bb;->H:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/unisound/sdk/bd;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/bd;-><init>(Lcom/unisound/sdk/bb;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-boolean v0, p0, Lcom/unisound/sdk/bb;->N:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/unisound/sdk/bb;->H:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisound/sdk/bb;->N:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/unisound/sdk/m;->t()V

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bb;->e(Z)I

    move-result v0

    iput-boolean v1, p0, Lcom/unisound/sdk/bb;->O:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpeechUnderstanderInterface : loadResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method protected C()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/bb;->M:I

    return v0
.end method

.method protected D()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->p:Lcom/unisound/sdk/cn;

    invoke-virtual {v0}, Lcom/unisound/sdk/cn;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v3, v4, v1}, Lcom/unisound/sdk/y;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpeechUnderstanderInterface --> insertVocab_ext2 : vocabContent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/unisound/sdk/bb;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/unisound/sdk/bb;->K()I

    move-result v0

    if-eqz v0, :cond_0

    const p1, -0xfa01

    return p1

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/unisound/sdk/bb;->p:Lcom/unisound/sdk/cn;

    invoke-virtual {v1, p1}, Lcom/unisound/sdk/cn;->b(Ljava/util/List;)V

    iget-object p1, p0, Lcom/unisound/sdk/bb;->p:Lcom/unisound/sdk/cn;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/unisound/sdk/cn;->a(Z)V

    iget-object p1, p0, Lcom/unisound/sdk/bb;->p:Lcom/unisound/sdk/cn;

    invoke-virtual {p1}, Lcom/unisound/sdk/cn;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unisound/sdk/bb;->p:Lcom/unisound/sdk/cn;

    invoke-virtual {p1}, Lcom/unisound/sdk/cn;->a()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    const-string v2, "wakeup"

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unisound/sdk/bb;->p:Lcom/unisound/sdk/cn;

    invoke-virtual {v2}, Lcom/unisound/sdk/cn;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/bb;->p:Lcom/unisound/sdk/cn;

    invoke-virtual {v3}, Lcom/unisound/sdk/cn;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, -0xf834

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return v0

    :cond_1
    iput-boolean v1, p0, Lcom/unisound/sdk/bb;->L:Z

    iget-object p1, p0, Lcom/unisound/sdk/bb;->p:Lcom/unisound/sdk/cn;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/cn;->a(Z)V

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bb;->d(Z)V

    :cond_2
    return v0
.end method

.method protected a(Ljava/util/List;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/unisound/sdk/bb;->K()I

    move-result v0

    if-eqz v0, :cond_0

    const p1, -0xfa01

    return p1

    :cond_0
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v0, ""

    if-eq p2, v0, :cond_4

    const-string v0, "#"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    aget-object v2, p2, v0

    aget-object p2, p2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inserVocab --> modelTag = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", tagName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SpeechUnderstanderInterface :"

    invoke-static {v3, v1}, Lcom/unisound/common/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2, p1}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I

    move-result p1

    iget-object p2, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-int v1, v3

    const/16 v3, 0x463

    invoke-interface {p2, v3, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    if-nez p1, :cond_3

    iget-object p2, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {p2, v2}, Lcom/unisound/sdk/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v2}, Lcom/unisound/sdk/bb;->b(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_3
    iget-object p2, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p2, v2, v0}, Lcom/unisound/sdk/u;->a(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x46a

    invoke-interface {p2, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Compile vocab error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return p1

    :cond_4
    :goto_0
    const p1, -0xf61c

    return p1

    :cond_5
    :goto_1
    const p1, -0xf61d

    return p1
.end method

.method protected a(Ljava/util/Map;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/unisound/sdk/bb;->K()I

    move-result v0

    if-eqz v0, :cond_0

    const p1, -0xfa01

    return p1

    :cond_0
    if-eqz p1, :cond_3

    const-string v0, ""

    if-eq p2, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v3, v4, v1}, Lcom/unisound/sdk/y;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/y;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v2, p2}, Lcom/unisound/sdk/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    const/16 v1, 0x463

    invoke-interface {v0, v1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadModel path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v1, p2}, Lcom/unisound/sdk/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechUnderstanderInterface : "

    invoke-static {v1, v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/unisound/sdk/bb;->b(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_2
    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/unisound/sdk/u;->a(Ljava/lang/String;Z)V

    iget-object p2, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x46a

    invoke-interface {p2, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpeechUnderstanderInterface : Compile vocab error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return p1

    :cond_3
    const-string p1, "SpeechUnderstanderInterface : insertVocab parmas error!"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method protected a(I)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bb;->ao:Z

    iget-object v1, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bb;->k(I)V

    :cond_0
    iput-boolean v0, p0, Lcom/unisound/sdk/bb;->F:Z

    iget-object p1, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/unisound/sdk/bb;->I()V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unisound/sdk/bb;->ao:Z

    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/m;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected a(Lcn/yunzhisheng/asr/VAD;)V
    .locals 1

    iget-object p1, p0, Lcom/unisound/sdk/bb;->J:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/bb;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected a(Lcom/unisound/sdk/at;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aj;->a(Lcom/unisound/sdk/at;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ZI)V
    .locals 9

    invoke-super {p0, p1, p2, p3}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;ZI)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpeechUnderstandInterface doWakeupResult => "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/unisound/sdk/bb;->ao:Z

    iget-object v0, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/j;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/unisound/sdk/bb;->H:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->I()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {p1}, Lcom/unisound/sdk/aj;->c()V

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x3e8

    const-string v3, "full"

    iget-object v0, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    iget-object v0, v0, Lcom/unisound/sdk/j;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    iget v0, v0, Lcom/unisound/sdk/j;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/unisound/common/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/16 v0, 0xc81

    const/4 v2, 0x0

    invoke-static {p1, v2, v2}, Lcom/unisound/common/o;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iput-boolean v1, p0, Lcom/unisound/sdk/bb;->ao:Z

    return-void
.end method

.method protected a(Z[BII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/unisound/sdk/m;->a(Z[BII)V

    iget-object v0, p0, Lcom/unisound/sdk/bb;->D:Lcom/unisound/sdk/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/aj;->b(Z[BII)V

    :cond_0
    iget-object p2, p0, Lcom/unisound/sdk/bb;->I:Lcom/unisound/sdk/ar;

    invoke-virtual {p2, p1, p4}, Lcom/unisound/sdk/ar;->a(ZI)Z

    return-void
.end method

.method protected b(ILjava/lang/String;)I
    .locals 0

    const/16 p2, 0x579

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/unisound/sdk/bb;->O:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unisound/sdk/bb;->O:Z

    invoke-super {p0}, Lcom/unisound/sdk/m;->r()V

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected b(I)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/bg;->b(I)V

    return-void
.end method

.method protected b(II)V
    .locals 0

    iget-object p2, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bb;->al:Z

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/an;->r(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1}, Lcom/unisound/sdk/u;->N()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/unisound/sdk/bb;->d(I)I

    iget-object v1, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-boolean v1, p0, Lcom/unisound/sdk/bb;->N:Z

    if-nez v1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, -0xfa01

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    const/16 v1, 0x514

    invoke-static {v0}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/unisound/sdk/bb;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/unisound/sdk/bb;->w:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/unisound/sdk/bb;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-boolean v0, p0, Lcom/unisound/sdk/bb;->am:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/bb;->an:Z

    invoke-static {}, Lcom/unisound/common/r;->a()V

    const-string v1, "oneshot:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1, v3}, Lcom/unisound/sdk/u;->i(Z)V

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/u;->i(Z)V

    :goto_0
    iput-object p1, p0, Lcom/unisound/sdk/bb;->J:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1}, Lcom/unisound/sdk/u;->y()Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1, v3}, Lcom/unisound/sdk/an;->r(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {v1}, Lcom/unisound/sdk/bg;->j()I

    move-result v1

    if-eq v1, v4, :cond_3

    iput v0, p0, Lcom/unisound/sdk/bb;->H:I

    goto :goto_1

    :cond_3
    iput v4, p0, Lcom/unisound/sdk/bb;->H:I

    :goto_1
    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1}, Lcom/unisound/sdk/u;->N()I

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x64

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/unisound/sdk/bb;->K:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput v4, p0, Lcom/unisound/sdk/bb;->H:I

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1}, Lcom/unisound/sdk/u;->N()I

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x12c

    :goto_2
    invoke-virtual {p0, v1}, Lcom/unisound/sdk/bb;->e(I)I

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/an;->p(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1, v3}, Lcom/unisound/sdk/u;->g(Z)V

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1, v3}, Lcom/unisound/sdk/u;->c(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1, v3}, Lcom/unisound/sdk/an;->p(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1, v3}, Lcom/unisound/sdk/u;->g(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1}, Lcom/unisound/sdk/u;->S()I

    move-result v4

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {v1}, Lcom/unisound/sdk/bg;->j()I

    move-result v1

    iput v1, p0, Lcom/unisound/sdk/bb;->H:I

    invoke-virtual {p0, v3}, Lcom/unisound/sdk/bb;->d(I)I

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1}, Lcom/unisound/sdk/u;->i()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/unisound/sdk/u;->c(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object v4, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {v4}, Lcom/unisound/sdk/bg;->f()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/unisound/sdk/an;->p(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/u;->g(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v1}, Lcom/unisound/sdk/u;->Q()I

    move-result v4

    :goto_3
    invoke-virtual {v1, v4}, Lcom/unisound/sdk/u;->p(I)V

    :goto_4
    iget-object v1, p0, Lcom/unisound/sdk/bb;->I:Lcom/unisound/sdk/ar;

    invoke-virtual {v1}, Lcom/unisound/sdk/ar;->a()V

    const-string v1, ""

    iput-object v1, p0, Lcom/unisound/sdk/bb;->G:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/unisound/sdk/bb;->E:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/bb;->F:Z

    iput-object v2, p0, Lcom/unisound/sdk/bb;->D:Lcom/unisound/sdk/v;

    iget v1, p0, Lcom/unisound/sdk/bb;->H:I

    if-eqz v1, :cond_8

    if-eq v1, v3, :cond_7

    iput-boolean v3, p0, Lcom/unisound/sdk/bb;->E:Z

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0, v3}, Lcom/unisound/sdk/k;->c(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    iget-boolean v1, p0, Lcom/unisound/sdk/bb;->O:Z

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/k;->d(Z)V

    goto :goto_5

    :cond_7
    iput-boolean v3, p0, Lcom/unisound/sdk/bb;->F:Z

    iget-object v1, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/k;->c(Z)V

    new-instance v1, Lcom/unisound/sdk/v;

    iget-object v3, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object v4, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-direct {v1, v3, v4}, Lcom/unisound/sdk/v;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;)V

    iput-object v1, p0, Lcom/unisound/sdk/bb;->D:Lcom/unisound/sdk/v;

    iget-object v3, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    iget-object v4, p0, Lcom/unisound/sdk/bb;->ak:Ljava/lang/String;

    invoke-virtual {v3, v1, v0, v4, v2}, Lcom/unisound/sdk/aj;->a(Lcom/unisound/sdk/w;ZLjava/lang/String;Lcom/unisound/sdk/x;)V

    goto :goto_5

    :cond_8
    new-instance v1, Lcom/unisound/sdk/v;

    iget-object v4, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object v5, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-direct {v1, v4, v5}, Lcom/unisound/sdk/v;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;)V

    iput-object v1, p0, Lcom/unisound/sdk/bb;->D:Lcom/unisound/sdk/v;

    iget-object v1, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v1, v3}, Lcom/unisound/sdk/k;->c(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    iget-boolean v3, p0, Lcom/unisound/sdk/bb;->O:Z

    invoke-virtual {v1, v3}, Lcom/unisound/sdk/k;->d(Z)V

    iget-object v1, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    iget-object v3, p0, Lcom/unisound/sdk/bb;->D:Lcom/unisound/sdk/v;

    iget-object v4, p0, Lcom/unisound/sdk/bb;->ak:Ljava/lang/String;

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/unisound/sdk/aj;->a(Lcom/unisound/sdk/w;ZLjava/lang/String;Lcom/unisound/sdk/x;)V

    :goto_5
    invoke-super {p0, p1}, Lcom/unisound/sdk/m;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected b(Ljava/lang/String;Z)V
    .locals 9

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/unisound/sdk/bb;->ao:Z

    iget-object v0, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    invoke-virtual {v0, p1, v1}, Lcom/unisound/sdk/j;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1}, Lcom/unisound/sdk/bg;->j()I

    move-result p1

    if-eq p1, p2, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    iget-object p2, p2, Lcom/unisound/sdk/j;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpeechUnderstanderInterface : recognizeResult.item = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    iget-object v0, v0, Lcom/unisound/sdk/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , times=  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unisound/sdk/bb;->v:Ljava/util/ArrayList;

    iget v2, p0, Lcom/unisound/sdk/bb;->H:I

    const-string v3, "full"

    iget-object v0, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    iget-object v0, v0, Lcom/unisound/sdk/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    iget v0, v0, Lcom/unisound/sdk/j;->e:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/unisound/common/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    iget-object p2, p0, Lcom/unisound/sdk/bb;->v:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/unisound/common/o;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x4b2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iput-boolean v1, p0, Lcom/unisound/sdk/bb;->ao:Z

    return-void
.end method

.method protected b(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/an;->o(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/bb;->K()I

    move-result v0

    if-eqz v0, :cond_0

    const p1, -0xfa01

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SpeechUnderstanderInterface : insertVocab_ext -> inserVocabResult = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p2, "SpeechUnderstanderInterface : insertVocab_ext error "

    invoke-static {p2}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const p2, -0xf811

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bb;->j(I)V

    :cond_1
    :goto_0
    return p1
.end method

.method protected c(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/m;->c(I)V

    iput p1, p0, Lcom/unisound/sdk/bb;->M:I

    return-void
.end method

.method protected cancel()V
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/m;->mLooper:Landroid/os/Looper;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/unisound/sdk/bb;->al:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/bb;->E:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/bb;->F:Z

    iget-object v2, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {v2, v1}, Lcom/unisound/sdk/aj;->c(Z)V

    invoke-super {p0}, Lcom/unisound/sdk/m;->cancel()V

    :goto_0
    iget-boolean v1, p0, Lcom/unisound/sdk/bb;->ao:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v3, v2

    const/16 v2, 0x45d

    invoke-interface {v1, v2, v3}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    const-string v1, "SpeechunderStanderInterface: cancel called"

    invoke-static {v1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected d(I)I
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/m;->d(I)I

    move-result p1

    return p1
.end method

.method protected d(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected e(I)I
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/m;->e(I)I

    move-result p1

    return p1
.end method

.method protected e(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/bb;->K()I

    move-result v0

    if-eqz v0, :cond_0

    const p1, -0xfa01

    return p1

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/y;->h(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/bb;->K()I

    move-result v0

    if-eqz v0, :cond_0

    const p1, -0xfa01

    return p1

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/unisound/sdk/bb;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected f(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected f(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/bb;->K()I

    move-result v0

    if-eqz v0, :cond_0

    const p1, -0xfa01

    return p1

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected f(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string p1, "SpeechUnderstander -> doUploadUserData handler is null"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/unisound/sdk/bb;->k(I)V

    return-void
.end method

.method protected g(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x35

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected getOption(I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_c

    const/16 v0, 0x3f6

    if-eq p1, v0, :cond_b

    const/16 v0, 0x3ff

    if-eq p1, v0, :cond_a

    const/16 v0, 0x40c

    if-eq p1, v0, :cond_9

    const/16 v0, 0x42d

    if-eq p1, v0, :cond_8

    const/16 v0, 0x442

    if-eq p1, v0, :cond_7

    const/16 v0, 0xc4e

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3fc

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3fd

    if-eq p1, v0, :cond_2

    const/16 v0, 0x414

    if-eq p1, v0, :cond_1

    const/16 v0, 0x415

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    invoke-super {p0, p1}, Lcom/unisound/sdk/m;->getOption(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-direct {p0}, Lcom/unisound/sdk/bb;->L()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1}, Lcom/unisound/sdk/bg;->l()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->R()Ljava/util/List;

    move-result-object p1

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->S()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->Q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/an;->U()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->G()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->P()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_8
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-boolean p1, p1, Lcom/unisound/sdk/an;->ax:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_9
    iget-object p1, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_a
    iget-object p1, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->j()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_b
    iget-object p1, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->i()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_c
    iget-object p1, p0, Lcom/unisound/sdk/bb;->G:Ljava/lang/String;

    return-object p1

    :pswitch_d
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->t()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_e
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->s()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_f
    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1}, Lcom/unisound/sdk/bg;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_10
    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1}, Lcom/unisound/sdk/bg;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1}, Lcom/unisound/sdk/bg;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/aa;->n()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/bz;->v()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1}, Lcom/unisound/sdk/bg;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1}, Lcom/unisound/sdk/bg;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_6
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->A()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {p0}, Lcom/unisound/sdk/bb;->z()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->E()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object p1, p0, Lcom/unisound/sdk/bb;->af:Landroid/content/Context;

    invoke-static {p1}, Lcom/unisound/common/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    iget-object p1, p0, Lcom/unisound/sdk/bb;->B:Lcom/unisound/sdk/bz;

    invoke-virtual {p1}, Lcom/unisound/sdk/bz;->w()Lcom/unisound/sdk/bz;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object p1, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {p1}, Lcom/unisound/sdk/aj;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_c
    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1}, Lcom/unisound/sdk/bg;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x406
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x434
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x43a
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x43e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    const-string v2, "version/data"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bb;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-super {p0}, Lcom/unisound/sdk/m;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/unisound/sdk/bb;->H:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-super {p0}, Lcom/unisound/sdk/m;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected init(Ljava/lang/String;)I
    .locals 3

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {v0}, Lcom/unisound/sdk/bg;->m()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unisound/common/o;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/unisound/sdk/bb;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p1, "SpeechUnderStanderInterface : init json is an empty string!"

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    :cond_3
    iget-boolean p1, p0, Lcom/unisound/sdk/bb;->aj:Z

    if-eqz p1, :cond_4

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ht_outer"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unisound/sdk/bb;->ag:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/unisound/sdk/bf;

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ag:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/unisound/sdk/bf;-><init>(Lcom/unisound/sdk/bb;Landroid/os/Looper;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/unisound/sdk/bf;

    iget-object v0, p0, Lcom/unisound/sdk/bb;->af:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/unisound/sdk/bf;-><init>(Lcom/unisound/sdk/bb;Landroid/os/Looper;)V

    :goto_1
    iput-object p1, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/unisound/sdk/bb;->B()I

    move-result p1

    return p1
.end method

.method protected j()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected k()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected m()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {v0}, Lcom/unisound/sdk/aj;->d()V

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected o()V
    .locals 2

    iget-boolean v0, p0, Lcom/unisound/sdk/bb;->F:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unisound/sdk/bb;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/k;->a(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aj;->c(Z)V

    const-string v0, "SpeechUnderstander fixend&netend doRecordingStart cancel"

    invoke-static {v0}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected p()V
    .locals 0

    return-void
.end method

.method public postRecordingStartStatus()V
    .locals 2

    invoke-super {p0}, Lcom/unisound/sdk/m;->postRecordingStartStatus()V

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected q()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected s()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bb;->ah:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/m;->setAudioSource(Lcom/unisound/client/IAudioSource;)I

    move-result p1

    return p1
.end method

.method protected setListener(Lcom/unisound/client/SpeechUnderstanderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bb;->A:Lcom/unisound/client/SpeechUnderstanderListener;

    return-void
.end method

.method protected setOnlineWakeupWord(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lcom/unisound/sdk/cc;

    iget-object v1, p0, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisound/sdk/bb;->y:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/unisound/sdk/cc;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisound/sdk/bb;->K()I

    move-result v1

    if-eqz v1, :cond_0

    const p1, -0xfa01

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cc;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    const p1, -0xf872

    :goto_0
    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cc;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, -0x1

    if-lez v1, :cond_6

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/unisound/sdk/cc;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const p1, -0xf871

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/unisound/common/k;->x:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/cc;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/unisound/sdk/cc;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "status"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_2

    :catch_1
    move-exception v3

    :goto_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_3
    if-nez v2, :cond_5

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v2}, Lcom/unisound/sdk/cc;->a(Ljava/util/Set;)V

    return-object v1

    :cond_5
    move-object p1, v1

    :goto_4
    return-object p1

    :cond_6
    invoke-virtual {v0, v2}, Lcom/unisound/sdk/cc;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected setOption(ILjava/lang/Object;)V
    .locals 4

    const-string v0, ":"

    const/16 v1, 0x3eb

    if-eq p1, v1, :cond_11

    const/16 v1, 0x3ec

    if-eq p1, v1, :cond_10

    const/16 v1, 0x400

    if-eq p1, v1, :cond_f

    const/16 v1, 0x401

    if-eq p1, v1, :cond_e

    const/16 v1, 0x424

    if-eq p1, v1, :cond_d

    const/16 v1, 0x425

    if-eq p1, v1, :cond_c

    const/16 v1, 0x441

    if-eq p1, v1, :cond_b

    const/16 v1, 0x442

    const/4 v2, 0x1

    if-eq p1, v1, :cond_9

    const/16 v1, 0x1770

    if-eq p1, v1, :cond_8

    const/16 v1, 0x1771

    if-eq p1, v1, :cond_7

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string v0, ", success = "

    const-string v1, "SpeechUnderstanderInterface"

    packed-switch p1, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_0
    :try_start_0
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->s(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "set ALREAD_AWPE Error."

    :goto_0
    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :pswitch_1
    :try_start_1
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/unisound/sdk/u;->o(I)Z

    move-result p1

    if-nez p1, :cond_0

    const v2, -0xf835

    invoke-direct {p0, v2}, Lcom/unisound/sdk/bb;->k(I)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wakeup modelId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const-string p1, "set WAKEUP_MODEL_ID Error."

    goto :goto_0

    :pswitch_2
    :try_start_2
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    move-object v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/unisound/sdk/u;->n(I)Z

    move-result p1

    if-nez p1, :cond_1

    const v2, -0xf82d

    invoke-direct {p0, v2}, Lcom/unisound/sdk/bb;->k(I)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set recognize modelId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    const-string p1, "set RECOGNIZE_MODEL_ID Error."

    goto :goto_0

    :pswitch_3
    :try_start_3
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->q(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    const-string p1, "set RECOGNIZE_SCENE Error."

    goto :goto_0

    :pswitch_4
    :try_start_4
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/u;->h(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    const-string p1, "set OneShot VAD back sil time Error."

    goto/16 :goto_0

    :pswitch_5
    :try_start_5
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bb;->l(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-void

    :catch_5
    const-string p1, "set gps Error."

    goto/16 :goto_0

    :pswitch_6
    :try_start_6
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bb;->k(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    return-void

    :catch_6
    const-string p1, "set voiceID Error."

    goto/16 :goto_0

    :pswitch_7
    :try_start_7
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bb;->j(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    return-void

    :catch_7
    const-string p1, "set city Error."

    goto/16 :goto_0

    :pswitch_8
    :try_start_8
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bb;->h(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    return-void

    :catch_8
    const-string p1, "set history Error."

    goto/16 :goto_0

    :pswitch_9
    :try_start_9
    check-cast p2, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    const-string p1, "nlu server set Error."

    if-eqz p2, :cond_2

    :try_start_a
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    aget-object v1, v0, v1

    :try_start_b
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/unisound/sdk/bb;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {v0, p2}, Lcom/unisound/sdk/bg;->d(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    return-void

    :catch_9
    :try_start_c
    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    return-void

    :catch_a
    const-string p1, "set nlu_server_address Error."

    goto/16 :goto_0

    :pswitch_a
    :try_start_d
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bb;->g(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    return-void

    :catch_b
    const-string p1, "set nlu_scenario Error."

    goto/16 :goto_0

    :pswitch_b
    :try_start_e
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bb;->c(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    return-void

    :catch_c
    const-string p1, "set nlu_enable Error."

    goto/16 :goto_0

    :pswitch_c
    :try_start_f
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->m(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bg;->a(Ljava/lang/String;)V

    return-void

    :cond_3
    const p1, -0xf836

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bb;->k(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    return-void

    :catch_d
    const-string p1, "set asr_server_address Error."

    goto/16 :goto_0

    :pswitch_d
    :try_start_10
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bb;->p(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bg;->c(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    return-void

    :catch_e
    const-string p1, "set asr_domain Error."

    goto/16 :goto_0

    :pswitch_e
    :try_start_11
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->n(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bg;->f(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    return-void

    :catch_f
    const-string p1, "set asr_online_oneshot_server_address Error."

    goto/16 :goto_0

    :sswitch_0
    :try_start_12
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/u;->a(F)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    return-void

    :catch_10
    const-string p1, "set wakeup_threshold_value Error."

    goto/16 :goto_0

    :sswitch_1
    :try_start_13
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->l(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    return-void

    :catch_11
    const-string p1, "set setWxServiceEnabled Error."

    goto/16 :goto_0

    :sswitch_2
    :try_start_14
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bb;->q(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bg;->g(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12

    return-void

    :catch_12
    const-string p1, "set asr_subdomain Error."

    goto/16 :goto_0

    :sswitch_3
    :try_start_15
    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/u;->d(Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_13

    goto :goto_1

    :catch_13
    const-string v0, "set setRecognizeFrontVADEnable Error."

    invoke-static {v0}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    :goto_1
    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/m;->setOption(ILjava/lang/Object;)V

    goto/16 :goto_3

    :sswitch_4
    :try_start_16
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->q(Z)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_14

    return-void

    :catch_14
    const-string p1, "set TEMP_RESULT Error."

    goto/16 :goto_0

    :sswitch_5
    :try_start_17
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/u;->h(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_15

    return-void

    :catch_15
    const-string p1, "set MARK_VAD Error."

    goto/16 :goto_0

    :sswitch_6
    :try_start_18
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/u;->e(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_16

    return-void

    :catch_16
    const-string p1, "set SAVE_AFTERVAD_RECORDING_DATA Error."

    goto/16 :goto_0

    :sswitch_7
    :try_start_19
    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/unisound/common/r;->o:Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_17

    goto :goto_2

    :catch_17
    const-string p1, "set DEBUG_POSTLOG Error."

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    :goto_2
    :sswitch_8
    :try_start_1a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/unisound/sdk/bb;->aj:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_18

    return-void

    :catch_18
    const-string p1, "set USE_HANDLERTHREAD Error."

    goto/16 :goto_0

    :sswitch_9
    :try_start_1b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/unisound/common/r;->n:Z
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_19

    return-void

    :catch_19
    const-string p1, "set DEBUG_SAVELOG Error."

    goto/16 :goto_0

    :sswitch_a
    :try_start_1c
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/u;->g(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1a

    return-void

    :catch_1a
    const-string p1, "set Front_reset_cache_byte_time Error."

    goto/16 :goto_0

    :sswitch_b
    :try_start_1d
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/u;->i(I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1b

    return-void

    :catch_1b
    const-string p1, "set OneShot cache time Error."

    goto/16 :goto_0

    :sswitch_c
    :try_start_1e
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bb;->h(I)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_1c

    return-void

    :catch_1c
    const-string p1, "set asr_sampling_rate Error."

    goto/16 :goto_0

    :sswitch_d
    :try_start_1f
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bb;->i(I)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_1d

    return-void

    :catch_1d
    const-string p1, "set asr_net_timeOut Error."

    goto/16 :goto_0

    :sswitch_e
    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1}, Lcom/unisound/sdk/bg;->j()I

    move-result p1

    if-ne p1, v2, :cond_4

    const-string p1, "SpeechUnderstanderInterface: current SDK didn\'t support local function,Please contanct unisound for more function!"

    goto/16 :goto_0

    :cond_4
    :try_start_20
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_5

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "USCMixRecognizer.setOption unkown value "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_5
    iget p2, p0, Lcom/unisound/sdk/bb;->H:I

    if-eq p2, p1, :cond_6

    iput-boolean v1, p0, Lcom/unisound/sdk/bb;->N:Z

    iput p1, p0, Lcom/unisound/sdk/bb;->H:I

    :cond_6
    iget-object p2, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p2, p1}, Lcom/unisound/sdk/bg;->c(I)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_1e

    return-void

    :catch_1e
    const-string p1, "set asr_service_mode Error."

    goto/16 :goto_0

    :cond_7
    :try_start_21
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->t(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_1f

    return-void

    :catch_1f
    const-string p1, "set setUploadUserDataServerUrl Error."

    goto/16 :goto_0

    :cond_8
    :try_start_22
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->s(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_20

    return-void

    :catch_20
    const-string p1, "set UploadUserDataServer Error."

    goto/16 :goto_0

    :cond_9
    :try_start_23
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/unisound/sdk/bb;->A()I

    move-result p2

    if-le p2, v2, :cond_a

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bb;->d(I)I

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p2, p1}, Lcom/unisound/sdk/u;->m(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_21

    :cond_a
    :goto_3
    return-void

    :catch_21
    const-string p1, "set WAKEUP_WORK_ENGINE Error."

    goto/16 :goto_0

    :cond_b
    :try_start_24
    check-cast p2, Ljava/lang/String;

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->f(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_22

    return-void

    :catch_22
    const-string p1, "set ASR_OPT_ACTIVATE_MEMO Error."

    goto/16 :goto_0

    :cond_c
    :try_start_25
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/u;->f(Z)V

    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bg;->b(Z)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_23

    return-void

    :catch_23
    const-string p1, "set asr_vad_enable Error."

    goto/16 :goto_0

    :cond_d
    :try_start_26
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/u;->f(I)V

    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bg;->a(I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_24

    return-void

    :catch_24
    const-string p1, "set asr_front_cache_time Error."

    goto/16 :goto_0

    :cond_e
    :try_start_27
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bb;->n(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_25

    return-void

    :catch_25
    const-string p1, "set nlu_appver Error."

    goto/16 :goto_0

    :cond_f
    :try_start_28
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisound/sdk/bb;->m(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_26

    return-void

    :catch_26
    const-string p1, "set nlu_ver Error."

    goto/16 :goto_0

    :cond_10
    :try_start_29
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/unisound/sdk/bb;->r(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/bg;->b(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_27

    return-void

    :catch_27
    const-string p1, "set asr_language Error."

    goto/16 :goto_0

    :cond_11
    :try_start_2a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/bb;->b(Z)Z

    iget-object p2, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    invoke-virtual {p2, p1}, Lcom/unisound/sdk/bg;->a(Z)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_28

    return-void

    :catch_28
    const-string p1, "set asr_voice_field Error."

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_e
        0x3f6 -> :sswitch_d
        0x414 -> :sswitch_c
        0x42d -> :sswitch_b
        0x42e -> :sswitch_a
        0x42f -> :sswitch_9
        0x430 -> :sswitch_7
        0x431 -> :sswitch_8
        0x432 -> :sswitch_6
        0x433 -> :sswitch_5
        0x434 -> :sswitch_4
        0x437 -> :sswitch_3
        0x43f -> :sswitch_2
        0x447 -> :sswitch_1
        0xc4e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3fc
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x406
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x439
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected start()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v0, v0, Lcom/unisound/sdk/y;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/bb;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected stop()V
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/m;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bb;->D:Lcom/unisound/sdk/v;

    iget-object v0, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {v0}, Lcom/unisound/sdk/aj;->d()V

    return-void
.end method

.method protected uploadUserData(Ljava/util/Map;)V
    .locals 1
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

    iget-object v0, p0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aj;->a(Ljava/util/Map;)V

    return-void
.end method

.method protected w()I
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/m;->w()I

    move-result v0

    return v0
.end method

.method protected x()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/m;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected y()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/m;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected z()I
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/m;->z()I

    move-result v0

    return v0
.end method
