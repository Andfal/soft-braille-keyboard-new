.class Lorg/opencv/android/JavaCamera2View$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/opencv/android/JavaCamera2View;->allocateSessionStateCallback()Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/opencv/android/JavaCamera2View;


# direct methods
.method constructor <init>(Lorg/opencv/android/JavaCamera2View;)V
    .locals 0

    iput-object p1, p0, Lorg/opencv/android/JavaCamera2View$2;->this$0:Lorg/opencv/android/JavaCamera2View;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    const-string p1, "JavaCamera2View"

    const-string v0, "createCameraPreviewSession failed"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4

    const-string v0, "createCaptureSession::onConfigured"

    const-string v1, "JavaCamera2View"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/opencv/android/JavaCamera2View$2;->this$0:Lorg/opencv/android/JavaCamera2View;

    iget-object v2, v0, Lorg/opencv/android/JavaCamera2View;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iput-object p1, v0, Lorg/opencv/android/JavaCamera2View;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :try_start_0
    iget-object p1, v0, Lorg/opencv/android/JavaCamera2View;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/opencv/android/JavaCamera2View$2;->this$0:Lorg/opencv/android/JavaCamera2View;

    iget-object p1, p1, Lorg/opencv/android/JavaCamera2View;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/opencv/android/JavaCamera2View$2;->this$0:Lorg/opencv/android/JavaCamera2View;

    iget-object v0, p1, Lorg/opencv/android/JavaCamera2View;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p1, p1, Lorg/opencv/android/JavaCamera2View;->mPreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    iget-object v2, p0, Lorg/opencv/android/JavaCamera2View$2;->this$0:Lorg/opencv/android/JavaCamera2View;

    iget-object v2, v2, Lorg/opencv/android/JavaCamera2View;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    const-string p1, "CameraPreviewSession has been started"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "createCaptureSession failed"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
