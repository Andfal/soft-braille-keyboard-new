.class public Lorg/opencv/objdetect/FaceDetectorYN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final nativeObj:J


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/objdetect/FaceDetectorYN;->nativeObj:J

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 1

    new-instance v0, Lorg/opencv/objdetect/FaceDetectorYN;

    invoke-direct {v0, p0, p1}, Lorg/opencv/objdetect/FaceDetectorYN;-><init>(J)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Size;)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 6

    iget-wide v2, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p2, Lorg/opencv/core/Size;->height:D

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/opencv/objdetect/FaceDetectorYN;->create_5(Ljava/lang/String;Ljava/lang/String;DD)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/opencv/objdetect/FaceDetectorYN;->__fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Size;F)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 7

    iget-wide v2, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p2, Lorg/opencv/core/Size;->height:D

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/opencv/objdetect/FaceDetectorYN;->create_4(Ljava/lang/String;Ljava/lang/String;DDF)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/opencv/objdetect/FaceDetectorYN;->__fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Size;FF)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 8

    iget-wide v2, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p2, Lorg/opencv/core/Size;->height:D

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/opencv/objdetect/FaceDetectorYN;->create_3(Ljava/lang/String;Ljava/lang/String;DDFF)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/opencv/objdetect/FaceDetectorYN;->__fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Size;FFI)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 9

    iget-wide v2, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p2, Lorg/opencv/core/Size;->height:D

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/opencv/objdetect/FaceDetectorYN;->create_2(Ljava/lang/String;Ljava/lang/String;DDFFI)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/opencv/objdetect/FaceDetectorYN;->__fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Size;FFII)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 10

    move-object v0, p2

    iget-wide v2, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v4, v0, Lorg/opencv/core/Size;->height:D

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lorg/opencv/objdetect/FaceDetectorYN;->create_1(Ljava/lang/String;Ljava/lang/String;DDFFII)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/objdetect/FaceDetectorYN;->__fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Lorg/opencv/core/Size;FFIII)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 11

    move-object v0, p2

    iget-wide v2, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v4, v0, Lorg/opencv/core/Size;->height:D

    move-object v0, p0

    move-object v1, p1

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lorg/opencv/objdetect/FaceDetectorYN;->create_0(Ljava/lang/String;Ljava/lang/String;DDFFIII)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/objdetect/FaceDetectorYN;->__fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/Size;)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 9

    iget-wide v1, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Size;->width:D

    iget-wide v7, p3, Lorg/opencv/core/Size;->height:D

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lorg/opencv/objdetect/FaceDetectorYN;->create_11(Ljava/lang/String;JJDD)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/opencv/objdetect/FaceDetectorYN;->__fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/Size;F)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 10

    iget-wide v1, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v3, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, p3, Lorg/opencv/core/Size;->width:D

    iget-wide v7, p3, Lorg/opencv/core/Size;->height:D

    move-object v0, p0

    move v9, p4

    invoke-static/range {v0 .. v9}, Lorg/opencv/objdetect/FaceDetectorYN;->create_10(Ljava/lang/String;JJDDF)J

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/opencv/objdetect/FaceDetectorYN;->__fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/Size;FF)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 11

    move-object v0, p3

    move-object v1, p1

    iget-wide v1, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v3, p2

    iget-wide v3, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v7, v0, Lorg/opencv/core/Size;->height:D

    move-object v0, p0

    move v9, p4

    move/from16 v10, p5

    invoke-static/range {v0 .. v10}, Lorg/opencv/objdetect/FaceDetectorYN;->create_9(Ljava/lang/String;JJDDFF)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/objdetect/FaceDetectorYN;->__fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/Size;FFI)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 12

    move-object v0, p3

    move-object v1, p1

    iget-wide v1, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v3, p2

    iget-wide v3, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v7, v0, Lorg/opencv/core/Size;->height:D

    move-object v0, p0

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-static/range {v0 .. v11}, Lorg/opencv/objdetect/FaceDetectorYN;->create_8(Ljava/lang/String;JJDDFFI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/objdetect/FaceDetectorYN;->__fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/Size;FFII)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 13

    move-object/from16 v0, p3

    move-object v1, p1

    iget-wide v1, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object v3, p2

    iget-wide v3, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v7, v0, Lorg/opencv/core/Size;->height:D

    move-object v0, p0

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v0 .. v12}, Lorg/opencv/objdetect/FaceDetectorYN;->create_7(Ljava/lang/String;JJDDFFII)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/objdetect/FaceDetectorYN;->__fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/MatOfByte;Lorg/opencv/core/Size;FFIII)Lorg/opencv/objdetect/FaceDetectorYN;
    .locals 14

    move-object/from16 v0, p3

    move-object v1, p1

    iget-wide v1, v1, Lorg/opencv/core/Mat;->nativeObj:J

    move-object/from16 v3, p2

    iget-wide v3, v3, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v5, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v7, v0, Lorg/opencv/core/Size;->height:D

    move-object v0, p0

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-static/range {v0 .. v13}, Lorg/opencv/objdetect/FaceDetectorYN;->create_6(Ljava/lang/String;JJDDFFIII)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/objdetect/FaceDetectorYN;->__fromPtr__(J)Lorg/opencv/objdetect/FaceDetectorYN;

    move-result-object v0

    return-object v0
