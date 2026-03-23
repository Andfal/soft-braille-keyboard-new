.class Lcom/nirenr/talkman/CameraActivity$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/CameraActivity;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/SeekBar;

.field final synthetic b:Lcom/nirenr/talkman/CameraActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/CameraActivity;Landroid/widget/SeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/CameraActivity$x;->b:Lcom/nirenr/talkman/CameraActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/CameraActivity$x;->a:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/nirenr/talkman/CameraActivity$x;->b:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/CameraActivity;->b(Lcom/nirenr/talkman/CameraActivity;)Lcom/androlua/LuaCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaCameraView;->zoomSmall()I

    move-result p1

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$x;->a:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/CameraActivity$x;->b:Lcom/nirenr/talkman/CameraActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/CameraActivity;->d(Lcom/nirenr/talkman/CameraActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/CameraActivity$x$a;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/CameraActivity$x$a;-><init>(Lcom/nirenr/talkman/CameraActivity$x;I)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
