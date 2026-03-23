.class public final Ld3/Exchange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld3/Exchange$a;,
        Ld3/Exchange$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Ld3/e;

.field private final c:Ld3/d;

.field private final d:Ly2/s;

.field private final e:Ld3/c;

.field private final f:Le3/d;


# direct methods
.method public constructor <init>(Ld3/d;Ly2/s;Ld3/c;Le3/d;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finder"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "codec"

    invoke-static {p4, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/Exchange;->c:Ld3/d;

    iput-object p2, p0, Ld3/Exchange;->d:Ly2/s;

    iput-object p3, p0, Ld3/Exchange;->e:Ld3/c;

    iput-object p4, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {p4}, Le3/d;->getConnection()Ld3/e;

    move-result-object p1

    iput-object p1, p0, Ld3/Exchange;->b:Ld3/e;

    return-void
.end method

.method private final t(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Ld3/Exchange;->e:Ld3/c;

    invoke-virtual {v0, p1}, Ld3/c;->h(Ljava/io/IOException;)V

    iget-object v0, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {v0}, Le3/d;->getConnection()Ld3/e;

    move-result-object v0

    iget-object v1, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {v0, v1, p1}, Ld3/e;->H(Ld3/d;Ljava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public final a(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/io/IOException;",
            ">(JZZTE;)TE;"
        }
    .end annotation

    if-eqz p5, :cond_0

    invoke-direct {p0, p5}, Ld3/Exchange;->t(Ljava/io/IOException;)V

    :cond_0
    if-eqz p4, :cond_2

    iget-object v0, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object v1, p0, Ld3/Exchange;->c:Ld3/d;

    if-eqz p5, :cond_1

    invoke-virtual {v0, v1, p5}, Ly2/s;->r(Ly2/Call;Ljava/io/IOException;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1, p1, p2}, Ly2/s;->p(Ly2/Call;J)V

    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    if-eqz p5, :cond_3

    iget-object p1, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object p2, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {p1, p2, p5}, Ly2/s;->w(Ly2/Call;Ljava/io/IOException;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object v1, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {v0, v1, p1, p2}, Ly2/s;->u(Ly2/Call;J)V

    :cond_4
    :goto_1
    iget-object p1, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {p1, p0, p4, p3, p5}, Ld3/d;->t(Ld3/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {v0}, Le3/d;->cancel()V

    return-void
.end method

.method public final c(Ly2/Request;Z)Lm3/a0;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p2, p0, Ld3/Exchange;->a:Z

    invoke-virtual {p1}, Ly2/Request;->a()Ly2/b0;

    move-result-object p2

    invoke-static {p2}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ly2/b0;->contentLength()J

    move-result-wide v0

    iget-object p2, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object v2, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {p2, v2}, Ly2/s;->q(Ly2/Call;)V

    iget-object p2, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {p2, p1, v0, v1}, Le3/d;->b(Ly2/Request;J)Lm3/a0;

    move-result-object p1

    new-instance p2, Ld3/Exchange$a;

    invoke-direct {p2, p0, p1, v0, v1}, Ld3/Exchange$a;-><init>(Ld3/Exchange;Lm3/a0;J)V

    return-object p2
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {v0}, Le3/d;->cancel()V

    iget-object v0, p0, Ld3/Exchange;->c:Ld3/d;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Ld3/d;->t(Ld3/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final e()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {v0}, Le3/d;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object v2, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {v1, v2, v0}, Ly2/s;->r(Ly2/Call;Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Ld3/Exchange;->t(Ljava/io/IOException;)V

    throw v0
.end method

.method public final f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {v0}, Le3/d;->g()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object v2, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {v1, v2, v0}, Ly2/s;->r(Ly2/Call;Ljava/io/IOException;)V

    invoke-direct {p0, v0}, Ld3/Exchange;->t(Ljava/io/IOException;)V

    throw v0
.end method

.method public final g()Ld3/d;
    .locals 1

    iget-object v0, p0, Ld3/Exchange;->c:Ld3/d;

    return-object v0
.end method

.method public final h()Ld3/e;
    .locals 1

    iget-object v0, p0, Ld3/Exchange;->b:Ld3/e;

    return-object v0
.end method

.method public final i()Ly2/s;
    .locals 1

    iget-object v0, p0, Ld3/Exchange;->d:Ly2/s;

    return-object v0
.end method

.method public final j()Ld3/c;
    .locals 1

    iget-object v0, p0, Ld3/Exchange;->e:Ld3/c;

    return-object v0
.end method

.method public final k()Z
    .locals 2

    iget-object v0, p0, Ld3/Exchange;->e:Ld3/c;

    invoke-virtual {v0}, Ld3/c;->d()Ly2/a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld3/Exchange;->b:Ld3/e;

    invoke-virtual {v1}, Ld3/e;->A()Ly2/d0;

    move-result-object v1

    invoke-virtual {v1}, Ly2/d0;->a()Ly2/a;

    move-result-object v1

    invoke-virtual {v1}, Ly2/a;->l()Ly2/w;

    move-result-object v1

    invoke-virtual {v1}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lt2/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Ld3/Exchange;->a:Z

    return v0
.end method

.method public final m()Ll3/d$d;
    .locals 1

    iget-object v0, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {v0}, Ld3/d;->z()V

    iget-object v0, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {v0}, Le3/d;->getConnection()Ld3/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Ld3/e;->x(Ld3/Exchange;)Ll3/d$d;

    move-result-object v0

    return-object v0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {v0}, Le3/d;->getConnection()Ld3/e;

    move-result-object v0

    invoke-virtual {v0}, Ld3/e;->z()V

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Ld3/Exchange;->c:Ld3/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v3, v1, v2}, Ld3/d;->t(Ld3/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final p(Ly2/Response;)Ly2/c0;
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "Content-Type"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Ly2/Response;->l(Ly2/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {v1, p1}, Le3/d;->c(Ly2/Response;)J

    move-result-wide v1

    iget-object v3, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {v3, p1}, Le3/d;->d(Ly2/Response;)Lm3/c0;

    move-result-object p1

    new-instance v3, Ld3/Exchange$b;

    invoke-direct {v3, p0, p1, v1, v2}, Ld3/Exchange$b;-><init>(Ld3/Exchange;Lm3/c0;J)V

    new-instance p1, Le3/h;

    invoke-static {v3}, Lm3/p;->b(Lm3/c0;)Lm3/g;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Le3/h;-><init>(Ljava/lang/String;JLm3/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object v1, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {v0, v1, p1}, Ly2/s;->w(Ly2/Call;Ljava/io/IOException;)V

    invoke-direct {p0, p1}, Ld3/Exchange;->t(Ljava/io/IOException;)V

    throw p1
.end method

.method public final q(Z)Ly2/Response$a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {v0, p1}, Le3/d;->e(Z)Ly2/Response$a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ly2/Response$a;->l(Ld3/Exchange;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object v1, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {v0, v1, p1}, Ly2/s;->w(Ly2/Call;Ljava/io/IOException;)V

    invoke-direct {p0, p1}, Ld3/Exchange;->t(Ljava/io/IOException;)V

    throw p1
.end method

.method public final r(Ly2/Response;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object v1, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {v0, v1, p1}, Ly2/s;->x(Ly2/Call;Ly2/Response;)V

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object v1, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {v0, v1}, Ly2/s;->y(Ly2/Call;)V

    return-void
.end method

.method public final u()V
    .locals 6

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ld3/Exchange;->a(JZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method

.method public final v(Ly2/Request;)V
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object v1, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {v0, v1}, Ly2/s;->t(Ly2/Call;)V

    iget-object v0, p0, Ld3/Exchange;->f:Le3/d;

    invoke-interface {v0, p1}, Le3/d;->f(Ly2/Request;)V

    iget-object v0, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object v1, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {v0, v1, p1}, Ly2/s;->s(Ly2/Call;Ly2/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Ld3/Exchange;->d:Ly2/s;

    iget-object v1, p0, Ld3/Exchange;->c:Ld3/d;

    invoke-virtual {v0, v1, p1}, Ly2/s;->r(Ly2/Call;Ljava/io/IOException;)V

    invoke-direct {p0, p1}, Ld3/Exchange;->t(Ljava/io/IOException;)V

    throw p1
.end method
