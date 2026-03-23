.class public Lcom/androlua/LuaCameraView2;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androlua/LuaCameraView2$ConfirmationDialog;,
        Lcom/androlua/LuaCameraView2$ErrorDialog;,
        Lcom/androlua/LuaCameraView2$CompareSizesByArea;,
        Lcom/androlua/LuaCameraView2$ImageSaver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final FRAGMENT_DIALOG:Ljava/lang/String; = "dialog"

.field private static final MAX_PREVIEW_HEIGHT:I = 0xc80

.field private static final MAX_PREVIEW_WIDTH:I = 0xc80

.field private static final ORIENTATIONS:Landroid/util/SparseIntArray;

.field private static final REQUEST_CAMERA_PERMISSION:I = 0x1

.field private static final STATE_PICTURE_TAKEN:I = 0x4

.field private static final STATE_PREVIEW:I = 0x0

.field private static final STATE_WAITING_LOCK:I = 0x1

.field private static final STATE_WAITING_NON_PRECAPTURE:I = 0x3

.field private static final STATE_WAITING_PRECAPTURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Camera2BasicFragment"


# instance fields
.field private characteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private isCN:Z

.field private mAe:I

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mFile:Ljava/io/File;

.field private mFlashSupported:Z

.field private mImageReader:Landroid/media/ImageReader;

.field private mObject:Ljava/lang/String;

.field private mOcrItem:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mPreviewSize:Landroid/util/Size;

.field private mRootLayout:Landroid/view/View;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSensorOrientation:I

.field private mState:I

.field private final mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextViewLeft:Landroid/widget/TextView;

.field private mTextViewRight:Landroid/widget/TextView;

.field private mTextureViewLeft:Landroid/view/TextureView;

.field private mTextureViewRight:Landroid/view/TextureView;

.field private mTorchMode:Z

.field private mType:I

.field private mZoom:F

.field private mZoomValue:F

.field private offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/androlua/LuaCameraView2;->ORIENTATIONS:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x2

    const/16 v2, 0x10e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v1, 0x3

    const/16 v2, 0xb4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/androlua/LuaCameraView2$1;

    invoke-direct {v0, p0}, Lcom/androlua/LuaCameraView2$1;-><init>(Lcom/androlua/LuaCameraView2;)V

    iput-object v0, p0, Lcom/androlua/LuaCameraView2;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    new-instance v0, Lcom/androlua/LuaCameraView2$2;

    invoke-direct {v0, p0}, Lcom/androlua/LuaCameraView2$2;-><init>(Lcom/androlua/LuaCameraView2;)V

    iput-object v0, p0, Lcom/androlua/LuaCameraView2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v0, Lcom/androlua/LuaCameraView2$3;

    invoke-direct {v0, p0}, Lcom/androlua/LuaCameraView2$3;-><init>(Lcom/androlua/LuaCameraView2;)V

    iput-object v0, p0, Lcom/androlua/LuaCameraView2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaCameraView2;->mState:I

    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v1, p0, Lcom/androlua/LuaCameraView2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    new-instance v1, Lcom/androlua/LuaCameraView2$4;

    invoke-direct {v1, p0}, Lcom/androlua/LuaCameraView2$4;-><init>(Lcom/androlua/LuaCameraView2;)V

    iput-object v1, p0, Lcom/androlua/LuaCameraView2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/androlua/LuaCameraView2;->mZoom:F

    iput v0, p0, Lcom/androlua/LuaCameraView2;->mAe:I

    new-instance v0, Lcom/androlua/LuaCameraView2$6;

    invoke-direct {v0, p0}, Lcom/androlua/LuaCameraView2$6;-><init>(Lcom/androlua/LuaCameraView2;)V

    iput-object v0, p0, Lcom/androlua/LuaCameraView2;->mRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/androlua/LuaCameraView2;->offset:I

    return-void
.end method

