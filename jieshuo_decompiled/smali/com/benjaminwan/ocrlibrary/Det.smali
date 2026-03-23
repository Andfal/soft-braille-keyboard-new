.class public Lcom/benjaminwan/ocrlibrary/Det;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final meanValues:[F

.field private static final normValues:[F


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final dilateElement:Lorg/opencv/core/Mat;

.field private final dilateMat:Lorg/opencv/core/Mat;

.field private final modelName:Ljava/lang/String;

.field private final ortEnv:Lai/onnxruntime/OrtEnvironment;

.field private volatile session:Lai/onnxruntime/OrtSession;

.field private final srcResize:Lorg/opencv/core/Mat;

.field private final thresholdMat:Lorg/opencv/core/Mat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/benjaminwan/ocrlibrary/Det;->meanValues:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/benjaminwan/ocrlibrary/Det;->normValues:[F

    return-void

    :array_0
    .array-data 4
        0x42f7599a
        0x42e88f5c    # 116.28f
        0x42cf0f5c    # 103.53f
    .end array-data

    :array_1
    .array-data 4
        0x3c8c4936
        0x3c8f6ad8
        0x3c8ec7ac
    .end array-data
.end method

.method public constructor <init>(Lai/onnxruntime/OrtEnvironment;Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->srcResize:Lorg/opencv/core/Mat;

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->thresholdMat:Lorg/opencv/core/Mat;

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-direct {v0}, Lorg/opencv/core/Mat;-><init>()V

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->dilateMat:Lorg/opencv/core/Mat;

    new-instance v0, Lorg/opencv/core/Size;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/opencv/core/Size;-><init>(DD)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/opencv/imgproc/Imgproc;->getStructuringElement(ILorg/opencv/core/Size;)Lorg/opencv/core/Mat;

    move-result-object v0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->dilateElement:Lorg/opencv/core/Mat;

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/Det;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    iput-object p2, p0, Lcom/benjaminwan/ocrlibrary/Det;->assetManager:Landroid/content/res/AssetManager;

    iput-object p3, p0, Lcom/benjaminwan/ocrlibrary/Det;->modelName:Ljava/lang/String;

    return-void
.end method

.method private findRsBoxes(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lcom/benjaminwan/ocrlibrary/models/ScaleParam;FF)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Lcom/benjaminwan/ocrlibrary/models/ScaleParam;",
            "FF)",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x1

    move-object/from16 v4, p2

    invoke-static {v4, v0, v1, v3, v2}, Lorg/opencv/imgproc/Imgproc;->findContours(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/Mat;II)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/opencv/core/MatOfPoint;

    invoke-virtual {v6}, Lorg/opencv/core/Mat;->elemSize()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v10, v6, v8

    if-gtz v10, :cond_0

    :goto_1
    move-object/from16 v6, p1

    :goto_2
    move/from16 v10, p5

    :goto_3
    move-object v13, v0

    move/from16 v17, v1

    const/4 v1, 0x0

    const/4 v14, 0x1

    goto/16 :goto_8

    :cond_0
    new-instance v6, Lorg/opencv/core/MatOfPoint2f;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/opencv/core/MatOfPoint;

    invoke-virtual {v7}, Lorg/opencv/core/MatOfPoint;->toArray()[Lorg/opencv/core/Point;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/opencv/core/MatOfPoint2f;-><init>([Lorg/opencv/core/Point;)V

    invoke-static {v6}, Lorg/opencv/imgproc/Imgproc;->minAreaRect(Lorg/opencv/core/MatOfPoint2f;)Lorg/opencv/core/RotatedRect;

    move-result-object v6

    const/4 v7, 0x4

    new-array v8, v7, [Lorg/opencv/core/Point;

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_1

    new-instance v10, Lorg/opencv/core/Point;

    invoke-direct {v10}, Lorg/opencv/core/Point;-><init>()V

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_1
    invoke-static {v6, v8}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->getMinBoxes(Lorg/opencv/core/RotatedRect;[Lorg/opencv/core/Point;)F

    move-result v6

    const/4 v9, 0x3

    int-to-float v9, v9

    cmpg-float v6, v6, v9

    if-gez v6, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v6, p1

    invoke-static {v8, v6}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->boxScoreFast([Lorg/opencv/core/Point;Lorg/opencv/core/Mat;)F

    move-result v9

    cmpg-float v10, v9, p4

    if-gez v10, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v10, p5

    invoke-static {v8, v10}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->unClip([Lorg/opencv/core/Point;F)Lorg/opencv/core/RotatedRect;

    move-result-object v8

    iget-object v11, v8, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v12, v11, Lorg/opencv/core/Size;->height:D

    const-wide v14, 0x3ff004189374bc6aL    # 1.001

    cmpg-double v16, v12, v14

    if-gez v16, :cond_4

    iget-wide v11, v11, Lorg/opencv/core/Size;->width:D

    cmpg-double v13, v11, v14

    if-gez v13, :cond_4

    :goto_5
    goto :goto_3

    :cond_4
    new-array v11, v7, [Lorg/opencv/core/Point;

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v7, :cond_5

    new-instance v13, Lorg/opencv/core/Point;

    invoke-direct {v13}, Lorg/opencv/core/Point;-><init>()V

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_5
    invoke-static {v8, v11}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->getMinBoxes(Lorg/opencv/core/RotatedRect;[Lorg/opencv/core/Point;)F

    move-result v8

    const/4 v12, 0x5

    int-to-float v12, v12

    cmpg-float v8, v8, v12

    if-gez v8, :cond_6

    goto :goto_5

    :cond_6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v7, :cond_7

    aget-object v13, v11, v12

    iget-wide v14, v13, Lorg/opencv/core/Point;->x:D

    invoke-virtual/range {p3 .. p3}, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->getRatioWidth()F

    move-result v7

    float-to-double v3, v7

    div-double/2addr v14, v3

    iget-wide v3, v13, Lorg/opencv/core/Point;->y:D

    invoke-virtual/range {p3 .. p3}, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->getRatioHeight()F

    move-result v7

    move-object v13, v0

    move/from16 v17, v1

    float-to-double v0, v7

    div-double/2addr v3, v0

    double-to-int v0, v14

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->getSrcWidth()I

    move-result v7

    const/4 v14, 0x1

    sub-int/2addr v7, v14

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    double-to-int v3, v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->getSrcHeight()I

    move-result v4

    sub-int/2addr v4, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v4, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-direct {v4, v0, v3}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;-><init>(II)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-object v0, v13

    move/from16 v1, v17

    const/4 v3, 0x1

    const/4 v7, 0x4

    goto :goto_7

    :cond_7
    move-object v13, v0

    move/from16 v17, v1

    const/4 v1, 0x0

    const/4 v14, 0x1

    new-instance v0, Lcom/benjaminwan/ocrlibrary/models/DetResult;

    invoke-direct {v0, v8, v9}, Lcom/benjaminwan/ocrlibrary/models/DetResult;-><init>(Ljava/util/List;F)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v5, v5, 0x1

    move-object v0, v13

    move/from16 v1, v17

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-object v2
.end method

.method private getSession()Lai/onnxruntime/OrtSession;
    .locals 3

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->session:Lai/onnxruntime/OrtSession;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->session:Lai/onnxruntime/OrtSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->modelName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/benjaminwan/ocrlibrary/Det;->readAssetBytes(Ljava/lang/String;)[B

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
    iget-object v2, p0, Lcom/benjaminwan/ocrlibrary/Det;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    invoke-virtual {v2, v0, v1}, Lai/onnxruntime/OrtEnvironment;->createSession([BLai/onnxruntime/OrtSession$SessionOptions;)Lai/onnxruntime/OrtSession;

    move-result-object v0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->session:Lai/onnxruntime/OrtSession;
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
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->session:Lai/onnxruntime/OrtSession;

    return-object v0
.end method

.method private readAssetBytes(Ljava/lang/String;)[B
    .locals 6

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->assetManager:Landroid/content/res/AssetManager;

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
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->session:Lai/onnxruntime/OrtSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->session:Lai/onnxruntime/OrtSession;

    invoke-virtual {v0}, Lai/onnxruntime/OrtSession;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/Det;->session:Lai/onnxruntime/OrtSession;
    :try_end_0
    .catch Lai/onnxruntime/OrtException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getDetResults(Lorg/opencv/core/Mat;Lcom/benjaminwan/ocrlibrary/models/ScaleParam;FFF)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lcom/benjaminwan/ocrlibrary/models/ScaleParam;",
            "FFF)",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/benjaminwan/ocrlibrary/Det;->srcResize:Lorg/opencv/core/Mat;

    new-instance v1, Lorg/opencv/core/Size;

    invoke-virtual/range {p2 .. p2}, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->getDstWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->getDstHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/opencv/core/Size;-><init>(DD)V

    move-object/from16 v2, p1

    invoke-static {v2, v0, v1}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    iget-object v0, v7, Lcom/benjaminwan/ocrlibrary/Det;->srcResize:Lorg/opencv/core/Mat;

    sget-object v1, Lcom/benjaminwan/ocrlibrary/Det;->meanValues:[F

    sget-object v2, Lcom/benjaminwan/ocrlibrary/Det;->normValues:[F

    invoke-static {v0, v1, v2}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->substractMeanNormalize(Lorg/opencv/core/Mat;[F[F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [J

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    iget-object v2, v7, Lcom/benjaminwan/ocrlibrary/Det;->srcResize:Lorg/opencv/core/Mat;

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->channels()I

    move-result v2

    int-to-long v2, v2

    const/4 v5, 0x1

    aput-wide v2, v1, v5

    iget-object v2, v7, Lcom/benjaminwan/ocrlibrary/Det;->srcResize:Lorg/opencv/core/Mat;

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    int-to-long v2, v2

    const/4 v5, 0x2

    aput-wide v2, v1, v5

    iget-object v2, v7, Lcom/benjaminwan/ocrlibrary/Det;->srcResize:Lorg/opencv/core/Mat;

    invoke-virtual {v2}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    int-to-long v2, v2

    const/4 v6, 0x3

    aput-wide v2, v1, v6

    invoke-direct/range {p0 .. p0}, Lcom/benjaminwan/ocrlibrary/Det;->getSession()Lai/onnxruntime/OrtSession;

    move-result-object v2

    invoke-virtual {v2}, Lai/onnxruntime/OrtSession;->getInputNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v7, Lcom/benjaminwan/ocrlibrary/Det;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    invoke-static {v0}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-static {v3, v0, v1}, Lai/onnxruntime/OnnxTensor;->createTensor(Lai/onnxruntime/OrtEnvironment;Ljava/nio/FloatBuffer;[J)Lai/onnxruntime/OnnxTensor;

    move-result-object v8

    :try_start_0
    invoke-static {v2, v8}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/benjaminwan/ocrlibrary/Det;->getSession()Lai/onnxruntime/OrtSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lai/onnxruntime/OrtSession;->run(Ljava/util/Map;)Lai/onnxruntime/OrtSession$Result;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v9, v4}, Lai/onnxruntime/OrtSession$Result;->get(I)Lai/onnxruntime/OnnxValue;

    move-result-object v0

    invoke-interface {v0}, Lai/onnxruntime/OnnxValue;->getInfo()Lai/onnxruntime/ValueInfo;

    move-result-object v1

    check-cast v1, Lai/onnxruntime/TensorInfo;

    invoke-interface {v0}, Lai/onnxruntime/OnnxValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[[F

    invoke-virtual {v1}, Lai/onnxruntime/TensorInfo;->getShape()[J

    move-result-object v2

    aget-wide v10, v2, v5

    long-to-int v2, v10

    invoke-virtual {v1}, Lai/onnxruntime/TensorInfo;->getShape()[J

    move-result-object v1

    aget-wide v5, v1, v6

    long-to-int v1, v5

    mul-int v3, v2, v1

    new-array v5, v3, [F

    new-array v3, v3, [B

    array-length v6, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v6, :cond_3

    aget-object v12, v0, v10

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_2

    aget-object v15, v12, v14

    array-length v4, v15

    move-object/from16 v16, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v4, :cond_1

    move/from16 v17, v4

    aget-object v4, v15, v0

    move/from16 v18, v6

    array-length v6, v4

    move-object/from16 v19, v12

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v6, :cond_0

    aget v20, v4, v12

    aput v20, v5, v11

    const/high16 v21, 0x437f0000    # 255.0f

    move-object/from16 v22, v4

    mul-float v4, v20, v21

    float-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v3, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v22

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move/from16 v4, v17

    move/from16 v6, v18

    move-object/from16 v12, v19

    goto :goto_2

    :cond_1
    move/from16 v18, v6

    move-object/from16 v19, v12

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v16

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v16, v0

    move/from16 v18, v6

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/opencv/core/Mat;

    const/4 v4, 0x5

    invoke-direct {v0, v2, v1, v4}, Lorg/opencv/core/Mat;-><init>(III)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v5}, Lorg/opencv/core/Mat;->put(II[F)I

    new-instance v6, Lorg/opencv/core/Mat;

    sget v5, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-direct {v6, v2, v1, v5}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-virtual {v6, v4, v4, v3}, Lorg/opencv/core/Mat;->put(II[B)I

    iget-object v11, v7, Lcom/benjaminwan/ocrlibrary/Det;->thresholdMat:Lorg/opencv/core/Mat;

    move/from16 v1, p4

    float-to-double v1, v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    mul-double v12, v1, v3

    const-wide v14, 0x406fe00000000000L    # 255.0

    const/16 v16, 0x0

    move-object v10, v6

    invoke-static/range {v10 .. v16}, Lorg/opencv/imgproc/Imgproc;->threshold(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;DDI)D

    iget-object v1, v7, Lcom/benjaminwan/ocrlibrary/Det;->thresholdMat:Lorg/opencv/core/Mat;

    iget-object v2, v7, Lcom/benjaminwan/ocrlibrary/Det;->dilateMat:Lorg/opencv/core/Mat;

    iget-object v3, v7, Lcom/benjaminwan/ocrlibrary/Det;->dilateElement:Lorg/opencv/core/Mat;

    invoke-static {v1, v2, v3}, Lorg/opencv/imgproc/Imgproc;->dilate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V

    iget-object v3, v7, Lcom/benjaminwan/ocrlibrary/Det;->dilateMat:Lorg/opencv/core/Mat;

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object v10, v6

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/benjaminwan/ocrlibrary/Det;->findRsBoxes(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lcom/benjaminwan/ocrlibrary/models/ScaleParam;FF)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    invoke-virtual {v10}, Lorg/opencv/core/Mat;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v9}, Lai/onnxruntime/OrtSession$Result;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lai/onnxruntime/OnnxTensor;->close()V

    :cond_4
    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v9, :cond_5

    :try_start_3
    invoke-virtual {v9}, Lai/onnxruntime/OrtSession$Result;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_6

    :try_start_5
    invoke-virtual {v8}, Lai/onnxruntime/OnnxTensor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    throw v1
.end method
