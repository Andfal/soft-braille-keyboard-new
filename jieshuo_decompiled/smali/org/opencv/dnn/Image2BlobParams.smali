.class public Lorg/opencv/dnn/Image2BlobParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final nativeObj:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/opencv/dnn/Image2BlobParams;->Image2BlobParams_0()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Scalar;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v3, p1, v0

    const/4 v0, 0x2

    aget-wide v5, p1, v0

    const/4 v0, 0x3

    aget-wide v7, p1, v0

    invoke-static/range {v1 .. v8}, Lorg/opencv/dnn/Image2BlobParams;->Image2BlobParams_8(DDDD)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Scalar;Lorg/opencv/core/Size;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v0, 0x0

    aget-wide v1, p1, v0

    const/4 v0, 0x1

    aget-wide v3, p1, v0

    const/4 v0, 0x2

    aget-wide v5, p1, v0

    const/4 v0, 0x3

    aget-wide v7, p1, v0

    iget-wide v9, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v11, p2, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v1 .. v12}, Lorg/opencv/dnn/Image2BlobParams;->Image2BlobParams_7(DDDDDD)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Scalar;Lorg/opencv/core/Size;Lorg/opencv/core/Scalar;)V
    .locals 23

    move-object/from16 v0, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iget-object v1, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const/16 v17, 0x1

    aget-wide v5, v1, v17

    const/16 v19, 0x2

    aget-wide v7, v1, v19

    const/16 v21, 0x3

    aget-wide v9, v1, v21

    iget-wide v11, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v13, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v15, v0, v2

    aget-wide v17, v0, v17

    aget-wide v19, v0, v19

    aget-wide v21, v0, v21

    invoke-static/range {v3 .. v22}, Lorg/opencv/dnn/Image2BlobParams;->Image2BlobParams_6(DDDDDDDDDD)J

    move-result-wide v0

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Scalar;Lorg/opencv/core/Size;Lorg/opencv/core/Scalar;Z)V
    .locals 22

    move-object/from16 v0, p2

    move/from16 v21, p4

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iget-object v7, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v13, 0x0

    aget-wide v1, v7, v13

    const/4 v15, 0x1

    aget-wide v3, v7, v15

    const/16 v17, 0x2

    aget-wide v5, v7, v17

    const/16 v19, 0x3

    aget-wide v8, v7, v19

    move-wide v7, v8

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v13, v0, v13

    aget-wide v15, v0, v15

    aget-wide v17, v0, v17

    aget-wide v19, v0, v19

    invoke-static/range {v1 .. v21}, Lorg/opencv/dnn/Image2BlobParams;->Image2BlobParams_5(DDDDDDDDDDZ)J

    move-result-wide v0

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Scalar;Lorg/opencv/core/Size;Lorg/opencv/core/Scalar;ZI)V
    .locals 23

    move-object/from16 v0, p2

    move/from16 v21, p4

    move/from16 v22, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iget-object v7, v1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v13, 0x0

    aget-wide v1, v7, v13

    const/4 v15, 0x1

    aget-wide v3, v7, v15

    const/16 v17, 0x2

    aget-wide v5, v7, v17

    const/16 v19, 0x3

    aget-wide v8, v7, v19

    move-wide v7, v8

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v13, v0, v13

    aget-wide v15, v0, v15

    aget-wide v17, v0, v17

    aget-wide v19, v0, v19

    invoke-static/range {v1 .. v22}, Lorg/opencv/dnn/Image2BlobParams;->Image2BlobParams_2(DDDDDDDDDDZI)J

    move-result-wide v0

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    return-void
.end method

