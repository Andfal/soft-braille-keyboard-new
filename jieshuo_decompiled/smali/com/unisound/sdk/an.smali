.class public Lcom/unisound/sdk/an;
.super Lcn/yunzhisheng/asr/a;
.source "SourceFile"


# static fields
.field public static final aB:I = 0x1

.field public static final aC:I = 0x2

.field public static final aD:I = 0x3

.field public static final aE:I = 0x4

.field public static final aF:I = 0x1

.field public static final aG:I = 0x4

.field public static final aH:I = 0x8

.field public static final aI:I = 0x5

.field public static final aJ:I = 0x9

.field public static final aK:I = 0xc

.field public static final aL:I = 0xd

.field private static aV:Lcom/unisound/common/a; = null

.field public static ao:Ljava/lang/String; = "http://u.hivoice.cn:8081/casr/upload"

.field public static ap:Ljava/lang/String; = "general"

.field public static aq:Ljava/lang/String; = "poi"

.field public static final ar:Ljava/lang/String; = "en"

.field public static final as:Ljava/lang/String; = "co"

.field public static final at:Ljava/lang/String; = "cn"

.field public static final au:Ljava/lang/String; = "oral"

.field public static final av:Ljava/lang/String; = "cn_en_mix"


# instance fields
.field public aA:Z

.field public aM:I

.field public aN:Z

.field public aO:I

.field aP:I

.field aQ:I

.field aR:I

.field aS:I

.field aT:I

.field public aU:I

.field private aW:Z

.field private aX:Ljava/lang/String;

.field private aY:Ljava/lang/String;

.field private aZ:Ljava/lang/String;

.field public final an:Ljava/lang/String;

.field public aw:Z

.field public ax:Z

.field public ay:Z

.field public az:Z

.field private ba:J

.field private bb:J

.field private bc:I

.field private bd:Ljava/lang/String;

.field private be:Ljava/lang/String;

.field private bf:Ljava/lang/String;

.field private bg:Lcom/unisound/sdk/g;

.field private bh:Z

.field private bi:Lcom/unisound/common/ac;

.field private bj:Lcom/unisound/common/ac;

.field private bk:Lcom/unisound/sdk/bz;

.field private bl:Lcom/unisound/sdk/ch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unisound/common/a;

    sget-object v1, Lcom/unisound/sdk/al;->a:Lcom/unisound/common/a;

    invoke-direct {v0, v1}, Lcom/unisound/common/a;-><init>(Lcom/unisound/common/a;)V

    sput-object v0, Lcom/unisound/sdk/an;->aV:Lcom/unisound/common/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcn/yunzhisheng/asr/a;-><init>()V

    const-string v0, "/USCService/WebApi"

    iput-object v0, p0, Lcom/unisound/sdk/an;->an:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/an;->aw:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/an;->ax:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisound/sdk/an;->ay:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/an;->az:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/an;->aA:Z

    iput-boolean v1, p0, Lcom/unisound/sdk/an;->aW:Z

    iput v0, p0, Lcom/unisound/sdk/an;->aM:I

    iput-boolean v0, p0, Lcom/unisound/sdk/an;->aN:Z

    iput v0, p0, Lcom/unisound/sdk/an;->aO:I

    const-string v2, ""

    iput-object v2, p0, Lcom/unisound/sdk/an;->aX:Ljava/lang/String;

    iput-object v2, p0, Lcom/unisound/sdk/an;->aY:Ljava/lang/String;

    iput-object v2, p0, Lcom/unisound/sdk/an;->aZ:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/unisound/sdk/an;->ba:J

    iput-wide v3, p0, Lcom/unisound/sdk/an;->bb:J

    iput v0, p0, Lcom/unisound/sdk/an;->bc:I

    iput-object v2, p0, Lcom/unisound/sdk/an;->bd:Ljava/lang/String;

    iput v0, p0, Lcom/unisound/sdk/an;->aP:I

    const/16 v3, 0x8

    iput v3, p0, Lcom/unisound/sdk/an;->aQ:I

    iput v1, p0, Lcom/unisound/sdk/an;->aR:I

    const/16 v3, 0xbb8

    iput v3, p0, Lcom/unisound/sdk/an;->aS:I

    const/16 v3, 0x14

    iput v3, p0, Lcom/unisound/sdk/an;->aT:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/unisound/sdk/an;->be:Ljava/lang/String;

    iput-object v2, p0, Lcom/unisound/sdk/an;->bf:Ljava/lang/String;

    new-instance v3, Lcom/unisound/sdk/g;

    invoke-direct {v3}, Lcom/unisound/sdk/g;-><init>()V

    iput-object v3, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    iput-boolean v0, p0, Lcom/unisound/sdk/an;->bh:Z

    new-instance v0, Lcom/unisound/common/ac;

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2}, Lcom/unisound/common/ac;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/an;->bi:Lcom/unisound/common/ac;

    new-instance v0, Lcom/unisound/common/ac;

    invoke-direct {v0, v3, v2}, Lcom/unisound/common/ac;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/unisound/sdk/an;->bj:Lcom/unisound/common/ac;

    new-instance v0, Lcom/unisound/sdk/bz;

    invoke-direct {v0}, Lcom/unisound/sdk/bz;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/an;->bk:Lcom/unisound/sdk/bz;

    new-instance v0, Lcom/unisound/sdk/ch;

    invoke-direct {v0}, Lcom/unisound/sdk/ch;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/an;->bl:Lcom/unisound/sdk/ch;

    iput v1, p0, Lcom/unisound/sdk/an;->aU:I

    return-void
