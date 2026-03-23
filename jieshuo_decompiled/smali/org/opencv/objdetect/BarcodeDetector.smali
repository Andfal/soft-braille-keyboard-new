.class public Lorg/opencv/objdetect/BarcodeDetector;
.super Lorg/opencv/objdetect/GraphicalCodeDetector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/opencv/objdetect/BarcodeDetector;->BarcodeDetector_0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/opencv/objdetect/GraphicalCodeDetector;-><init>(J)V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/opencv/objdetect/GraphicalCodeDetector;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/opencv/objdetect/BarcodeDetector;->BarcodeDetector_1(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lorg/opencv/objdetect/GraphicalCodeDetector;-><init>(J)V

    return-void
.end method

.method private static native BarcodeDetector_0()J
.end method

.method private static native BarcodeDetector_1(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public static __fromPtr__(J)Lorg/opencv/objdetect/BarcodeDetector;
    .locals 1

    new-instance v0, Lorg/opencv/objdetect/BarcodeDetector;

    invoke-direct {v0, p0, p1}, Lorg/opencv/objdetect/BarcodeDetector;-><init>(J)V

    return-object v0
.end method

.method private static native decodeWithType_0(JJJLjava/util/List;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native delete(J)V
.end method

.method private static native detectAndDecodeWithType_0(JJLjava/util/List;Ljava/util/List;J)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation
.end method

.method private static native detectAndDecodeWithType_1(JJLjava/util/List;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method private static native getDetectorScales_0(JJ)V
.end method

.method private static native getDownsamplingThreshold_0(J)D
.end method

.method private static native getGradientThreshold_0(J)D
.end method

.method private static native setDetectorScales_0(JJ)J
.end method

.method private static native setDownsamplingThreshold_0(JD)J
.end method

.method private static native setGradientThreshold_0(JD)J
.end method


# virtual methods
.method public decodeWithType(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v0 .. v7}, Lorg/opencv/objdetect/BarcodeDetector;->decodeWithType_0(JJJLjava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public detectAndDecodeWithType(Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lorg/opencv/objdetect/BarcodeDetector;->detectAndDecodeWithType_1(JJLjava/util/List;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public detectAndDecodeWithType(Lorg/opencv/core/Mat;Ljava/util/List;Ljava/util/List;Lorg/opencv/core/Mat;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/opencv/core/Mat;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/opencv/core/Mat;",
            ")Z"
        }
    .end annotation

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p4, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v7}, Lorg/opencv/objdetect/BarcodeDetector;->detectAndDecodeWithType_0(JJLjava/util/List;Ljava/util/List;J)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/BarcodeDetector;->delete(J)V

    return-void
.end method

.method public getDetectorScales(Lorg/opencv/core/MatOfFloat;)V
    .locals 4

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/objdetect/BarcodeDetector;->getDetectorScales_0(JJ)V

    return-void
.end method

.method public getDownsamplingThreshold()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/BarcodeDetector;->getDownsamplingThreshold_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGradientThreshold()D
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/BarcodeDetector;->getGradientThreshold_0(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public setDetectorScales(Lorg/opencv/core/MatOfFloat;)Lorg/opencv/objdetect/BarcodeDetector;
    .locals 5

    new-instance v0, Lorg/opencv/objdetect/BarcodeDetector;

    iget-wide v1, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/objdetect/BarcodeDetector;->setDetectorScales_0(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/objdetect/BarcodeDetector;-><init>(J)V

    return-object v0
.end method

.method public setDownsamplingThreshold(D)Lorg/opencv/objdetect/BarcodeDetector;
    .locals 3

    new-instance v0, Lorg/opencv/objdetect/BarcodeDetector;

    iget-wide v1, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    invoke-static {v1, v2, p1, p2}, Lorg/opencv/objdetect/BarcodeDetector;->setDownsamplingThreshold_0(JD)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/opencv/objdetect/BarcodeDetector;-><init>(J)V

    return-object v0
.end method

.method public setGradientThreshold(D)Lorg/opencv/objdetect/BarcodeDetector;
    .locals 3

    new-instance v0, Lorg/opencv/objdetect/BarcodeDetector;

    iget-wide v1, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    invoke-static {v1, v2, p1, p2}, Lorg/opencv/objdetect/BarcodeDetector;->setGradientThreshold_0(JD)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/opencv/objdetect/BarcodeDetector;-><init>(J)V

    return-object v0
.end method
