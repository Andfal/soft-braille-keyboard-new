.class public final Lf3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf3/b$f;,
        Lf3/b$b;,
        Lf3/b$a;,
        Lf3/b$e;,
        Lf3/b$c;,
        Lf3/b$g;,
        Lf3/b$d;
    }
.end annotation


# static fields
.field public static final h:Lf3/b$d;


# instance fields
.field private a:I

.field private final b:Lf3/a;

.field private c:Ly2/v;

.field private final d:Ly2/OkHttpClient;

.field private final e:Ld3/e;

.field private final f:Lm3/g;

.field private final g:Lm3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf3/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf3/b$d;-><init>(Lt2/d;)V

    sput-object v0, Lf3/b;->h:Lf3/b$d;

    return-void
.end method

.method public constructor <init>(Ly2/OkHttpClient;Ld3/e;Lm3/g;Lm3/f;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf3/b;->d:Ly2/OkHttpClient;

    iput-object p2, p0, Lf3/b;->e:Ld3/e;

    iput-object p3, p0, Lf3/b;->f:Lm3/g;

    iput-object p4, p0, Lf3/b;->g:Lm3/f;

    new-instance p1, Lf3/a;

    invoke-direct {p1, p3}, Lf3/a;-><init>(Lm3/g;)V

    iput-object p1, p0, Lf3/b;->b:Lf3/a;

    return-void
.end method

.method public static final synthetic h(Lf3/b;Lm3/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lf3/b;->q(Lm3/l;)V

    return-void
.end method

.method public static final synthetic i(Lf3/b;)Ly2/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lf3/b;->d:Ly2/OkHttpClient;

    return-object p0
.end method

.method public static final synthetic j(Lf3/b;)Lf3/a;
    .locals 0

    iget-object p0, p0, Lf3/b;->b:Lf3/a;

    return-object p0
.end method

.method public static final synthetic k(Lf3/b;)Lm3/f;
    .locals 0

    iget-object p0, p0, Lf3/b;->g:Lm3/f;

    return-object p0
.end method

.method public static final synthetic l(Lf3/b;)Lm3/g;
    .locals 0

    iget-object p0, p0, Lf3/b;->f:Lm3/g;

    return-object p0
.end method

.method public static final synthetic m(Lf3/b;)I
    .locals 0

    iget p0, p0, Lf3/b;->a:I

    return p0
.end method

.method public static final synthetic n(Lf3/b;)Ly2/v;
    .locals 0

    iget-object p0, p0, Lf3/b;->c:Ly2/v;

    return-object p0
.end method

.method public static final synthetic o(Lf3/b;I)V
    .locals 0

    iput p1, p0, Lf3/b;->a:I

    return-void
.end method

.method public static final synthetic p(Lf3/b;Ly2/v;)V
    .locals 0

    iput-object p1, p0, Lf3/b;->c:Ly2/v;

    return-void
.end method

.method private final q(Lm3/l;)V
    .locals 2

    invoke-virtual {p1}, Lm3/l;->i()Lm3/d0;

    move-result-object v0

    sget-object v1, Lm3/d0;->d:Lm3/d0;

    invoke-virtual {p1, v1}, Lm3/l;->j(Lm3/d0;)Lm3/l;

    invoke-virtual {v0}, Lm3/d0;->a()Lm3/d0;

    invoke-virtual {v0}, Lm3/d0;->b()Lm3/d0;

    return-void
.end method

.method private final r(Ly2/Request;)Z
    .locals 2

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Ly2/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "chunked"

    invoke-static {v1, p1, v0}, Lx2/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final s(Ly2/Response;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Transfer-Encoding"

    invoke-static {p1, v2, v0, v1, v0}, Ly2/Response;->l(Ly2/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "chunked"

    invoke-static {v1, p1, v0}, Lx2/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final t()Lm3/a0;
    .locals 2

    iget v0, p0, Lf3/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lf3/b;->a:I

    new-instance v0, Lf3/b$b;

    invoke-direct {v0, p0}, Lf3/b$b;-><init>(Lf3/b;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf3/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final u(Ly2/w;)Lm3/c0;
    .locals 2

    iget v0, p0, Lf3/b;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Lf3/b;->a:I

    new-instance v0, Lf3/b$c;

    invoke-direct {v0, p0, p1}, Lf3/b$c;-><init>(Lf3/b;Ly2/w;)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf3/b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final v(J)Lm3/c0;
    .locals 2

    iget v0, p0, Lf3/b;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Lf3/b;->a:I

    new-instance v0, Lf3/b$e;

    invoke-direct {v0, p0, p1, p2}, Lf3/b$e;-><init>(Lf3/b;J)V

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lf3/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final w()Lm3/a0;
    .locals 2

    iget v0, p0, Lf3/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lf3/b;->a:I

    new-instance v0, Lf3/b$f;

    invoke-direct {v0, p0}, Lf3/b$f;-><init>(Lf3/b;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf3/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final x()Lm3/c0;
    .locals 2

    iget v0, p0, Lf3/b;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iput v0, p0, Lf3/b;->a:I

    invoke-virtual {p0}, Lf3/b;->getConnection()Ld3/e;

    move-result-object v0

    invoke-virtual {v0}, Ld3/e;->z()V

    new-instance v0, Lf3/b$g;

    invoke-direct {v0, p0}, Lf3/b$g;-><init>(Lf3/b;)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf3/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lf3/b;->g:Lm3/f;

    invoke-interface {v0}, Lm3/f;->flush()V

    return-void
.end method

.method public b(Ly2/Request;J)Lm3/a0;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly2/Request;->a()Ly2/b0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ly2/Request;->a()Ly2/b0;

    move-result-object v0

    invoke-virtual {v0}, Ly2/b0;->isDuplex()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Duplex connections are not supported for HTTP/1"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lf3/b;->r(Ly2/Request;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lf3/b;->t()Lm3/a0;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lf3/b;->w()Lm3/a0;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ly2/Response;)J
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le3/e;->b(Ly2/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lf3/b;->s(Ly2/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lz2/c;->s(Ly2/Response;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public cancel()V
    .locals 1

    invoke-virtual {p0}, Lf3/b;->getConnection()Ld3/e;

    move-result-object v0

    invoke-virtual {v0}, Ld3/e;->d()V

    return-void
.end method

.method public d(Ly2/Response;)Lm3/c0;
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le3/e;->b(Ly2/Response;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lf3/b;->v(J)Lm3/c0;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lf3/b;->s(Ly2/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ly2/Response;->G()Ly2/Request;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Request;->i()Ly2/w;

    move-result-object p1

    invoke-direct {p0, p1}, Lf3/b;->u(Ly2/w;)Lm3/c0;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lz2/c;->s(Ly2/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lf3/b;->x()Lm3/c0;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public e(Z)Ly2/Response$a;
    .locals 4

    iget v0, p0, Lf3/b;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    :try_start_0
    sget-object v0, Le3/k;->d:Le3/k$a;

    iget-object v2, p0, Lf3/b;->b:Lf3/a;

    invoke-virtual {v2}, Lf3/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le3/k$a;->a(Ljava/lang/String;)Le3/k;

    move-result-object v0

    new-instance v2, Ly2/Response$a;

    invoke-direct {v2}, Ly2/Response$a;-><init>()V

    iget-object v3, v0, Le3/k;->a:Ly2/a0;

    invoke-virtual {v2, v3}, Ly2/Response$a;->p(Ly2/a0;)Ly2/Response$a;

    move-result-object v2

    iget v3, v0, Le3/k;->b:I

    invoke-virtual {v2, v3}, Ly2/Response$a;->g(I)Ly2/Response$a;

    move-result-object v2

    iget-object v3, v0, Le3/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ly2/Response$a;->m(Ljava/lang/String;)Ly2/Response$a;

    move-result-object v2

    iget-object v3, p0, Lf3/b;->b:Lf3/a;

    invoke-virtual {v3}, Lf3/a;->a()Ly2/v;

    move-result-object v3

    invoke-virtual {v2, v3}, Ly2/Response$a;->k(Ly2/v;)Ly2/Response$a;

    move-result-object v2

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    iget p1, v0, Le3/k;->b:I

    if-ne p1, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget p1, v0, Le3/k;->b:I

    if-ne p1, v3, :cond_3

    iput v1, p0, Lf3/b;->a:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    iput p1, p0, Lf3/b;->a:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    invoke-virtual {p0}, Lf3/b;->getConnection()Ld3/e;

    move-result-object v0

    invoke-virtual {v0}, Ld3/e;->A()Ly2/d0;

    move-result-object v0

    invoke-virtual {v0}, Ly2/d0;->a()Ly2/a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/a;->l()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lf3/b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Ly2/Request;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le3/i;->a:Le3/i;

    invoke-virtual {p0}, Lf3/b;->getConnection()Ld3/e;

    move-result-object v1

    invoke-virtual {v1}, Ld3/e;->A()Ly2/d0;

    move-result-object v1

    invoke-virtual {v1}, Ly2/d0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    const-string v2, "connection.route().proxy.type()"

    invoke-static {v1, v2}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Le3/i;->a(Ly2/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ly2/Request;->e()Ly2/v;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lf3/b;->z(Ly2/v;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lf3/b;->g:Lm3/f;

    invoke-interface {v0}, Lm3/f;->flush()V

    return-void
.end method

.method public getConnection()Ld3/e;
    .locals 1

    iget-object v0, p0, Lf3/b;->e:Ld3/e;

    return-object v0
.end method

.method public final y(Ly2/Response;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz2/c;->s(Ly2/Response;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lf3/b;->v(J)Lm3/c0;

    move-result-object p1

    const v0, 0x7fffffff

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1}, Lz2/c;->H(Lm3/c0;ILjava/util/concurrent/TimeUnit;)Z

    invoke-interface {p1}, Lm3/c0;->close()V

    return-void
.end method

.method public final z(Ly2/v;Ljava/lang/String;)V
    .locals 5

    const-string v0, "headers"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lf3/b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lf3/b;->g:Lm3/f;

    invoke-interface {v0, p2}, Lm3/f;->E(Ljava/lang/String;)Lm3/f;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lm3/f;->E(Ljava/lang/String;)Lm3/f;

    invoke-virtual {p1}, Ly2/v;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_1

    iget-object v3, p0, Lf3/b;->g:Lm3/f;

    invoke-virtual {p1, v1}, Ly2/v;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lm3/f;->E(Ljava/lang/String;)Lm3/f;

    move-result-object v3

    const-string v4, ": "

    invoke-interface {v3, v4}, Lm3/f;->E(Ljava/lang/String;)Lm3/f;

    move-result-object v3

    invoke-virtual {p1, v1}, Ly2/v;->f(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lm3/f;->E(Ljava/lang/String;)Lm3/f;

    move-result-object v3

    invoke-interface {v3, v0}, Lm3/f;->E(Ljava/lang/String;)Lm3/f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lf3/b;->g:Lm3/f;

    invoke-interface {p1, v0}, Lm3/f;->E(Ljava/lang/String;)Lm3/f;

    iput v2, p0, Lf3/b;->a:I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lf3/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
