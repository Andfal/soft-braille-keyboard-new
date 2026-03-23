.class public Lcom/unisound/sdk/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OPT_SET_FIX_RESULT_NLU:I = 0x5

.field public static final OPT_SET_FIX_RESULT_NLU_CONFIGPATH:I = 0x6

.field public static final SET_USER_DATA_ERROR:I = -0x64

.field public static final SET_USER_DATA_OK:I = 0x0

.field public static final SET_USER_DATA_WARNING:I = -0xc8


# instance fields
.field protected a:Lcom/unisound/sdk/j;

.field protected b:Lcom/unisound/sdk/u;

.field protected c:Lcom/unisound/sdk/v;

.field protected d:Lcom/unisound/sdk/x;

.field protected e:Lcom/unisound/sdk/k;

.field protected f:Lcom/unisound/sdk/y;

.field protected g:Lcom/unisound/common/aj;

.field protected h:Lcom/unisound/sdk/l;

.field protected i:Lcom/unisound/sdk/a;

.field protected j:Lcom/unisound/sdk/cg;

.field protected k:Lcom/unisound/sdk/aq;

.field protected l:Landroid/content/Context;

.field protected m:F

.field public mLooper:Landroid/os/Looper;

.field public mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

.field protected n:Landroid/os/HandlerThread;

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:Lcom/unisound/common/g;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Lcom/unisound/client/IAudioSource;

.field private v:Z

.field private w:Lcom/unisound/sdk/r;

.field private x:Lcom/unisound/common/d;

