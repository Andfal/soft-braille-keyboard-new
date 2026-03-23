.class Lcom/nirenr/talkman/CameraActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/CameraActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$a;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object p3, p0, Lcom/nirenr/talkman/CameraActivity$a;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {p3}, Lcom/nirenr/talkman/CameraActivity;->f(Lcom/nirenr/talkman/CameraActivity;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p3

    invoke-virtual {p3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->stop()V

    iget-object p3, p0, Lcom/nirenr/talkman/CameraActivity$a;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {p3}, Lcom/nirenr/talkman/CameraActivity;->b(Lcom/nirenr/talkman/CameraActivity;)Lcom/androlua/LuaCameraView;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/androlua/LuaCameraView;->setZoom(I)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p3, v0, :cond_0

    int-to-float p3, p2

    const v0, 0x3dcccccd    # 0.1f

    mul-float p3, p3, v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/nirenr/talkman/e;->a(Landroid/widget/SeekBar;Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity$a;->a:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/CameraActivity;->d(Lcom/nirenr/talkman/CameraActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance p3, Lcom/nirenr/talkman/CameraActivity$a$a;

    invoke-direct {p3, p0, p2}, Lcom/nirenr/talkman/CameraActivity$a$a;-><init>(Lcom/nirenr/talkman/CameraActivity$a;I)V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
