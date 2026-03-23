.class public Lorg/opencv/objdetect/QRCodeDetectorAruco;
.super Lorg/opencv/objdetect/GraphicalCodeDetector;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lorg/opencv/objdetect/QRCodeDetectorAruco;->QRCodeDetectorAruco_0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/opencv/objdetect/GraphicalCodeDetector;-><init>(J)V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/opencv/objdetect/GraphicalCodeDetector;-><init>(J)V

    return-void
.end method

.method public constructor <init>(Lorg/opencv/objdetect/QRCodeDetectorAruco_Params;)V
    .locals 2

    iget-wide v0, p1, Lorg/opencv/objdetect/QRCodeDetectorAruco_Params;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/QRCodeDetectorAruco;->QRCodeDetectorAruco_1(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/opencv/objdetect/GraphicalCodeDetector;-><init>(J)V

    return-void
.end method

.method private static native QRCodeDetectorAruco_0()J
.end method

.method private static native QRCodeDetectorAruco_1(J)J
.end method

.method public static __fromPtr__(J)Lorg/opencv/objdetect/QRCodeDetectorAruco;
    .locals 1

    new-instance v0, Lorg/opencv/objdetect/QRCodeDetectorAruco;

    invoke-direct {v0, p0, p1}, Lorg/opencv/objdetect/QRCodeDetectorAruco;-><init>(J)V

    return-object v0
.end method

.method private static native delete(J)V
.end method

.method private static native getDetectorParameters_0(J)J
.end method

.method private static native setDetectorParameters_0(JJ)J
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    iget-wide v0, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    invoke-static {v0, v1}, Lorg/opencv/objdetect/QRCodeDetectorAruco;->delete(J)V

    return-void
.end method

.method public getDetectorParameters()Lorg/opencv/objdetect/QRCodeDetectorAruco_Params;
    .locals 3

    new-instance v0, Lorg/opencv/objdetect/QRCodeDetectorAruco_Params;

    iget-wide v1, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    invoke-static {v1, v2}, Lorg/opencv/objdetect/QRCodeDetectorAruco;->getDetectorParameters_0(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/objdetect/QRCodeDetectorAruco_Params;-><init>(J)V

    return-object v0
.end method

.method public setDetectorParameters(Lorg/opencv/objdetect/QRCodeDetectorAruco_Params;)Lorg/opencv/objdetect/QRCodeDetectorAruco;
    .locals 5

    new-instance v0, Lorg/opencv/objdetect/QRCodeDetectorAruco;

    iget-wide v1, p0, Lorg/opencv/objdetect/GraphicalCodeDetector;->nativeObj:J

    iget-wide v3, p1, Lorg/opencv/objdetect/QRCodeDetectorAruco_Params;->nativeObj:J

    invoke-static {v1, v2, v3, v4}, Lorg/opencv/objdetect/QRCodeDetectorAruco;->setDetectorParameters_0(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/opencv/objdetect/QRCodeDetectorAruco;-><init>(J)V

    return-object v0
.end method
