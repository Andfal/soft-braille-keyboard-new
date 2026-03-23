.class public Lcom/baidu/speech/utils/auth/AuthClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthClient"

.field private static volatile mInstance:Lcom/baidu/speech/utils/auth/AuthClient;


# instance fields
.field private context:Landroid/content/Context;

.field private mOfflineMemorizer:Lcom/baidu/speech/utils/auth/Memorizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/speech/utils/auth/Memorizer<",
            "Lcom/baidu/speech/utils/auth/OfflineAuth;",
            "Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;",
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

    new-instance v0, Lcom/baidu/speech/utils/auth/Memorizer;

    invoke-direct {v0}, Lcom/baidu/speech/utils/auth/Memorizer;-><init>()V

    iput-object v0, p0, Lcom/baidu/speech/utils/auth/AuthClient;->mOfflineMemorizer:Lcom/baidu/speech/utils/auth/Memorizer;

    return-void
.end method

.method static synthetic access$000(Lcom/baidu/speech/utils/auth/AuthClient;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/baidu/speech/utils/auth/AuthClient;->getDefaultLicenseFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/baidu/speech/utils/auth/AuthClient;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/baidu/speech/utils/auth/AuthClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/baidu/speech/utils/auth/AuthClient;)Lcom/baidu/speech/utils/auth/Memorizer;
    .locals 0

    iget-object p0, p0, Lcom/baidu/speech/utils/auth/AuthClient;->mOfflineMemorizer:Lcom/baidu/speech/utils/auth/Memorizer;

    return-object p0
.end method

.method private executeTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;
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

.method private executeTaskAndGet(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;
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

    invoke-direct {p0, p1}, Lcom/baidu/speech/utils/auth/AuthClient;->executeTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/FutureTask;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getDefaultLicenseFilePath()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/speech/utils/auth/AuthClient;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "asr_license"

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/baidu/speech/utils/auth/AuthClient;
    .locals 2

    sget-object v0, Lcom/baidu/speech/utils/auth/AuthClient;->mInstance:Lcom/baidu/speech/utils/auth/AuthClient;

    if-nez v0, :cond_1

    const-class v0, Lcom/baidu/speech/utils/auth/AuthClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/speech/utils/auth/AuthClient;->mInstance:Lcom/baidu/speech/utils/auth/AuthClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/speech/utils/auth/AuthClient;

    invoke-direct {v1}, Lcom/baidu/speech/utils/auth/AuthClient;-><init>()V

    sput-object v1, Lcom/baidu/speech/utils/auth/AuthClient;->mInstance:Lcom/baidu/speech/utils/auth/AuthClient;

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
    sget-object v0, Lcom/baidu/speech/utils/auth/AuthClient;->mInstance:Lcom/baidu/speech/utils/auth/AuthClient;

    return-object v0
.end method


# virtual methods
.method public authOffline(Lcom/baidu/speech/utils/auth/OfflineParams;)Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;
    .locals 4

    new-instance v0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;

    invoke-direct {v0}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/speech/utils/auth/OfflineParams;->getAppCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->setAppId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/speech/utils/auth/OfflineParams;->getAuthSN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->setAuthSN(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;

    invoke-direct {v1, p0, p1}, Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;-><init>(Lcom/baidu/speech/utils/auth/AuthClient;Lcom/baidu/speech/utils/auth/OfflineParams;)V

    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v1, v2, v3}, Lcom/baidu/speech/utils/auth/AuthClient;->executeTaskAndGet(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_1

    :catch_0
    const/16 p1, -0x6c

    goto :goto_0

    :catch_1
    const/16 p1, -0x6b

    goto :goto_0

    :catch_2
    const/16 p1, -0x6a

    goto :goto_0

    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    const/16 p1, -0x69

    :goto_0
    invoke-virtual {v0, p1}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;->setError(I)V

    :goto_1
    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/AuthClient;->mOfflineMemorizer:Lcom/baidu/speech/utils/auth/Memorizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/speech/utils/auth/Memorizer;->clear()V

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/AuthClient;->context:Landroid/content/Context;

    return-void
.end method
