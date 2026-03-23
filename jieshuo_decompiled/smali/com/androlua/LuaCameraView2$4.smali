.class Lcom/androlua/LuaCameraView2$4;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
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

    iput-object p1, p0, Lcom/androlua/LuaCameraView2$4;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method private process(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    iget-object v0, p0, Lcom/androlua/LuaCameraView2$4;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {v0}, Lcom/androlua/LuaCameraView2;->l(Lcom/androlua/LuaCameraView2;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v3, :cond_8

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/androlua/LuaCameraView2$4;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1, v4}, Lcom/androlua/LuaCameraView2;->v(Lcom/androlua/LuaCameraView2;I)V

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v4, :cond_8

    :cond_3
    iget-object p1, p0, Lcom/androlua/LuaCameraView2$4;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1, v1}, Lcom/androlua/LuaCameraView2;->v(Lcom/androlua/LuaCameraView2;I)V

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_5

    :goto_1
    iget-object p1, p0, Lcom/androlua/LuaCameraView2$4;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1}, Lcom/androlua/LuaCameraView2;->x(Lcom/androlua/LuaCameraView2;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v4, v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_8

    :cond_6
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_7

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/androlua/LuaCameraView2$4;->this$0:Lcom/androlua/LuaCameraView2;

    invoke-static {p1}, Lcom/androlua/LuaCameraView2;->C(Lcom/androlua/LuaCameraView2;)V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/androlua/LuaCameraView2$4;->process(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/androlua/LuaCameraView2$4;->process(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
