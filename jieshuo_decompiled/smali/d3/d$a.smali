.class public final Ld3/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private volatile a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Ly2/e;

.field final synthetic c:Ld3/d;


# direct methods
.method public constructor <init>(Ld3/d;Ly2/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly2/e;",
            ")V"
        }
    .end annotation

    const-string v0, "responseCallback"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ld3/d$a;->c:Ld3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ld3/d$a;->b:Ly2/e;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ld3/d$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    const-string v0, "executorService"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ld3/d$a;->c:Ld3/d;

    invoke-virtual {v0}, Ld3/d;->l()Ly2/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Ly2/OkHttpClient;->o()Ly2/q;

    move-result-object v0

    sget-boolean v1, Lz2/c;->h:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST NOT hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    iget-object p1, p0, Ld3/d$a;->c:Ld3/d;

    invoke-virtual {p1, v0}, Ld3/d;->u(Ljava/io/IOException;)Ljava/io/IOException;

    iget-object p1, p0, Ld3/d$a;->b:Ly2/e;

    iget-object v1, p0, Ld3/d$a;->c:Ld3/d;

    invoke-interface {p1, v1, v0}, Ly2/e;->onFailure(Ly2/Call;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Ld3/d$a;->c:Ld3/d;

    invoke-virtual {p1}, Ld3/d;->l()Ly2/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Ly2/OkHttpClient;->o()Ly2/q;

    move-result-object p1

    invoke-virtual {p1, p0}, Ly2/q;->f(Ld3/d$a;)V

    :goto_1
    return-void

    :goto_2
    iget-object v0, p0, Ld3/d$a;->c:Ld3/d;

    invoke-virtual {v0}, Ld3/d;->l()Ly2/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Ly2/OkHttpClient;->o()Ly2/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Ly2/q;->f(Ld3/d$a;)V

    throw p1
.end method

.method public final b()Ld3/d;
    .locals 1

    iget-object v0, p0, Ld3/d$a;->c:Ld3/d;

    return-object v0
.end method

.method public final c()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Ld3/d$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld3/d$a;->c:Ld3/d;

    invoke-virtual {v0}, Ld3/d;->q()Ly2/Request;

    move-result-object v0

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ld3/d$a;)V
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, Ld3/d$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Ld3/d$a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public run()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkHttp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ld3/d$a;->c:Ld3/d;

    invoke-virtual {v1}, Ld3/d;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "currentThread"

    invoke-static {v1, v2}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Ld3/d$a;->c:Ld3/d;

    invoke-static {v0}, Ld3/d;->a(Ld3/d;)Ld3/d$c;

    move-result-object v0

    invoke-virtual {v0}, Lm3/d;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    :try_start_1
    iget-object v3, p0, Ld3/d$a;->c:Ld3/d;

    invoke-virtual {v3}, Ld3/d;->r()Ly2/Response;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x1

    :try_start_2
    iget-object v4, p0, Ld3/d$a;->b:Ly2/e;

    iget-object v5, p0, Ld3/d$a;->c:Ld3/d;

    invoke-interface {v4, v5, v0}, Ly2/e;->onResponse(Ly2/Call;Ly2/Response;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Ld3/d$a;->c:Ld3/d;

    invoke-virtual {v0}, Ld3/d;->l()Ly2/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Ly2/OkHttpClient;->o()Ly2/q;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p0}, Ly2/q;->f(Ld3/d$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v0, v3

    const/4 v3, 0x0

    :goto_1
    :try_start_4
    iget-object v4, p0, Ld3/d$a;->c:Ld3/d;

    invoke-virtual {v4}, Ld3/d;->cancel()V

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canceled due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v0}, Ln2/a;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    iget-object v4, p0, Ld3/d$a;->b:Ly2/e;

    iget-object v5, p0, Ld3/d$a;->c:Ld3/d;

    invoke-interface {v4, v5, v3}, Ly2/e;->onFailure(Ly2/Call;Ljava/io/IOException;)V

    :cond_0
    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v3

    move-object v0, v3

    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_1

    sget-object v3, Lh3/m;->c:Lh3/m$a;

    invoke-virtual {v3}, Lh3/m$a;->g()Lh3/m;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ld3/d$a;->c:Ld3/d;

    invoke-static {v5}, Ld3/d;->c(Ld3/d;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5, v0}, Lh3/m;->j(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    iget-object v3, p0, Ld3/d$a;->b:Ly2/e;

    iget-object v4, p0, Ld3/d$a;->c:Ld3/d;

    invoke-interface {v3, v4, v0}, Ly2/e;->onFailure(Ly2/Call;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3
    :try_start_5
    iget-object v0, p0, Ld3/d$a;->c:Ld3/d;

    invoke-virtual {v0}, Ld3/d;->l()Ly2/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Ly2/OkHttpClient;->o()Ly2/q;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :goto_5
    :try_start_6
    iget-object v3, p0, Ld3/d$a;->c:Ld3/d;

    invoke-virtual {v3}, Ld3/d;->l()Ly2/OkHttpClient;

    move-result-object v3

    invoke-virtual {v3}, Ly2/OkHttpClient;->o()Ly2/q;

    move-result-object v3

    invoke-virtual {v3, p0}, Ly2/q;->f(Ld3/d$a;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v0
.end method