.field private y:Lcom/unisound/sdk/af;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/m;->o:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/m;->p:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisound/sdk/m;->q:Z

    new-instance v2, Lcom/unisound/sdk/j;

    invoke-direct {v2}, Lcom/unisound/sdk/j;-><init>()V

    iput-object v2, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    new-instance v2, Lcom/unisound/sdk/u;

    invoke-direct {v2}, Lcom/unisound/sdk/u;-><init>()V

    iput-object v2, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/v;

    iput-object v2, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/x;

    new-instance v3, Lcom/unisound/common/g;

    invoke-direct {v3}, Lcom/unisound/common/g;-><init>()V

    iput-object v3, p0, Lcom/unisound/sdk/m;->r:Lcom/unisound/common/g;

    new-instance v3, Lcom/unisound/sdk/y;

    invoke-direct {v3}, Lcom/unisound/sdk/y;-><init>()V

    iput-object v3, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    new-instance v3, Lcom/unisound/sdk/l;

    invoke-direct {v3}, Lcom/unisound/sdk/l;-><init>()V

    iput-object v3, p0, Lcom/unisound/sdk/m;->h:Lcom/unisound/sdk/l;

    new-instance v3, Lcom/unisound/sdk/a;

    invoke-direct {v3}, Lcom/unisound/sdk/a;-><init>()V

    iput-object v3, p0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/a;

    new-instance v3, Lcom/unisound/sdk/cg;

    invoke-direct {v3}, Lcom/unisound/sdk/cg;-><init>()V

    iput-object v3, p0, Lcom/unisound/sdk/m;->j:Lcom/unisound/sdk/cg;

    new-instance v3, Lcom/unisound/sdk/aq;

    invoke-direct {v3}, Lcom/unisound/sdk/aq;-><init>()V

    iput-object v3, p0, Lcom/unisound/sdk/m;->k:Lcom/unisound/sdk/aq;

    iput-boolean v0, p0, Lcom/unisound/sdk/m;->s:Z

    const/high16 v3, -0x3f000000    # -8.0f

    iput v3, p0, Lcom/unisound/sdk/m;->m:F

    const-string v3, ""

    iput-object v3, p0, Lcom/unisound/sdk/m;->t:Ljava/lang/String;

    iput-object v2, p0, Lcom/unisound/sdk/m;->u:Lcom/unisound/client/IAudioSource;

    iput-boolean v0, p0, Lcom/unisound/sdk/m;->v:Z

    new-instance v3, Lcom/unisound/sdk/o;

    invoke-direct {v3, p0}, Lcom/unisound/sdk/o;-><init>(Lcom/unisound/sdk/m;)V

    iput-object v3, p0, Lcom/unisound/sdk/m;->x:Lcom/unisound/common/d;

    new-instance v3, Lcom/unisound/sdk/p;

    invoke-direct {v3, p0}, Lcom/unisound/sdk/p;-><init>(Lcom/unisound/sdk/m;)V

    iput-object v3, p0, Lcom/unisound/sdk/m;->y:Lcom/unisound/sdk/af;

    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "ht_NetAndFix"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/unisound/sdk/m;->n:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v3, p0, Lcom/unisound/sdk/m;->n:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/unisound/sdk/m;->mLooper:Landroid/os/Looper;

    new-instance v3, Lcom/unisound/sdk/k;

    iget-object v4, p0, Lcom/unisound/sdk/m;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, v4}, Lcom/unisound/sdk/k;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    iget-object v3, p0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/a;

    iget-object v4, p0, Lcom/unisound/sdk/m;->x:Lcom/unisound/common/d;

    invoke-virtual {v3, v4}, Lcom/unisound/sdk/a;->a(Lcom/unisound/common/d;)V

    iput-object p1, p0, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    new-instance v3, Lcom/unisound/sdk/bg;

    invoke-direct {v3}, Lcom/unisound/sdk/bg;-><init>()V

    iput-object v3, p0, Lcom/unisound/sdk/m;->mSpeechUnderstanderParams:Lcom/unisound/sdk/bg;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/YunZhiSheng/asrfix"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v4, v3}, Lcom/unisound/sdk/y;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/YunZhiSheng/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/unisound/sdk/j;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/unisound/sdk/m;->r:Lcom/unisound/common/g;

    invoke-virtual {v3, p1}, Lcom/unisound/common/g;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/u;->e(Z)V

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    const/16 v0, 0xbb8

    const/16 v3, 0x3e8

    invoke-virtual {p1, v0, v3}, Lcom/unisound/sdk/u;->a(II)V

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->h(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    iget-object p2, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/k;->a(Lcom/unisound/sdk/u;)V

    new-instance p1, Lcom/unisound/sdk/r;

    invoke-direct {p1, p0, v2}, Lcom/unisound/sdk/r;-><init>(Lcom/unisound/sdk/m;Lcom/unisound/sdk/n;)V

    iput-object p1, p0, Lcom/unisound/sdk/m;->w:Lcom/unisound/sdk/r;

    iget-object p2, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {p2, p1}, Lcom/unisound/sdk/k;->a(Lcom/unisound/sdk/am;)V

    sput v1, Lcom/unisound/sdk/y;->m:I

    new-instance p1, Lcom/unisound/sdk/n;

    invoke-direct {p1, p0}, Lcom/unisound/sdk/n;-><init>(Lcom/unisound/sdk/m;)V

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/m;->a(Lcom/unisound/common/z;)V

    return-void
.end method

.method private B()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/u;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/u;->a(Z)V

    iput-boolean v1, p0, Lcom/unisound/sdk/m;->s:Z

    return-void
.end method

.method protected static c(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/unisound/sdk/y;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected A()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->y()I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v1, p0, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/y;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, -0x64

    return p1

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v1, p1}, Lcom/unisound/sdk/y;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v2, p2, p3}, Lcom/unisound/sdk/y;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {p3, p1}, Lcom/unisound/sdk/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadModel path = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , code = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "FixRecognizerInterface"

    invoke-static {p3, p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    return p2
.end method

.method protected a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I
    .locals 7

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v1, p0, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/y;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safeLoadMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v1, v1, Lcom/unisound/sdk/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v2, v0, Lcom/unisound/sdk/y;->a:Ljava/lang/String;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/unisound/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object p2, p0, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/y;->b(Landroid/content/Context;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected a()Lcom/unisound/sdk/an;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/k;->a(Z)V

    :cond_0
    return-void
.end method

.method protected a(II)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/u;->a(II)V

    return-void
.end method

.method protected a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->g:Lcom/unisound/common/aj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/unisound/common/aj;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected a(Lcn/yunzhisheng/asr/VAD;)V
    .locals 0

    iget-object p1, p0, Lcom/unisound/sdk/m;->h:Lcom/unisound/sdk/l;

    invoke-virtual {p1}, Lcom/unisound/sdk/c;->c()V

    return-void
.end method

.method protected a(Lcom/unisound/common/b;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/a;->a(Lcom/unisound/common/b;)V

    return-void
.end method

.method protected a(Lcom/unisound/common/z;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->k:Lcom/unisound/sdk/aq;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aq;->a(Lcom/unisound/common/z;)V

    return-void
.end method

.method protected a(Lcom/unisound/sdk/t;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->h:Lcom/unisound/sdk/l;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/c;->a(Lcom/unisound/sdk/d;)V

    return-void
.end method

.method protected a(Ljava/lang/String;ZI)V
    .locals 0

    return-void
.end method

.method protected a(Z[BII)V
    .locals 0

    iget-boolean p1, p0, Lcom/unisound/sdk/m;->p:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/m;->o:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    array-length p1, p2

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    const/4 p1, 0x0

    aget-byte p1, p2, p1

    const/16 p3, 0x63

    if-eq p1, p3, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/unisound/common/i;->a([BLjava/lang/String;)Z

    :cond_2
    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/unisound/common/h;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected a(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected a(Ljava/lang/String;Z)Z
    .locals 2

    const-string v0, "/YunZhiSheng/asrfix"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/y;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v0, p0, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    const-string v1, "ml"

    invoke-virtual {p1, v0, v1}, Lcom/unisound/sdk/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v0, p0, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/unisound/sdk/y;->a(Landroid/content/Context;Z)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "USCFixRecognizer.initByModelDir init data fail!"

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method protected a(Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "command"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected b()V
    .locals 2

    new-instance v0, Lcom/unisound/sdk/r;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/unisound/sdk/r;-><init>(Lcom/unisound/sdk/m;Lcom/unisound/sdk/n;)V

    iput-object v0, p0, Lcom/unisound/sdk/m;->w:Lcom/unisound/sdk/r;

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    iget-object v1, p0, Lcom/unisound/sdk/m;->y:Lcom/unisound/sdk/af;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/k;->a(Lcom/unisound/sdk/af;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    iget-object v1, p0, Lcom/unisound/sdk/m;->w:Lcom/unisound/sdk/r;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/k;->a(Lcom/unisound/sdk/am;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/k;->a(Lcom/unisound/sdk/u;)V

    return-void
.end method

.method protected b(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->h:Lcom/unisound/sdk/l;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/c;->a(I)V

    return-void
.end method

.method protected b(II)V
    .locals 0

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Lcom/unisound/sdk/m;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/v;

    iput-object v0, p0, Lcom/unisound/sdk/m;->d:Lcom/unisound/sdk/x;

    iget-boolean v0, p0, Lcom/unisound/sdk/m;->q:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/unisound/sdk/as;->n()V

    iget-object v0, p0, Lcom/unisound/sdk/m;->u:Lcom/unisound/client/IAudioSource;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisound/common/e;

    iget-object v1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-direct {v0, v1}, Lcom/unisound/common/e;-><init>(Lcn/yunzhisheng/asr/a;)V

    iput-object v0, p0, Lcom/unisound/sdk/m;->u:Lcom/unisound/client/IAudioSource;

    :cond_0
    const-string v0, "FixRecognizerInterface recognizer start"

    invoke-static {v0}, Lcom/unisound/common/r;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    new-instance v1, Lcom/unisound/sdk/as;

    iget-object v2, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object v3, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    iget-object v4, p0, Lcom/unisound/sdk/m;->u:Lcom/unisound/client/IAudioSource;

    invoke-direct {v1, v2, v3, v4}, Lcom/unisound/sdk/as;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;Lcom/unisound/client/IAudioSource;)V

    new-instance v2, Lcom/unisound/sdk/x;

    iget-object v3, p0, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    iget-object v4, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object v5, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-direct {v2, v3, v4, v5}, Lcom/unisound/sdk/x;-><init>(Landroid/content/Context;Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/unisound/sdk/k;->a(Ljava/lang/String;Lcom/unisound/sdk/w;Lcom/unisound/sdk/x;)V

    :cond_1
    iget-boolean p1, p0, Lcom/unisound/sdk/m;->p:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/unisound/sdk/m;->o:Ljava/util/ArrayList;

    :cond_2
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/i;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/u;->a(Z)V

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/i;->c(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/unisound/sdk/m;->s:Z

    :cond_3
    return-void
.end method

.method protected b(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method protected b(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/unisound/common/h;->c(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected c(I)V
    .locals 0

    return-void
.end method

.method protected c()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->q()Z

    move-result v0

    return v0
.end method

.method protected cancel()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/m;->w:Lcom/unisound/sdk/r;

    iget-object v1, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v1, v0}, Lcom/unisound/sdk/k;->a(Lcom/unisound/sdk/am;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/k;->a(Z)V

    return-void
.end method

.method protected d(I)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/k;->c(I)I

    move-result p1

    return p1
.end method

.method protected d()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected e(I)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/k;->d(I)I

    move-result p1

    return p1
.end method

.method protected e()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->p()Z

    move-result v0

    return v0
.end method

.method protected f()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v0}, Lcom/unisound/sdk/y;->d()Z

    move-result v0

    return v0
.end method

.method protected g()Z
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v1, p0, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/y;->e(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected getOption(I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x41f

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->w()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x420

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->h()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v0, 0x3f2

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->s()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x3f3

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->t()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v0, 0x3f7

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->L()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    const/16 v0, 0x3f8

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {p1}, Lcom/unisound/sdk/u;->M()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unisound/common/af;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcn/yunzhisheng/asrfix/JniAsrFix;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected j()V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 0

    return-void
.end method

.method protected l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected m()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v0}, Lcom/unisound/sdk/u;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unisound/sdk/m;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v0}, Lcom/unisound/sdk/u;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/i;->a(Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/unisound/sdk/m;->B()V

    return-void
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method protected o()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v0}, Lcom/unisound/sdk/u;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->r:Lcom/unisound/common/g;

    invoke-virtual {v0}, Lcom/unisound/common/g;->a()Z

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/m;->h:Lcom/unisound/sdk/l;

    invoke-virtual {v0}, Lcom/unisound/sdk/c;->b()V

    return-void
.end method

.method protected p()V
    .locals 0

    return-void
.end method

.method public postRecordingStartStatus()V
    .locals 0

    return-void
.end method

.method protected q()V
    .locals 0

    return-void
.end method

.method protected r()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    invoke-virtual {v0}, Lcom/unisound/sdk/y;->g()V

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->o()V

    return-void
.end method

.method protected s()V
    .locals 0

    return-void
.end method

.method protected setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .locals 1

    iput-object p1, p0, Lcom/unisound/sdk/m;->u:Lcom/unisound/client/IAudioSource;

    if-nez p1, :cond_0

    new-instance p1, Lcom/unisound/common/e;

    iget-object v0, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-direct {p1, v0}, Lcom/unisound/common/e;-><init>(Lcn/yunzhisheng/asr/a;)V

    iput-object p1, p0, Lcom/unisound/sdk/m;->u:Lcom/unisound/client/IAudioSource;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected setOption(ILjava/lang/Object;)V
    .locals 3

    const-string v0, ""

    const/16 v1, 0x41b

    if-ne v1, p1, :cond_0

    :try_start_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    iput-boolean p1, p2, Lcom/unisound/sdk/j;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    const-string p1, "set asr_result_filter Error."

    :goto_0
    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v1, 0x41d

    if-ne v1, p1, :cond_1

    :try_start_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/unisound/sdk/m;->q:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const-string p1, "set asr_recording_enabled Error."

    goto :goto_0

    :cond_1
    const/16 v1, 0x41e

    const-string v2, "set asr_print_log Error."

    if-ne v1, p1, :cond_2

    :try_start_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/unisound/common/r;->k:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    invoke-static {v2}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v1, 0x427

    if-ne v1, p1, :cond_3

    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/unisound/common/r;->l:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-void

    :catch_3
    invoke-static {v2}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v1, 0x41f

    if-eq v1, p1, :cond_1d

    const/16 v1, 0x422

    if-ne v1, p1, :cond_4

    :try_start_4
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/u;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-void

    :catch_4
    const-string p1, "set asr_save_recording_data Error."

    goto :goto_0

    :cond_4
    const/16 v1, 0x423

    if-ne v1, p1, :cond_5

    :try_start_5
    iget-object p1, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lcom/unisound/sdk/j;->c:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-void

    :catch_5
    const-string p1, "set asr_result_json Error."

    goto :goto_0

    :cond_5
    const/16 v1, 0x3f2

    if-ne v1, p1, :cond_6

    :try_start_6
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/u;->d(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    return-void

    :catch_6
    const-string p1, "set asr_vad_timeout_frontsil Error."

    goto :goto_0

    :cond_6
    const/16 v1, 0x3f3

    if-ne v1, p1, :cond_7

    :try_start_7
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/u;->e(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    return-void

    :catch_7
    const-string p1, "set asr_vad_timeout_backsil Error."

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x5

    if-ne v1, p1, :cond_8

    :try_start_8
    iget-object p1, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lcom/unisound/sdk/j;->f:Z

    iget-object p1, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    iget-boolean p2, p1, Lcom/unisound/sdk/j;->f:Z

    if-eqz p2, :cond_1d

    iget-object p2, p1, Lcom/unisound/sdk/j;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    if-nez p2, :cond_1d

    new-instance p2, Lcn/yunzhisheng/nlu/OfflineNlu;

    invoke-direct {p2}, Lcn/yunzhisheng/nlu/OfflineNlu;-><init>()V

    iput-object p2, p1, Lcom/unisound/sdk/j;->h:Lcn/yunzhisheng/nlu/OfflineNlu;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    return-void

    :catch_8
    const-string p1, "set asr_fix_result_nlu Error."

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x6

    if-ne v1, p1, :cond_9

    :try_start_9
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/unisound/sdk/m;->t:Ljava/lang/String;

    iget-object v1, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    check-cast p2, Ljava/lang/String;

    iput-object p2, v1, Lcom/unisound/sdk/j;->g:Ljava/lang/String;

    iget-object p2, v1, Lcom/unisound/sdk/j;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    if-eqz p2, :cond_1d

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/unisound/sdk/m;->a:Lcom/unisound/sdk/j;

    iget-object p1, p1, Lcom/unisound/sdk/j;->h:Lcn/yunzhisheng/nlu/OfflineNlu;

    iget-object p2, p0, Lcom/unisound/sdk/m;->t:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcn/yunzhisheng/nlu/OfflineNlu;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    return-void

    :catch_9
    const-string p1, "set asr_fix_result_nlu_configpath Error."

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x426

    if-ne v0, p1, :cond_a

    :try_start_a
    iget-object p1, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/k;->a(Ljava/lang/Boolean;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    return-void

    :catch_a
    const-string p1, "set asr_print_engine_log Error."

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0x1388

    if-ne v0, p1, :cond_b

    :try_start_b
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/u;->b(Z)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    return-void

    :catch_b
    const-string p1, "set setFarFeildEnabled Error. 5000 "

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0x1389

    if-ne v0, p1, :cond_c

    :try_start_c
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->x:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    return-void

    :catch_c
    const-string p1, "set min back energy Error. 5001 "

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x138a

    if-ne v0, p1, :cond_d

    :try_start_d
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->y:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    return-void

    :catch_d
    const-string p1, "set min back energy higher TH Error. 5002 "

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0x138b

    if-ne v0, p1, :cond_e

    :try_start_e
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->z:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    return-void

    :catch_e
    const-string p1, "set pitch threshold Error. 5003 "

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0x138c

    if-ne v0, p1, :cond_f

    :try_start_f
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->A:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    return-void

    :catch_f
    const-string p1, "set pitch persist length for start usage Error. 5004 "

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x138d

    if-ne v0, p1, :cond_10

    :try_start_10
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->B:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    return-void

    :catch_10
    const-string p1, "set pitch drop length for end usage Error. 5005 "

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x138e

    if-ne v0, p1, :cond_11

    :try_start_11
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->C:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    return-void

    :catch_11
    const-string p1, "set high freq energy vs low freq energy Error. 5006 "

    goto/16 :goto_0

    :cond_11
    const/16 v0, 0x138f

    if-ne v0, p1, :cond_12

    :try_start_12
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->D:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    return-void

    :catch_12
    const-string p1, "set min signal length for speech Error. 5007 "

    goto/16 :goto_0

    :cond_12
    const/16 v0, 0x1390

    if-ne v0, p1, :cond_13

    :try_start_13
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->E:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    return-void

    :catch_13
    const-string p1, "set max silence length Error. 5008 "

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x1391

    if-ne v0, p1, :cond_14

    :try_start_14
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->F:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    return-void

    :catch_14
    const-string p1, "set max single point max in spectral Error. 5009 "

    goto/16 :goto_0

    :cond_14
    const/16 v0, 0x1392

    if-ne v0, p1, :cond_15

    :try_start_15
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->G:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    return-void

    :catch_15
    const-string p1, "set gloable noise to signal value threshold Error. 5010 "

    goto/16 :goto_0

    :cond_15
    const/16 v0, 0x1393

    if-ne v0, p1, :cond_16

    :try_start_16
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->H:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    return-void

    :catch_16
    const-string p1, "set gloable noise to signal value threshold for vowel part Error. 5011 "

    goto/16 :goto_0

    :cond_16
    const/16 v0, 0x1394

    if-ne v0, p1, :cond_17

    :try_start_17
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->I:Lcn/yunzhisheng/asr/c;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/c;->a(F)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    return-void

    :catch_17
    const-string p1, "set voice freq domain prob Th Error. 5012 "

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x1395

    if-ne v0, p1, :cond_18

    :try_start_18
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->J:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    return-void

    :catch_18
    const-string p1, "set use pitch or peak Error. 5013 "

    goto/16 :goto_0

    :cond_18
    const/16 v0, 0x1396

    if-ne v0, p1, :cond_19

    :try_start_19
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->K:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    return-void

    :catch_19
    const-string p1, "set noise to y ratio, start point in freq domain Error. 5014 "

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x1399

    if-ne v0, p1, :cond_1a

    :try_start_1a
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    iget-object p1, p1, Lcom/unisound/sdk/u;->L:Lcn/yunzhisheng/asr/d;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcn/yunzhisheng/asr/d;->a(I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    return-void

    :catch_1a
    const-string p1, "set PITCHLASTTH Error. 5017 "

    goto/16 :goto_0

    :cond_1a
    const/16 v0, 0x139d

    if-ne v0, p1, :cond_1b

    :try_start_1b
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->g(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    return-void

    :catch_1b
    const-string p1, "set activate info Error."

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0x3f8

    if-ne v0, p1, :cond_1c

    :try_start_1c
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/u;->b(F)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    return-void

    :catch_1c
    const-string p1, "set vad musicth info Error!"

    goto/16 :goto_0

    :cond_1c
    const/16 v0, 0x3f7

    if-ne v0, p1, :cond_1d

    :try_start_1d
    iget-object p1, p0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/u;->k(Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1d

    return-void

    :catch_1d
    const-string p1, "set vad detectMusic Error!"

    goto/16 :goto_0

    :cond_1d
    :goto_1
    return-void
.end method

.method protected start()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v0, v0, Lcom/unisound/sdk/y;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unisound/sdk/m;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected stop()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/m;->c:Lcom/unisound/sdk/v;

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->b()V

    iget-boolean v0, p0, Lcom/unisound/sdk/m;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->f()V

    :cond_0
    return-void
.end method

.method protected t()V
    .locals 3

    const-string v0, "FixRecognizerInterFace : createJniAsrFix"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/m;->f:Lcom/unisound/sdk/y;

    iget-object v1, p0, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    const-string v2, "ml"

    invoke-virtual {v0, v1, v2}, Lcom/unisound/sdk/y;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->r()V

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    new-instance v1, Lcom/unisound/sdk/q;

    invoke-direct {v1, p0}, Lcom/unisound/sdk/q;-><init>(Lcom/unisound/sdk/m;)V

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/k;->a(Lcom/unisound/sdk/s;)V

    return-void
.end method

.method protected u()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->s()I

    move-result v0

    return v0
.end method

.method protected v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->t()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected w()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->u()I

    move-result v0

    return v0
.end method

.method protected x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected z()I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v0}, Lcom/unisound/sdk/k;->x()I

    move-result v0

    return v0
.end method
