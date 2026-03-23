.class public Lcom/benjaminwan/ocrlibrary/OcrUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustToDst(Lorg/opencv/core/Mat;DD)Lorg/opencv/core/Mat;
    .locals 18

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    new-instance v4, Lorg/opencv/core/Mat;

    invoke-direct {v4}, Lorg/opencv/core/Mat;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v5

    int-to-double v5, v5

    div-double v5, v2, v5

    invoke-virtual/range {p0 .. p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v7

    int-to-double v7, v7

    mul-double v7, v7, v5

    new-instance v5, Lorg/opencv/core/Size;

    invoke-direct {v5, v7, v8, v2, v3}, Lorg/opencv/core/Size;-><init>(DD)V

    move-object/from16 v6, p0

    invoke-static {v6, v4, v5}, Lorg/opencv/imgproc/Imgproc;->resize(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;)V

    new-instance v5, Lorg/opencv/core/Mat;

    double-to-int v2, v2

    double-to-int v3, v0

    sget v6, Lorg/opencv/core/CvType;->CV_8UC3:I

    new-instance v14, Lorg/opencv/core/Scalar;

    const-wide v10, 0x406fe00000000000L    # 255.0

    const-wide v12, 0x406fe00000000000L    # 255.0

    const-wide v15, 0x406fe00000000000L    # 255.0

    move-object v9, v14

    move-object/from16 v17, v4

    move-object v4, v14

    move-wide v14, v15

    invoke-direct/range {v9 .. v15}, Lorg/opencv/core/Scalar;-><init>(DDD)V

    invoke-direct {v5, v2, v3, v6, v4}, Lorg/opencv/core/Mat;-><init>(IIILorg/opencv/core/Scalar;)V

    const/4 v4, 0x0

    cmpg-double v6, v7, v0

    if-gez v6, :cond_0

    new-instance v0, Lorg/opencv/core/Rect;

    invoke-virtual/range {v17 .. v17}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    invoke-virtual/range {v17 .. v17}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Lorg/opencv/core/Rect;-><init>(IIII)V

    invoke-virtual {v5, v0}, Lorg/opencv/core/Mat;->submat(Lorg/opencv/core/Rect;)Lorg/opencv/core/Mat;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Lorg/opencv/core/Mat;->copyTo(Lorg/opencv/core/Mat;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, v17

    new-instance v0, Lorg/opencv/core/Rect;

    invoke-direct {v0, v4, v4, v3, v2}, Lorg/opencv/core/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0}, Lorg/opencv/core/Mat;->submat(Lorg/opencv/core/Rect;)Lorg/opencv/core/Mat;

    move-result-object v0

    invoke-virtual {v0, v5}, Lorg/opencv/core/Mat;->copyTo(Lorg/opencv/core/Mat;)V

    :goto_0
    return-object v5
.end method

.method public static boxScoreFast([Lorg/opencv/core/Point;Lorg/opencv/core/Mat;)F
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->cols()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    const/4 v2, 0x4

    new-array v3, v2, [D

    new-array v4, v2, [D

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_0

    aget-object v7, p0, v6

    iget-wide v8, v7, Lorg/opencv/core/Point;->x:D

    aput-wide v8, v3, v6

    iget-wide v7, v7, Lorg/opencv/core/Point;->y:D

    aput-wide v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    aget-wide v6, v3, v5

    move-wide v8, v6

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v2, :cond_3

    aget-wide v11, v3, v10

    cmpg-double v13, v11, v6

    if-gez v13, :cond_1

    move-wide v6, v11

    :cond_1
    cmpl-double v13, v11, v8

    if-lez v13, :cond_2

    move-wide v8, v11

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    aget-wide v10, v4, v5

    move-wide v12, v10

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    aget-wide v14, v4, v3

    cmpg-double v16, v14, v10

    if-gez v16, :cond_4

    move-wide v10, v14

    :cond_4
    cmpl-double v16, v14, v12

    if-lez v16, :cond_5

    move-wide v12, v14

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v0, v4

    const/4 v6, 0x0

    invoke-static {v3, v6, v0}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->clamp(FFF)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7, v6, v0}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->clamp(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-float v7, v7

    int-to-float v1, v1

    sub-float/2addr v1, v4

    invoke-static {v7, v6, v1}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->clamp(FFF)F

    move-result v4

    float-to-int v4, v4

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7, v6, v1}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->clamp(FFF)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v1, v4

    const/4 v6, 0x1

    add-int/2addr v1, v6

    sub-int/2addr v0, v3

    add-int/2addr v0, v6

    sget v7, Lorg/opencv/core/CvType;->CV_8UC1:I

    invoke-static {v1, v0, v7}, Lorg/opencv/core/Mat;->zeros(III)Lorg/opencv/core/Mat;

    move-result-object v7

    new-array v2, v2, [Lorg/opencv/core/Point;

    new-instance v8, Lorg/opencv/core/Point;

    aget-object v9, p0, v5

    iget-wide v10, v9, Lorg/opencv/core/Point;->x:D

    int-to-double v12, v3

    sub-double/2addr v10, v12

    iget-wide v14, v9, Lorg/opencv/core/Point;->y:D

    move-object/from16 v16, v7

    int-to-double v6, v4

    sub-double/2addr v14, v6

    invoke-direct {v8, v10, v11, v14, v15}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v8, v2, v5

    new-instance v8, Lorg/opencv/core/Point;

    const/4 v9, 0x1

    aget-object v10, p0, v9

    iget-wide v14, v10, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v14, v12

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    sub-double/2addr v10, v6

    invoke-direct {v8, v14, v15, v10, v11}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v8, v2, v9

    new-instance v8, Lorg/opencv/core/Point;

    const/4 v9, 0x2

    aget-object v10, p0, v9

    iget-wide v14, v10, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v14, v12

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    sub-double/2addr v10, v6

    invoke-direct {v8, v14, v15, v10, v11}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v8, v2, v9

    new-instance v8, Lorg/opencv/core/Point;

    const/4 v9, 0x3

    aget-object v10, p0, v9

    iget-wide v14, v10, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v14, v12

    iget-wide v10, v10, Lorg/opencv/core/Point;->y:D

    sub-double/2addr v10, v6

    invoke-direct {v8, v14, v15, v10, v11}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v8, v2, v9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lorg/opencv/core/MatOfPoint;

    invoke-direct {v7, v2}, Lorg/opencv/core/MatOfPoint;-><init>([Lorg/opencv/core/Point;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/opencv/core/Scalar;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-direct {v2, v7, v8}, Lorg/opencv/core/Scalar;-><init>(D)V

    move-object/from16 v7, v16

    invoke-static {v7, v6, v2}, Lorg/opencv/imgproc/Imgproc;->fillPoly(Lorg/opencv/core/Mat;Ljava/util/List;Lorg/opencv/core/Scalar;)V

    new-instance v2, Lorg/opencv/core/Rect;

    invoke-direct {v2, v3, v4, v0, v1}, Lorg/opencv/core/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/opencv/core/Mat;->submat(Lorg/opencv/core/Rect;)Lorg/opencv/core/Mat;

    move-result-object v0

    invoke-static {v0, v7}, Lorg/opencv/core/Core;->mean(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Scalar;

    move-result-object v0

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v1, v0, v5

    double-to-float v0, v1

    return v0
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static drawTextBoxes(Lorg/opencv/core/Mat;Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetResult;",
            ">;I)V"
        }
    .end annotation

    new-instance v7, Lorg/opencv/core/Scalar;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, 0x406fe00000000000L    # 255.0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/opencv/core/Scalar;-><init>(DDD)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/benjaminwan/ocrlibrary/models/DetResult;

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/models/DetResult;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/models/DetResult;->getPoints()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-static {v1}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->toCvPoint(Lcom/benjaminwan/ocrlibrary/models/DetPoint;)Lorg/opencv/core/Point;

    move-result-object v1

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/models/DetResult;->getPoints()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-static {v3}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->toCvPoint(Lcom/benjaminwan/ocrlibrary/models/DetPoint;)Lorg/opencv/core/Point;

    move-result-object v3

    invoke-static {p0, v1, v3, v7, p2}, Lorg/opencv/imgproc/Imgproc;->line(Lorg/opencv/core/Mat;Lorg/opencv/core/Point;Lorg/opencv/core/Point;Lorg/opencv/core/Scalar;I)V

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/models/DetResult;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-static {v1}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->toCvPoint(Lcom/benjaminwan/ocrlibrary/models/DetPoint;)Lorg/opencv/core/Point;

    move-result-object v1

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/models/DetResult;->getPoints()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-static {v3}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->toCvPoint(Lcom/benjaminwan/ocrlibrary/models/DetPoint;)Lorg/opencv/core/Point;

    move-result-object v3

    invoke-static {p0, v1, v3, v7, p2}, Lorg/opencv/imgproc/Imgproc;->line(Lorg/opencv/core/Mat;Lorg/opencv/core/Point;Lorg/opencv/core/Point;Lorg/opencv/core/Scalar;I)V

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/models/DetResult;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-static {v1}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->toCvPoint(Lcom/benjaminwan/ocrlibrary/models/DetPoint;)Lorg/opencv/core/Point;

    move-result-object v1

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/models/DetResult;->getPoints()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-static {v3}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->toCvPoint(Lcom/benjaminwan/ocrlibrary/models/DetPoint;)Lorg/opencv/core/Point;

    move-result-object v3

    invoke-static {p0, v1, v3, v7, p2}, Lorg/opencv/imgproc/Imgproc;->line(Lorg/opencv/core/Mat;Lorg/opencv/core/Point;Lorg/opencv/core/Point;Lorg/opencv/core/Scalar;I)V

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/models/DetResult;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-static {v1}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->toCvPoint(Lcom/benjaminwan/ocrlibrary/models/DetPoint;)Lorg/opencv/core/Point;

    move-result-object v1

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/models/DetResult;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-static {v0}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->toCvPoint(Lcom/benjaminwan/ocrlibrary/models/DetPoint;)Lorg/opencv/core/Point;

    move-result-object v0

    invoke-static {p0, v1, v0, v7, p2}, Lorg/opencv/imgproc/Imgproc;->line(Lorg/opencv/core/Mat;Lorg/opencv/core/Point;Lorg/opencv/core/Point;Lorg/opencv/core/Scalar;I)V

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public static getBox(Lorg/opencv/core/RotatedRect;)[Lorg/opencv/core/Point;
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/opencv/core/Point;

    invoke-virtual {p0, v0}, Lorg/opencv/core/RotatedRect;->points([Lorg/opencv/core/Point;)V

    return-object v0
.end method

.method public static getContourArea([Lorg/opencv/core/Point;F)F
    .locals 19

    move-object/from16 v0, p0

    array-length v1, v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v4, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    aget-object v7, v0, v6

    iget-wide v8, v7, Lorg/opencv/core/Point;->x:D

    add-int/lit8 v6, v6, 0x1

    rem-int v10, v6, v1

    aget-object v10, v0, v10

    iget-wide v11, v10, Lorg/opencv/core/Point;->y:D

    mul-double v13, v8, v11

    move v15, v1

    iget-wide v0, v7, Lorg/opencv/core/Point;->y:D

    move/from16 v16, v6

    iget-wide v6, v10, Lorg/opencv/core/Point;->x:D

    mul-double v17, v0, v6

    sub-double v13, v13, v17

    add-double/2addr v2, v13

    sub-double v13, v8, v6

    sub-double/2addr v8, v6

    mul-double v13, v13, v8

    sub-double v6, v0, v11

    sub-double/2addr v0, v11

    mul-double v6, v6, v0

    add-double/2addr v13, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v4, v0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v6, v16

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v0, v0, p1

    double-to-float v1, v4

    div-float/2addr v0, v1

    return v0
.end method

.method public static getMinBoxes(Lorg/opencv/core/RotatedRect;[Lorg/opencv/core/Point;)F
    .locals 12

    iget-object v0, p0, Lorg/opencv/core/RotatedRect;->size:Lorg/opencv/core/Size;

    iget-wide v1, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v3, v0, Lorg/opencv/core/Size;->height:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p0}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->getBox(Lorg/opencv/core/RotatedRect;)[Lorg/opencv/core/Point;

    move-result-object p0

    new-instance v1, Lcom/benjaminwan/ocrlibrary/OcrUtils$1;

    invoke-direct {v1}, Lcom/benjaminwan/ocrlibrary/OcrUtils$1;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x1

    aget-object v2, p0, v1

    iget-wide v2, v2, Lorg/opencv/core/Point;->y:D

    const/4 v4, 0x0

    aget-object v5, p0, v4

    iget-wide v5, v5, Lorg/opencv/core/Point;->y:D

    cmpl-double v7, v2, v5

    if-lez v7, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x3

    aget-object v6, p0, v5

    iget-wide v6, v6, Lorg/opencv/core/Point;->y:D

    const/4 v8, 0x2

    aget-object v9, p0, v8

    iget-wide v9, v9, Lorg/opencv/core/Point;->y:D

    cmpl-double v11, v6, v9

    if-lez v11, :cond_1

    const/4 v6, 0x2

    const/4 v7, 0x3

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    const/4 v7, 0x2

    :goto_1
    aget-object v2, p0, v2

    aput-object v2, p1, v4

    aget-object v2, p0, v6

    aput-object v2, p1, v1

    aget-object v1, p0, v7

    aput-object v1, p1, v8

    aget-object p0, p0, v3

    aput-object p0, p1, v5

    return v0
.end method

.method public static getPartMats(Lorg/opencv/core/Mat;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetResult;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/benjaminwan/ocrlibrary/models/DetResult;

    invoke-virtual {v1}, Lcom/benjaminwan/ocrlibrary/models/DetResult;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->getRotateCropImage(Lorg/opencv/core/Mat;Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getRotateCropImage(Lorg/opencv/core/Mat;Ljava/util/List;)Lorg/opencv/core/Mat;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Lcom/benjaminwan/ocrlibrary/models/DetPoint;",
            ">;)",
            "Lorg/opencv/core/Mat;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-static {v3}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->toCvPoint(Lcom/benjaminwan/ocrlibrary/models/DetPoint;)Lorg/opencv/core/Point;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v3, v2, [F

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-virtual {v5}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getX()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-virtual {v6}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getX()I

    move-result v6

    int-to-float v6, v6

    aput v6, v3, v5

    const/4 v6, 0x2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-virtual {v7}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getX()I

    move-result v7

    int-to-float v7, v7

    aput v7, v3, v6

    const/4 v7, 0x3

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-virtual {v8}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getX()I

    move-result v8

    int-to-float v8, v8

    aput v8, v3, v7

    new-array v8, v2, [F

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-virtual {v9}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getY()I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-virtual {v9}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getY()I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v5

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-virtual {v9}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getY()I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v6

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/benjaminwan/ocrlibrary/models/DetPoint;

    invoke-virtual {v0}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getY()I

    move-result v0

    int-to-float v0, v0

    aput v0, v8, v7

    aget v0, v3, v4

    move v9, v0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v2, :cond_3

    aget v11, v3, v10

    cmpg-float v12, v11, v0

    if-gez v12, :cond_1

    move v0, v11

    :cond_1
    cmpl-float v12, v11, v9

    if-lez v12, :cond_2

    move v9, v11

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    aget v3, v8, v4

    move v10, v3

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v2, :cond_6

    aget v12, v8, v11

    cmpg-float v13, v12, v3

    if-gez v13, :cond_4

    move v3, v12

    :cond_4
    cmpl-float v13, v12, v10

    if-lez v13, :cond_5

    move v10, v12

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    new-instance v8, Lorg/opencv/core/Rect;

    float-to-int v11, v0

    float-to-int v12, v3

    sub-float/2addr v9, v0

    float-to-int v9, v9

    sub-float/2addr v10, v3

    float-to-int v10, v10

    invoke-direct {v8, v11, v12, v9, v10}, Lorg/opencv/core/Rect;-><init>(IIII)V

    move-object v9, p0

    invoke-virtual {p0, v8}, Lorg/opencv/core/Mat;->submat(Lorg/opencv/core/Rect;)Lorg/opencv/core/Mat;

    move-result-object v8

    const/4 v9, 0x0

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/opencv/core/Point;

    iget-wide v11, v10, Lorg/opencv/core/Point;->x:D

    float-to-double v13, v0

    sub-double/2addr v11, v13

    iput-wide v11, v10, Lorg/opencv/core/Point;->x:D

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/opencv/core/Point;

    iget-wide v11, v10, Lorg/opencv/core/Point;->y:D

    float-to-double v13, v3

    sub-double/2addr v11, v13

    iput-wide v11, v10, Lorg/opencv/core/Point;->y:D

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point;

    iget-wide v9, v0, Lorg/opencv/core/Point;->x:D

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point;

    iget-wide v11, v0, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point;

    iget-wide v13, v0, Lorg/opencv/core/Point;->y:D

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point;

    iget-wide v5, v0, Lorg/opencv/core/Point;->y:D

    sub-double/2addr v13, v5

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point;

    iget-wide v9, v0, Lorg/opencv/core/Point;->x:D

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point;

    iget-wide v13, v0, Lorg/opencv/core/Point;->x:D

    sub-double/2addr v9, v13

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point;

    iget-wide v13, v0, Lorg/opencv/core/Point;->y:D

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/opencv/core/Point;

    move-object p0, v8

    iget-wide v7, v0, Lorg/opencv/core/Point;->y:D

    sub-double/2addr v13, v7

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    new-array v0, v2, [Lorg/opencv/core/Point;

    new-instance v9, Lorg/opencv/core/Point;

    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11, v10, v11}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v9, v0, v4

    new-instance v9, Lorg/opencv/core/Point;

    invoke-direct {v9, v5, v6, v10, v11}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v3, 0x1

    aput-object v9, v0, v3

    new-instance v9, Lorg/opencv/core/Point;

    invoke-direct {v9, v5, v6, v7, v8}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v12, 0x2

    aput-object v9, v0, v12

    new-instance v9, Lorg/opencv/core/Point;

    invoke-direct {v9, v10, v11, v7, v8}, Lorg/opencv/core/Point;-><init>(DD)V

    const/4 v10, 0x3

    aput-object v9, v0, v10

    new-array v2, v2, [Lorg/opencv/core/Point;

    new-instance v9, Lorg/opencv/core/Point;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/opencv/core/Point;

    iget-wide v10, v10, Lorg/opencv/core/Point;->x:D

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/opencv/core/Point;

    iget-wide v12, v12, Lorg/opencv/core/Point;->y:D

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v9, v2, v4

    new-instance v9, Lorg/opencv/core/Point;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/opencv/core/Point;

    iget-wide v10, v10, Lorg/opencv/core/Point;->x:D

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/opencv/core/Point;

    iget-wide v12, v12, Lorg/opencv/core/Point;->y:D

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v9, v2, v3

    new-instance v9, Lorg/opencv/core/Point;

    const/4 v10, 0x2

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/opencv/core/Point;

    iget-wide v11, v11, Lorg/opencv/core/Point;->x:D

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/opencv/core/Point;

    iget-wide v13, v13, Lorg/opencv/core/Point;->y:D

    invoke-direct {v9, v11, v12, v13, v14}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v9, v2, v10

    new-instance v9, Lorg/opencv/core/Point;

    const/4 v10, 0x3

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/opencv/core/Point;

    iget-wide v11, v11, Lorg/opencv/core/Point;->x:D

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/opencv/core/Point;

    iget-wide v13, v1, Lorg/opencv/core/Point;->y:D

    invoke-direct {v9, v11, v12, v13, v14}, Lorg/opencv/core/Point;-><init>(DD)V

    aput-object v9, v2, v10

    new-instance v1, Lorg/opencv/core/MatOfPoint2f;

    invoke-direct {v1, v2}, Lorg/opencv/core/MatOfPoint2f;-><init>([Lorg/opencv/core/Point;)V

    new-instance v2, Lorg/opencv/core/MatOfPoint2f;

    invoke-direct {v2, v0}, Lorg/opencv/core/MatOfPoint2f;-><init>([Lorg/opencv/core/Point;)V

    invoke-static {v1, v2}, Lorg/opencv/imgproc/Imgproc;->getPerspectiveTransform(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;

    move-result-object v0

    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    new-instance v2, Lorg/opencv/core/Size;

    invoke-direct {v2, v5, v6, v7, v8}, Lorg/opencv/core/Size;-><init>(DD)V

    move-object v3, p0

    const/4 v5, 0x1

    invoke-static {v3, v1, v0, v2, v5}, Lorg/opencv/imgproc/Imgproc;->warpPerspective(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Size;I)V

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->rows()I

    move-result v0

    int-to-double v2, v0

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->cols()I

    move-result v0

    int-to-double v5, v0

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    mul-double v5, v5, v7

    cmpl-double v0, v2, v5

    if-ltz v0, :cond_8

    new-instance v0, Lorg/opencv/core/Mat;

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->cols()I

    move-result v3

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->depth()I

    move-result v5

    invoke-direct {v0, v2, v3, v5}, Lorg/opencv/core/Mat;-><init>(III)V

    invoke-static {v1, v0}, Lorg/opencv/core/Core;->transpose(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)V

    invoke-static {v0, v0, v4}, Lorg/opencv/core/Core;->flip(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    return-object v0

    :cond_8
    return-object v1
.end method

.method public static getScaleParam(Lorg/opencv/core/Mat;I)Lcom/benjaminwan/ocrlibrary/models/ScaleParam;
    .locals 8

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v2

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result p0

    int-to-float v3, p1

    if-le v0, p0, :cond_0

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float p0, p0

    mul-float p0, p0, v3

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    div-float/2addr v3, p0

    int-to-float p0, v0

    mul-float p0, p0, v3

    float-to-int p0, p0

    move v7, p1

    move p1, p0

    move p0, v7

    :goto_0
    rem-int/lit8 v0, p1, 0x20

    const/16 v3, 0x20

    if-eqz v0, :cond_1

    div-int/lit8 p1, p1, 0x20

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x20

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_1
    rem-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_2

    div-int/lit8 p0, p0, 0x20

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p0, p0, 0x20

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_2
    move v4, p0

    int-to-float p0, p1

    int-to-float v0, v1

    div-float v5, p0, v0

    int-to-float p0, v4

    int-to-float v0, v2

    div-float v6, p0, v0

    new-instance p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;-><init>(IIIIFF)V

    return-object p0
.end method

.method public static getThickness(Lorg/opencv/core/Mat;)I
    .locals 1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static makePadding(Lorg/opencv/core/Mat;I)Lorg/opencv/core/Mat;
    .locals 9

    if-gtz p1, :cond_0

    return-object p0

    :cond_0
    new-instance v7, Lorg/opencv/core/Scalar;

    const-wide v1, 0x406fe00000000000L    # 255.0

    const-wide v3, 0x406fe00000000000L    # 255.0

    const-wide v5, 0x406fe00000000000L    # 255.0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/opencv/core/Scalar;-><init>(DDD)V

    new-instance v8, Lorg/opencv/core/Mat;

    invoke-direct {v8}, Lorg/opencv/core/Mat;-><init>()V

    const/16 v6, 0x10

    move-object v0, p0

    move-object v1, v8

    move v2, p1

    move v3, p1

    move v4, p1

    move v5, p1

    invoke-static/range {v0 .. v7}, Lorg/opencv/core/Core;->copyMakeBorder(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;IIIIILorg/opencv/core/Scalar;)V

    return-object v8
.end method

.method public static matRotateClockWise180(Lorg/opencv/core/Mat;)Lorg/opencv/core/Mat;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p0, v0}, Lorg/opencv/core/Core;->flip(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    const/4 v0, 0x1

    invoke-static {p0, p0, v0}, Lorg/opencv/core/Core;->flip(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    return-object p0
.end method

.method public static substractMeanNormalize(Lorg/opencv/core/Mat;[F[F)Ljava/nio/FloatBuffer;
    .locals 9

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v0

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->channels()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->channels()I

    move-result v1

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->cols()I

    move-result v2

    invoke-virtual {p0}, Lorg/opencv/core/Mat;->rows()I

    move-result v3

    mul-int v2, v2, v3

    invoke-static {v0}, Ljava/nio/FloatBuffer;->allocate(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    sget v4, Lorg/opencv/core/CvType;->CV_32FC3:I

    invoke-virtual {p0, p0, v4}, Lorg/opencv/core/Mat;->convertTo(Lorg/opencv/core/Mat;I)V

    new-array v0, v0, [F

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v0}, Lorg/opencv/core/Mat;->get(II[F)I

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v2, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_0

    mul-int v6, p0, v1

    add-int/2addr v6, v5

    aget v6, v0, v6

    aget v7, p2, v5

    mul-float v6, v6, v7

    aget v8, p1, v5

    mul-float v8, v8, v7

    sub-float/2addr v6, v8

    mul-int v7, v5, v2

    add-int/2addr v7, p0

    invoke-virtual {v3, v7, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object v3
.end method

.method private static toCvPoint(Lcom/benjaminwan/ocrlibrary/models/DetPoint;)Lorg/opencv/core/Point;
    .locals 5

    new-instance v0, Lorg/opencv/core/Point;

    invoke-virtual {p0}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getX()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p0}, Lcom/benjaminwan/ocrlibrary/models/DetPoint;->getY()I

    move-result p0

    int-to-double v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/opencv/core/Point;-><init>(DD)V

    return-object v0
.end method

.method public static unClip([Lorg/opencv/core/Point;F)Lorg/opencv/core/RotatedRect;
    .locals 10

    invoke-static {p0, p1}, Lcom/benjaminwan/ocrlibrary/OcrUtils;->getContourArea([Lorg/opencv/core/Point;F)F

    move-result p1

    new-instance v0, Lde/lighti/clipper/Path;

    invoke-direct {v0}, Lde/lighti/clipper/Path;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    new-instance v5, Lde/lighti/clipper/Point$LongPoint;

    iget-wide v6, v4, Lorg/opencv/core/Point;->x:D

    double-to-long v6, v6

    iget-wide v8, v4, Lorg/opencv/core/Point;->y:D

    double-to-long v8, v8

    invoke-direct {v5, v6, v7, v8, v9}, Lde/lighti/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lde/lighti/clipper/ClipperOffset;

    invoke-direct {p0}, Lde/lighti/clipper/ClipperOffset;-><init>()V

    sget-object v1, Lde/lighti/clipper/Clipper$JoinType;->ROUND:Lde/lighti/clipper/Clipper$JoinType;

    sget-object v3, Lde/lighti/clipper/Clipper$EndType;->CLOSED_POLYGON:Lde/lighti/clipper/Clipper$EndType;

    invoke-virtual {p0, v0, v1, v3}, Lde/lighti/clipper/ClipperOffset;->addPath(Lde/lighti/clipper/Path;Lde/lighti/clipper/Clipper$JoinType;Lde/lighti/clipper/Clipper$EndType;)V

    new-instance v0, Lde/lighti/clipper/Paths;

    invoke-direct {v0}, Lde/lighti/clipper/Paths;-><init>()V

    float-to-double v3, p1

    invoke-virtual {p0, v0, v3, v4}, Lde/lighti/clipper/ClipperOffset;->execute(Lde/lighti/clipper/Paths;D)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/lighti/clipper/Path;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/lighti/clipper/Point$LongPoint;

    new-instance v3, Lorg/opencv/core/Point;

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/opencv/core/Point;-><init>(DD)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-array p1, v2, [Lorg/opencv/core/Point;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/opencv/core/Point;

    array-length p1, p0

    if-nez p1, :cond_3

    new-instance p0, Lorg/opencv/core/RotatedRect;

    new-instance p1, Lorg/opencv/core/Point;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Lorg/opencv/core/Point;-><init>(DD)V

    new-instance v2, Lorg/opencv/core/Size;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v2, v3, v4, v3, v4}, Lorg/opencv/core/Size;-><init>(DD)V

    invoke-direct {p0, p1, v2, v0, v1}, Lorg/opencv/core/RotatedRect;-><init>(Lorg/opencv/core/Point;Lorg/opencv/core/Size;D)V

    return-object p0

    :cond_3
    new-instance p1, Lorg/opencv/core/MatOfPoint2f;

    invoke-direct {p1, p0}, Lorg/opencv/core/MatOfPoint2f;-><init>([Lorg/opencv/core/Point;)V

    invoke-static {p1}, Lorg/opencv/imgproc/Imgproc;->minAreaRect(Lorg/opencv/core/MatOfPoint2f;)Lorg/opencv/core/RotatedRect;

    move-result-object p0

    return-object p0
.end method
