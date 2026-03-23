.class public Lorg/opencv/android/JavaCamera2View;
.super Lorg/opencv/android/CameraBridgeViewBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/opencv/android/JavaCamera2View$JavaCamera2Frame;,
        Lorg/opencv/android/JavaCamera2View$JavaCameraSizeAccessor;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOGTAG:Ljava/lang/String; = "JavaCamera2View"


# instance fields
.field protected mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field protected mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field protected mCameraID:Ljava/lang/String;

.field protected mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mFrameRotation:I

.field protected mImageReader:Landroid/media/ImageReader;

.field protected mPreviewFormat:I

.field protected mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field protected mPreviewSize:Landroid/util/Size;

.field protected mRequestTemplate:I

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/opencv/android/CameraBridgeViewBase;-><init>(Landroid/content/Context;I)V

    const/16 p1, 0x23

    iput p1, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewFormat:I

    const/4 p1, 0x1

    iput p1, p0, Lorg/opencv/android/JavaCamera2View;->mRequestTemplate:I

    new-instance p1, Landroid/util/Size;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewSize:Landroid/util/Size;

    new-instance p1, Lorg/opencv/android/JavaCamera2View$1;

    invoke-direct {p1, p0}, Lorg/opencv/android/JavaCamera2View$1;-><init>(Lorg/opencv/android/JavaCamera2View;)V

    iput-object p1, p0, Lorg/opencv/android/JavaCamera2View;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/opencv/android/CameraBridgeViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x23

    iput p1, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewFormat:I

    const/4 p1, 0x1

    iput p1, p0, Lorg/opencv/android/JavaCamera2View;->mRequestTemplate:I

    new-instance p1, Landroid/util/Size;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewSize:Landroid/util/Size;

    new-instance p1, Lorg/opencv/android/JavaCamera2View$1;

    invoke-direct {p1, p0}, Lorg/opencv/android/JavaCamera2View$1;-><init>(Lorg/opencv/android/JavaCamera2View;)V

    iput-object p1, p0, Lorg/opencv/android/JavaCamera2View;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-void
.end method

.method static synthetic access$000(Lorg/opencv/android/JavaCamera2View;)V
    .locals 0

    invoke-direct {p0}, Lorg/opencv/android/JavaCamera2View;->createCameraPreviewSession()V

    return-void
.end method

.method static synthetic access$100(Lorg/opencv/android/JavaCamera2View;)I
    .locals 0

    iget p0, p0, Lorg/opencv/android/JavaCamera2View;->mFrameRotation:I

    return p0
.end method

