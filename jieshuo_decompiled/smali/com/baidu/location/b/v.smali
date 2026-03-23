.class public Lcom/baidu/location/b/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/b/v$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/v$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/b/v;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/location/b/v;
    .locals 1

    invoke-static {}, Lcom/baidu/location/b/v$a;->a()Lcom/baidu/location/b/v;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b/v;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/v;->a:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/v;->a:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/v;->a:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Ljava/util/concurrent/ExecutorService;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/b/v;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/b/v;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/b/v;->b:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/b/v;->b:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b/v;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/b/v;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method
