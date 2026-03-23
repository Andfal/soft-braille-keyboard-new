.class public Lcom/vivo/speechsdk/common/utils/BundlePool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_POOL_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String; = "BundlePool"

.field private static sBundlePool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/vivo/speechsdk/common/utils/BundlePool;

.field private static sPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/common/utils/BundlePool;->LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/common/utils/BundlePool;->sBundlePool:Ljava/util/LinkedList;

    const/4 v0, 0x0

    sput v0, Lcom/vivo/speechsdk/common/utils/BundlePool;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/common/utils/BundlePool;->sInstance:Lcom/vivo/speechsdk/common/utils/BundlePool;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/common/utils/BundlePool;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/common/utils/BundlePool;->sInstance:Lcom/vivo/speechsdk/common/utils/BundlePool;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/common/utils/BundlePool;

    invoke-direct {v1}, Lcom/vivo/speechsdk/common/utils/BundlePool;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/common/utils/BundlePool;->sInstance:Lcom/vivo/speechsdk/common/utils/BundlePool;

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
    sget-object v0, Lcom/vivo/speechsdk/common/utils/BundlePool;->sInstance:Lcom/vivo/speechsdk/common/utils/BundlePool;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/common/utils/BundlePool;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/common/utils/BundlePool;->sBundlePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const/4 v1, 0x0

    sput v1, Lcom/vivo/speechsdk/common/utils/BundlePool;->sPoolSize:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public obtain()Landroid/os/Bundle;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/common/utils/BundlePool;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/vivo/speechsdk/common/utils/BundlePool;->sPoolSize:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/vivo/speechsdk/common/utils/BundlePool;->sPoolSize:I

    sget-object v1, Lcom/vivo/speechsdk/common/utils/BundlePool;->sBundlePool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public recycle(Landroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    sget-object v1, Lcom/vivo/speechsdk/common/utils/BundlePool;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v2, Lcom/vivo/speechsdk/common/utils/BundlePool;->sPoolSize:I

    const/16 v3, 0x32

    if-ge v2, v3, :cond_1

    sget-object v2, Lcom/vivo/speechsdk/common/utils/BundlePool;->sBundlePool:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/vivo/speechsdk/common/utils/BundlePool;->sPoolSize:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    sput p1, Lcom/vivo/speechsdk/common/utils/BundlePool;->sPoolSize:I

    monitor-exit v1

    return v0

    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
