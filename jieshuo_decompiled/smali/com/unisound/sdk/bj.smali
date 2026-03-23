.class public Lcom/unisound/sdk/bj;
.super Lcom/unisound/sdk/bh;
.source "SourceFile"


# instance fields
.field private c:Lcom/unisound/sdk/bn;

.field private d:Lcom/unisound/sdk/bk;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unisound/sdk/bk;)V
    .locals 2

    invoke-virtual {p2}, Lcom/unisound/sdk/bk;->q()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p2}, Lcom/unisound/sdk/bk;->l()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/unisound/sdk/bh;-><init>(ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bj;->c:Lcom/unisound/sdk/bn;

    iput-object p1, p0, Lcom/unisound/sdk/bj;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bk;

    return-void
.end method

.method private a(Lcom/unisound/sdk/bk;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->u()I

    move-result v1

    const/16 v2, 0x32

    const-string v3, ";"

    if-eq v1, v2, :cond_0

    const-string v4, "pit="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->t()I

    move-result v1

    if-eq v1, v2, :cond_1

    const-string v4, "spd="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->v()I

    move-result v1

    if-eq v1, v2, :cond_2

    const-string v2, "vol="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "xiaoli"

    if-eq v1, v2, :cond_3

    const-string v2, "vcn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->n()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_4

    const-string v4, "smt="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->o()I

    move-result v1

    if-eq v1, v2, :cond_5

    const-string v2, "emt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->m()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string v1, "e2c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_7

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private a([B)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bj;->c:Lcom/unisound/sdk/bn;

    if-eqz v0, :cond_0

    array-length v1, p1

    invoke-interface {v0, p1, v1}, Lcom/unisound/sdk/bn;->a([BI)V

    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bj;->c:Lcom/unisound/sdk/bn;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/bn;->a(I)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bj;->c:Lcom/unisound/sdk/bn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bn;->a()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bj;->c:Lcom/unisound/sdk/bn;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bn;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/sdk/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bj;->c:Lcom/unisound/sdk/bn;

    return-void
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/bh;->b()V

    return-void
.end method

.method public b(Lcom/unisound/sdk/bn;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bj;->c:Lcom/unisound/sdk/bn;

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bj;->c:Lcom/unisound/sdk/bn;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 6

    const-string v0, ":"

    invoke-super {p0}, Lcom/unisound/common/f;->run()V

    const-string v1, "TTSOnlineSynthesizerThread run()\uff1asynthesizer start"

    invoke-static {v1}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    new-instance v1, Lcn/yunzhisheng/tts/JniClient;

    invoke-direct {v1}, Lcn/yunzhisheng/tts/JniClient;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bk;

    invoke-virtual {v2}, Lcom/unisound/sdk/bk;->f()Lcom/unisound/common/a;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bk;

    invoke-virtual {v3}, Lcom/unisound/sdk/bk;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/unisound/common/a;->c()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcn/yunzhisheng/tts/JniClient;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTSOnlineSynthesizerThread getTTSData: TTSThread:create error appkey: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bk;

    invoke-virtual {v3}, Lcom/unisound/sdk/bk;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ip:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/unisound/common/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " port: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/unisound/common/a;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    const v0, -0x163dc

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bj;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->b()I

    return-void

    :cond_0
    :try_start_1
    sget-object v2, Lcom/unisound/common/k;->q:Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    sget-object v2, Lcom/unisound/common/k;->x:Ljava/lang/String;

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    sget-object v2, Lcom/unisound/common/k;->x:Ljava/lang/String;

    const/16 v3, 0x16

    invoke-virtual {v1, v3, v2}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/unisound/common/k;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/unisound/common/k;->r:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bk;

    iget v4, v4, Lcom/unisound/sdk/bk;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/unisound/common/k;->t:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "3.0.10.30"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/unisound/common/r;->q:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcn/yunzhisheng/tts/JniClient;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcn/yunzhisheng/tts/JniClient;->d:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTSOnlineSynthesizerThread getTTSData: TTS_OPT_CLIENT_INFO: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    iget-object v0, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bk;

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bj;->a(Lcom/unisound/sdk/bk;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTSOnlineSynthesizerThread getTTSData: ParamString(): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    const/16 v2, 0x68

    invoke-virtual {v1, v2, v0}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->j()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xcb

    invoke-virtual {v1, v2, v0}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->B()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->B()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xcc

    invoke-virtual {v1, v2, v0}, Lcn/yunzhisheng/tts/JniClient;->a(ILjava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/unisound/sdk/bj;->d:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->b()Lcom/unisound/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/unisound/sdk/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcn/yunzhisheng/tts/JniClient;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TTSOnlineSynthesizerThread getTTSData: jni.start error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " audioFormat.toParamString(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unisound/sdk/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " audioFormat.getEncode(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/unisound/sdk/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/unisound/sdk/bj;->b(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->b()I

    return-void

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/unisound/sdk/bj;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/yunzhisheng/tts/JniClient;->b(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTSOnlineSynthesizerThread getTTSData: jni.textPut error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bj;->b(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->b()I

    return-void

    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/unisound/sdk/bj;->i()V

    :goto_0
    const/4 v0, 0x0

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/unisound/sdk/bh;->a()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v1, Lcn/yunzhisheng/tts/JniClient;->m:Lcn/yunzhisheng/tts/a;

    iget v2, v2, Lcn/yunzhisheng/tts/a;->b:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_8

    const/16 v2, 0xa

    if-ge v0, v2, :cond_8

    const-string v2, "TTSOnlineSynthesizerThread run : jni.getResult() before"

    invoke-static {v2}, Lcom/unisound/common/r;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->d()[B

    move-result-object v2

    const-string v4, "TTSOnlineSynthesizerThread run : jni.getResult() after"

    invoke-static {v4}, Lcom/unisound/common/r;->f(Ljava/lang/String;)V

    if-nez v2, :cond_7

    add-int/lit8 v0, v0, 0x1

    iget-object v2, v1, Lcn/yunzhisheng/tts/JniClient;->m:Lcn/yunzhisheng/tts/a;

    iget v2, v2, Lcn/yunzhisheng/tts/a;->c:I

    if-eqz v2, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TTSOnlineSynthesizerThread getTTSData: jni.getResult() error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, v2}, Lcom/unisound/sdk/bj;->a([B)V

    goto :goto_0

    :cond_8
    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->c()I

    invoke-direct {p0}, Lcom/unisound/sdk/bj;->j()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->b()I

    const-string v0, "TTSOnlineSynthesizerThread run()\uff1asynthesizer end"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    return-void

    :goto_3
    invoke-virtual {v1}, Lcn/yunzhisheng/tts/JniClient;->b()I

    throw v0
.end method
