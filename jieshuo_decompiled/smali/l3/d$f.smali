.class public final Ll3/d$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll3/d;->g(Ly2/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll3/d;

.field final synthetic b:Ly2/Request;


# direct methods
.method constructor <init>(Ll3/d;Ly2/Request;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/Request;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Ll3/d$f;->a:Ll3/d;

    iput-object p2, p0, Ll3/d$f;->b:Ly2/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ly2/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ll3/d$f;->a:Ll3/d;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ll3/d;->h(Ljava/lang/Exception;Ly2/Response;)V

    return-void
.end method

.method public onResponse(Ly2/Call;Ly2/Response;)V
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ly2/Response;->h()Ld3/Exchange;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Ll3/d$f;->a:Ll3/d;

    invoke-virtual {v0, p2, p1}, Ll3/d;->e(Ly2/Response;Ld3/Exchange;)V

    invoke-static {p1}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ld3/Exchange;->m()Ll3/d$d;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v0, Ll3/e;->g:Ll3/e$a;

    invoke-virtual {p2}, Ly2/Response;->m()Ly2/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll3/e$a;->a(Ly2/v;)Ll3/e;

    move-result-object v0

    iget-object v1, p0, Ll3/d$f;->a:Ll3/d;

    invoke-static {v1, v0}, Ll3/d;->d(Ll3/d;Ll3/e;)V

    iget-object v1, p0, Ll3/d$f;->a:Ll3/d;

    invoke-static {v1, v0}, Ll3/d;->c(Ll3/d;Ll3/e;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ll3/d$f;->a:Ll3/d;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Ll3/d$f;->a:Ll3/d;

    invoke-static {v1}, Ll3/d;->a(Ll3/d;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iget-object v1, p0, Ll3/d$f;->a:Ll3/d;

    const-string v2, "unexpected Sec-WebSocket-Extensions in response header"

    const/16 v3, 0x3f2

    invoke-virtual {v1, v3, v2}, Ll3/d;->close(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lz2/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WebSocket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ll3/d$f;->b:Ly2/Request;

    invoke-virtual {v1}, Ly2/Request;->i()Ly2/w;

    move-result-object v1

    invoke-virtual {v1}, Ly2/w;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ll3/d$f;->a:Ll3/d;

    invoke-virtual {v1, v0, p1}, Ll3/d;->j(Ljava/lang/String;Ll3/d$d;)V

    iget-object p1, p0, Ll3/d$f;->a:Ll3/d;

    invoke-virtual {p1}, Ll3/d;->i()Ly2/g0;

    move-result-object p1

    iget-object v0, p0, Ll3/d$f;->a:Ll3/d;

    invoke-virtual {p1, v0, p2}, Ly2/g0;->onOpen(Ly2/f0;Ly2/Response;)V

    iget-object p1, p0, Ll3/d$f;->a:Ll3/d;

    invoke-virtual {p1}, Ll3/d;->l()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p2, p0, Ll3/d$f;->a:Ll3/d;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ll3/d;->h(Ljava/lang/Exception;Ly2/Response;)V

    :goto_1
    return-void

    :catch_1
    move-exception v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ld3/Exchange;->u()V

    :cond_1
    iget-object p1, p0, Ll3/d$f;->a:Ll3/d;

    invoke-virtual {p1, v0, p2}, Ll3/d;->h(Ljava/lang/Exception;Ly2/Response;)V

    invoke-static {p2}, Lz2/c;->j(Ljava/io/Closeable;)V

    return-void
.end method
