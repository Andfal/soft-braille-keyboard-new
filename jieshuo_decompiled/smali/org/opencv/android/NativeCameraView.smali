.class public Lorg/opencv/android/NativeCameraView;
.super Lorg/opencv/android/CameraBridgeViewBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/opencv/android/NativeCameraView$CameraWorker;,
        Lorg/opencv/android/NativeCameraView$NativeCameraFrame;,
        Lorg/opencv/android/NativeCameraView$OpenCvSizeAccessor;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NativeCameraView"


# instance fields
.field protected mCamera:Lorg/opencv/videoio/VideoCapture;

.field protected mFrame:Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;

.field private mStopThread:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/opencv/android/CameraBridgeViewBase;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/opencv/android/CameraBridgeViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$100(Lorg/opencv/android/NativeCameraView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/opencv/android/NativeCameraView;->mStopThread:Z

    return p0
.end method

.method private initializeCamera(II)Z
    .locals 13

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iget v1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    const/16 v2, 0x62

    const/16 v3, 0x63

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v4, :cond_0

    const-string v1, "NativeCameraView"

    const-string v7, "Try to open default camera"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_3

    :cond_0
    if-ne v1, v3, :cond_2

    const-string v7, "NativeCameraView"

    const-string v8, "Trying to open back camera"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v8

    if-ge v7, v8, :cond_4

    invoke-static {v7, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v8, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-ne v1, v2, :cond_4

    const-string v7, "NativeCameraView"

    const-string v8, "Trying to open front camera"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v8

    if-ge v7, v8, :cond_4

    invoke-static {v7, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v8, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v8, v5, :cond_3

    :goto_2
    move v1, v7

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-ne v1, v3, :cond_5

    const-string p1, "NativeCameraView"

    const-string p2, "Back camera not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v6

    :cond_5
    if-ne v1, v2, :cond_6

    const-string p1, "NativeCameraView"

    const-string p2, "Front camera not found!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return v6

    :cond_6
    new-instance v7, Lorg/opencv/core/MatOfInt;

    const/4 v8, 0x4

    new-array v9, v8, [I

    const/4 v10, 0x3

    aput v10, v9, v6

    aput p1, v9, v5

    const/4 v11, 0x2

    aput v8, v9, v11

    aput p2, v9, v10

    invoke-direct {v7, v9}, Lorg/opencv/core/MatOfInt;-><init>([I)V

    const-string v9, "NativeCameraView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Try to open camera with index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lorg/opencv/videoio/VideoCapture;

    const/16 v11, 0x3e8

    invoke-direct {v9, v1, v11, v7}, Lorg/opencv/videoio/VideoCapture;-><init>(IILorg/opencv/core/MatOfInt;)V

    iput-object v9, p0, Lorg/opencv/android/NativeCameraView;->mCamera:Lorg/opencv/videoio/VideoCapture;

    invoke-virtual {v9}, Lorg/opencv/videoio/VideoCapture;->isOpened()Z

    move-result v7

    if-nez v7, :cond_7

    monitor-exit p0

    return v6

    :cond_7
    iget v7, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    if-eq v7, v3, :cond_8

    if-eq v7, v2, :cond_8

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    :cond_8
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v1, v5, :cond_9

    const/4 v6, 0x1

    :cond_9
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {p0, v6, v0}, Lorg/opencv/android/CameraBridgeViewBase;->getFrameRotation(ZI)I

    move-result v0

    new-instance v1, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;

    new-instance v2, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;

    iget-object v3, p0, Lorg/opencv/android/NativeCameraView;->mCamera:Lorg/opencv/videoio/VideoCapture;

    invoke-direct {v2, v3}, Lorg/opencv/android/NativeCameraView$NativeCameraFrame;-><init>(Lorg/opencv/videoio/VideoCapture;)V

    invoke-direct {v1, p0, v2, v0}, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;-><init>(Lorg/opencv/android/CameraBridgeViewBase;Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;I)V

    iput-object v1, p0, Lorg/opencv/android/NativeCameraView;->mFrame:Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/opencv/android/NativeCameraView;->mCamera:Lorg/opencv/videoio/VideoCapture;

    invoke-virtual {v0, v10}, Lorg/opencv/videoio/VideoCapture;->get(I)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget-object v0, p0, Lorg/opencv/android/NativeCameraView;->mCamera:Lorg/opencv/videoio/VideoCapture;

    invoke-virtual {v0, v8}, Lorg/opencv/videoio/VideoCapture;->get(I)D

    move-result-wide v0

    :goto_4
    double-to-int v0, v0

    iput v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lorg/opencv/android/NativeCameraView;->mCamera:Lorg/opencv/videoio/VideoCapture;

    invoke-virtual {v0, v8}, Lorg/opencv/videoio/VideoCapture;->get(I)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget-object v0, p0, Lorg/opencv/android/NativeCameraView;->mCamera:Lorg/opencv/videoio/VideoCapture;

    invoke-virtual {v0, v10}, Lorg/opencv/videoio/VideoCapture;->get(I)D

    move-result-wide v0

    goto :goto_4

    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v4, :cond_b

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v4, :cond_b

    int-to-float p2, p2

    iget v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    int-to-float p1, p1

    iget v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    goto :goto_6

    :cond_b
    const/4 p1, 0x0

    iput p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    :goto_6
    iget-object p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    if-eqz p1, :cond_c

    iget p2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    invoke-virtual {p1, p2, v0}, Lorg/opencv/android/FpsMeter;->setResolution(II)V

    :cond_c
    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->AllocateCache()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "NativeCameraView"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Selected camera frame size = ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private releaseCamera()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/opencv/android/NativeCameraView;->mFrame:Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->mFrame:Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;

    invoke-interface {v0}, Lorg/opencv/android/CameraBridgeViewBase$CvCameraViewFrame;->release()V

    iget-object v0, p0, Lorg/opencv/android/NativeCameraView;->mFrame:Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;

    invoke-virtual {v0}, Lorg/opencv/android/CameraBridgeViewBase$RotatedCameraFrame;->release()V

    :cond_0
    iget-object v0, p0, Lorg/opencv/android/NativeCameraView;->mCamera:Lorg/opencv/videoio/VideoCapture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/opencv/videoio/VideoCapture;->release()V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method protected connectCamera(II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/opencv/android/NativeCameraView;->initializeCamera(II)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lorg/opencv/android/NativeCameraView$CameraWorker;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lorg/opencv/android/NativeCameraView$CameraWorker;-><init>(Lorg/opencv/android/NativeCameraView;Lorg/opencv/android/NativeCameraView$1;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/opencv/android/NativeCameraView;->mThread:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method protected disconnectCamera()V
    .locals 4

    iget-object v0, p0, Lorg/opencv/android/NativeCameraView;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/opencv/android/NativeCameraView;->mStopThread:Z

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-object v3, p0, Lorg/opencv/android/NativeCameraView;->mThread:Ljava/lang/Thread;

    iput-boolean v2, p0, Lorg/opencv/android/NativeCameraView;->mStopThread:Z

    goto :goto_2

    :goto_1
    iput-object v3, p0, Lorg/opencv/android/NativeCameraView;->mThread:Ljava/lang/Thread;

    iput-boolean v2, p0, Lorg/opencv/android/NativeCameraView;->mStopThread:Z

    throw v0

    :cond_0
    :goto_2
    invoke-direct {p0}, Lorg/opencv/android/NativeCameraView;->releaseCamera()V

    return-void
.end method
