.class public Ln0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh1/b<",
        "Ln0/f;",
        "Ln0/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https"

    iput-object v0, p0, Ln0/f;->d:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "grant_type"

    const-string v2, "client_credentials"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "client_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "client_secret"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {v0}, Lq1/a;->i(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "://openapi.baidu.com/oauth/2.0/token"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method


# virtual methods
.method public a(Ln0/f;)I
    .locals 5

    invoke-virtual {p1}, Ln0/f;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ln0/f;->a:Ljava/lang/String;

    invoke-static {v1}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "OnlineAuth"

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ln0/f;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ln0/f;->h()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAK="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ln0/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--mSK="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ln0/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--ak2="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--sk2="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ln0/f;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lq1/k;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln0/f;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lq1/k;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mProductId="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln0/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--productId2="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    return v2

    :cond_2
    iget-object p1, p0, Ln0/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln0/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ln0/f;->j()Ln0/f$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ln0/f;

    invoke-virtual {p0, p1}, Ln0/f;->a(Ln0/f;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln0/f;->d:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln0/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln0/f;->a:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln0/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln0/f;->b:Ljava/lang/String;

    return-void
.end method

.method public j()Ln0/f$b;
    .locals 6

    const-string v0, "enter online auth"

    const-string v1, "OnlineAuth"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ln0/f$b;

    invoke-direct {v0}, Ln0/f$b;-><init>()V

    iget-object v2, p0, Ln0/f;->a:Ljava/lang/String;

    invoke-static {v2}, Lq1/k;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Ln0/f;->b:Ljava/lang/String;

    iget-object v3, p0, Ln0/f;->c:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Ln0/f;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Ln0/f;->b:Ljava/lang/String;

    iget-object v3, p0, Ln0/f;->c:Ljava/lang/String;

    iget-object v4, p0, Ln0/f;->d:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Ln0/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lk1/b;

    invoke-direct {v3}, Lk1/b;-><init>()V

    const-string v4, ""

    new-instance v5, Ln0/f$a;

    invoke-direct {v5, p0, v0}, Ln0/f$a;-><init>(Ln0/f;Ln0/f$b;)V

    invoke-virtual {v3, v2, v4, v5}, Lk1/b;->e(Ljava/lang/String;Ljava/lang/String;Lk1/g;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v2

    sget-object v3, Lb1/n;->d0:Lb1/n;

    invoke-virtual {v2, v3}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln0/f$b;->d(Ll0/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v3

    sget-object v4, Lb1/n;->d:Lb1/n;

    invoke-virtual {v3, v4, v2}, Ld1/c;->g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln0/f$b;->d(Ll0/f;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Ln0/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ln0/f$b;->c(Ljava/lang/String;)V

    :goto_0
    const-string v2, "end online auth"

    invoke-static {v1, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ln0/f;->c:Ljava/lang/String;

    return-void
.end method
