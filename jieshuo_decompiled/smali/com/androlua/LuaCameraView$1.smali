.class Lcom/androlua/LuaCameraView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androlua/LuaCameraView;


# direct methods
.method constructor <init>(Lcom/androlua/LuaCameraView;)V
    .locals 0

    iput-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p1}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p1}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    const/16 p2, 0x100

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    const/16 p2, 0x5a

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    const-string p3, "continuous-picture"

    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_2

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/Camera$Size;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/Camera$Size;

    iget v0, p3, Landroid/hardware/Camera$Size;->width:I

    iget v1, p4, Landroid/hardware/Camera$Size;->width:I

    if-le v0, v1, :cond_1

    move-object p4, p3

    :cond_1
    iget p3, p4, Landroid/hardware/Camera$Size;->width:I

    iget p4, p4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, p3, p4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    :cond_2
    const-string p3, "auto"

    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    iget-object p3, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p3}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object p2, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p2}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p1}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    :try_start_0
    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p1}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->startFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androlua/LuaCameraView;->b(Lcom/androlua/LuaCameraView;Landroid/hardware/Camera;)V

    iget-object v0, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {v0}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->enableShutterSound(Z)Z

    iget-object v0, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {v0}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p1}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p1

    iget-object v0, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p1}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p1

    iget-object v0, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p1}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/androlua/LuaCameraView;->b(Lcom/androlua/LuaCameraView;Landroid/hardware/Camera;)V

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p1}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p1}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p1}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p1}, Lcom/androlua/LuaCameraView;->a(Lcom/androlua/LuaCameraView;)Landroid/hardware/Camera;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/Camera;->release()V

    iget-object p1, p0, Lcom/androlua/LuaCameraView$1;->this$0:Lcom/androlua/LuaCameraView;

    invoke-static {p1, v0}, Lcom/androlua/LuaCameraView;->b(Lcom/androlua/LuaCameraView;Landroid/hardware/Camera;)V

    return-void
.end method
