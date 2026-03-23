.class public abstract Lg1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg1/a$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/concurrent/locks/Lock;

.field protected final b:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lg1/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lg1/a;->b:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public declared-synchronized C()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lg1/a;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public D()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public E()Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lg1/a;->F(Lg1/a$a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Lg1/a;->D()V

    :goto_0
    invoke-virtual {p0}, Lg1/a;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public F(Lg1/a$a;)V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lg1/a;->N()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lg1/a;->G(Lg1/a$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public G(Lg1/a$a;)V
    .locals 2

    const-string v0, "ASafeLife"

    :try_start_0
    iget-object v1, p0, Lg1/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lg1/a$a;->a()V

    :cond_0
    const-string p1, "before await"

    invoke-static {v0, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lg1/a;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->await()V

    const-string p1, "after await"

    invoke-static {v0, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lg1/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lg1/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method protected abstract H()Ll0/f;
.end method

.method protected abstract I()V
.end method

.method protected abstract J()V
.end method

.method protected abstract K()V
.end method

.method protected abstract L()V
.end method

.method protected abstract M()V
.end method

.method public abstract N()Z
.end method

.method public abstract O()Z
.end method

.method public declared-synchronized b()Ll0/f;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lg1/a;->H()Ll0/f;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lg1/a;->J()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lg1/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lg1/a;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lg1/a;->a:Ljava/util/concurrent/locks/Lock;

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lg1/a;->a:Ljava/util/concurrent/locks/Lock;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_5
    iget-object v1, p0, Lg1/a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lg1/a;->K()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lg1/a;->L()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lg1/a;->M()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