.end method

.method private static native create_0(Ljava/lang/String;Ljava/lang/String;DDFFIII)J
.end method

.method private static native create_1(Ljava/lang/String;Ljava/lang/String;DDFFII)J
.end method

.method private static native create_10(Ljava/lang/String;JJDDF)J
.end method

.method private static native create_11(Ljava/lang/String;JJDD)J
.end method

.method private static native create_2(Ljava/lang/String;Ljava/lang/String;DDFFI)J
.end method

.method private static native create_3(Ljava/lang/String;Ljava/lang/String;DDFF)J
.end method

.method private static native create_4(Ljava/lang/String;Ljava/lang/String;DDF)J
.end method

.method private static native create_5(Ljava/lang/String;Ljava/lang/String;DD)J
.end method

.method private static native create_6(Ljava/lang/String;JJDDFFIII)J
.end method

.method private static native create_7(Ljava/lang/String;JJDDFFII)J
.end method

.method private static native create_8(Ljava/lang/String;JJDDFFI)J
.end method

.method private static native create_9(Ljava/lang/String;JJDDFF)J
.end method

.method private static native delete(J)V
.end method

.method private static native detect_0(JJJ)I
.end method

.method private static native getInputSize_0(J)[D
.end method

.method private static native getNMSThreshold_0(J)F
.end method

.method private static native getScoreThreshold_0(J)F
.end method

.method private static native getTopK_0(J)I
.end method

.method private static native setInputSize_0(JDD)V
.end method

.method private static native setNMSThreshold_0(JF)V
.end method

.method private static native setScoreThreshold_0(JF)V
.end method

.method private static native setTopK_0(JI)V
.end method


# virtual methods
.method public detect(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)I
    .locals 6

    iget-wide v0, p0, Lorg/opencv/objdetect/FaceDetectorYN;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/objdetect/FaceDetectorYN;->detect_0(JJJ)I

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/FaceDetectorYN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/FaceDetectorYN;->delete(J)V

    return-void
.end method

.method public getInputSize()Lorg/opencv/core/Size;
    .locals 3

    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v1, p0, Lorg/opencv/objdetect/FaceDetectorYN;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/objdetect/FaceDetectorYN;->getInputSize_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    return-object v0
.end method

.method public getNMSThreshold()F
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/FaceDetectorYN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/FaceDetectorYN;->getNMSThreshold_0(J)F

    move-result v0

    return v0
.end method

.method public getNativeObjAddr()J
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/FaceDetectorYN;->nativeObj:J

    return-wide v0
.end method

.method public getScoreThreshold()F
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/FaceDetectorYN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/FaceDetectorYN;->getScoreThreshold_0(J)F

    move-result v0

    return v0
.end method

.method public getTopK()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/FaceDetectorYN;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/FaceDetectorYN;->getTopK_0(J)I

    move-result v0

    return v0
.end method

.method public setInputSize(Lorg/opencv/core/Size;)V
    .locals 6

    iget-wide v0, p0, Lorg/opencv/objdetect/FaceDetectorYN;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/objdetect/FaceDetectorYN;->setInputSize_0(JDD)V

    return-void
.end method

.method public setNMSThreshold(F)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/FaceDetectorYN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/FaceDetectorYN;->setNMSThreshold_0(JF)V

    return-void
.end method

.method public setScoreThreshold(F)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/FaceDetectorYN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/FaceDetectorYN;->setScoreThreshold_0(JF)V

    return-void
.end method

.method public setTopK(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/FaceDetectorYN;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/objdetect/FaceDetectorYN;->setTopK_0(JI)V

    return-void
.end method
