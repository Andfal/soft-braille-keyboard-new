.class public Lorg/opencv/objdetect/QRCodeDetector;
.super Lorg/opencv/objdetect/GraphicalCodeDetector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/opencv/objdetect/QRCodeDetector;->QRCodeDetector_0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/opencv/objdetect/GraphicalCodeDetector;-><init>(J)V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/opencv/objdetect/GraphicalCodeDetector;-><init>(J)V

    return-void
.end method

.method private static native QRCodeDetector_0()J
.end method

.method public static __fromPtr__(J)Lorg/opencv/objdetect/QRCodeDetector;
    .locals 1

    new-instance v0, Lorg/opencv/objdetect/QRCodeDetector;

    invoke-direct {v0, p0, p1}, Lorg/opencv/objdetect/QRCodeDetector;-><init>(J)V

    return-object v0
.end method

.method private static native decodeCurved_0(JJJJ)Ljava/lang/String;
.end method

.method private static native decodeCurved_1(JJJ)Ljava/lang/String;
.end method

.method private static native delete(J)V
.end method

.method private static native detectAndDecodeCurved_0(JJJJ)Ljava/lang/String;
.end method

.method private static native detectAndDecodeCurved_1(JJJ)Ljava/lang/String;
.end method

.method private static native detectAndDecodeCurved_2(JJ)Ljava/lang/String;
.end method

.method private static native setEpsX_0(JD)J
.end method

.method private static native setEpsY_0(JD)J
.end method

.method private static native setUseAlignmentMarkers_0(JZ)J
.end method


# virtual methods
.method public decodeCurved(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/objdetect/QRCodeDetector;->decodeCurved_1(JJJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decodeCurved(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/objdetect/QRCodeDetector;->decodeCurved_0(JJJJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detectAndDecodeCurved(Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static {v0, v1, v2, v3}, Lorg/opencv/objdetect/QRCodeDetector;->detectAndDecodeCurved_2(JJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detectAndDecodeCurved(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v5}, Lorg/opencv/objdetect/QRCodeDetector;->detectAndDecodeCurved_1(JJJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public detectAndDecodeCurved(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Ljava/lang/String;
    .locals 8

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    iget-wide v2, p1, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v4, p2, Lorg/opencv/core/Mat;->nativeObj:J

    iget-wide v6, p3, Lorg/opencv/core/Mat;->nativeObj:J

    invoke-static/range {v0 .. v7}, Lorg/opencv/objdetect/QRCodeDetector;->detectAndDecodeCurved_0(JJJJ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/QRCodeDetector;->delete(J)V

    return-void
.end method

.method public setEpsX(D)Lorg/opencv/objdetect/QRCodeDetector;
    .locals 3

    new-instance v0, Lorg/opencv/objdetect/QRCodeDetector;

    iget-wide v1, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    invoke-static {v1, v2, p1, p2}, Lorg/opencv/objdetect/QRCodeDetector;->setEpsX_0(JD)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/opencv/objdetect/QRCodeDetector;-><init>(J)V

    return-object v0
.end method

.method public setEpsY(D)Lorg/opencv/objdetect/QRCodeDetector;
    .locals 3

    new-instance v0, Lorg/opencv/objdetect/QRCodeDetector;

    iget-wide v1, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    invoke-static {v1, v2, p1, p2}, Lorg/opencv/objdetect/QRCodeDetector;->setEpsY_0(JD)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/opencv/objdetect/QRCodeDetector;-><init>(J)V

    return-object v0
.end method

.method public setUseAlignmentMarkers(Z)Lorg/opencv/objdetect/QRCodeDetector;
    .locals 3

    new-instance v0, Lorg/opencv/objdetect/QRCodeDetector;

    iget-wide v1, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    invoke-static {v1, v2, p1}, Lorg/opencv/objdetect/QRCodeDetector;->setUseAlignmentMarkers_0(JZ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/objdetect/QRCodeDetector;-><init>(J)V

    return-object v0
.end method
