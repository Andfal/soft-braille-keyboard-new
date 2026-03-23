.class public Lcom/vivo/speechsdk/common/thread/a;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SpeechThreadPool"

.field private static final b:I = 0x1e

.field private static volatile c:Lcom/vivo/speechsdk/common/thread/a;

.field private static final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/vivo/speechsdk/common/thread/a;->d:I

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    sget v2, Lcom/vivo/speechsdk/common/thread/a;->d:I

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/vivo/speechsdk/common/thread/a$a;

    invoke-direct {v7}, Lcom/vivo/speechsdk/common/thread/a$a;-><init>()V

    new-instance v8, Lcom/vivo/speechsdk/common/thread/a$b;

    invoke-direct {v8}, Lcom/vivo/speechsdk/common/thread/a$b;-><init>()V

    const/4 v1, 0x0

    const-wide/16 v3, 0x1e

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public static a()Lcom/vivo/speechsdk/common/thread/a;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/common/thread/a;->c:Lcom/vivo/speechsdk/common/thread/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/common/thread/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/common/thread/a;->c:Lcom/vivo/speechsdk/common/thread/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/common/thread/a;

    invoke-direct {v1}, Lcom/vivo/speechsdk/common/thread/a;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/common/thread/a;->c:Lcom/vivo/speechsdk/common/thread/a;

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
    sget-object v0, Lcom/vivo/speechsdk/common/thread/a;->c:Lcom/vivo/speechsdk/common/thread/a;

    return-object v0
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    if-nez p2, :cond_0

    instance-of v0, p1, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p1, Ljava/util/concurrent/Future;

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    :catch_2
    move-exception p1

    move-object p2, p1

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Running Thread happen exception ! Thread ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] msg--["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SpeechThreadPool"

    invoke-static {v0, p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
