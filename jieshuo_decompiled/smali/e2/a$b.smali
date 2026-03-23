.class Le2/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/a;->j(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field final synthetic b:Lcom/nirenr/screencapture/ScreenCaptureListener;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V
    .locals 0

    iput-object p1, p0, Le2/a$b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Le2/a$b;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    iget-object v0, p0, Le2/a$b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V

    iget-object v0, p0, Le2/a$b;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V
    .locals 2

    iget-object v0, p0, Le2/a$b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V

    invoke-static {p1}, Le2/b;->a(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-static {p1}, Le2/c;->a(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-static {v0, p1}, Le2/d;->a(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Le2/a$b;->b:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-interface {v0, p1}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V

    return-void
.end method
