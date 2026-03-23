.class Lcom/androlua/LuaCameraView2$8;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView2;->createCameraPreviewSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaCameraView2;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView2;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$8;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$8;->this$0:Lcom/androlua/LuaCameraView2;

    const-string v0, "\u6253\u5f00\u76f8\u673a\u51fa\u9519"

    invoke-static {p1, v0}, Lcom/androlua/LuaCameraView2;->E(Lcom/androlua/LuaCameraView2;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$8;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->c(Lcom/androlua/LuaCameraView2;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView2$8;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0, p1}, Lcom/androlua/LuaCameraView2;->r(Lcom/androlua/LuaCameraView2;Landroid/hardware/camera2/CameraCaptureSession;)V

    :try_start_0
    iget-object p1, p0, Lcom/androlua/LuaCameraView2$8;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1}, Lcom/androlua/LuaCameraView2;->j(Lcom/androlua/LuaCameraView2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$8;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1}, Lcom/androlua/LuaCameraView2;->j(Lcom/androlua/LuaCameraView2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/androlua/LuaCameraView2;->D(Lcom/androlua/LuaCameraView2;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$8;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1}, Lcom/androlua/LuaCameraView2;->p(Lcom/androlua/LuaCameraView2;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/androlua/LuaCameraView2;->applyZoom(F)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$8;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1}, Lcom/androlua/LuaCameraView2;->j(Lcom/androlua/LuaCameraView2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/androlua/LuaCameraView2;->u(Lcom/androlua/LuaCameraView2;Landroid/hardware/camera2/CaptureRequest;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$8;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1}, Lcom/androlua/LuaCameraView2;->f(Lcom/androlua/LuaCameraView2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$8;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->i(Lcom/androlua/LuaCameraView2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/androlua/LuaCameraView2$8;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v1}, Lcom/androlua/LuaCameraView2;->e(Lcom/androlua/LuaCameraView2;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/androlua/LuaCameraView2$8;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v2}, Lcom/androlua/LuaCameraView2;->b(Lcom/androlua/LuaCameraView2;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
