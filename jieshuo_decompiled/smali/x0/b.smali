.class public Lx0/b;
.super Lg1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx0/b$a;
    }
.end annotation


# instance fields
.field private volatile c:Lx0/a;

.field private d:Lx0/i;

.field private e:Lx0/f;

.field private f:Lx0/d;

.field private g:Lx0/h;

.field private h:Ljava/util/concurrent/ThreadPoolExecutor;

.field private i:Li1/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg1/a;-><init>()V

    new-instance v0, Lx0/i;

    invoke-direct {v0, p0}, Lx0/i;-><init>(Lx0/b;)V

    iput-object v0, p0, Lx0/b;->d:Lx0/i;

    new-instance v0, Lx0/f;

    invoke-direct {v0, p0}, Lx0/f;-><init>(Lx0/b;)V

    iput-object v0, p0, Lx0/b;->e:Lx0/f;

    new-instance v0, Lx0/d;

    invoke-direct {v0, p0}, Lx0/d;-><init>(Lx0/b;)V

    iput-object v0, p0, Lx0/b;->f:Lx0/d;

    new-instance v0, Lx0/h;

    invoke-direct {v0, p0}, Lx0/h;-><init>(Lx0/b;)V

    iput-object v0, p0, Lx0/b;->g:Lx0/h;

    iget-object v0, p0, Lx0/b;->d:Lx0/i;

    iput-object v0, p0, Lx0/b;->c:Lx0/a;

    invoke-virtual {p0}, Lg1/a;->b()Ll0/f;

    return-void
.end method

.method static synthetic P(Lx0/b;)Li1/a;
    .locals 0

    iget-object p0, p0, Lx0/b;->i:Li1/a;

    return-object p0
.end method


# virtual methods
.method protected H()Ll0/f;
    .locals 1

    iget-object v0, p0, Lx0/b;->c:Lx0/a;

    invoke-virtual {v0}, Lx0/a;->b()Ll0/f;

    move-result-object v0

    return-object v0
.end method

.method protected I()V
    .locals 1

    iget-object v0, p0, Lx0/b;->c:Lx0/a;

    invoke-virtual {v0}, Lx0/a;->D()V

    return-void
.end method

.method protected J()V
    .locals 1

    iget-object v0, p0, Lx0/b;->c:Lx0/a;

    invoke-virtual {v0}, Lx0/a;->c()V

    return-void
.end method

.method protected K()V
    .locals 1

    iget-object v0, p0, Lx0/b;->c:Lx0/a;

    invoke-virtual {v0}, Lx0/a;->d()V

    return-void
.end method

.method protected L()V
    .locals 1

    iget-object v0, p0, Lx0/b;->c:Lx0/a;

    invoke-virtual {v0}, Lx0/a;->e()V

    return-void
.end method

.method protected M()V
    .locals 1

    iget-object v0, p0, Lx0/b;->c:Lx0/a;

    invoke-virtual {v0}, Lx0/a;->f()V

    return-void
.end method

.method public N()Z
    .locals 2

    iget-object v0, p0, Lx0/b;->c:Lx0/a;

    iget-object v1, p0, Lx0/b;->g:Lx0/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public O()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lx0/b;->c:Lx0/a;

    iget-object v1, p0, Lx0/b;->e:Lx0/f;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public Q()Lx0/a;
    .locals 1

    iget-object v0, p0, Lx0/b;->c:Lx0/a;

    return-object v0
.end method

.method public R(Lx0/c;)Lx0/e;
    .locals 1

    iget-object v0, p0, Lx0/b;->c:Lx0/a;

    invoke-virtual {v0, p1}, Lx0/a;->C(Lx0/c;)Lx0/e;

    move-result-object p1

    return-object p1
.end method

.method public S(Li1/a;)V
    .locals 0

    iput-object p1, p0, Lx0/b;->i:Li1/a;

    return-void
.end method

.method public T(Lx0/a;)V
    .locals 0

    iput-object p1, p0, Lx0/b;->c:Lx0/a;

    return-void
.end method

.method U(Lx0/c;)Lx0/e;
    .locals 4

    new-instance v0, Lx0/b$a;

    invoke-direct {v0, p0, p1}, Lx0/b$a;-><init>(Lx0/b;Lx0/c;)V

    invoke-virtual {p1}, Lx0/c;->f()V

    const-string v1, "before submit"

    const-string v2, "DownloadEngine"

    invoke-static {v2, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lx0/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "submit exception"

    invoke-static {v2, v3}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v2

    sget-object v3, Lb1/n;->p0:Lb1/n;

    invoke-virtual {v2, v3, v1}, Ld1/c;->g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;

    move-result-object v1

    invoke-virtual {p1, v1}, Lx0/c;->c(Ll0/f;)V

    const/4 p1, 0x0

    :goto_0
    new-instance v1, Lx0/e;

    invoke-direct {v1}, Lx0/e;-><init>()V

    invoke-virtual {v1, p1}, Lx0/e;->b(Ljava/util/concurrent/Future;)V

    invoke-virtual {v1, v0}, Lx0/e;->c(Lx0/b$a;)V

    return-object v1
.end method

.method public V()Lx0/i;
    .locals 1

    iget-object v0, p0, Lx0/b;->d:Lx0/i;

    return-object v0
.end method

.method public W()Lx0/f;
    .locals 1

    iget-object v0, p0, Lx0/b;->e:Lx0/f;

    return-object v0
.end method

.method public X()Lx0/d;
    .locals 1

    iget-object v0, p0, Lx0/b;->f:Lx0/d;

    return-object v0
.end method

.method public Y()Lx0/h;
    .locals 1

    iget-object v0, p0, Lx0/b;->g:Lx0/h;

    return-object v0
.end method

.method Z()V
    .locals 2

    new-instance v0, Lc1/a;

    const-string v1, "bdtts-downloadPoolThread"

    invoke-direct {v0, v1}, Lc1/a;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object v0, p0, Lx0/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method a0()V
    .locals 5

    const-string v0, "enter stop"

    const-string v1, "DownloadEngine"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lx0/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lx0/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_0
    :try_start_0
    const-string v0, "before awaitTermination"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lx0/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v2, Lb1/l;->c:Lb1/l;

    invoke-virtual {v2}, Lb1/l;->a()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after awaitTermination isTermination="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lx0/b;->h:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    const-string v0, "end stop"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
