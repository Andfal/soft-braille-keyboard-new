.class public Ls0/f;
.super Ls0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls0/f$b;
    }
.end annotation


# instance fields
.field private e:Ljava/util/concurrent/ThreadPoolExecutor;

.field private f:Lt0/c;

.field private g:Ls0/h;

.field private h:Ls0/d;

.field private i:Ls0/g;

.field private j:Ls0/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ls0/a;-><init>()V

    new-instance v0, Ls0/h;

    invoke-direct {v0, p0}, Ls0/h;-><init>(Ls0/f;)V

    iput-object v0, p0, Ls0/f;->g:Ls0/h;

    new-instance v0, Ls0/d;

    invoke-direct {v0, p0}, Ls0/d;-><init>(Ls0/f;)V

    iput-object v0, p0, Ls0/f;->h:Ls0/d;

    new-instance v0, Ls0/g;

    invoke-direct {v0, p0}, Ls0/g;-><init>(Ls0/f;)V

    iput-object v0, p0, Ls0/f;->i:Ls0/g;

    new-instance v0, Ls0/e;

    invoke-direct {v0, p0}, Ls0/e;-><init>(Ls0/f;)V

    iput-object v0, p0, Ls0/f;->j:Ls0/e;

    iget-object v0, p0, Ls0/f;->g:Ls0/h;

    iput-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-static {}, Lr0/b;->a()Lr0/b;

    move-result-object v0

    invoke-virtual {v0}, Lr0/b;->b()Lt0/c;

    move-result-object v0

    iput-object v0, p0, Ls0/f;->f:Lt0/c;

    return-void
.end method

.method static synthetic U(Ls0/f;)Lt0/c;
    .locals 0

    iget-object p0, p0, Ls0/f;->f:Lt0/c;

    return-object p0
.end method


# virtual methods
.method public N()Z
    .locals 2

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    iget-object v1, p0, Ls0/f;->j:Ls0/e;

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

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    iget-object v1, p0, Ls0/f;->h:Ls0/d;

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

.method V(FF)I
    .locals 1

    iget-object v0, p0, Ls0/f;->f:Lt0/c;

    invoke-interface {v0, p1, p2}, Lt0/c;->c(FF)I

    move-result p1

    return p1
.end method

.method public W(II)I
    .locals 1

    iget-object v0, p0, Ls0/f;->f:Lt0/c;

    invoke-interface {v0, p1, p2}, Lt0/c;->a(II)I

    move-result p1

    return p1
.end method

.method X(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    check-cast p1, Ll1/a;

    invoke-virtual {p1}, Ll1/a;->c()Lt0/b$a;

    move-result-object p1

    iget-object v0, p0, Ls0/f;->f:Lt0/c;

    invoke-interface {v0, p1}, Lt0/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method Y(Lr0/a;)V
    .locals 0

    iput-object p1, p0, Ls0/a;->c:Lr0/a;

    return-void
.end method

.method Z(I)I
    .locals 1

    iget-object v0, p0, Ls0/f;->f:Lt0/c;

    invoke-interface {v0, p1}, Lt0/c;->a(I)I

    move-result p1

    return p1
.end method

.method a0(I)I
    .locals 1

    iget-object v0, p0, Ls0/f;->f:Lt0/c;

    invoke-interface {v0, p1}, Lt0/c;->b(I)I

    move-result p1

    return p1
.end method

.method b0(Ll1/h;)V
    .locals 2

    iget-object v0, p0, Ls0/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Ls0/f$b;

    invoke-direct {v1, p0, p1}, Ls0/f$b;-><init>(Ls0/f;Ll1/h;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c0()Ls0/h;
    .locals 1

    iget-object v0, p0, Ls0/f;->g:Ls0/h;

    return-object v0
.end method

.method public d0()Ls0/d;
    .locals 1

    iget-object v0, p0, Ls0/f;->h:Ls0/d;

    return-object v0
.end method

.method public e0()Ls0/g;
    .locals 1

    iget-object v0, p0, Ls0/f;->i:Ls0/g;

    return-object v0
.end method

.method public f0()Ls0/e;
    .locals 1

    iget-object v0, p0, Ls0/f;->j:Ls0/e;

    return-object v0
.end method

.method g0()Ll0/f;
    .locals 2

    iget-object v0, p0, Ls0/f;->f:Lt0/c;

    new-instance v1, Ls0/f$a;

    invoke-direct {v1, p0}, Ls0/f$a;-><init>(Ls0/f;)V

    invoke-interface {v0, v1}, Lt0/c;->i(Lr0/a;)V

    iget-object v0, p0, Ls0/f;->f:Lt0/c;

    invoke-interface {v0}, Lt0/c;->a()Ll0/f;

    move-result-object v0

    return-object v0
.end method

.method h0()V
    .locals 3

    new-instance v0, Lu0/a;

    const/16 v1, 0xc8

    const-string v2, "bdtts-PlayExecutorPoolThread"

    invoke-direct {v0, v1, v2}, Lu0/a;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Ls0/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method i0()V
    .locals 1

    iget-object v0, p0, Ls0/f;->f:Lt0/c;

    invoke-interface {v0}, Lt0/c;->d()V

    return-void
.end method

.method j0()V
    .locals 1

    iget-object v0, p0, Ls0/f;->f:Lt0/c;

    invoke-interface {v0}, Lt0/c;->c()V

    return-void
.end method

.method k0()V
    .locals 5

    const-string v0, "PlayQueueMachine"

    iget-object v1, p0, Ls0/f;->f:Lt0/c;

    invoke-interface {v1}, Lt0/c;->e()V

    iget-object v1, p0, Ls0/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ls0/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_0
    :try_start_0
    const-string v1, "before await"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Ls0/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v2, Lb1/l;->c:Lb1/l;

    invoke-virtual {v2}, Lb1/l;->a()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after await isTer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "InterruptedException"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Ls0/f;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    :cond_1
    return-void
.end method

.method l0()V
    .locals 1

    iget-object v0, p0, Ls0/f;->f:Lt0/c;

    invoke-interface {v0}, Lt0/c;->f()Ll0/f;

    return-void
.end method

.method m0()V
    .locals 1

    iget-object v0, p0, Ls0/f;->f:Lt0/c;

    invoke-interface {v0}, Lt0/c;->b()V

    return-void
.end method
