.class public Lw0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw0/c$a;
    }
.end annotation


# static fields
.field private static volatile e:Lw0/c;


# instance fields
.field private a:Li1/a;

.field private b:Ly0/a;

.field private c:Lx0/b;

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ly0/a;->a()Ly0/a;

    move-result-object v0

    iput-object v0, p0, Lw0/c;->b:Ly0/a;

    new-instance v0, Lx0/b;

    invoke-direct {v0}, Lx0/b;-><init>()V

    iput-object v0, p0, Lw0/c;->c:Lx0/b;

    return-void
.end method

.method static synthetic D(Lw0/c;)Li1/a;
    .locals 0

    iget-object p0, p0, Lw0/c;->a:Li1/a;

    return-object p0
.end method

.method public static E()Lw0/c;
    .locals 2

    sget-object v0, Lw0/c;->e:Lw0/c;

    if-nez v0, :cond_1

    const-class v0, Lw0/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lw0/c;->e:Lw0/c;

    if-nez v1, :cond_0

    new-instance v1, Lw0/c;

    invoke-direct {v1}, Lw0/c;-><init>()V

    sput-object v1, Lw0/c;->e:Lw0/c;

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
    sget-object v0, Lw0/c;->e:Lw0/c;

    return-object v0
.end method

.method static synthetic G(Lw0/c;)Ly0/a;
    .locals 0

    iget-object p0, p0, Lw0/c;->b:Ly0/a;

    return-object p0
.end method

.method static synthetic H(Lw0/c;)Lx0/b;
    .locals 0

    iget-object p0, p0, Lw0/c;->c:Lx0/b;

    return-object p0
.end method

.method private declared-synchronized J()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/c;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lw0/c;->d:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lw0/c;->d:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized C(Lcom/baidu/tts/client/model/DownloadHandler;)Lcom/baidu/tts/client/model/DownloadHandler;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "Downloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download handler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lw0/c$a;

    invoke-direct {v0, p0, p1}, Lw0/c$a;-><init>(Lw0/c;Lcom/baidu/tts/client/model/DownloadHandler;)V

    invoke-direct {p0}, Lw0/c;->J()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/baidu/tts/client/model/DownloadHandler;->setCheckFuture(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public F(Li1/a;)V
    .locals 1

    iput-object p1, p0, Lw0/c;->a:Li1/a;

    iget-object v0, p0, Lw0/c;->b:Ly0/a;

    invoke-virtual {p1}, Li1/a;->q()Lz0/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly0/a;->e(Lz0/d;)V

    iget-object p1, p0, Lw0/c;->c:Lx0/b;

    iget-object v0, p0, Lw0/c;->a:Li1/a;

    invoke-virtual {p1, v0}, Lx0/b;->S(Li1/a;)V

    return-void
.end method

.method public declared-synchronized I()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lw0/c;->J()Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lw0/c;->c:Lx0/b;

    invoke-virtual {v0}, Lg1/a;->C()V
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
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "Downloader"

    const-string v1, "enter stop"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/c;->b:Ly0/a;

    invoke-virtual {v0}, Ly0/a;->i()V

    iget-object v0, p0, Lw0/c;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lw0/c;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lw0/c;->c:Lx0/b;

    invoke-virtual {v0}, Lg1/a;->e()V

    const-string v0, "Downloader"

    const-string v1, "after engine stop"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    const-string v0, "Downloader"

    const-string v1, "before awaitTermination"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lw0/c;->d:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lb1/l;->c:Lb1/l;

    invoke-virtual {v1}, Lb1/l;->a()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    const-string v1, "Downloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after awaitTermination isTermination="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lw0/c;->d:Ljava/util/concurrent/ExecutorService;

    :cond_1
    const-string v0, "Downloader"

    const-string v1, "end stop"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
