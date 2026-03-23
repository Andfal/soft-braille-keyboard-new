.class public Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/opencv/android/CameraBridgeViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RotatedCameraFrame"
.end annotation


# instance fields
.field public mFrame:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;

.field private mGrayRotated:Lorg/opencv/core/Mat;

.field private mRgbaRotated:Lorg/opencv/core/Mat;

.field private mRotation:I

.field final synthetic this$0:Lorg/opencv/android/CameraBridgeViewBase;


# direct methods
.method public constructor <init>(Lorg/opencv/android/CameraBridgeViewBase;Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;I)V
    .locals 0

    iput-object p1, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->this$0:Lorg/opencv/android/CameraBridgeViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mFrame:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;

    new-instance p1, Lorg/opencv/core/Mat;

    invoke-direct {p1}, Lorg/opencv/core/Mat;-><init>()V

    iput-object p1, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mRgbaRotated:Lorg/opencv/core/Mat;

    new-instance p1, Lorg/opencv/core/Mat;

    invoke-direct {p1}, Lorg/opencv/core/Mat;-><init>()V

    iput-object p1, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mGrayRotated:Lorg/opencv/core/Mat;

    iput p3, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mRotation:I

    return-void
.end method

.method private getCvRotationCode(I)I
    .locals 1

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method


# virtual methods
.method public gray()Lorg/opencv/core/Mat;
    .locals 3

    iget v0, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mRotation:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mFrame:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;

    invoke-interface {v0}, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;->gray()Lorg/opencv/core/Mat;

    move-result-object v0

    iget-object v1, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mGrayRotated:Lorg/opencv/core/Mat;

    iget v2, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mRotation:I

    invoke-direct {p0, v2}, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->getCvRotationCode(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/opencv/core/Core;->rotate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mGrayRotated:Lorg/opencv/core/Mat;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mFrame:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;

    invoke-interface {v0}, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;->gray()Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mRgbaRotated:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mGrayRotated:Lorg/opencv/core/Mat;

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    return-void
.end method

.method public rgba()Lorg/opencv/core/Mat;
    .locals 3

    iget v0, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mRotation:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mFrame:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;

    invoke-interface {v0}, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;->rgba()Lorg/opencv/core/Mat;

    move-result-object v0

    iget-object v1, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mRgbaRotated:Lorg/opencv/core/Mat;

    iget v2, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mRotation:I

    invoke-direct {p0, v2}, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->getCvRotationCode(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/opencv/core/Core;->rotate(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;I)V

    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mRgbaRotated:Lorg/opencv/core/Mat;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mFrame:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;

    invoke-interface {v0}, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;->rgba()Lorg/opencv/core/Mat;

    move-result-object v0

    return-object v0
.end method
