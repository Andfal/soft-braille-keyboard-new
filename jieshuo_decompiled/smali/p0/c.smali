.class public Lp0/c;
.super Lp0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp0/c$b;
    }
.end annotation


# instance fields
.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Lp0/h;

.field private h:Lp0/e;

.field private i:Lp0/g;

.field private j:Lp0/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lp0/a;-><init>()V

    new-instance v0, Lp0/h;

    invoke-direct {v0, p0}, Lp0/h;-><init>(Lp0/c;)V

    iput-object v0, p0, Lp0/c;->g:Lp0/h;

    new-instance v0, Lp0/e;

    invoke-direct {v0, p0}, Lp0/e;-><init>(Lp0/c;)V

    iput-object v0, p0, Lp0/c;->h:Lp0/e;

    new-instance v0, Lp0/g;

    invoke-direct {v0, p0}, Lp0/g;-><init>(Lp0/c;)V

    iput-object v0, p0, Lp0/c;->i:Lp0/g;

    new-instance v0, Lp0/f;

    invoke-direct {v0, p0}, Lp0/f;-><init>(Lp0/c;)V

    iput-object v0, p0, Lp0/c;->j:Lp0/f;

    iget-object v0, p0, Lp0/c;->g:Lp0/h;

    iput-object v0, p0, Lp0/a;->e:Lp0/b;

    return-void
.end method

.method private V(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Ll1/h;

    invoke-direct {p1}, Ll1/h;-><init>()V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v0

    sget-object v1, Lb1/n;->b0:Lb1/n;

    invoke-virtual {v0, v1}, Ld1/c;->h(Lb1/n;)Ll0/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll1/h;->k(Ll0/f;)V

    :goto_0
    invoke-virtual {p0, p1}, Lp0/a;->T(Ll1/h;)V

    return-void
.end method


# virtual methods
.method public N()Z
    .locals 2

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    iget-object v1, p0, Lp0/c;->j:Lp0/f;

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

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    iget-object v1, p0, Lp0/c;->h:Lp0/e;

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

.method W(Ll1/f;)I
    .locals 1

    iget-object v0, p0, Lp0/a;->c:Lq0/b;

    invoke-interface {v0, p1}, Lq0/b;->e(Ll1/f;)I

    move-result p1

    return p1
.end method

.method X(Ll1/g;)I
    .locals 1

    iget-object v0, p0, Lp0/a;->c:Lq0/b;

    invoke-interface {v0, p1}, Lq0/b;->d(Ll1/g;)I

    move-result p1

    return p1
.end method

.method Y(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lp0/a;->c:Lq0/b;

    invoke-interface {v0, p1}, Lq0/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method Z(Lo0/b;)V
    .locals 1

    iget-object v0, p0, Lp0/a;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp0/a;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lp0/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lp0/a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method a0(Lq0/b;)V
    .locals 0

    iput-object p1, p0, Lp0/a;->c:Lq0/b;

    return-void
.end method

.method b0(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Lp0/a;->c:Lq0/b;

    invoke-interface {v0, p1}, Lq0/b;->g(Ll1/e;)I

    move-result p1

    return p1
.end method

.method c0(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Lp0/a;->c:Lq0/b;

    invoke-interface {v0, p1}, Lq0/b;->f(Ll1/e;)I

    move-result p1

    return p1
.end method

.method public d0()Lp0/h;
    .locals 1

    iget-object v0, p0, Lp0/c;->g:Lp0/h;

    return-object v0
.end method

.method public e0()Lp0/e;
    .locals 1

    iget-object v0, p0, Lp0/c;->h:Lp0/e;

    return-object v0
.end method

.method public f0()Lp0/g;
    .locals 1

    iget-object v0, p0, Lp0/c;->i:Lp0/g;

    return-object v0
.end method

.method public g0()Lp0/f;
    .locals 1

    iget-object v0, p0, Lp0/c;->j:Lp0/f;

    return-object v0
.end method

.method h0()Ll0/f;
    .locals 2

    iget-object v0, p0, Lp0/a;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp0/a;->d:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lp0/a;->c:Lq0/b;

    new-instance v1, Lp0/c$a;

    invoke-direct {v1, p0}, Lp0/c$a;-><init>(Lp0/c;)V

    invoke-interface {v0, v1}, Lq0/b;->h(Lo0/b;)V

    iget-object v0, p0, Lp0/a;->c:Lq0/b;

    invoke-interface {v0}, Lq0/b;->a()Ll0/f;

    move-result-object v0

    return-object v0
.end method

.method i0()V
    .locals 2

    new-instance v0, Lc1/a;

    const-string v1, "bdtts-EngineExecutorPoolThread"

    invoke-direct {v0, v1}, Lc1/a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lp0/c;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method j0()V
    .locals 0

    return-void
.end method

.method k0()V
    .locals 0

    return-void
.end method

.method l0()V
    .locals 5

    const-string v0, "EngineExecutor"

    iget-object v1, p0, Lp0/c;->f:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lp0/c;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    :try_start_0
    const-string v1, "before awaitTermination"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lp0/c;->f:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after awaitTermination isTermination="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lp0/c;->V(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lp0/c;->V(Z)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lp0/c;->f:Ljava/util/concurrent/ExecutorService;

    :cond_1
    return-void
.end method

.method m0()V
    .locals 1

    iget-object v0, p0, Lp0/a;->c:Lq0/b;

    invoke-interface {v0}, Lq0/b;->b()Ll0/f;

    const/4 v0, 0x0

    iput-object v0, p0, Lp0/a;->d:Ljava/util/List;

    return-void
.end method

.method s(Ll1/i;)V
    .locals 2

    iget-object v0, p0, Lp0/c;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lp0/c$b;

    invoke-direct {v1, p0, p1}, Lp0/c$b;-><init>(Lp0/c;Ll1/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method
