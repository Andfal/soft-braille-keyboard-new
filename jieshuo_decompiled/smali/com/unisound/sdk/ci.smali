.class public Lcom/unisound/sdk/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OPTION_VPR_TYPE_REGISTERED:I = 0x1

.field public static final OPTION_VPR_TYPE_VERIFY:I = 0x2

.field protected static g:Z

.field private static i:Lcom/unisound/common/ad;


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:Lcom/unisound/client/IAudioSource;

.field private E:Lcom/unisound/sdk/cm;

.field private F:Landroid/content/Context;

.field private G:Lcom/unisound/sdk/z;

.field private H:Lcom/unisound/common/d;

.field protected a:Lcom/unisound/sdk/an;

.field protected b:Lcom/unisound/client/ErrorCode;

.field protected c:Lcom/unisound/sdk/aq;

.field protected d:Lcom/unisound/sdk/cg;

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field protected f:Lcom/unisound/sdk/v;

.field private h:Lcom/unisound/client/VoicePrintRecognizerListener;

.field private j:Lcom/unisound/common/aj;

.field private k:Lcom/unisound/sdk/aj;

.field private l:Lcom/unisound/common/al;

.field private m:Lcom/unisound/sdk/a;

.field private n:Landroid/media/AudioManager;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unisound/common/ad;

    invoke-direct {v0}, Lcom/unisound/common/ad;-><init>()V

    sput-object v0, Lcom/unisound/sdk/ci;->i:Lcom/unisound/common/ad;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/sdk/ci;->g:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisound/sdk/an;

    invoke-direct {v0}, Lcom/unisound/sdk/an;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    new-instance v0, Lcom/unisound/client/ErrorCode;

    invoke-direct {v0}, Lcom/unisound/client/ErrorCode;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/ci;->b:Lcom/unisound/client/ErrorCode;

    new-instance v0, Lcom/unisound/sdk/aq;

    invoke-direct {v0}, Lcom/unisound/sdk/aq;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/ci;->c:Lcom/unisound/sdk/aq;

    new-instance v0, Lcom/unisound/sdk/cg;

    invoke-direct {v0}, Lcom/unisound/sdk/cg;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/ci;->d:Lcom/unisound/sdk/cg;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/ci;->e:Ljava/util/List;

    sget-object v0, Lcom/unisound/common/al;->a:Lcom/unisound/common/al;

    iput-object v0, p0, Lcom/unisound/sdk/ci;->l:Lcom/unisound/common/al;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/ci;->f:Lcom/unisound/sdk/v;

    new-instance v1, Lcom/unisound/sdk/a;

    invoke-direct {v1}, Lcom/unisound/sdk/a;-><init>()V

    iput-object v1, p0, Lcom/unisound/sdk/ci;->m:Lcom/unisound/sdk/a;

    const-string v1, "117.121.49.3:10000"

    iput-object v1, p0, Lcom/unisound/sdk/ci;->o:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/unisound/sdk/ci;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/unisound/sdk/ci;->s:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisound/sdk/ci;->t:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/unisound/sdk/ci;->u:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/ci;->v:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/ci;->w:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/ci;->x:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/ci;->y:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/ci;->z:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/ci;->A:Z

    iput-boolean v2, p0, Lcom/unisound/sdk/ci;->B:Z

    iput v2, p0, Lcom/unisound/sdk/ci;->C:I

    iput-object v0, p0, Lcom/unisound/sdk/ci;->D:Lcom/unisound/client/IAudioSource;

    new-instance v0, Lcom/unisound/sdk/cm;

    invoke-direct {v0}, Lcom/unisound/sdk/cm;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/ci;->E:Lcom/unisound/sdk/cm;

    new-instance v0, Lcom/unisound/sdk/ck;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/ck;-><init>(Lcom/unisound/sdk/ci;)V

    iput-object v0, p0, Lcom/unisound/sdk/ci;->G:Lcom/unisound/sdk/z;

    new-instance v0, Lcom/unisound/sdk/cl;

    invoke-direct {v0, p0}, Lcom/unisound/sdk/cl;-><init>(Lcom/unisound/sdk/ci;)V

    iput-object v0, p0, Lcom/unisound/sdk/ci;->H:Lcom/unisound/common/d;

    iput-object p1, p0, Lcom/unisound/sdk/ci;->F:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisound/sdk/ci;->p:Ljava/lang/String;

    iput-object p3, p0, Lcom/unisound/sdk/ci;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {v0, p3}, Lcom/unisound/sdk/an;->p(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    const-string v0, "vprv3.hivoice.cn:80"

    invoke-virtual {p3, v0}, Lcom/unisound/sdk/an;->m(Ljava/lang/String;)Z

    iget-object p3, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {p3, v2}, Lcom/unisound/sdk/an;->e(Z)V

    iget-object p3, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    const/16 v0, 0xc

    invoke-virtual {p3, v0}, Lcom/unisound/sdk/an;->q(I)V

    new-instance p3, Lcom/unisound/sdk/aj;

    iget-object v0, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p3, p1, v0, v1}, Lcom/unisound/sdk/aj;-><init>(Landroid/content/Context;Lcom/unisound/sdk/an;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/unisound/sdk/ci;->k:Lcom/unisound/sdk/aj;

    iget-object v0, p0, Lcom/unisound/sdk/ci;->G:Lcom/unisound/sdk/z;

    invoke-virtual {p3, v0}, Lcom/unisound/sdk/aj;->a(Lcom/unisound/sdk/z;)V

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {p3, p2}, Lcom/unisound/sdk/an;->h(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/unisound/sdk/ci;->m:Lcom/unisound/sdk/a;

    iget-object p3, p0, Lcom/unisound/sdk/ci;->H:Lcom/unisound/common/d;

    invoke-virtual {p2, p3}, Lcom/unisound/sdk/a;->a(Lcom/unisound/common/d;)V

    sget-object p2, Lcom/unisound/sdk/ci;->i:Lcom/unisound/common/ad;

    iget-object p3, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {p2, p3}, Lcom/unisound/common/ad;->a(Lcom/unisound/sdk/an;)V

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/unisound/sdk/ci;->n:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic a(Lcom/unisound/sdk/ci;I)I
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/ci;->C:I

    return p1
.end method

.method static synthetic a(Lcom/unisound/sdk/ci;Lcom/unisound/common/al;)Lcom/unisound/common/al;
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ci;->l:Lcom/unisound/common/al;

    return-object p1
.end method

.method static synthetic a(Lcom/unisound/sdk/ci;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/ci;->p:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/unisound/sdk/ci;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/ci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "}{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v0, "\\}\\{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_3

    const-string v0, "}"

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    goto :goto_1

    :cond_0
    array-length v3, p1

    sub-int/2addr v3, v1

    const-string v4, "{"

    if-ne v2, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    move-object p1, v0

    :cond_3
    array-length v0, p1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rmUselessResult : results = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , result = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VoicePrintRecognizerInterface"

    invoke-static {v1, p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/unisound/sdk/ci;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisound/sdk/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcn/yunzhisheng/asr/JniUscClient;

    invoke-direct {v0}, Lcn/yunzhisheng/asr/JniUscClient;-><init>()V

    iget-object v1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

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

    iput-object p1, p0, Lcom/unisound/sdk/ci;->r:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/unisound/sdk/ci;->h:Lcom/unisound/client/VoicePrintRecognizerListener;

    if-eqz p2, :cond_1

    const/16 v1, 0x10cd

    invoke-static {p1}, Lcom/unisound/client/ErrorCode;->toMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/unisound/client/VoicePrintRecognizerListener;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcn/yunzhisheng/asr/JniUscClient;->e()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SpeechUnderstanderInterface : initUscClient -> mLoginToken = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/unisound/sdk/ci;->r:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unisound/sdk/ci;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/ci;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/unisound/sdk/ci;)Lcom/unisound/sdk/a;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/ci;->m:Lcom/unisound/sdk/a;

    return-object p0
.end method

.method static synthetic d(Lcom/unisound/sdk/ci;)Lcom/unisound/client/VoicePrintRecognizerListener;
    .locals 0

    iget-object p0, p0, Lcom/unisound/sdk/ci;->h:Lcom/unisound/client/VoicePrintRecognizerListener;

    return-object p0
.end method

.method private f()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/sdk/ci;->s:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/ci;->x:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/ci;->y:Z

    return-void
.end method

.method private g()V
    .locals 5

    iget-boolean v0, p0, Lcom/unisound/sdk/ci;->v:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unisound/sdk/ci;->w:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unisound/sdk/ci;->A:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ci;->A:Z

    iget-object v1, p0, Lcom/unisound/sdk/ci;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    const/16 v1, 0x3e80

    invoke-static {v3, v0, v1}, Lcom/unisound/common/as;->a(III)[B

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/unisound/sdk/ci;->e:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    sget-object v0, Lcom/unisound/common/al;->b:Lcom/unisound/common/al;

    iput-object v0, p0, Lcom/unisound/sdk/ci;->l:Lcom/unisound/common/al;

    iget-object v0, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    iget-boolean v1, p0, Lcom/unisound/sdk/ci;->u:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/unisound/sdk/ci;->t:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/unisound/sdk/an;->m(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/ci;->f:Lcom/unisound/sdk/v;

    iget-boolean v0, p0, Lcom/unisound/sdk/ci;->z:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/ci;->n:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/ci;->n:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    :cond_1
    new-instance v0, Lcom/unisound/sdk/x;

    iget-object v1, p0, Lcom/unisound/sdk/ci;->F:Landroid/content/Context;

    iget-object v4, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    iget-object v5, p0, Lcom/unisound/sdk/ci;->k:Lcom/unisound/sdk/aj;

    invoke-direct {v0, v1, v4, v5}, Lcom/unisound/sdk/x;-><init>(Landroid/content/Context;Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;)V

    const-string v1, "usc_vad_thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-boolean v1, p0, Lcom/unisound/sdk/ci;->t:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/unisound/sdk/as;->n()V

    iget-object v1, p0, Lcom/unisound/sdk/ci;->D:Lcom/unisound/client/IAudioSource;

    if-nez v1, :cond_2

    new-instance v1, Lcom/unisound/common/e;

    iget-object v4, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-direct {v1, v4}, Lcom/unisound/common/e;-><init>(Lcn/yunzhisheng/asr/a;)V

    iput-object v1, p0, Lcom/unisound/sdk/ci;->D:Lcom/unisound/client/IAudioSource;

    :cond_2
    iget-object v1, p0, Lcom/unisound/sdk/ci;->k:Lcom/unisound/sdk/aj;

    new-instance v4, Lcom/unisound/sdk/as;

    iget-object v5, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    iget-object v6, p0, Lcom/unisound/sdk/ci;->k:Lcom/unisound/sdk/aj;

    iget-object v7, p0, Lcom/unisound/sdk/ci;->D:Lcom/unisound/client/IAudioSource;

    invoke-direct {v4, v5, v6, v7}, Lcom/unisound/sdk/as;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;Lcom/unisound/client/IAudioSource;)V

    iget-object v5, p0, Lcom/unisound/sdk/ci;->r:Ljava/lang/String;

    invoke-virtual {v1, v4, v3, v5, v0}, Lcom/unisound/sdk/aj;->a(Lcom/unisound/sdk/w;ZLjava/lang/String;Lcom/unisound/sdk/x;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/unisound/sdk/v;

    iget-object v4, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    iget-object v5, p0, Lcom/unisound/sdk/ci;->k:Lcom/unisound/sdk/aj;

    invoke-direct {v1, v4, v5}, Lcom/unisound/sdk/v;-><init>(Lcn/yunzhisheng/asr/a;Lcom/unisound/sdk/ap;)V

    iput-object v1, p0, Lcom/unisound/sdk/ci;->f:Lcom/unisound/sdk/v;

    iget-object v4, p0, Lcom/unisound/sdk/ci;->k:Lcom/unisound/sdk/aj;

    iget-object v5, p0, Lcom/unisound/sdk/ci;->r:Ljava/lang/String;

    invoke-virtual {v4, v1, v3, v5, v0}, Lcom/unisound/sdk/aj;->a(Lcom/unisound/sdk/w;ZLjava/lang/String;Lcom/unisound/sdk/x;)V

    :goto_1
    iput-boolean v2, p0, Lcom/unisound/sdk/ci;->A:Z

    iget-boolean v0, p0, Lcom/unisound/sdk/ci;->v:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/ci;->e:Ljava/util/List;

    :cond_4
    iget-object v0, p0, Lcom/unisound/sdk/ci;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/common/i;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/sdk/ci;->x:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/sdk/ci;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/common/i;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/unisound/sdk/ci;->y:Z

    :cond_5
    return-void
.end method

.method protected a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ci;->j:Lcom/unisound/common/aj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/unisound/common/aj;->a(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected a(Z[BII)V
    .locals 0

    iget-boolean p3, p0, Lcom/unisound/sdk/ci;->v:Z

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    sget-boolean p1, Lcom/unisound/sdk/ci;->g:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/unisound/sdk/ci;->e:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean p1, p0, Lcom/unisound/sdk/ci;->x:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/unisound/sdk/ci;->s:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/unisound/common/i;->a([BLjava/lang/String;)Z

    :cond_3
    return-void
.end method

.method protected a(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/unisound/common/h;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected b()V
    .locals 2

    sget-object v0, Lcom/unisound/common/al;->a:Lcom/unisound/common/al;

    iput-object v0, p0, Lcom/unisound/sdk/ci;->l:Lcom/unisound/common/al;

    iget-object v0, p0, Lcom/unisound/sdk/ci;->k:Lcom/unisound/sdk/aj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/sdk/aj;->c(Z)V

    return-void
.end method

.method protected b(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/unisound/common/h;->c(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected c()V
    .locals 2

    sget-object v0, Lcom/unisound/common/al;->c:Lcom/unisound/common/al;

    iput-object v0, p0, Lcom/unisound/sdk/ci;->l:Lcom/unisound/common/al;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/ci;->f:Lcom/unisound/sdk/v;

    iget-object v0, p0, Lcom/unisound/sdk/ci;->k:Lcom/unisound/sdk/aj;

    invoke-virtual {v0}, Lcom/unisound/sdk/aj;->d()V

    iget-object v0, p0, Lcom/unisound/sdk/ci;->n:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/ci;->n:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object v0, p0, Lcom/unisound/sdk/ci;->n:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    :cond_0
    return-void
.end method

.method protected cancel()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ci;->m:Lcom/unisound/sdk/a;

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->f()V

    invoke-virtual {p0}, Lcom/unisound/sdk/ci;->b()V

    return-void
.end method

.method protected d()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/ci;->m:Lcom/unisound/sdk/a;

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->g()V

    invoke-virtual {p0}, Lcom/unisound/sdk/ci;->a()V

    return-void
.end method

.method protected e()V
    .locals 1

    invoke-direct {p0}, Lcom/unisound/sdk/ci;->g()V

    iget-boolean v0, p0, Lcom/unisound/sdk/ci;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unisound/sdk/ci;->y:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/ci;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/unisound/common/i;->a(Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lcom/unisound/sdk/ci;->f()V

    return-void
.end method

.method protected getOption(I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0x40c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x43a

    if-eq p1, v0, :cond_4

    const/16 v0, 0xfad

    if-eq p1, v0, :cond_3

    const/16 v0, 0xfb1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xfb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1007

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget p1, p0, Lcom/unisound/sdk/ci;->C:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {p1}, Lcom/unisound/sdk/an;->ak()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {p1}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/sdk/ch;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/unisound/sdk/ci;->k:Lcom/unisound/sdk/aj;

    invoke-virtual {p1}, Lcom/unisound/sdk/aj;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {p1}, Lcom/unisound/sdk/an;->U()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lcom/unisound/sdk/ci;->F:Landroid/content/Context;

    invoke-static {p1}, Lcom/unisound/common/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRequestAudio(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/sdk/ci;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/s/get.do?appKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisound/sdk/ci;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&&rid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/unisound/common/ar;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected init(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ci;->B:Z

    if-eqz p1, :cond_1

    const-string v0, ""

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/ci;->E:Lcom/unisound/sdk/cm;

    invoke-virtual {v0}, Lcom/unisound/sdk/cm;->a()Ljava/util/Map;

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

    if-eqz v1, :cond_2

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

    invoke-virtual {p0, v1, v2}, Lcom/unisound/sdk/ci;->setOption(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p1, "SpeechUnderStanderInterface : init json is an empty string!"

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    :cond_2
    new-instance p1, Lcom/unisound/sdk/cj;

    invoke-direct {p1, p0}, Lcom/unisound/sdk/cj;-><init>(Lcom/unisound/sdk/ci;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return p1
.end method

.method protected setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .locals 1

    iput-object p1, p0, Lcom/unisound/sdk/ci;->D:Lcom/unisound/client/IAudioSource;

    if-nez p1, :cond_0

    new-instance p1, Lcom/unisound/common/e;

    iget-object v0, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-direct {p1, v0}, Lcom/unisound/common/e;-><init>(Lcn/yunzhisheng/asr/a;)V

    iput-object p1, p0, Lcom/unisound/sdk/ci;->D:Lcom/unisound/client/IAudioSource;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected setListener(Lcom/unisound/client/VoicePrintRecognizerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/ci;->h:Lcom/unisound/client/VoicePrintRecognizerListener;

    return-void
.end method

.method protected setOption(ILjava/lang/Object;)V
    .locals 2

    const/16 v0, 0x43a

    if-eq p1, v0, :cond_5

    const/16 v0, 0xfa1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/16 v0, 0xfb5

    if-eq p1, v0, :cond_2

    const/16 v0, 0xfa3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xfa4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {p1}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/ch;->a(Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {p1}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/ch;->a(I)V

    return-void

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/sdk/ci;->o:Ljava/lang/String;

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->o(Z)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/unisound/sdk/ci;->k:Lcom/unisound/sdk/aj;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/aj;->c(I)V

    return-void

    :pswitch_5
    check-cast p2, [I

    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    aget v0, p2, v1

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, v0, p2}, Lcom/unisound/sdk/an;->a(II)V

    return-void

    :pswitch_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/unisound/sdk/ci;->z:Z

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->r(I)Z

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->c(Z)V

    return-void

    :pswitch_9
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/sdk/ci;->s:Ljava/lang/String;

    return-void

    :pswitch_a
    check-cast p2, Lcom/unisound/common/aj;

    iput-object p2, p0, Lcom/unisound/sdk/ci;->j:Lcom/unisound/common/aj;

    return-void

    :pswitch_b
    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    sget-object v0, Lcom/unisound/sdk/ci;->i:Lcom/unisound/common/ad;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/unisound/common/ad;->a(Ljava/lang/String;)Lcom/unisound/common/ac;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->a(Lcom/unisound/common/ac;)V

    return-void

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/unisound/sdk/ci;->u:Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->m(Ljava/lang/String;)Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {p1}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/ch;->a(Z)V

    return-void

    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/unisound/sdk/ci;->t:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {p1, v1}, Lcom/unisound/sdk/an;->e(Z)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/an;->q(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0xfa6
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected start(Ljava/lang/String;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/ci;->B:Z

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init error "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, -0xfa01

    invoke-static {p2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/ci;->h:Lcom/unisound/client/VoicePrintRecognizerListener;

    const/16 v0, 0x10cd

    invoke-static {p2}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/unisound/client/VoicePrintRecognizerListener;->onError(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/ch;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/ci;->a:Lcom/unisound/sdk/an;

    invoke-virtual {p1}, Lcom/unisound/sdk/an;->Y()Lcom/unisound/sdk/ch;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/unisound/sdk/ch;->a(I)V

    invoke-virtual {p0}, Lcom/unisound/sdk/ci;->d()V

    return-void
.end method

.method protected stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/unisound/sdk/ci;->c()V

    return-void
.end method
