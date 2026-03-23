.class Lcom/nirenr/talkman/TalkManAccessibilityService$g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->getScreenShot(Landroid/graphics/Rect;Lcom/nirenr/screencapture/ScreenCaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/screencapture/ScreenCaptureListener;

.field final synthetic b:Landroid/graphics/Rect;

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->a:Lcom/nirenr/screencapture/ScreenCaptureListener;

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->b:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 6

    const v0, 0x7f07069c

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->a:Lcom/nirenr/screencapture/ScreenCaptureListener;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v3, v1

    sub-int/2addr v4, v2

    const/16 v5, 0xa

    if-le v3, v5, :cond_2

    if-gt v4, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->a:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-interface {p1, v0}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->a:Lcom/nirenr/screencapture/ScreenCaptureListener;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g1;->a:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-interface {v0, p1}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    return-void
.end method
