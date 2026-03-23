.class public Ln0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/b$d;,
        Ln0/b$e;
    }
.end annotation


# static fields
.field private static volatile c:Ln0/b;


# instance fields
.field private a:Lh1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh1/c<",
            "Ln0/f;",
            "Ln0/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lh1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh1/c<",
            "Ln0/e;",
            "Ln0/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh1/c;

    invoke-direct {v0}, Lh1/c;-><init>()V

    iput-object v0, p0, Ln0/b;->a:Lh1/c;

    new-instance v0, Lh1/c;

    invoke-direct {v0}, Lh1/c;-><init>()V

    iput-object v0, p0, Ln0/b;->b:Lh1/c;

    return-void
.end method

.method static synthetic a(Ln0/b;)Lh1/c;
    .locals 0

    iget-object p0, p0, Ln0/b;->a:Lh1/c;

    return-object p0
.end method

.method private b(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;J)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Ln0/b;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/FutureTask<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "bdtts-AuthClient"

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object v0
.end method

.method public static f()Ln0/b;
    .locals 2

    sget-object v0, Ln0/b;->c:Ln0/b;

    if-nez v0, :cond_1

    const-class v0, Ln0/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ln0/b;->c:Ln0/b;

    if-nez v1, :cond_0

    new-instance v1, Ln0/b;

    invoke-direct {v1}, Ln0/b;-><init>()V

    sput-object v1, Ln0/b;->c:Ln0/b;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Ln0/b;->c:Ln0/b;

    return-object v0
.end method

.method static synthetic i(Ln0/b;)Lh1/c;
    .locals 0

    iget-object p0, p0, Ln0/b;->b:Lh1/c;

    return-object p0
.end method


# virtual methods
.method public d(Lb1/m;Ll1/j;)Ln0/a;
    .locals 2

    invoke-virtual {p2}, Ll1/j;->d()Ll1/b;

    move-result-object p2

    new-instance v0, Ln0/a;

    invoke-direct {v0}, Ln0/a;-><init>()V

    invoke-virtual {v0, p1}, Ln0/a;->c(Lb1/m;)V

    sget-object v1, Ln0/b$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Ln0/b;->e(Ll1/b;)Ln0/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ll1/b;->h()Lq0/e$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/b;->g(Lq0/e$a;)Ln0/e$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln0/a;->a(Ln0/e$a;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ll1/b;->c()Lq0/f$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/b;->h(Lq0/f$b;)Ln0/f$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln0/a;->b(Ln0/f$b;)V

    :goto_0
    return-object v0
.end method

.method public e(Ll1/b;)Ln0/a;
    .locals 6

    const-string v0, "enter authMix"

    const-string v1, "AuthClient"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Ln0/b$a;

    invoke-direct {v3, p0, p1, v0}, Ln0/b$a;-><init>(Ln0/b;Ll1/b;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v4, Ln0/b$b;

    invoke-direct {v4, p0, p1, v0}, Ln0/b$b;-><init>(Ln0/b;Ll1/b;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v3, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v4, "bdtts-onlineThread"

    invoke-virtual {p1, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v4, "bdtts-offlineThread"

    invoke-virtual {p1, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    :try_start_0
    const-string v4, "+ await"

    invoke-static {v1, v4}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    const-string v0, "- await"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v2, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    invoke-virtual {v3, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    :goto_0
    new-instance v0, Ln0/f$b;

    invoke-direct {v0}, Ln0/f$b;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+ mix online get onlineResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/f$b;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v4

    sget-object v5, Lb1/n;->s:Lb1/n;

    goto :goto_1

    :catch_2
    move-exception v2

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v4

    sget-object v5, Lb1/n;->h:Lb1/n;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v5, v2}, Ld1/c;->g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;

    move-result-object v2

    goto :goto_2

    :catch_3
    move-exception v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v2, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v2

    sget-object v5, Lb1/n;->g:Lb1/n;

    invoke-virtual {v2, v5, v4}, Ld1/c;->g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ln0/f$b;->d(Ll0/f;)V

    :goto_3
    const-string v2, "- online get"

    invoke-static {v1, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ln0/e$a;

    invoke-direct {v2}, Ln0/e$a;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+ mix offline get offlineResult="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/e$a;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v2, v4

    goto :goto_6

    :catch_4
    move-exception p1

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v3

    sget-object v4, Lb1/n;->L:Lb1/n;

    goto :goto_4

    :catch_5
    move-exception p1

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v3

    sget-object v4, Lb1/n;->z:Lb1/n;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_4
    invoke-virtual {v3, v4, p1}, Ld1/c;->g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    goto :goto_5

    :catch_6
    move-exception v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v3, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p1

    sget-object v3, Lb1/n;->y:Lb1/n;

    invoke-virtual {p1, v3, v4}, Ld1/c;->g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    :goto_5
    invoke-virtual {v2, p1}, Ln0/e$a;->d(Ll0/f;)V

    :goto_6
    const-string p1, "- offline get"

    invoke-static {v1, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ln0/a;

    invoke-direct {p1}, Ln0/a;-><init>()V

    sget-object v3, Lb1/m;->e:Lb1/m;

    invoke-virtual {p1, v3}, Ln0/a;->c(Lb1/m;)V

    invoke-virtual {p1, v0}, Ln0/a;->b(Ln0/f$b;)V

    invoke-virtual {p1, v2}, Ln0/a;->a(Ln0/e$a;)V

    const-string v0, "end authMix"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public g(Lq0/e$a;)Ln0/e$a;
    .locals 4

    new-instance v0, Ln0/e$a;

    invoke-direct {v0}, Ln0/e$a;-><init>()V

    :try_start_0
    new-instance v1, Ln0/b$d;

    invoke-direct {v1, p0, p1}, Ln0/b$d;-><init>(Ln0/b;Lq0/e$a;)V

    sget-object p1, Lb1/l;->c:Lb1/l;

    invoke-virtual {p1}, Lb1/l;->a()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Ln0/b;->b(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/e$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->L:Lb1/n;

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->A:Lb1/n;

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->z:Lb1/n;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->y:Lb1/n;

    :goto_0
    invoke-virtual {v1, v2, p1}, Ld1/c;->g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln0/e$a;->d(Ll0/f;)V

    :goto_1
    return-object v0
.end method

.method public h(Lq0/f$b;)Ln0/f$b;
    .locals 4

    new-instance v0, Ln0/f$b;

    invoke-direct {v0}, Ln0/f$b;-><init>()V

    :try_start_0
    new-instance v1, Ln0/b$e;

    invoke-direct {v1, p0, p1}, Ln0/b$e;-><init>(Ln0/b;Lq0/f$b;)V

    sget-object p1, Lb1/l;->c:Lb1/l;

    invoke-virtual {p1}, Lb1/l;->a()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Ln0/b;->b(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/f$b;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->s:Lb1/n;

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->i:Lb1/n;

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->h:Lb1/n;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object v1

    sget-object v2, Lb1/n;->g:Lb1/n;

    :goto_0
    invoke-virtual {v1, v2, p1}, Ld1/c;->g(Lb1/n;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln0/f$b;->d(Ll0/f;)V

    :goto_1
    return-object v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Ln0/b;->a:Lh1/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh1/c;->b()V

    :cond_0
    iget-object v0, p0, Ln0/b;->b:Lh1/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lh1/c;->b()V

    :cond_1
    return-void
.end method