.method public constructor <init>(Lorg/opencv/core/Scalar;Lorg/opencv/core/Size;Lorg/opencv/core/Scalar;ZILorg/opencv/core/Scalar;)V
    .locals 31

    move-object/from16 v0, p2

    move/from16 v21, p4

    move/from16 v22, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p1

    iget-object v7, v1, Lorg/opencv/core/Scalar;->val:[D

    const/16 v23, 0x0

    aget-wide v1, v7, v23

    const/16 v25, 0x1

    aget-wide v3, v7, v25

    const/16 v27, 0x2

    aget-wide v5, v7, v27

    const/16 v29, 0x3

    aget-wide v8, v7, v29

    move-wide v7, v8

    iget-wide v9, v0, Lorg/opencv/core/Size;->width:D

    iget-wide v11, v0, Lorg/opencv/core/Size;->height:D

    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v13, v0, v23

    aget-wide v15, v0, v25

    aget-wide v17, v0, v27

    aget-wide v19, v0, v29

    move-object/from16 v0, p6

    iget-object v0, v0, Lorg/opencv/core/Scalar;->val:[D

    aget-wide v23, v0, v23

    aget-wide v25, v0, v25

    aget-wide v27, v0, v27

    aget-wide v29, v0, v29

    invoke-static/range {v1 .. v30}, Lorg/opencv/dnn/Image2BlobParams;->Image2BlobParams_1(DDDDDDDDDDZIDDDD)J

    move-result-wide v0

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    return-void
.end method

.method private static native Image2BlobParams_0()J
.end method

.method private static native Image2BlobParams_1(DDDDDDDDDDZIDDDD)J
.end method

.method private static native Image2BlobParams_2(DDDDDDDDDDZI)J
.end method

.method private static native Image2BlobParams_5(DDDDDDDDDDZ)J
.end method

.method private static native Image2BlobParams_6(DDDDDDDDDD)J
.end method

.method private static native Image2BlobParams_7(DDDDDD)J
.end method

.method private static native Image2BlobParams_8(DDDD)J
.end method

.method public static __fromPtr__(J)Lorg/opencv/dnn/Image2BlobParams;
    .locals 1

    new-instance v0, Lorg/opencv/dnn/Image2BlobParams;

    invoke-direct {v0, p0, p1}, Lorg/opencv/dnn/Image2BlobParams;-><init>(J)V

    return-object v0
.end method

.method private static native blobRectToImageRect_0(JIIIIDD)[D
.end method

.method private static native blobRectsToImageRects_0(JJJDD)V
.end method

.method private static native delete(J)V
.end method

.method private static native get_borderValue_0(J)[D
.end method

.method private static native get_ddepth_0(J)I
.end method

.method private static native get_mean_0(J)[D
.end method

.method private static native get_scalefactor_0(J)[D
.end method

.method private static native get_size_0(J)[D
.end method

.method private static native get_swapRB_0(J)Z
.end method

.method private static native set_borderValue_0(JDDDD)V
.end method

.method private static native set_ddepth_0(JI)V
.end method

.method private static native set_mean_0(JDDDD)V
.end method

.method private static native set_scalefactor_0(JDDDD)V
.end method

.method private static native set_size_0(JDD)V
.end method

.method private static native set_swapRB_0(JZ)V
.end method


# virtual methods
.method public blobRectToImageRect(Lorg/opencv/core/Rect;Lorg/opencv/core/Size;)Lorg/opencv/core/Rect;
    .locals 11

    new-instance v0, Lorg/opencv/core/Rect;

    iget-wide v1, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    iget v3, p1, Lorg/opencv/core/Rect;->x:I

    iget v4, p1, Lorg/opencv/core/Rect;->y:I

    iget v5, p1, Lorg/opencv/core/Rect;->width:I

    iget v6, p1, Lorg/opencv/core/Rect;->height:I

    iget-wide v7, p2, Lorg/opencv/core/Size;->width:D

    iget-wide v9, p2, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v1 .. v10}, Lorg/opencv/dnn/Image2BlobParams;->blobRectToImageRect_0(JIIIIDD)[D

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/opencv/core/Rect;-><init>([D)V

    return-object v0
.end method

.method public blobRectsToImageRects(Lorg/opencv/core/MatOfRect;Lorg/opencv/core/MatOfRect;Lorg/opencv/core/Size;)V
    .locals 10

    iget-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Size;->width:D

    iget-wide v8, p3, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v0 .. v9}, Lorg/opencv/dnn/Image2BlobParams;->blobRectsToImageRects_0(JJJDD)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/Image2BlobParams;->delete(J)V

    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    iget-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    return-wide v0
.end method

.method public get_borderValue()Lorg/opencv/core/Scalar;
    .locals 3

    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v1, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/dnn/Image2BlobParams;->get_borderValue_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v0
.end method

.method public get_ddepth()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/Image2BlobParams;->get_ddepth_0(J)I

    move-result v0

    return v0
.end method

.method public get_mean()Lorg/opencv/core/Scalar;
    .locals 3

    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v1, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/dnn/Image2BlobParams;->get_mean_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v0
.end method

.method public get_scalefactor()Lorg/opencv/core/Scalar;
    .locals 3

    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v1, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/dnn/Image2BlobParams;->get_scalefactor_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v0
.end method

.method public get_size()Lorg/opencv/core/Size;
    .locals 3

    new-instance v0, Lorg/opencv/core/Size;

    iget-wide v1, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/dnn/Image2BlobParams;->get_size_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Size;-><init>([D)V

    return-object v0
.end method

.method public get_swapRB()Z
    .locals 2

    iget-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/dnn/Image2BlobParams;->get_swapRB_0(J)Z

    move-result v0

    return v0
.end method

.method public set_borderValue(Lorg/opencv/core/Scalar;)V
    .locals 10

    iget-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    iget-object p1, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    const/4 v6, 0x2

    aget-wide v6, p1, v6

    const/4 v8, 0x3

    aget-wide v8, p1, v8

    invoke-static/range {v0 .. v9}, Lorg/opencv/dnn/Image2BlobParams;->set_borderValue_0(JDDDD)V

    return-void
.end method

.method public set_ddepth(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Image2BlobParams;->set_ddepth_0(JI)V

    return-void
.end method

.method public set_mean(Lorg/opencv/core/Scalar;)V
    .locals 10

    iget-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    iget-object p1, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    const/4 v6, 0x2

    aget-wide v6, p1, v6

    const/4 v8, 0x3

    aget-wide v8, p1, v8

    invoke-static/range {v0 .. v9}, Lorg/opencv/dnn/Image2BlobParams;->set_mean_0(JDDDD)V

    return-void
.end method

.method public set_scalefactor(Lorg/opencv/core/Scalar;)V
    .locals 10

    iget-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    iget-object p1, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    const/4 v6, 0x2

    aget-wide v6, p1, v6

    const/4 v8, 0x3

    aget-wide v8, p1, v8

    invoke-static/range {v0 .. v9}, Lorg/opencv/dnn/Image2BlobParams;->set_scalefactor_0(JDDDD)V

    return-void
.end method

.method public set_size(Lorg/opencv/core/Size;)V
    .locals 6

    iget-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Size;->width:D

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    invoke-static/range {v0 .. v5}, Lorg/opencv/dnn/Image2BlobParams;->set_size_0(JDD)V

    return-void
.end method

.method public set_swapRB(Z)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/dnn/Image2BlobParams;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/dnn/Image2BlobParams;->set_swapRB_0(JZ)V

    return-void
.end method
