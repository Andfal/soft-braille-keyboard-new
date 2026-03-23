.class public final Le3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/x;


# instance fields
.field private final a:Ly2/o;


# direct methods
.method public constructor <init>(Ly2/o;)V
    .locals 1

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/a;->a:Ly2/o;

    return-void
.end method

.method private final a(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly2/n;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lo2/k;->m()V

    :cond_0
    check-cast v2, Ly2/n;

    if-lez v1, :cond_1

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2}, Ly2/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ly2/n;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public intercept(Ly2/x$a;)Ly2/Response;
    .locals 12

    const-string v0, "chain"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly2/x$a;->b()Ly2/Request;

    move-result-object v0

    invoke-virtual {v0}, Ly2/Request;->h()Ly2/Request$a;

    move-result-object v1

    invoke-virtual {v0}, Ly2/Request;->a()Ly2/b0;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ly2/b0;->contentType()Ly2/y;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ly2/y;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    :cond_0
    invoke-virtual {v2}, Ly2/b0;->contentLength()J

    move-result-wide v7

    const-string v2, "Transfer-Encoding"

    cmp-long v9, v7, v4

    if-eqz v9, :cond_1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    invoke-virtual {v1, v2}, Ly2/Request$a;->g(Ljava/lang/String;)Ly2/Request$a;

    goto :goto_0

    :cond_1
    const-string v7, "chunked"

    invoke-virtual {v1, v2, v7}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    invoke-virtual {v1, v6}, Ly2/Request$a;->g(Ljava/lang/String;)Ly2/Request$a;

    :cond_2
    :goto_0
    const-string v2, "Host"

    invoke-virtual {v0, v2}, Ly2/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v7, :cond_3

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v7

    invoke-static {v7, v8, v9, v10}, Lz2/c;->O(Ly2/w;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    :cond_3
    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Ly2/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    invoke-virtual {v1, v2, v7}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    :cond_4
    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2}, Ly2/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "gzip"

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Ly2/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-virtual {v1, v2, v11}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    const/4 v8, 0x1

    :cond_5
    iget-object v2, p0, Le3/a;->a:Ly2/o;

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v7

    invoke-interface {v2, v7}, Ly2/o;->b(Ly2/w;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v9

    if-eqz v7, :cond_6

    const-string v7, "Cookie"

    invoke-direct {p0, v2}, Le3/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    :cond_6
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2}, Ly2/Request;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    const-string v7, "okhttp/4.9.1"

    invoke-virtual {v1, v2, v7}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    :cond_7
    invoke-virtual {v1}, Ly2/Request$a;->b()Ly2/Request;

    move-result-object v1

    invoke-interface {p1, v1}, Ly2/x$a;->a(Ly2/Request;)Ly2/Response;

    move-result-object p1

    iget-object v1, p0, Le3/a;->a:Ly2/o;

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v2

    invoke-virtual {p1}, Ly2/Response;->m()Ly2/v;

    move-result-object v7

    invoke-static {v1, v2, v7}, Le3/e;->f(Ly2/o;Ly2/w;Ly2/v;)V

    invoke-virtual {p1}, Ly2/Response;->A()Ly2/Response$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Ly2/Response$a;->r(Ly2/Request;)Ly2/Response$a;

    move-result-object v0

    if-eqz v8, :cond_8

    const-string v1, "Content-Encoding"

    const/4 v2, 0x2

    invoke-static {p1, v1, v10, v2, v10}, Ly2/Response;->l(Ly2/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7, v9}, Lx2/g;->j(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {p1}, Le3/e;->b(Ly2/Response;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p1}, Ly2/Response;->b()Ly2/c0;

    move-result-object v7

    if-eqz v7, :cond_8

    new-instance v8, Lm3/m;

    invoke-virtual {v7}, Ly2/c0;->i()Lm3/g;

    move-result-object v7

    invoke-direct {v8, v7}, Lm3/m;-><init>(Lm3/c0;)V

    invoke-virtual {p1}, Ly2/Response;->m()Ly2/v;

    move-result-object v7

    invoke-virtual {v7}, Ly2/v;->d()Ly2/v$a;

    move-result-object v7

    invoke-virtual {v7, v1}, Ly2/v$a;->g(Ljava/lang/String;)Ly2/v$a;

    move-result-object v1

    invoke-virtual {v1, v6}, Ly2/v$a;->g(Ljava/lang/String;)Ly2/v$a;

    move-result-object v1

    invoke-virtual {v1}, Ly2/v$a;->e()Ly2/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly2/Response$a;->k(Ly2/v;)Ly2/Response$a;

    invoke-static {p1, v3, v10, v2, v10}, Ly2/Response;->l(Ly2/Response;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Le3/h;

    invoke-static {v8}, Lm3/p;->b(Lm3/c0;)Lm3/g;

    move-result-object v2

    invoke-direct {v1, p1, v4, v5, v2}, Le3/h;-><init>(Ljava/lang/String;JLm3/g;)V

    invoke-virtual {v0, v1}, Ly2/Response$a;->b(Ly2/c0;)Ly2/Response$a;

    :cond_8
    invoke-virtual {v0}, Ly2/Response$a;->c()Ly2/Response;

    move-result-object p1

    return-object p1
.end method
