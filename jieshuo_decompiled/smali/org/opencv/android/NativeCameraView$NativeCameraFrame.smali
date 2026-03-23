.class Lorg/opencv/android/NativeCameraView$NativeCameraFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/opencv/android/NativeCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NativeCameraFrame"
.end annotation


# instance fields
.field private mCapture:Lorg/opencv/videoio/VideoCapture;

.field private mGray:Lorg/opencv/core/Mat;

.field private mRgba:Lorg/opencv/core/Mat;


# direct methods
.method public constructor <init>(Lorg/opencv/videoio/VideoCapture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mCapture:Lorg/opencv/videoio/VideoCapture;

    new-instance p1, Lorg/opencv/core/Mat;

    invoke-direct {p1}, Lorg/opencv/core/Mat;-><init>()V

    iput-object p1, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mGray:Lorg/opencv/core/Mat;

    new-instance p1, Lorg/opencv/core/Mat;

    invoke-direct {p1}, Lorg/opencv/core/Mat;-><init>()V

    iput-object p1, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mRgba:Lorg/opencv/core/Mat;

    return-void
.end method


# virtual methods
.method public gray()Lorg/opencv/core/Mat;
    .locals 5

    iget-object v0, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mCapture:Lorg/opencv/videoio/VideoCapture;

    const/16 v1, 0x45

    const/16 v2, 0x59

    const/16 v3, 0x47

    const/16 v4, 0x52

    invoke-static {v3, v4, v1, v2}, Lorg/opencv/videoio/VideoWriter;->fourcc(CCCC)I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1, v2}, Lorg/opencv/videoio/VideoCapture;->set(ID)Z

    iget-object v0, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mCapture:Lorg/opencv/videoio/VideoCapture;

    iget-object v1, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mGray:Lorg/opencv/core/Mat;

    invoke-virtual {v0, v1}, Lorg/opencv/videoio/VideoCapture;->retrieve(Lorg/opencv/core/Mat;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrieved frame with size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mGray:Lorg/opencv/core/Mat;

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mGray:Lorg/opencv/core/Mat;

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and channels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mGray:Lorg/opencv/core/Mat;

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->channels()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeCameraView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mGray:Lorg/opencv/core/Mat;

    return-object v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mGray:Lorg/opencv/core/Mat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    :cond_0
    iget-object v0, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mRgba:Lorg/opencv/core/Mat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/opencv/core/Mat;->release()V

    :cond_1
    return-void
.end method

.method public rgba()Lorg/opencv/core/Mat;
    .locals 5

    iget-object v0, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mCapture:Lorg/opencv/videoio/VideoCapture;

    const/16 v1, 0x42

    const/16 v2, 0x34

    const/16 v3, 0x52

    const/16 v4, 0x47

    invoke-static {v3, v4, v1, v2}, Lorg/opencv/videoio/VideoWriter;->fourcc(CCCC)I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1, v2}, Lorg/opencv/videoio/VideoCapture;->set(ID)Z

    iget-object v0, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mCapture:Lorg/opencv/videoio/VideoCapture;

    iget-object v1, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mRgba:Lorg/opencv/core/Mat;

    invoke-virtual {v0, v1}, Lorg/opencv/videoio/VideoCapture;->retrieve(Lorg/opencv/core/Mat;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrieved frame with size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mRgba:Lorg/opencv/core/Mat;

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->cols()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mRgba:Lorg/opencv/core/Mat;

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->rows()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and channels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mRgba:Lorg/opencv/core/Mat;

    invoke-virtual {v1}, Lorg/opencv/core/Mat;->channels()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeCameraView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;->mRgba:Lorg/opencv/core/Mat;

    return-object v0
.end method
