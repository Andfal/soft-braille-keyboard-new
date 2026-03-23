.class public Lk1/h;
.super Lk1/f;
.source "SourceFile"


# instance fields
.field private b:Lh0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh0/a<",
            "[B[B>;"
        }
    .end annotation
.end field

.field private c:Ll1/h;


# direct methods
.method public constructor <init>(Ll1/h;)V
    .locals 1

    invoke-direct {p0}, Lk1/f;-><init>()V

    iput-object p1, p0, Lk1/h;->c:Ll1/h;

    new-instance p1, Lh0/a;

    invoke-direct {p1}, Lh0/a;-><init>()V

    iput-object p1, p0, Lk1/h;->b:Lh0/a;

    new-instance p1, Lh0/b;

    invoke-direct {p1}, Lh0/b;-><init>()V

    iget-object v0, p0, Lk1/h;->b:Lh0/a;

    invoke-virtual {v0, p1}, Lh0/a;->b(Lh0/c;)V

    iget-object p1, p0, Lk1/h;->b:Lh0/a;

    invoke-virtual {p1}, Lh0/a;->a()V

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p1, Lb1/g;->y:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "TtsResponseHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseJSON errNo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lk1/h;->c:Ll1/h;

    invoke-virtual {v1, p1}, Ll1/h;->f(I)V

    if-eqz p1, :cond_0

    sget-object v1, Lb1/g;->z:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->j:Lb1/n;

    invoke-virtual {v1, v2, p1, v0}, Ld1/c;->d(Lb1/n;ILjava/lang/String;)Ll0/f;

    move-result-object p1

    iget-object v0, p0, Lk1/h;->c:Ll1/h;

    invoke-virtual {v0, p1}, Ll1/h;->k(Ll0/f;)V

    goto :goto_2

    :cond_0
    sget-object p1, Lb1/g;->b0:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lk1/h;->c:Ll1/h;

    invoke-virtual {v1, p1}, Ll1/h;->j(Ljava/lang/String;)V

    sget-object p1, Lb1/g;->c0:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lk1/h;->c:Ll1/h;

    invoke-virtual {v1, p1}, Ll1/h;->q(I)V

    sget-object p1, Lb1/g;->C:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lk1/h;->c:Ll1/h;

    invoke-virtual {v1, p1}, Ll1/h;->t(I)V

    sget-object p1, Lb1/g;->D0:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x1f40

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e80

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5dc0

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lk1/h;->c:Ll1/h;

    sget-object v1, Lb1/k;->e:Lb1/k;

    :goto_0
    invoke-virtual {v0, v1}, Ll1/h;->i(Lb1/k;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lk1/h;->c:Ll1/h;

    sget-object v1, Lb1/k;->d:Lb1/k;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lk1/h;->c:Ll1/h;

    sget-object v1, Lb1/k;->c:Lb1/k;

    goto :goto_0

    :goto_1
    invoke-static {}, Lt0/d;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lt0/d;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method private h([B)V
    .locals 5

    const-string v0, "utf-8"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "--BD**TTS++LIB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lq1/a;->g([B[BI)I

    move-result v3

    if-gez v3, :cond_0

    :goto_1
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p1

    sget-object v0, Lb1/n;->o:Lb1/n;

    invoke-virtual {p1, v0}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object p1

    iget-object v0, p0, Lk1/h;->c:Ll1/h;

    invoke-virtual {v0, p1}, Ll1/h;->k(Ll0/f;)V

    return-void

    :cond_0
    if-eqz v1, :cond_1

    array-length v2, v1

    add-int/2addr v2, v3

    invoke-static {p1, v1, v2}, Lq1/a;->g([B[BI)I

    move-result v2

    :cond_1
    if-gez v2, :cond_2

    goto :goto_1

    :cond_2
    array-length v4, v1

    add-int/2addr v3, v4

    invoke-static {p1, v3, v2}, Lq1/a;->d([BII)[B

    move-result-object v3

    :try_start_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v4}, Lk1/h;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    array-length v0, v1

    add-int/2addr v0, v2

    invoke-static {p1, v1, v0}, Lq1/a;->g([B[BI)I

    move-result v0

    if-ltz v0, :cond_3

    array-length v1, v1

    add-int/2addr v2, v1

    invoke-static {p1, v2, v0}, Lq1/a;->d([BII)[B

    move-result-object p1

    iget-object v0, p0, Lk1/h;->c:Ll1/h;

    invoke-virtual {v0, p1}, Ll1/h;->m([B)V

    :cond_3
    return-void
.end method

.method private i([B)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lk1/h;->g(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public d(ILjava/util/Map;Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    const-string p1, "application/json"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p4}, Lk1/h;->i([B)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p4}, Lk1/h;->h([B)V

    :goto_0
    return-void
.end method

.method public e(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onFailure error = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TtsResponseHandler"

    invoke-static {p3, p2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p2

    sget-object p3, Lb1/n;->e:Lb1/n;

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p1, p4, p5}, Ld1/c;->e(Lb1/n;ILjava/lang/String;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    iget-object p2, p0, Lk1/h;->c:Ll1/h;

    invoke-virtual {p2, p1}, Ll1/h;->k(Ll0/f;)V

    return-void
.end method
