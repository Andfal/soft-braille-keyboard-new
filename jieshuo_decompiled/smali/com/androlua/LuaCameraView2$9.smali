.class Lcom/androlua/LuaCameraView2$9;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androlua/LuaCameraView2;->captureStillPicture()V
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

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$9;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$9;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1}, Lcom/androlua/LuaCameraView2;->g(Lcom/androlua/LuaCameraView2;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Camera2BasicFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$9;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1}, Lcom/androlua/LuaCameraView2;->F(Lcom/androlua/LuaCameraView2;)V

    return-void
.end method
