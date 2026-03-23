.class public Lorg/opencv/imgcodecs/Animation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final nativeObj:J


# direct methods
.method protected constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    return-void
.end method

.method public static __fromPtr__(J)Lorg/opencv/imgcodecs/Animation;
    .locals 1

    new-instance v0, Lorg/opencv/imgcodecs/Animation;

    invoke-direct {v0, p0, p1}, Lorg/opencv/imgcodecs/Animation;-><init>(J)V

    return-object v0
.end method

.method private static native delete(J)V
.end method

.method private static native get_bgcolor_0(J)[D
.end method

.method private static native get_durations_0(J)J
.end method

.method private static native get_frames_0(J)J
.end method

.method private static native get_loop_count_0(J)I
.end method

.method private static native set_bgcolor_0(JDDDD)V
.end method

.method private static native set_durations_0(JJ)V
.end method

.method private static native set_frames_0(JJ)V
.end method

.method private static native set_loop_count_0(JI)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/imgcodecs/Animation;->delete(J)V

    return-void
.end method

.method public getNativeObjAddr()J
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    return-wide v0
.end method

.method public get_bgcolor()Lorg/opencv/core/Scalar;
    .locals 3

    new-instance v0, Lorg/opencv/core/Scalar;

    iget-wide v1, p0, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/imgcodecs/Animation;->get_bgcolor_0(J)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/opencv/core/Scalar;-><init>([D)V

    return-object v0
.end method

.method public get_durations()Lorg/opencv/core/MatOfInt;
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/imgcodecs/Animation;->get_durations_0(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/opencv/core/MatOfInt;->fromNativeAddr(J)Lorg/opencv/core/MatOfInt;

    move-result-object v0

    return-object v0
.end method

.method public get_frames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/opencv/core/Mat;

    iget-wide v2, p0, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    invoke-static {v2, v3}, Lorg/opencv/imgcodecs/Animation;->get_frames_0(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/opencv/core/Mat;-><init>(J)V

    invoke-static {v1, v0}, Lorg/opencv/utils/Converters;->Mat_to_vector_Mat(Lorg/opencv/core/Mat;Ljava/util/List;)V

    return-object v0
.end method

.method public get_loop_count()I
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/imgcodecs/Animation;->get_loop_count_0(J)I

    move-result v0

    return v0
.end method

.method public set_bgcolor(Lorg/opencv/core/Scalar;)V
    .locals 10

    iget-wide v0, p0, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    iget-object p1, p1, Lorg/opencv/core/Scalar;->val:[D

    const/4 v2, 0x0

    aget-wide v2, p1, v2

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    const/4 v6, 0x2

    aget-wide v6, p1, v6

    const/4 v8, 0x3

    aget-wide v8, p1, v8

    invoke-static/range {v0 .. v9}, Lorg/opencv/imgcodecs/Animation;->set_bgcolor_0(JDDDD)V

    return-void
.end method

.method public set_durations(Lorg/opencv/core/MatOfInt;)V
    .locals 4

    iget-wide v0, p0, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/imgcodecs/Animation;->set_durations_0(JJ)V

    return-void
.end method

.method public set_frames(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/opencv/core/Mat;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/opencv/utils/Converters;->vector_Mat_to_Mat(Ljava/util/List;)Lorg/opencv/core/Mat;

    move-result-object p1

    iget-wide v0, p0, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/imgcodecs/Animation;->set_frames_0(JJ)V

    return-void
.end method

.method public set_loop_count(I)V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/imgcodecs/Animation;->nativeObj:J

    invoke-static {v0, v1, p1}, Lorg/opencv/imgcodecs/Animation;->set_loop_count_0(JI)V

    return-void
.end method
