.class Lcom/nirenr/talkman/TalkManAccessibilityService$h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->getScreenShot2(Lcom/nirenr/screencapture/ScreenCaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/screencapture/ScreenCaptureListener;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->a:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "onScreenCaptureDone"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->J(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lk2/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->J(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lk2/g;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->J(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lk2/g;

    move-result-object v1

    invoke-virtual {v1}, Lk2/g;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lk2/g;->j(Z)V

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->a:Lcom/nirenr/screencapture/ScreenCaptureListener;

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07069c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->a:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-interface {v0, p1}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->J(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lk2/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->J(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lk2/g;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->J(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lk2/g;

    move-result-object v1

    invoke-virtual {v1}, Lk2/g;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lk2/g;->j(Z)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$h1;->a:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-interface {v0, p1}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    return-void
.end method
