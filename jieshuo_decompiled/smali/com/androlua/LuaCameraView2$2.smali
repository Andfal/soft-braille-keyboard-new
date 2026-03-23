.class Lcom/androlua/LuaCameraView2$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androlua/LuaCameraView2;
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

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$2;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$2;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->d(Lcom/androlua/LuaCameraView2;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$2;->this$0:Lcom/androlua/LuaCameraView2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/androlua/LuaCameraView2;->q(Lcom/androlua/LuaCameraView2;Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    iget-object p2, p0, Lcom/androlua/LuaCameraView2$2;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p2}, Lcom/androlua/LuaCameraView2;->d(Lcom/androlua/LuaCameraView2;)Ljava/util/concurrent/Semaphore;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$2;->this$0:Lcom/androlua/LuaCameraView2;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/androlua/LuaCameraView2;->q(Lcom/androlua/LuaCameraView2;Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$2;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$2;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->d(Lcom/androlua/LuaCameraView2;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$2;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0, p1}, Lcom/androlua/LuaCameraView2;->q(Lcom/androlua/LuaCameraView2;Landroid/hardware/camera2/CameraDevice;)V

    iget-object p1, p0, Lcom/androlua/LuaCameraView2$2;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1}, Lcom/androlua/LuaCameraView2;->z(Lcom/androlua/LuaCameraView2;)V

    return-void
.end method
