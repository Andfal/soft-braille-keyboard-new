.class public Lcom/benjaminwan/ocrlibrary/OcrEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final CLS_NAME:Ljava/lang/String; = "cls.onnx"

.field private static final DET_NAME:Ljava/lang/String; = "det.onnx"

.field private static REC_NAME:Ljava/lang/String; = "zh.onnx"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private cls:Lcom/benjaminwan/ocrlibrary/Cls;

.field private det:Lcom/benjaminwan/ocrlibrary/Det;

.field private ortEnv:Lai/onnxruntime/OrtEnvironment;

.field private rec:Lcom/benjaminwan/ocrlibrary/Rec;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->assetManager:Landroid/content/res/AssetManager;

    invoke-static {}, Lorg/opencv/android/OpenCVLoader;->initDebug()Z

    move-result p1

    const-string v0, "OcrEngine"

    if-eqz p1, :cond_0

    const-string p1, "OpenCV library found inside package."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".onnx"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/benjaminwan/ocrlibrary/OcrEngine;->REC_NAME:Ljava/lang/String;

    invoke-direct {p0}, Lcom/benjaminwan/ocrlibrary/OcrEngine;->initializeModels()V

    return-void

    :cond_0
    const-string p1, "Internal OpenCV library not found."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {p2, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private fullDetect(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;Lcom/benjaminwan/ocrlibrary/models/ScaleParam;FFFZZ)Lcom/benjaminwan/ocrlibrary/models/OcrResult;
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Lorg/opencv/core/TickMeter;

    invoke-direct {v1}, Lorg/opencv/core/TickMeter;-><init>()V

    invoke-virtual {v1}, Lorg/opencv/core/TickMeter;->start()V

    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->clone()Lorg/opencv/core/Mat;

    invoke-static/range {p1 .. p1}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->getThickness(Lorg/opencv/core/Mat;)I

    const-string v2, "=====Start detect====="

    const-string v3, "OcrEngine"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/opencv/core/TickMeter;

    invoke-direct {v2}, Lorg/opencv/core/TickMeter;-><init>()V

    invoke-virtual {v2}, Lorg/opencv/core/TickMeter;->start()V

    const-string v4, "---------- step: Get DetResults ----------"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->det:Lcom/benjaminwan/ocrlibrary/Det;

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v5 .. v10}, Lcom/benjaminwan/ocrlibrary/Det;->getDetResults(Lorg/opencv/core/Mat;Lcom/benjaminwan/ocrlibrary/models/ScaleParam;FFF)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2}, Lorg/opencv/core/TickMeter;->stop()V

    const-string v4, "---------- step: Get PartMats ----------"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p1

    invoke-static {v4, v7}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->getPartMats(Lorg/opencv/core/Mat;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/opencv/core/TickMeter;

    invoke-direct {v5}, Lorg/opencv/core/TickMeter;-><init>()V

    invoke-virtual {v5}, Lorg/opencv/core/TickMeter;->start()V

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-eqz p7, :cond_3

    const-string v9, "---------- step: Get ClsResults ----------"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->cls:Lcom/benjaminwan/ocrlibrary/Cls;

    invoke-virtual {v9, v4}, Lcom/benjaminwan/ocrlibrary/Cls;->getClsResults(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    const-string v10, "---------- step2: Get ClsResults ----------"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p8, :cond_4

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/benjaminwan/ocrlibrary/models/ClsResult;

    invoke-virtual {v12}, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->getIndex()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    goto :goto_0

    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    int-to-float v10, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    cmpg-float v10, v11, v10

    if-gez v10, :cond_1

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    const/4 v10, 0x1

    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/benjaminwan/ocrlibrary/models/ClsResult;

    invoke-virtual {v12, v10}, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->copy(I)Lcom/benjaminwan/ocrlibrary/models/ClsResult;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object v9, v11

    goto :goto_3

    :cond_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    :goto_3
    invoke-virtual {v5}, Lorg/opencv/core/TickMeter;->stop()V

    if-eqz p7, :cond_7

    const-string v10, "---------- step: Rotate partImages ----------"

    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_6

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/opencv/core/Mat;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/benjaminwan/ocrlibrary/models/ClsResult;

    invoke-virtual {v13}, Lcom/benjaminwan/ocrlibrary/models/ClsResult;->getIndex()I

    move-result v13

    if-ne v13, v8, :cond_5

    invoke-static {v12}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->matRotateClockWise180(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;

    move-result-object v12

    :cond_5
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    move-object v4, v10

    :cond_7
    new-instance v10, Lorg/opencv/core/TickMeter;

    invoke-direct {v10}, Lorg/opencv/core/TickMeter;-><init>()V

    invoke-virtual {v10}, Lorg/opencv/core/TickMeter;->start()V

    const-string v11, "---------- step: Get RecResults ----------"

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->rec:Lcom/benjaminwan/ocrlibrary/Rec;

    invoke-virtual {v3, v4}, Lcom/benjaminwan/ocrlibrary/Rec;->getRecResults(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v10}, Lorg/opencv/core/TickMeter;->stop()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_9

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/benjaminwan/ocrlibrary/models/RecResult;

    invoke-virtual {v11}, Lcom/benjaminwan/ocrlibrary/models/RecResult;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    if-ge v6, v11, :cond_8

    const-string v11, "\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v1}, Lorg/opencv/core/TickMeter;->stop()V

    new-instance v4, Lcom/benjaminwan/ocrlibrary/models/OcrResult;

    invoke-virtual {v2}, Lorg/opencv/core/TickMeter;->getTimeMilli()D

    move-result-wide v11

    invoke-virtual {v5}, Lorg/opencv/core/TickMeter;->getTimeMilli()D

    move-result-wide v13

    invoke-virtual {v10}, Lorg/opencv/core/TickMeter;->getTimeMilli()D

    move-result-wide v15

    invoke-virtual {v1}, Lorg/opencv/core/TickMeter;->getTimeMilli()D

    move-result-wide v1

    const/16 v18, 0x0

    move-object v6, v4

    move-object v8, v9

    move-object v9, v3

    move-wide v10, v11

    move-wide v12, v13

    move-wide v14, v15

    move-wide/from16 v16, v1

    invoke-direct/range {v6 .. v19}, Lcom/benjaminwan/ocrlibrary/models/OcrResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;DDDDLandroid/graphics/Bitmap;Ljava/lang/String;)V

    return-object v4
.end method

.method private initializeModels()V
    .locals 4

    invoke-static {}, Lai/onnxruntime/OrtEnvironment;->getEnvironment()Lai/onnxruntime/OrtEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    new-instance v0, Lcom/benjaminwan/ocrlibrary/Det;

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    iget-object v2, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->assetManager:Landroid/content/res/AssetManager;

    const-string v3, "det.onnx"

    invoke-direct {v0, v1, v2, v3}, Lcom/benjaminwan/ocrlibrary/Det;-><init>(Lai/onnxruntime/OrtEnvironment;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->det:Lcom/benjaminwan/ocrlibrary/Det;

    new-instance v0, Lcom/benjaminwan/ocrlibrary/Cls;

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    iget-object v2, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->assetManager:Landroid/content/res/AssetManager;

    const-string v3, "cls.onnx"

    invoke-direct {v0, v1, v2, v3}, Lcom/benjaminwan/ocrlibrary/Cls;-><init>(Lai/onnxruntime/OrtEnvironment;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->cls:Lcom/benjaminwan/ocrlibrary/Cls;

    new-instance v0, Lcom/benjaminwan/ocrlibrary/Rec;

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    iget-object v2, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->assetManager:Landroid/content/res/AssetManager;

    sget-object v3, Lcom/benjaminwan/ocrlibrary/OcrEngine;->REC_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/benjaminwan/ocrlibrary/Rec;-><init>(Lai/onnxruntime/OrtEnvironment;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->rec:Lcom/benjaminwan/ocrlibrary/Rec;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->det:Lcom/benjaminwan/ocrlibrary/Det;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/Det;->close()V

    :cond_0
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->cls:Lcom/benjaminwan/ocrlibrary/Cls;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/Cls;->close()V

    :cond_1
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->rec:Lcom/benjaminwan/ocrlibrary/Rec;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/Rec;->close()V

    :cond_2
    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    invoke-virtual {v0}, Lai/onnxruntime/OrtEnvironment;->close()V

    return-void
.end method

.method public detect(Landroid/graphics/Bitmap;ZIIFFFZZ)Lcom/benjaminwan/ocrlibrary/models/OcrResult;
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    const-string v3, "=====Prepare====="

    const-string v4, "OcrEngine"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parameter: scaleUp("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "), maxSideLen("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), padding("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "),boxScoreThresh("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "),boxThresh("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p6

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "),unClipRatio("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p7

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "),doCls("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p8

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "),mostCls("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p9

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "---------- step: input Bitmap -> Mat(RGBA) -> Mat(BGR) ----------"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lorg/opencv/core/Mat;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget v8, Lorg/opencv/core/CvType;->CV_8UC4:I

    invoke-direct {v3, v6, v7, v8}, Lorg/opencv/core/Mat;-><init>(III)V

    move-object/from16 v6, p1

    invoke-static {v6, v3}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    new-instance v6, Lorg/opencv/core/Mat;

    invoke-direct {v6}, Lorg/opencv/core/Mat;-><init>()V

    const/4 v7, 0x3

    invoke-static {v3, v6, v7}, Lorg/opencv/imgproc/Imgproc;->cvtColor(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    const-string v3, "---------- step: Resize ----------"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    invoke-virtual {v6}, Lorg/opencv/core/Mat;->rows()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz v0, :cond_1

    if-gtz v1, :cond_2

    :cond_0
    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    if-lez v1, :cond_0

    if-ge v3, v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    mul-int/lit8 v0, v2, 0x2

    add-int/2addr v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resize="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lorg/opencv/core/Rect;

    invoke-virtual {v6}, Lorg/opencv/core/Mat;->cols()I

    move-result v0

    invoke-virtual {v6}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    invoke-direct {v8, v2, v2, v0, v3}, Lorg/opencv/core/Rect;-><init>(IIII)V

    invoke-static {v6, v2}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->makePadding(Lorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->getScaleParam(Lorg/opencv/core/Mat;I)Lcom/benjaminwan/ocrlibrary/models/ScaleParam;

    move-result-object v9

    invoke-virtual {v9}, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p0

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct/range {v6 .. v14}, Lcom/benjaminwan/ocrlibrary/OcrEngine;->fullDetect(Lorg/opencv/core/Mat;Lorg/opencv/core/Rect;Lcom/benjaminwan/ocrlibrary/models/ScaleParam;FFFZZ)Lcom/benjaminwan/ocrlibrary/models/OcrResult;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".onnx"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->REC_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sput-object p1, Lcom/benjaminwan/ocrlibrary/OcrEngine;->REC_NAME:Ljava/lang/String;

    iget-object p1, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->rec:Lcom/benjaminwan/ocrlibrary/Rec;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/benjaminwan/ocrlibrary/Rec;->close()V

    :cond_1
    new-instance p1, Lcom/benjaminwan/ocrlibrary/Rec;

    iget-object v0, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->ortEnv:Lai/onnxruntime/OrtEnvironment;

    iget-object v1, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->assetManager:Landroid/content/res/AssetManager;

    sget-object v2, Lcom/benjaminwan/ocrlibrary/OcrEngine;->REC_NAME:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2}, Lcom/benjaminwan/ocrlibrary/Rec;-><init>(Lai/onnxruntime/OrtEnvironment;Landroid/content/res/AssetManager;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/benjaminwan/ocrlibrary/OcrEngine;->rec:Lcom/benjaminwan/ocrlibrary/Rec;

    return-void
.end method
