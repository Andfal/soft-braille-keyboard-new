.class public Lcom/benjaminwan/ocrlibrary/Cls;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DST_HEIGHT:D

.field private static DST_WIDTH:D

.field private static final meanValues:[F

.field private static final normValues:[F


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final modelName:Ljava/lang/String;

.field private final ortEnv:Lai/onnxruntime/OrtEnvironment;

.field private volatile session:Lai/onnxruntime/OrtSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/benjaminwan/ocrlibrary/Cls;->meanValues:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/benjaminwan/ocrlibrary/Cls;->normValues:[F

    const-wide/high16 v0, 0x4068000000000000L    # 192.0

    sput-wide v0, Lcom/benjaminwan/ocrlibrary/Cls;->DST_WIDTH:D

    const-wide/high16 v0, 0x4048000000000000L    # 48.0

    sput-wide v0, Lcom/benjaminwan/ocrlibrary/Cls;->DST_HEIGHT:D

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
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/Cls;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    iput-object p2, p0, Lcom/benjaminwan/ocrlibrary/Cls;->assetManager:Landroid/content/res/AssetManager;

    iput-object p3, p0, Lcom/benjaminwan/ocrlibrary/Cls;->modelName:Ljava/lang/String;

    return-void
.end method

.method private getClsResult(Lorg/opencv/core/Mat;)Lcom/benjaminwan/ocrlibrary/models/ClsResult;
    .locals 2

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/benjaminwan/ocrlibrary/Cls;->getClsResultsBatch(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/benjaminwan/ocrlibrary/models/ClsResult;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lcom/benjaminwan/ocrlibrary/models/ClsResult;-><init>(IF)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/benjaminwan/ocrlibrary/models/ClsResult;

    :goto_0
    return-object p1
.end method

.method private getClsResultsBatch(Ljava/util/List;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/ClsResult;",
            ">;"
        }
    .end annotation

    const-string v1, "Error closing output"

    const-string v2, "Error closing inputTensor"

    const-string v3, "Cls"

    if-eqz p1, :cond_b

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_11

    :cond_0
    const-string v0, "getClsResultsBatch: "

    const-string v4, ""

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/benjaminwan/ocrlibrary/Cls;->getSession()Lai/onnxruntime/OrtSession;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    sget-wide v8, Lcom/benjaminwan/ocrlibrary/Cls;->DST_HEIGHT:D

    double-to-int v8, v8

    sget-wide v9, Lcom/benjaminwan/ocrlibrary/Cls;->DST_WIDTH:D

    double-to-int v9, v9

    mul-int/lit8 v10, v7, 0x3

    mul-int v10, v10, v8

    mul-int v10, v10, v9

    new-array v10, v10, [F

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13
    :try_end_0
    .catch Lai/onnxruntime/OrtException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v13, :cond_1

    :try_start_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/opencv/core/Mat;

    sget-wide v14, Lcom/benjaminwan/ocrlibrary/Cls;->DST_WIDTH:D

    sget-wide v5, Lcom/benjaminwan/ocrlibrary/Cls;->DST_HEIGHT:D

    invoke-static {v13, v14, v15, v5, v6}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->adjustToDst(Lorg/opencv/core/Mat;DD)Lorg/opencv/core/Mat;

    move-result-object v5

    sget-object v6, Lcom/benjaminwan/ocrlibrary/Cls;->meanValues:[F

    sget-object v13, Lcom/benjaminwan/ocrlibrary/Cls;->normValues:[F

    invoke-static {v5, v6, v13}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->substractMeanNormalize(Lorg/opencv/core/Mat;[F[F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v5

    array-length v6, v5

    const/4 v13, 0x0

    invoke-static {v5, v13, v10, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5
    :try_end_1
    .catch Lai/onnxruntime/OrtException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v12, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object/from16 v8, p0

    goto/16 :goto_d

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object/from16 v8, p0

    goto/16 :goto_9

    :cond_1
    const/4 v5, 0x4

    :try_start_2
    new-array v5, v5, [J

    int-to-long v11, v7

    const/4 v6, 0x0

    aput-wide v11, v5, v6

    const/4 v6, 0x3

    int-to-long v11, v6

    const/4 v13, 0x1

    aput-wide v11, v5, v13

    const/4 v11, 0x2

    int-to-long v12, v8

    aput-wide v12, v5, v11

    int-to-long v8, v9

    aput-wide v8, v5, v6

    invoke-virtual {v0}, Lai/onnxruntime/OrtSession;->getInputNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_2
    .catch Lai/onnxruntime/OrtException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v8, p0

    :try_start_3
    iget-object v9, v8, Lcom/benjaminwan/ocrlibrary/Cls;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    invoke-static {v10}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v10

    invoke-static {v9, v10, v5}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object v5
    :try_end_3
    .catch Lai/onnxruntime/OrtException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {v6, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0, v6}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;

    move-result-object v6
    :try_end_4
    .catch Lai/onnxruntime/OrtException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v6, v9}, Lai/onnxruntime/OrtSession$Result;->get(I)Lai/onnxruntime/OnnxValue;

    move-result-object v0

    invoke-interface {v0}, Lai/onnxruntime/OnnxValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v7, :cond_4

    aget-object v9, v0, v13

    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    array-length v14, v9

    if-ge v11, v14, :cond_3

    aget v14, v9, v11

    cmpl-float v15, v14, v10

    if-lez v15, :cond_2

    move v12, v11

    move v10, v14

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    new-instance v9, Lcom/benjaminwan/ocrlibrary/models/ClsResult;

    invoke-direct {v9, v12, v10}, Lcom/benjaminwan/ocrlibrary/models/ClsResult;-><init>(IF)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lai/onnxruntime/OrtException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    :try_start_6
    invoke-virtual {v5}, Lai/onnxruntime/OnnxTensor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v0

    invoke-static {v3, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_3
    :try_start_7
    invoke-virtual {v6}, Lai/onnxruntime/OrtSession$Result;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-object v4

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object/from16 v16, v6

    goto :goto_e

    :catch_3
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v4, v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v8, p0

    :goto_5
    move-object v4, v0

    const/4 v5, 0x0

    :goto_6
    const/16 v16, 0x0

    goto :goto_e

    :catch_6
    move-exception v0

    move-object/from16 v8, p0

    :goto_7
    const/4 v5, 0x0

    :goto_8
    const/16 v16, 0x0

    :goto_9
    :try_start_8
    const-string v6, "Error in getClsResultsBatch"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v13, 0x0

    :goto_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_6

    new-instance v0, Lcom/benjaminwan/ocrlibrary/models/ClsResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v0, v7, v6}, Lcom/benjaminwan/ocrlibrary/models/ClsResult;-><init>(IF)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_6
    if-eqz v5, :cond_7

    :try_start_9
    invoke-virtual {v5}, Lai/onnxruntime/OnnxTensor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    move-object v5, v0

    invoke-static {v3, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_b
    if-eqz v16, :cond_8

    :try_start_a
    invoke-virtual/range {v16 .. v16}, Lai/onnxruntime/OrtSession$Result;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_c
    return-object v4

    :catchall_5
    move-exception v0

    :goto_d
    move-object v4, v0

    :goto_e
    if-eqz v5, :cond_9

    :try_start_b
    invoke-virtual {v5}, Lai/onnxruntime/OnnxTensor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v5, v0

    invoke-static {v3, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_f
    if-eqz v16, :cond_a

    :try_start_c
    invoke-virtual/range {v16 .. v16}, Lai/onnxruntime/OrtSession$Result;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_10
    throw v4

    :cond_b
    :goto_11
    move-object/from16 v8, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private getSession()Lai/onnxruntime/OrtSession;
    .locals 3

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Cls;->session:Lai/onnxruntime/OrtSession;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Cls;->session:Lai/onnxruntime/OrtSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Cls;->modelName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/benjaminwan/ocrlibrary/Cls;->readAssetBytes(Ljava/lang/String;)[B

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
    iget-object v2, p0, Lcom/benjaminwan/ocrlibrary/Cls;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    invoke-virtual {v2, v0, v1}, Lai/onnxruntime/OrtEnvironment;->createSession([BLai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object v0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Cls;->session:Lai/onnxruntime/OrtSession;

    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/Cls;->initInputDimensions()V
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
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Cls;->session:Lai/onnxruntime/OrtSession;

    return-object v0
.end method

.method private initInputDimensions()V
    .locals 7

    const-string v0, "Ori"

    :try_start_0
    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/Cls;->session:Lai/onnxruntime/OrtSession;

    invoke-virtual {v1}, Lai/onnxruntime/OrtSession;->getInputInfo()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lai/onnxruntime/NodeInfo;

    invoke-virtual {v1}, Lai/onnxruntime/NodeInfo;->getInfo()Lai/onnxruntime/ValueInfo;

    move-result-object v1

    check-cast v1, Lai/onnxruntime/TensorInfo;

    invoke-virtual {v1}, Lai/onnxruntime/TensorInfo;->getShape()[J

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3

    const/4 v2, 0x2

    aget-wide v2, v1, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    long-to-int v3, v2

    int-to-double v2, v3

    sput-wide v2, Lcom/benjaminwan/ocrlibrary/Cls;->DST_HEIGHT:D

    :cond_1
    const/4 v2, 0x3

    aget-wide v2, v1, v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    long-to-int v1, v2

    int-to-double v1, v1

    sput-wide v1, Lcom/benjaminwan/ocrlibrary/Cls;->DST_WIDTH:D

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected input dimensions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/benjaminwan/ocrlibrary/Cls;->DST_WIDTH:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/benjaminwan/ocrlibrary/Cls;->DST_HEIGHT:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error detecting input dimensions"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private readAssetBytes(Ljava/lang/String;)[B
    .locals 6

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Cls;->assetManager:Landroid/content/res/AssetManager;

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


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Cls;->session:Lai/onnxruntime/OrtSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Cls;->session:Lai/onnxruntime/OrtSession;

    invoke-virtual {v0}, Lai/onnxruntime/OrtSession;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Cls;->session:Lai/onnxruntime/OrtSession;
    :try_end_0
    .catch Lai/onnxruntime/OrtException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getClsResults(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/ClsResult;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x40

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/benjaminwan/ocrlibrary/Cls;->getClsResultsBatch(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v1, 0x40

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/benjaminwan/ocrlibrary/Cls;->getClsResultsBatch(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v1, v2

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
