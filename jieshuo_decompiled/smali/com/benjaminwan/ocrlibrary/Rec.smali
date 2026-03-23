.class public Lcom/benjaminwan/ocrlibrary/Rec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DST_HEIGHT:D = 48.0

.field private static final MEAN_VALUES:[F

.field private static final NORM_VALUES:[F

.field public static final cleanupInterval:I = 0x64

.field public static final maxCacheSize:I = 0x80

.field public static final maxPoolSize:I = 0xa

.field public static final poolCleanThreshold:I = 0x40


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final chekArabic:Z

.field private final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private volatile inputName:Ljava/lang/String;

.field private volatile keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final matPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation
.end field

.field private final modelName:Ljava/lang/String;

.field private final ortEnv:Lai/onnxruntime/OrtEnvironment;

.field private volatile session:Lai/onnxruntime/OrtSession;

.field private final shapeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field private final usageCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/benjaminwan/ocrlibrary/Rec;->MEAN_VALUES:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/benjaminwan/ocrlibrary/Rec;->NORM_VALUES:[F

    return-void

    :array_0
    .array-data 4
        0x42ff0000    # 127.5f
        0x42ff0000    # 127.5f
        0x42ff0000    # 127.5f
    .end array-data

    :array_1
    .array-data 4
        0x3c008081
        0x3c008081
        0x3c008081
    .end array-data
.end method

.method public constructor <init>(Lai/onnxruntime/OrtEnvironment;Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->shapeCache:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->usageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "arabic"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->chekArabic:Z

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    iput-object p2, p0, Lcom/benjaminwan/ocrlibrary/Rec;->assetManager:Landroid/content/res/AssetManager;

    iput-object p3, p0, Lcom/benjaminwan/ocrlibrary/Rec;->modelName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p1

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static synthetic a(Lcom/benjaminwan/ocrlibrary/Rec;Lorg/opencv/core/Mat;)Lcom/benjaminwan/ocrlibrary/models/RecResult;
    .locals 0

    invoke-direct {p0, p1}, Lcom/benjaminwan/ocrlibrary/Rec;->lambda$getRecResults$0(Lorg/opencv/core/Mat;)Lcom/benjaminwan/ocrlibrary/models/RecResult;

    move-result-object p0

    return-object p0
.end method

.method private borrowMat()Lorg/opencv/core/Mat;
    .locals 3

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/opencv/core/Mat;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cleanMatPool(I)V
    .locals 3

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/opencv/core/Mat;

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->release()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private cleanShapeCache()V
    .locals 7

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->shapeCache:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->shapeCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/16 v2, 0x80

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/benjaminwan/ocrlibrary/Rec;->shapeCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/benjaminwan/ocrlibrary/Rec;->shapeCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    if-ge v4, v2, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v6

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/benjaminwan/ocrlibrary/Rec;->shapeCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getInputName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->inputName:Ljava/lang/String;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->inputName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Rec;->getSession()Lai/onnxruntime/OrtSession;

    move-result-object v0

    invoke-virtual {v0}, Lai/onnxruntime/OrtSession;->getInputNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->inputName:Ljava/lang/String;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->inputName:Ljava/lang/String;

    return-object v0
.end method

.method private getInputShape(III)[J
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->shapeCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->shapeCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    return-object p1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [J

    const/4 v2, 0x0

    const-wide/16 v3, 0x1

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    int-to-long v3, p1

    aput-wide v3, v1, v2

    const/4 p1, 0x2

    int-to-long v2, p2

    aput-wide v2, v1, p1

    const/4 p1, 0x3

    int-to-long p2, p3

    aput-wide p2, v1, p1

    iget-object p1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->shapeCache:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private getKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->keys:Ljava/util/List;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->keys:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Rec;->getSession()Lai/onnxruntime/OrtSession;

    move-result-object v0

    invoke-virtual {v0}, Lai/onnxruntime/OrtSession;->getMetadata()Lai/onnxruntime/OnnxModelMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lai/onnxruntime/OnnxModelMetadata;->getCustomMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v1, "character"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "#"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, " "

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->keys:Ljava/util/List;

    goto :goto_0

    :cond_0
    const-string v0, "#"

    const-string v1, " "

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->keys:Ljava/util/List;
    :try_end_1
    .catch Lai/onnxruntime/OrtException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to get keys"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->keys:Ljava/util/List;

    return-object v0
.end method

.method private getSession()Lai/onnxruntime/OrtSession;
    .locals 3

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->session:Lai/onnxruntime/OrtSession;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->session:Lai/onnxruntime/OrtSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->modelName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/benjaminwan/ocrlibrary/Rec;->readAssetBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lai/onnxruntime/OrtSession$SessionOptions;

    invoke-direct {v1}, Lai/onnxruntime/OrtSession$SessionOptions;-><init>()V

    sget-object v2, Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;->ALL_OPT:Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;

    invoke-virtual {v1, v2}, Lai/onnxruntime/OrtSession$SessionOptions;->setOptimizationLevel(Lai/onnxruntime/OrtSession$SessionOptions$OptLevel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lai/onnxruntime/OrtSession$SessionOptions;->addNnapi()V
    :try_end_2
    .catch Lai/onnxruntime/OrtException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {v1, v2}, Lai/onnxruntime/OrtSession$SessionOptions;->addCPU(Z)V

    :goto_0
    iget-object v2, p0, Lcom/benjaminwan/ocrlibrary/Rec;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    invoke-virtual {v2, v0, v1}, Lai/onnxruntime/OrtEnvironment;->createSession([BLai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object v0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->session:Lai/onnxruntime/OrtSession;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create session"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->session:Lai/onnxruntime/OrtSession;

    return-object v0
.end method

.method private static isArabicCodePoint(IZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0x600

    if-lt p0, p1, :cond_1

    const/16 p1, 0x6ff

    if-le p0, p1, :cond_6

    :cond_1
    const/16 p1, 0x750

    if-lt p0, p1, :cond_2

    const/16 p1, 0x77f

    if-le p0, p1, :cond_6

    :cond_2
    const/16 p1, 0x8a0

    if-lt p0, p1, :cond_3

    const/16 p1, 0x8ff

    if-le p0, p1, :cond_6

    :cond_3
    const/16 p1, 0x860

    if-lt p0, p1, :cond_4

    const/16 p1, 0x89f

    if-le p0, p1, :cond_6

    :cond_4
    const p1, 0x1ee00

    if-lt p0, p1, :cond_5

    const p1, 0x1eeff

    if-gt p0, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0
.end method

.method private synthetic lambda$getRecResults$0(Lorg/opencv/core/Mat;)Lcom/benjaminwan/ocrlibrary/models/RecResult;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/benjaminwan/ocrlibrary/Rec;->getRecResult(Lorg/opencv/core/Mat;)Lcom/benjaminwan/ocrlibrary/models/RecResult;

    move-result-object p1

    return-object p1
.end method

.method private performAutoCleanup()V
    .locals 4

    const-string v0, "Rec"

    const/16 v1, 0xa

    :try_start_0
    invoke-direct {p0, v1}, Lcom/benjaminwan/ocrlibrary/Rec;->cleanMatPool(I)V

    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Rec;->cleanShapeCache()V

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto cleanup performed - MatPool: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ShapeCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/benjaminwan/ocrlibrary/Rec;->shapeCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error during auto cleanup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private readAssetBytes(Ljava/lang/String;)[B
    .locals 6

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->assetManager:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const v2, 0xc8000

    :try_start_1
    new-array v3, v2, [B

    :goto_0
    invoke-virtual {p1, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_1

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw v0
.end method

.method private returnMat(Lorg/opencv/core/Mat;)V
    .locals 3

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/opencv/core/Mat;->release()V

    :goto_0
    iget-object p1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x40

    if-le p1, v1, :cond_1

    const/16 p1, 0x20

    invoke-direct {p0, p1}, Lcom/benjaminwan/ocrlibrary/Rec;->cleanMatPool(I)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private scoreToTextLine(Ljava/util/List;)Lcom/benjaminwan/ocrlibrary/models/RecResult;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)",
            "Lcom/benjaminwan/ocrlibrary/models/RecResult;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    aget v7, v6, v2

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_1
    array-length v11, v6

    if-ge v9, v11, :cond_1

    aget v11, v6, v9

    cmpl-float v12, v11, v7

    if-lez v12, :cond_0

    move v10, v9

    move v7, v11

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    if-lt v10, v8, :cond_4

    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Rec;->getKeys()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v10, v6, :cond_4

    if-eq v10, v3, :cond_4

    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Rec;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-boolean v6, p0, Lcom/benjaminwan/ocrlibrary/Rec;->chekArabic:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6, v4}, Lcom/benjaminwan/ocrlibrary/Rec;->isArabicCodePoint(IZ)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move v5, v4

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {v0, v5, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_2
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move v3, v10

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/benjaminwan/ocrlibrary/models/RecResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v1}, Lcom/benjaminwan/ocrlibrary/models/RecResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :try_start_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/opencv/core/Mat;

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->release()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->shapeCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->usageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "Rec"

    const-string v1, "Full cleanup completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->session:Lai/onnxruntime/OrtSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->session:Lai/onnxruntime/OrtSession;

    invoke-virtual {v0}, Lai/onnxruntime/OrtSession;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->session:Lai/onnxruntime/OrtSession;
    :try_end_0
    .catch Lai/onnxruntime/OrtException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getRecResult(Lorg/opencv/core/Mat;)Lcom/benjaminwan/ocrlibrary/models/RecResult;
    .locals 7

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4048000000000000L    # 48.0

    div-double v0, v2, v0

    invoke-virtual {p1}, Lorg/opencv/core/Mat;->cols()I

    move-result v4

    int-to-double v4, v4

    mul-double v4, v4, v0

    double-to-int v0, v4

    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Rec;->borrowMat()Lorg/opencv/core/Mat;

    move-result-object v1

    :try_start_0
    new-instance v4, Lorg/opencv/core/Size;

    int-to-double v5, v0

    invoke-direct {v4, v5, v6, v2, v3}, Lorg/opencv/core/Size;-><init>(DD)V

    invoke-static {p1, v1, v4}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    sget-object p1, Lcom/benjaminwan/ocrlibrary/Rec;->MEAN_VALUES:[F

    sget-object v0, Lcom/benjaminwan/ocrlibrary/Rec;->NORM_VALUES:[F

    invoke-static {v1, p1, v0}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->substractMeanNormalize(Lorg/opencv/core/Mat;[F[F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object p1

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->channels()I

    move-result v0

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/benjaminwan/ocrlibrary/Rec;->getInputShape(III)[J

    move-result-object v0

    iget-object v2, p0, Lcom/benjaminwan/ocrlibrary/Rec;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    invoke-static {p1}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Rec;->getInputName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Rec;->getSession()Lai/onnxruntime/OrtSession;

    move-result-object v2

    invoke-virtual {v2, v0}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v0, v2}, Lai/onnxruntime/OrtSession$Result;->get(I)Lai/onnxruntime/OnnxValue;

    move-result-object v3

    invoke-interface {v3}, Lai/onnxruntime/OnnxValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[F

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v3, v2

    invoke-static {v4, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/benjaminwan/ocrlibrary/Rec;->scoreToTextLine(Ljava/util/List;)Lcom/benjaminwan/ocrlibrary/models/RecResult;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Lai/onnxruntime/OrtSession$Result;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p1, :cond_1

    :try_start_4
    invoke-virtual {p1}, Lai/onnxruntime/OnnxTensor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_1
    invoke-direct {p0, v1}, Lcom/benjaminwan/ocrlibrary/Rec;->returnMat(Lorg/opencv/core/Mat;)V

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Lai/onnxruntime/OrtSession$Result;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz p1, :cond_3

    :try_start_7
    invoke-virtual {p1}, Lai/onnxruntime/OnnxTensor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error in getRecResult"

    invoke-direct {v0, v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_3
    invoke-direct {p0, v1}, Lcom/benjaminwan/ocrlibrary/Rec;->returnMat(Lorg/opencv/core/Mat;)V

    throw p1
.end method

.method public getRecResults(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/RecResult;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->usageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/opencv/core/Mat;

    invoke-virtual {p0, p1}, Lcom/benjaminwan/ocrlibrary/Rec;->getRecResult(Lorg/opencv/core/Mat;)Lcom/benjaminwan/ocrlibrary/models/RecResult;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Rec;->performAutoCleanup()V

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->usageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_1
    return-object p1

    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/opencv/core/Mat;

    iget-object v5, p0, Lcom/benjaminwan/ocrlibrary/Rec;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lcom/benjaminwan/ocrlibrary/a;

    invoke-direct {v6, p0, v4}, Lcom/benjaminwan/ocrlibrary/a;-><init>(Lcom/benjaminwan/ocrlibrary/Rec;Lorg/opencv/core/Mat;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/benjaminwan/ocrlibrary/models/RecResult;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "Rec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error processing image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/benjaminwan/ocrlibrary/models/RecResult;

    const-string v5, ""

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/benjaminwan/ocrlibrary/models/RecResult;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_4
    if-lt v0, v1, :cond_5

    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Rec;->performAutoCleanup()V

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->usageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_5
    return-object p1

    :catchall_0
    move-exception p1

    if-lt v0, v1, :cond_6

    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Rec;->performAutoCleanup()V

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->usageCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_6
    throw p1
.end method

.method public getResourceUsage()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MatPool: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->matPool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ShapeCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->shapeCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ActiveThreads: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", CompletedTasks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Rec;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public partialCleanup()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/benjaminwan/ocrlibrary/Rec;->cleanMatPool(I)V

    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Rec;->cleanShapeCache()V

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Rec;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->purge()V

    return-void
.end method