.method private createCameraPreviewSession()V
    .locals 5

    iget-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCameraPreviewSession("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JavaCamera2View"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v0, :cond_3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/opencv/android/JavaCamera2View;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v2, :cond_1

    const-string v0, "createCameraPreviewSession: camera isn\'t opened"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lorg/opencv/android/JavaCamera2View;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_2

    const-string v0, "createCameraPreviewSession: mCaptureSession is already started"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget v2, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewFormat:I

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mImageReader:Landroid/media/ImageReader;

    new-instance v1, Lorg/opencv/android/JavaCamera2View$3;

    invoke-direct {v1, p0}, Lorg/opencv/android/JavaCamera2View$3;-><init>(Lorg/opencv/android/JavaCamera2View;)V

    iget-object v2, p0, Lorg/opencv/android/JavaCamera2View;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lorg/opencv/android/JavaCamera2View;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget v2, p0, Lorg/opencv/android/JavaCamera2View;->mRequestTemplate:I

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v1, p0, Lorg/opencv/android/JavaCamera2View;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lorg/opencv/android/JavaCamera2View;->allocateSessionStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "createCameraPreviewSession"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    const-string v0, "JavaCamera2View"

    const-string v1, "startBackgroundThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/opencv/android/JavaCamera2View;->stopBackgroundThread()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OpenCVCameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/opencv/android/JavaCamera2View;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopBackgroundThread()V
    .locals 3

    const-string v0, "JavaCamera2View"

    const-string v1, "stopBackgroundThread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lorg/opencv/android/JavaCamera2View;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v2, p0, Lorg/opencv/android/JavaCamera2View;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/opencv/android/JavaCamera2View;->mBackgroundThread:Landroid/os/HandlerThread;

    iput-object v2, p0, Lorg/opencv/android/JavaCamera2View;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected allocateSessionStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1

    new-instance v0, Lorg/opencv/android/JavaCamera2View$2;

    invoke-direct {v0, p0}, Lorg/opencv/android/JavaCamera2View$2;-><init>(Lorg/opencv/android/JavaCamera2View;)V

    return-object v0
.end method

.method calcPreviewSize(II)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calcPreviewSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "JavaCamera2View"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mCameraID:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p1, "Camera isn\'t initialized!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "camera"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    iget-object v4, p0, Lorg/opencv/android/JavaCamera2View;->mCameraID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v4, Landroid/media/ImageReader;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v4, Lorg/opencv/android/JavaCamera2View$JavaCameraSizeAccessor;

    invoke-direct {v4}, Lorg/opencv/android/JavaCamera2View$JavaCameraSizeAccessor;-><init>()V

    invoke-virtual {p0, v0, v4, p1, p2}, Lorg/opencv/android/CameraBridgeViewBase;->calculateCameraFrameSize(Ljava/util/List;Lorg/opencv/android/CameraBridgeViewBase$ListItemAccessor;II)Lorg/opencv/core/Size;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Selected preview size to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lorg/opencv/core/Size;->width:D

    double-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lorg/opencv/core/Size;->height:D

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-double v0, p2

    iget-wide v4, p1, Lorg/opencv/core/Size;->width:D

    cmpl-double p2, v0, v4

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-double v0, p2

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    cmpl-double p2, v0, v4

    if-nez p2, :cond_1

    return v3

    :cond_1
    new-instance p2, Landroid/util/Size;

    iget-wide v0, p1, Lorg/opencv/core/Size;->width:D

    double-to-int v0, v0

    iget-wide v4, p1, Lorg/opencv/core/Size;->height:D

    double-to-int p1, v4

    invoke-direct {p2, v0, p1}, Landroid/util/Size;-><init>(II)V

    iput-object p2, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewSize:Landroid/util/Size;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "calcPreviewSize - Security Exception"

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "calcPreviewSize - Illegal Argument Exception"

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p2, "calcPreviewSize - Camera Access Exception"

    :goto_0
    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method protected connectCamera(II)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraPreviewSize("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavaCamera2View"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/opencv/android/JavaCamera2View;->startBackgroundThread()V

    invoke-virtual {p0}, Lorg/opencv/android/JavaCamera2View;->selectCamera()Z

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lorg/opencv/android/JavaCamera2View;->mCameraID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v4, v3}, Lorg/opencv/android/CameraBridgeViewBase;->getFrameRotation(ZI)I

    move-result v3

    iput v3, p0, Lorg/opencv/android/JavaCamera2View;->mFrameRotation:I

    invoke-virtual {p0, p1, p2}, Lorg/opencv/android/JavaCamera2View;->calcPreviewSize(II)Z

    move-result v3

    iget v4, p0, Lorg/opencv/android/JavaCamera2View;->mFrameRotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_1

    iget-object v4, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget-object v4, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    :goto_1
    iput v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget-object v4, p0, Lorg/opencv/android/JavaCamera2View;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v5, :cond_2

    int-to-float p2, p2

    iget v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    int-to-float v4, v4

    div-float/2addr p2, v4

    int-to-float p1, p1

    iget v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    int-to-float v4, v4

    div-float/2addr p1, v4

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    iput p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mScale:F

    :goto_3
    invoke-virtual {p0}, Lorg/opencv/android/CameraBridgeViewBase;->AllocateCache()V

    if-eqz v3, :cond_3

    iget-object p1, p0, Lorg/opencv/android/JavaCamera2View;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_3

    const-string p1, "closing existing previewSession"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/opencv/android/JavaCamera2View;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/opencv/android/JavaCamera2View;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_3
    iget-object p1, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFpsMeter:Lorg/opencv/android/FpsMeter;

    if-eqz p1, :cond_4

    iget p2, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameWidth:I

    iget v3, p0, Lorg/opencv/android/CameraBridgeViewBase;->mFrameHeight:I

    invoke-virtual {p1, p2, v3}, Lorg/opencv/android/FpsMeter;->setResolution(II)V

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Opening camera: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/opencv/android/JavaCamera2View;->mCameraID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/opencv/android/JavaCamera2View;->mCameraID:Ljava/lang/String;

    iget-object p2, p0, Lorg/opencv/android/JavaCamera2View;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v3, p0, Lorg/opencv/android/JavaCamera2View;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Interrupted while setCameraPreviewSize."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    const-string p2, "OpenCamera - Camera Access Exception"

    invoke-static {v1, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return v0
.end method

.method protected disconnectCamera()V
    .locals 4

    const-string v0, "close camera"

    const-string v1, "JavaCamera2View"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lorg/opencv/android/JavaCamera2View;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Lorg/opencv/android/JavaCamera2View;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iput-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-direct {p0}, Lorg/opencv/android/JavaCamera2View;->stopBackgroundThread()V

    iget-object v2, p0, Lorg/opencv/android/JavaCamera2View;->mImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mImageReader:Landroid/media/ImageReader;

    :cond_2
    const-string v0, "camera closed!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lorg/opencv/android/JavaCamera2View;->stopBackgroundThread()V

    iget-object v2, p0, Lorg/opencv/android/JavaCamera2View;->mImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mImageReader:Landroid/media/ImageReader;

    :cond_3
    throw v1
.end method

.method protected selectCamera()Z
    .locals 11

    const-string v0, "selectCamera"

    const-string v1, "JavaCamera2View"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "camera"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_0

    const-string v0, "Error: camera isn\'t detected."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    aget-object v0, v3, v2

    iput-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mCameraID:Ljava/lang/String;

    goto :goto_1

    :cond_1
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v7, v3, v5

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    iget v9, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    const/16 v10, 0x63

    if-ne v9, v10, :cond_2

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, v6, :cond_3

    :cond_2
    iget v9, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    const/16 v10, 0x62

    if-ne v9, v10, :cond_4

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    iput-object v7, p0, Lorg/opencv/android/JavaCamera2View;->mCameraID:Ljava/lang/String;

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mCameraID:Ljava/lang/String;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Selecting camera by index ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lorg/opencv/android/CameraBridgeViewBase;->mCameraIndex:I

    array-length v4, v3

    if-ge v0, v4, :cond_6

    aget-object v0, v3, v0

    iput-object v0, p0, Lorg/opencv/android/JavaCamera2View;->mCameraID:Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    return v6

    :catch_0
    move-exception v0

    const-string v3, "selectCamera - Security Exception"

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v3, "selectCamera - Illegal Argument Exception"

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v3, "selectCamera - Camera Access Exception"

    :goto_3
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method