.end method


# virtual methods
.method public U()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/an;->aU:I

    return v0
.end method

.method public V()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/an;->bh:Z

    return v0
.end method

.method public W()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bf:Ljava/lang/String;

    return-object v0
.end method

.method public X()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->be:Ljava/lang/String;

    return-object v0
.end method

.method public Y()Lcom/unisound/sdk/ch;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bl:Lcom/unisound/sdk/ch;

    return-object v0
.end method

.method public Z()Lcom/unisound/sdk/bz;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bk:Lcom/unisound/sdk/bz;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/unisound/sdk/an;->ba:J

    return-void
.end method

.method public a(Lcom/unisound/common/ac;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bi:Lcom/unisound/common/ac;

    invoke-virtual {v0, p1}, Lcom/unisound/common/ac;->a(Lcom/unisound/common/ac;)V

    iget-object v0, p0, Lcom/unisound/sdk/an;->bj:Lcom/unisound/common/ac;

    invoke-virtual {v0, p1}, Lcom/unisound/common/ac;->a(Lcom/unisound/common/ac;)V

    return-void
.end method

.method public a(Lcom/unisound/sdk/ao;)V
    .locals 3

    sget-object v0, Lcom/unisound/sdk/ao;->a:Lcom/unisound/sdk/ao;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    invoke-virtual {p1, v2}, Lcom/unisound/sdk/g;->a(Z)V

    iget-object p1, p0, Lcom/unisound/sdk/an;->bk:Lcom/unisound/sdk/bz;

    invoke-virtual {p1, v2}, Lcom/unisound/sdk/bz;->a(Z)V

    iget-object p1, p0, Lcom/unisound/sdk/an;->bl:Lcom/unisound/sdk/ch;

    invoke-virtual {p1, v1}, Lcom/unisound/sdk/ch;->b(Z)V

    return-void

    :cond_0
    sget-object v0, Lcom/unisound/sdk/ao;->d:Lcom/unisound/sdk/ao;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    invoke-virtual {p1, v1}, Lcom/unisound/sdk/g;->a(Z)V

    iget-object p1, p0, Lcom/unisound/sdk/an;->bl:Lcom/unisound/sdk/ch;

    invoke-virtual {p1, v2}, Lcom/unisound/sdk/ch;->b(Z)V

    iget-object p1, p0, Lcom/unisound/sdk/an;->bk:Lcom/unisound/sdk/bz;

    invoke-virtual {p1, v1}, Lcom/unisound/sdk/bz;->a(Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    invoke-virtual {p1, v2}, Lcom/unisound/sdk/g;->a(Z)V

    iget-object p1, p0, Lcom/unisound/sdk/an;->bk:Lcom/unisound/sdk/bz;

    invoke-virtual {p1, v2}, Lcom/unisound/sdk/bz;->a(Z)V

    iget-object p1, p0, Lcom/unisound/sdk/an;->bl:Lcom/unisound/sdk/ch;

    invoke-virtual {p1, v2}, Lcom/unisound/sdk/ch;->b(Z)V

    return-void
.end method

.method a(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/unisound/sdk/an;->aV:Lcom/unisound/common/a;

    invoke-virtual {v0, p1}, Lcom/unisound/common/a;->b(Ljava/lang/String;)V

    sget-object p1, Lcom/unisound/sdk/an;->aV:Lcom/unisound/common/a;

    invoke-virtual {p1, p2}, Lcom/unisound/common/a;->b(I)V

    return-void
.end method

.method public aa()Lcom/unisound/common/ac;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bi:Lcom/unisound/common/ac;

    return-object v0
.end method

.method public ab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public ac()Lcom/unisound/sdk/g;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    return-object v0
.end method

.method ad()Lcom/unisound/common/a;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/an;->aV:Lcom/unisound/common/a;

    return-object v0
.end method

.method ae()V
    .locals 1

    sget-object v0, Lcom/unisound/sdk/an;->aV:Lcom/unisound/common/a;

    invoke-virtual {v0}, Lcom/unisound/common/a;->e()V

    return-void
.end method

.method public af()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/an;->aW:Z

    return v0
.end method

.method public ag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/an;->ax:Z

    return v0
.end method

.method public ah()Lcom/unisound/common/ac;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bj:Lcom/unisound/common/ac;

    return-object v0
.end method

.method public ai()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/an;->ay:Z

    return v0
.end method

.method public aj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->aY:Ljava/lang/String;

    return-object v0
.end method

.method public ak()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->aZ:Ljava/lang/String;

    return-object v0
.end method

.method public al()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/sdk/an;->ba:J

    return-wide v0
.end method

.method public am()J
    .locals 2

    iget-wide v0, p0, Lcom/unisound/sdk/an;->bb:J

    return-wide v0
.end method

.method public an()J
    .locals 7

    iget-wide v0, p0, Lcom/unisound/sdk/an;->bb:J

    iget-wide v2, p0, Lcom/unisound/sdk/an;->ba:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    return-wide v4
.end method

.method public ao()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/an;->bc:I

    return v0
.end method

.method public ap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bd:Ljava/lang/String;

    return-object v0
.end method

.method public aq()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/cd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/unisound/sdk/an;->bb:J

    return-void
.end method

.method b(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/unisound/sdk/an;->aV:Lcom/unisound/common/a;

    invoke-virtual {v0, p1}, Lcom/unisound/common/a;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/unisound/sdk/an;->aV:Lcom/unisound/common/a;

    invoke-virtual {v0, p2}, Lcom/unisound/common/a;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognizerParams:setDefaultServer server "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",port "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcn/yunzhisheng/asr/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/g;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/an;->bf:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/an;->be:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/an;->aX:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "RecognizerParams:setLanguage error language == null "

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognizerParams:setLanguage in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/unisound/sdk/an;->aV:Lcom/unisound/common/a;

    invoke-static {p1}, Lcom/unisound/sdk/al;->a(Ljava/lang/String;)Lcom/unisound/common/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/common/a;->a(Lcom/unisound/common/a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/an;->ad:Z

    sget-object v0, Lcom/unisound/sdk/an;->ao:Ljava/lang/String;

    sput-object v0, Lcom/unisound/sdk/cd;->a:Ljava/lang/String;

    const-string v0, "en"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "co"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "oral"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cn_en_mix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/unisound/sdk/an;->aV:Lcom/unisound/common/a;

    invoke-virtual {v0}, Lcom/unisound/common/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":9006/casr/upload"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/unisound/sdk/cd;->a:Ljava/lang/String;

    return-void

    :cond_1
    const-string p1, "RecognizerParams:setLanguage do cn"

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/g;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognizerParams:setLanguage do "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/g;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/an;->bh:Z

    return-void
.end method

.method public l(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/g;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/an;->aN:Z

    return-void
.end method

.method public m(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :try_start_0
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-short v2, v2

    aget-object v3, p1, v0

    invoke-virtual {p0, v3, v2}, Lcom/unisound/sdk/an;->a(Ljava/lang/String;I)V

    aget-object p1, p1, v0

    invoke-virtual {p0, p1, v2}, Lcom/unisound/sdk/an;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public n(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/an;->aW:Z

    return-void
.end method

.method public n(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :try_start_0
    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-short v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p1, v0

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/unisound/sdk/cc;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public o(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    if-eqz p1, :cond_0

    const-string p1, "far"

    goto :goto_0

    :cond_0
    const-string p1, "near"

    :goto_0
    invoke-virtual {v0, p1}, Lcom/unisound/sdk/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/an;->aY:Ljava/lang/String;

    return-void
.end method

.method public p(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unisound/sdk/an;->f(Z)V

    return-void
.end method

.method public q(I)V
    .locals 2

    iput p1, p0, Lcom/unisound/sdk/an;->aU:I

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/unisound/sdk/an;->bl:Lcom/unisound/sdk/ch;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/ch;->b(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/unisound/sdk/an;->bl:Lcom/unisound/sdk/ch;

    invoke-virtual {p1, v1}, Lcom/unisound/sdk/ch;->b(Z)V

    :goto_1
    iget-object p1, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    invoke-virtual {p1, v1}, Lcom/unisound/sdk/g;->a(Z)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/unisound/common/k;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/sdk/an;->aZ:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/unisound/sdk/an;->aZ:Ljava/lang/String;

    return-void
.end method

.method public q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisound/sdk/an;->ax:Z

    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/an;->bd:Ljava/lang/String;

    return-void
.end method

.method public r(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/g;->d(Z)V

    return-void
.end method

.method public r(I)Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/g;->a(I)Z

    move-result p1

    return p1
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/an;->bc:I

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/casr/upload"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/unisound/sdk/cd;->a:Ljava/lang/String;

    return-void
.end method

.method public s(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/an;->bg:Lcom/unisound/sdk/g;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/g;->e(Z)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/unisound/sdk/cd;->a:Ljava/lang/String;

    return-void
.end method
