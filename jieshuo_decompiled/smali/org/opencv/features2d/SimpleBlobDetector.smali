.class public Lorg/opencv/features2d/SimpleBlobDetector;
.super Lorg/opencv/features2d/Feature2D;
.source "SourceFile"


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/opencv/features2d/Feature2D;-><init>(J)V

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/features2d/SimpleBlobDetector;
    .locals 1

    new-instance v0, Lorg/opencv/features2d/SimpleBlobDetector;

    invoke-direct {v0, p0, p1}, Lorg/opencv/features2d/SimpleBlobDetector;-><init>(J)V

    return-object v0
.end method

.method public static create()Lorg/opencv/features2d/SimpleBlobDetector;
    .locals 2

    invoke-static {}, Lorg/opencv/features2d/SimpleBlobDetector;->create_1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/features2d/SimpleBlobDetector;->__fromPtr__(J)Lorg/opencv/features2d/SimpleBlobDetector;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/opencv/features2d/SimpleBlobDetector_Params;)Lorg/opencv/features2d/SimpleBlobDetector;
    .locals 2

    iget-wide v0, p0, Lorg/opencv/features2d/SimpleBlobDetector_Params;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/SimpleBlobDetector;->create_0(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/features2d/SimpleBlobDetector;->__fromPtr__(J)Lorg/opencv/features2d/SimpleBlobDetector;

    move-result-object p0

    return-object p0
.end method

.method private static native create_0(J)J
.end method

.method private static native create_1()J
.end method

.method private static native delete(J)V
.end method

.method private static native getBlobContours_0(J)J
.end method

.method private static native getDefaultName_0(J)Ljava/lang/String;
.end method

.method private static native getParams_0(J)J
.end method

.method private static native setParams_0(JJ)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/SimpleBlobDetector;->delete(J)V

    return-void
.end method

.method public getBlobContours()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/opencv/core/MatOfPoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/features2d/SimpleBlobDetector;->getBlobContours_0(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    invoke-static {v1, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_vector_Point(Lorg/opencv/core/Mat;Ljava/util/List;)V

    return-object v0
.end method

.method public getDefaultName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/features2d/SimpleBlobDetector;->getDefaultName_0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/opencv/features2d/SimpleBlobDetector_Params;
    .locals 3

    new-instance v0, Lorg/opencv/features2d/SimpleBlobDetector_Params;

    iget-wide v1, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/features2d/SimpleBlobDetector;->getParams_0(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/features2d/SimpleBlobDetector_Params;-><init>(J)V

    return-object v0
.end method

.method public setParams(Lorg/opencv/features2d/SimpleBlobDetector_Params;)V
    .locals 4

    iget-wide v0, p0, Lorg/opencv/core/Algorithm;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/features2d/SimpleBlobDetector_Params;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/features2d/SimpleBlobDetector;->setParams_0(JJ)V

    return-void
.end method