.method static bridge synthetic A(Lcom/androlua/LuaCameraView2;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaCameraView2;->findObject([B)V

    return-void
.end method

.method static bridge synthetic B(Lcom/androlua/LuaCameraView2;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaCameraView2;->openCamera(II)V

    return-void
.end method

.method static bridge synthetic C(Lcom/androlua/LuaCameraView2;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->runPrecaptureSequence()V

    return-void
.end method

.method static bridge synthetic D(Lcom/androlua/LuaCameraView2;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaCameraView2;->setAutoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static bridge synthetic E(Lcom/androlua/LuaCameraView2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaCameraView2;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic F(Lcom/androlua/LuaCameraView2;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->unlockFocus()V

    return-void
.end method

.method static bridge synthetic G(Lcom/androlua/LuaCameraView2;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androlua/LuaCameraView2;->voiceQuestion([B)V

    return-void
.end method

.method static bridge synthetic a(Lcom/androlua/LuaCameraView2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/androlua/LuaCameraView2;->isCN:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/androlua/LuaCameraView2;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView2;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/androlua/LuaCameraView2;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method private captureStillPicture()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v2, :cond_1

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/androlua/LuaCameraView2;->mZoomValue:F

    invoke-direct {p0, v3, v2}, Lcom/androlua/LuaCameraView2;->getZoomRect(FF)Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/androlua/LuaCameraView2;->setAutoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0}, Lcom/androlua/LuaCameraView2;->getOrientation(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v0, Lcom/androlua/LuaCameraView2$9;

    invoke-direct {v0, p0}, Lcom/androlua/LuaCameraView2$9;-><init>(Lcom/androlua/LuaCameraView2;)V

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private static chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p5

    array-length v3, p0

    add-int/lit8 v3, v3, -0x2

    :goto_0
    if-ltz v3, :cond_2

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lt v5, v6, :cond_1

    return-object v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    aget-object v6, p0, v5

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-gt v7, p3, :cond_4

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-gt v7, p4, :cond_4

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int v8, v8, p5

    div-int/2addr v8, v2

    if-ne v7, v8, :cond_4

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v7, p1, :cond_3

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v7, p2, :cond_3

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    new-instance p0, Lcom/androlua/LuaCameraView2$CompareSizesByArea;

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2$CompareSizesByArea;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    new-instance p0, Lcom/androlua/LuaCameraView2$CompareSizesByArea;

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2$CompareSizesByArea;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    return-object p0

    :cond_7
    const-string p1, "Camera2BasicFragment"

    const-string p2, "Couldn\'t find any suitable preview size"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget-object p0, p0, v4

    return-object p0
.end method

.method private chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 8

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v0, :cond_1

    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v0, v6

    if-ne v7, v3, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    :goto_1
    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v5, v0

    :goto_2
    if-ge v1, v5, :cond_3

    aget v6, v0, v1

    if-ne v6, v3, :cond_2

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private closeCamera()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iput-object v1, p0, Lcom/androlua/LuaCameraView2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v1, p0, Lcom/androlua/LuaCameraView2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_1
    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lcom/androlua/LuaCameraView2;->mImageReader:Landroid/media/ImageReader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Interrupted while trying to lock camera closing."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

.method private configureTransform(II)V
    .locals 9

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v4, v3, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v6, v0, :cond_2

    const/4 v6, 0x3

    if-ne v6, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ne v7, v0, :cond_3

    const/high16 p1, 0x43340000    # 180.0f

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float v6, v3, v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float v8, v5, v8

    invoke-virtual {v4, v6, v8}, Landroid/graphics/RectF;->offset(FF)V

    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v2, v4, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v1, p1, p1, v3, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    sub-int/2addr v0, v7

    mul-int/lit8 v0, v0, 0x5a

    int-to-float p1, v0

    :goto_1
    invoke-virtual {v1, p1, v3, v5}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    :cond_3
    iget-object p1, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2;->mTextureViewRight:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private createCameraPreviewSession()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mTextureViewRight:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v1}, Lcom/androlua/LuaCameraView2;->chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v1}, Lcom/androlua/LuaCameraView2;->setFps(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/Surface;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v0, v4, v3

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/androlua/LuaCameraView2$8;

    invoke-direct {v2, p0}, Lcom/androlua/LuaCameraView2$8;-><init>(Lcom/androlua/LuaCameraView2;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static bridge synthetic d(Lcom/androlua/LuaCameraView2;)Ljava/util/concurrent/Semaphore;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/androlua/LuaCameraView2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/androlua/LuaCameraView2;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method private findObject([B)V
    .locals 3

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    const p1, 0x7f0703df

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mObject:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const-string v1, "\u753b\u9762\u4e2d\u6709%s\u5417\uff0c\u6ca1\u6709\u5c31\u8bf4\u6ca1\u6709\uff0c\u6709\u5c31\u8bf4\u660e\u8be6\u7ec6\u76f8\u5bf9\u5176\u4ed6\u7269\u54c1\u4f4d\u7f6e"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaCameraView2$10;

    invoke-direct {v1, p0}, Lcom/androlua/LuaCameraView2$10;-><init>(Lcom/androlua/LuaCameraView2;)V

    invoke-static {p1, v0, v1}, Lcom/nirenr/talkman/ai/g;->i([BLjava/lang/String;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    return-void

    :cond_1
    new-instance v1, Lcom/androlua/LuaCameraView2$11;

    invoke-direct {v1, p0, v0, p1}, Lcom/androlua/LuaCameraView2$11;-><init>(Lcom/androlua/LuaCameraView2;Lcom/nirenr/talkman/TalkManAccessibilityService;[B)V

    const p1, 0x1e240

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSpeechRecognitionListener(Lcom/nirenr/talkman/SpeechRecognitionListener;I)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startListening()V

    return-void
.end method

.method static bridge synthetic g(Lcom/androlua/LuaCameraView2;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView2;->mFile:Ljava/io/File;

    return-object p0
.end method

.method private getOrientation(I)I
    .locals 1

    sget-object v0, Lcom/androlua/LuaCameraView2;->ORIENTATIONS:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iget v0, p0, Lcom/androlua/LuaCameraView2;->mSensorOrientation:I

    add-int/2addr p1, v0

    add-int/lit16 p1, p1, 0x10e

    rem-int/lit16 p1, p1, 0x168

    return p1
.end method

.method private getZoomRect(FF)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, p2

    float-to-int v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, v2

    int-to-float v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr p1, v3

    mul-float v2, v2, p1

    sub-float/2addr p2, v3

    div-float/2addr v2, p2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    div-float/2addr v1, p2

    div-float/2addr v1, v3

    float-to-int p1, v1

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-direct {p2, v2, p1, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method static bridge synthetic h(Lcom/androlua/LuaCameraView2;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView2;->mObject:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/androlua/LuaCameraView2;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/androlua/LuaCameraView2;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/androlua/LuaCameraView2;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView2;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/androlua/LuaCameraView2;)I
    .locals 0

    iget p0, p0, Lcom/androlua/LuaCameraView2;->mState:I

    return p0
.end method

.method private lockFocus()V
    .locals 4

    const v0, 0x7f07038d

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iput v2, p0, Lcom/androlua/LuaCameraView2;->mState:I

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/androlua/LuaCameraView2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static bridge synthetic m(Lcom/androlua/LuaCameraView2;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView2;->mTextViewLeft:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/androlua/LuaCameraView2;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/androlua/LuaCameraView2;->mTextViewRight:Landroid/widget/TextView;

    return-object p0
.end method

.method public static newInstance()Lcom/androlua/LuaCameraView2;
    .locals 1

    new-instance v0, Lcom/androlua/LuaCameraView2;

    invoke-direct {v0}, Lcom/androlua/LuaCameraView2;-><init>()V

    return-object v0
.end method

.method static bridge synthetic o(Lcom/androlua/LuaCameraView2;)I
    .locals 0

    iget p0, p0, Lcom/androlua/LuaCameraView2;->mType:I

    return p0
.end method

.method private openCamera(II)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Lcom/androlua/s;->a(Landroid/app/Activity;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->requestCameraPermission()V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaCameraView2;->setUpCameraOutputs(II)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaCameraView2;->configureTransform(II)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    iget-object p2, p0, Lcom/androlua/LuaCameraView2;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x9c4

    invoke-virtual {p2, v1, v2, v0}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/androlua/LuaCameraView2;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Time out waiting to lock camera opening."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Interrupted while trying to lock camera opening."

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static bridge synthetic p(Lcom/androlua/LuaCameraView2;)F
    .locals 0

    iget p0, p0, Lcom/androlua/LuaCameraView2;->mZoom:F

    return p0
.end method

.method private preview()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/androlua/LuaCameraView2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static bridge synthetic q(Lcom/androlua/LuaCameraView2;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic r(Lcom/androlua/LuaCameraView2;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method private requestCameraPermission()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/androlua/LuaCameraView2$ConfirmationDialog;

    invoke-direct {v0}, Lcom/androlua/LuaCameraView2$ConfirmationDialog;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private runPrecaptureSequence()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/androlua/LuaCameraView2;->mState:I

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/androlua/LuaCameraView2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static bridge synthetic s(Lcom/androlua/LuaCameraView2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2;->mObject:Ljava/lang/String;

    return-void
.end method

.method private setAutoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    iget-boolean v0, p0, Lcom/androlua/LuaCameraView2;->mFlashSupported:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setFps(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 8

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v2, v0, v1

    array-length v3, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int v5, v5, v6

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int v6, v6, v7

    if-ge v5, v6, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    if-eqz v2, :cond_3

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private setUpCameraOutputs(II)V
    .locals 15

    move-object v1, p0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "camera"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_9

    aget-object v7, v3, v6

    invoke-virtual {v2, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v8

    iput-object v8, v1, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_0

    goto :goto_1

    :cond_0
    iget-object v8, v1, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v8, :cond_1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x100

    invoke-virtual {v8, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/androlua/LuaCameraView2$CompareSizesByArea;

    invoke-direct {v4}, Lcom/androlua/LuaCameraView2$CompareSizesByArea;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/util/Size;

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v6, 0x2

    invoke-static {v3, v4, v2, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    iput-object v2, v1, Lcom/androlua/LuaCameraView2;->mImageReader:Landroid/media/ImageReader;

    iget-object v3, v1, Lcom/androlua/LuaCameraView2;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v4, v1, Lcom/androlua/LuaCameraView2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    iget-object v3, v1, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Lcom/androlua/LuaCameraView2;->mSensorOrientation:I

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v6, :cond_3

    const/4 v9, 0x3

    if-eq v2, v9, :cond_2

    const-string v3, "Camera2BasicFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display rotation is invalid: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_5

    const/16 v2, 0xb4

    if-ne v3, v2, :cond_4

    goto :goto_3

    :cond_3
    const/16 v2, 0x5a

    if-eq v3, v2, :cond_5

    const/16 v2, 0x10e

    if-ne v3, v2, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x0

    :cond_5
    :goto_3
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-eqz v4, :cond_6

    move/from16 v11, p1

    move/from16 v10, p2

    move v13, v0

    move v12, v2

    goto :goto_4

    :cond_6
    move/from16 v10, p1

    move/from16 v11, p2

    move v12, v0

    move v13, v2

    :goto_4
    const-class v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v8, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v9

    invoke-static/range {v9 .. v14}, Lcom/androlua/LuaCameraView2;->chooseOptimalSize([Landroid/util/Size;IIIILandroid/util/Size;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, v1, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v2, v1, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v3, v1, Lcom/androlua/LuaCameraView2;->mTextureViewRight:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    if-ne v0, v6, :cond_7

    iget-object v0, v1, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    iget-object v0, v1, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    iget-object v0, v1, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    iget-object v0, v1, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    :goto_5
    iput v0, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    goto :goto_6

    :cond_7
    iget-object v0, v1, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    iget-object v0, v1, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    iget-object v0, v1, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    iget-object v0, v1, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    goto :goto_5

    :goto_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "distance"

    invoke-static {v0, v4}, Lk2/b0;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget-object v4, v1, Lcom/androlua/LuaCameraView2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    sub-int v4, p1, v4

    sub-int/2addr v4, v0

    iput v4, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget-object v0, v1, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/androlua/LuaCameraView2;->mTextureViewRight:Landroid/view/TextureView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_7
    iput-boolean v5, v1, Lcom/androlua/LuaCameraView2;->mFlashSupported:Z

    iput-object v7, v1, Lcom/androlua/LuaCameraView2;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "\u76f8\u673a\u51fa\u9519"

    invoke-static {v0}, Lcom/androlua/LuaCameraView2$ErrorDialog;->newInstance(Ljava/lang/String;)Lcom/androlua/LuaCameraView2$ErrorDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_8
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/androlua/LuaCameraView2$5;

    invoke-direct {v1, p0, v0, p1}, Lcom/androlua/LuaCameraView2$5;-><init>(Lcom/androlua/LuaCameraView2;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private startBackgroundThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androlua/LuaCameraView2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/androlua/LuaCameraView2;->mBackgroundHandler:Landroid/os/Handler;

    return-void
.end method

.method private stopBackgroundThread()V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaCameraView2;->mBackgroundThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/androlua/LuaCameraView2;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static bridge synthetic t(Lcom/androlua/LuaCameraView2;[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2;->mOcrItem:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    return-void
.end method

.method static bridge synthetic u(Lcom/androlua/LuaCameraView2;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    return-void
.end method

.method private unlockFocus()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/androlua/LuaCameraView2;->setAutoFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/androlua/LuaCameraView2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaCameraView2;->mState:I

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/androlua/LuaCameraView2;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static bridge synthetic v(Lcom/androlua/LuaCameraView2;I)V
    .locals 0

    iput p1, p0, Lcom/androlua/LuaCameraView2;->mState:I

    return-void
.end method

.method private voiceQuestion([B)V
    .locals 2

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-nez v0, :cond_0

    const p1, 0x7f0703df

    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v1, Lcom/androlua/LuaCameraView2$12;

    invoke-direct {v1, p0, v0, p1}, Lcom/androlua/LuaCameraView2$12;-><init>(Lcom/androlua/LuaCameraView2;Lcom/nirenr/talkman/TalkManAccessibilityService;[B)V

    const p1, 0x1e240

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSpeechRecognitionListener(Lcom/nirenr/talkman/SpeechRecognitionListener;I)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startListening()V

    return-void
.end method

.method static bridge synthetic w(Lcom/androlua/LuaCameraView2;I)V
    .locals 0

    iput p1, p0, Lcom/androlua/LuaCameraView2;->offset:I

    return-void
.end method

.method static bridge synthetic x(Lcom/androlua/LuaCameraView2;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->captureStillPicture()V

    return-void
.end method

.method static bridge synthetic y(Lcom/androlua/LuaCameraView2;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/androlua/LuaCameraView2;->configureTransform(II)V

    return-void
.end method

.method static bridge synthetic z(Lcom/androlua/LuaCameraView2;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->createCameraPreviewSession()V

    return-void
.end method


# virtual methods
.method public ae1()V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/androlua/LuaCameraView2;->mAe:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androlua/LuaCameraView2;->mAe:I

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaCameraView2;->mAe:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f07096b

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/androlua/LuaCameraView2;->mAe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/androlua/LuaCameraView2;->mAe:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->preview()V

    return-void
.end method

.method public ae2()V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/androlua/LuaCameraView2;->mAe:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/androlua/LuaCameraView2;->mAe:I

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/androlua/LuaCameraView2;->mAe:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f07096b

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/androlua/LuaCameraView2;->mAe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v2, p0, Lcom/androlua/LuaCameraView2;->mAe:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->preview()V

    return-void
.end method

.method public applyZoom(F)V
    .locals 3

    iput p1, p0, Lcom/androlua/LuaCameraView2;->mZoomValue:F

    iget-object p1, p0, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz p1, :cond_0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lcom/androlua/LuaCameraView2;->mZoomValue:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070970

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/androlua/LuaCameraView2;->getZoomRect(FF)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getAe()I
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getZoom()F
    .locals 1

    iget v0, p0, Lcom/androlua/LuaCameraView2;->mZoom:F

    return v0
.end method

.method public getZoomDistance()I
    .locals 2

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mTextureViewRight:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    neg-int v0, v0

    return v0
.end method

.method public isFlashMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/androlua/LuaCameraView2;->mFlashSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/androlua/LuaCameraView2;->mTorchMode:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public nextText()V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mOcrItem:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    if-nez v0, :cond_0

    const v0, 0x7f070404

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/androlua/LuaCameraView2;->offset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/androlua/LuaCameraView2;->offset:I

    array-length v0, v0

    if-lt v1, v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaCameraView2;->offset:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/androlua/LuaCameraView2;->offset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mOcrItem:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iget v2, p0, Lcom/androlua/LuaCameraView2;->offset:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public nextType()V
    .locals 3

    iget v0, p0, Lcom/androlua/LuaCameraView2;->mType:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaCameraView2;->mType:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/androlua/LuaCameraView2;->mObject:Ljava/lang/String;

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LuaCameraView2;->mType:I

    :cond_0
    iget v0, p0, Lcom/androlua/LuaCameraView2;->mType:I

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    const v0, 0x7f070967

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    return-void

    :cond_2
    const v0, 0x7f07027c

    goto :goto_0

    :cond_3
    const v0, 0x7f070520

    goto :goto_0

    :cond_4
    const v0, 0x7f07007f

    goto :goto_0

    :cond_5
    const v0, 0x7f07008a

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "pic.jpg"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/androlua/LuaCameraView2;->mFile:Ljava/io/File;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f050001

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaCameraView2;->mObject:Ljava/lang/String;

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->closeCamera()V

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->stopBackgroundThread()V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    array-length p1, p3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    aget p1, p3, p1

    if-eqz p1, :cond_2

    :cond_0
    const-string p1, "\u83b7\u53d6\u6743\u9650\u51fa\u9519"

    invoke-static {p1}, Lcom/androlua/LuaCameraView2$ErrorDialog;->newInstance(Ljava/lang/String;)Lcom/androlua/LuaCameraView2$ErrorDialog;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    const-string p3, "dialog"

    invoke-virtual {p1, p2, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->startBackgroundThread()V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mTextureViewRight:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/androlua/LuaCameraView2;->openCamera(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mTextureViewRight:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const p2, 0x7f04002d

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/androlua/LuaCameraView2;->mRootLayout:Landroid/view/View;

    const p2, 0x7f040035

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    const p2, 0x7f040036

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/androlua/LuaCameraView2;->mTextureViewRight:Landroid/view/TextureView;

    const p2, 0x7f040030

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/androlua/LuaCameraView2;->mTextViewLeft:Landroid/widget/TextView;

    const p2, 0x7f040031

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/androlua/LuaCameraView2;->mTextViewRight:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "zh"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/androlua/LuaCameraView2;->isCN:Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lcom/androlua/LuaCameraView2;->mTextViewLeft:Landroid/widget/TextView;

    div-int/lit8 p1, p1, 0x3

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    iget-object p2, p0, Lcom/androlua/LuaCameraView2;->mTextViewRight:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    return-void
.end method

.method public previousText()V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mOcrItem:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    if-nez v0, :cond_0

    const v0, 0x7f070404

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v1, p0, Lcom/androlua/LuaCameraView2;->offset:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/androlua/LuaCameraView2;->offset:I

    if-gez v1, :cond_1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/androlua/LuaCameraView2;->offset:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/androlua/LuaCameraView2;->offset:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mOcrItem:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iget v2, p0, Lcom/androlua/LuaCameraView2;->offset:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public previousType()V
    .locals 3

    iget v0, p0, Lcom/androlua/LuaCameraView2;->mType:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaCameraView2;->mType:I

    const/4 v2, 0x4

    if-gez v0, :cond_0

    iput v2, p0, Lcom/androlua/LuaCameraView2;->mType:I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androlua/LuaCameraView2;->mObject:Ljava/lang/String;

    iget v0, p0, Lcom/androlua/LuaCameraView2;->mType:I

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    return-void

    :cond_1
    const v0, 0x7f070967

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    return-void

    :cond_2
    const v0, 0x7f07027c

    goto :goto_0

    :cond_3
    const v0, 0x7f070520

    goto :goto_0

    :cond_4
    const v0, 0x7f07007f

    goto :goto_0

    :cond_5
    const v0, 0x7f07008a

    goto :goto_0
.end method

.method public setFlashMode(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/androlua/LuaCameraView2;->mFlashSupported:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->preview()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/androlua/LuaCameraView2;->mTorchMode:Z

    const p1, 0x7f07096e

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaCameraView2;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->preview()V

    iput-boolean v1, p0, Lcom/androlua/LuaCameraView2;->mTorchMode:Z

    const p1, 0x7f07096d

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setStateText(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;J)V

    return-void
.end method

.method public setStateText(Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ttsSpeak(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/androlua/LuaCameraView2$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/androlua/LuaCameraView2$7;-><init>(Lcom/androlua/LuaCameraView2;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public takePicture()V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->lockFocus()V

    return-void
.end method

.method public zoom1()V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mTextureViewRight:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v2, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mTextureViewRight:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07096c

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    neg-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "distance"

    invoke-static {v1, v2, v0}, Lk2/b0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public zoom2()V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget-object v1, p0, Lcom/androlua/LuaCameraView2;->mTextureViewRight:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v2, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mTextureViewLeft:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/androlua/LuaCameraView2;->mTextureViewRight:Landroid/view/TextureView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07096c

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    neg-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androlua/LuaCameraView2;->setStateText(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    neg-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "distance"

    invoke-static {v1, v2, v0}, Lk2/b0;->k(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public zoomBig()V
    .locals 2

    iget v0, p0, Lcom/androlua/LuaCameraView2;->mZoom:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaCameraView2;->mZoom:F

    iget-object v0, p0, Lcom/androlua/LuaCameraView2;->characteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/androlua/LuaCameraView2;->mZoom:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iput v0, p0, Lcom/androlua/LuaCameraView2;->mZoom:F

    :cond_0
    iget v0, p0, Lcom/androlua/LuaCameraView2;->mZoom:F

    invoke-virtual {p0, v0}, Lcom/androlua/LuaCameraView2;->applyZoom(F)V

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->preview()V

    return-void
.end method

.method public zoomSmail()V
    .locals 2

    iget v0, p0, Lcom/androlua/LuaCameraView2;->mZoom:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/androlua/LuaCameraView2;->mZoom:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iput v1, p0, Lcom/androlua/LuaCameraView2;->mZoom:F

    :cond_0
    iget v0, p0, Lcom/androlua/LuaCameraView2;->mZoom:F

    invoke-virtual {p0, v0}, Lcom/androlua/LuaCameraView2;->applyZoom(F)V

    invoke-direct {p0}, Lcom/androlua/LuaCameraView2;->preview()V

    return-void
.end method
