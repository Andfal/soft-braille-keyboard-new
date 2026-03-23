.class Le2/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le2/a;->k(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/screencapture/ScreenCaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/screencapture/ScreenCaptureListener;

.field final synthetic b:Landroid/hardware/display/VirtualDisplay;

.field final synthetic c:Landroid/media/projection/MediaProjection;

.field final synthetic d:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/nirenr/screencapture/ScreenCaptureListener;Landroid/hardware/display/VirtualDisplay;Landroid/media/projection/MediaProjection;Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V
    .locals 0

    iput-object p1, p0, Le2/a$c;->a:Lcom/nirenr/screencapture/ScreenCaptureListener;

    iput-object p2, p0, Le2/a$c;->b:Landroid/hardware/display/VirtualDisplay;

    iput-object p3, p0, Le2/a$c;->c:Landroid/media/projection/MediaProjection;

    iput-object p4, p0, Le2/a$c;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-boolean p5, p0, Le2/a$c;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v6

    if-ge v6, v0, :cond_0

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    return-void

    :cond_0
    aget-object v7, v2, v3

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v2

    mul-int v3, v7, v5

    sub-int/2addr v2, v3

    div-int/2addr v2, v7

    add-int/2addr v5, v2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iget-object v3, p0, Le2/a$c;->a:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-interface {v3, v2}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    iget-object v1, p0, Le2/a$c;->b:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object v1, p0, Le2/a$c;->c:Landroid/media/projection/MediaProjection;

    invoke-virtual {v1}, Landroid/media/projection/MediaProjection;->stop()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    invoke-static {}, Le2/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Le2/a$c;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v2, p0, Le2/a$c;->e:Z

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseForeground(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    iget-object p1, p0, Le2/a$c;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Le2/a$c;->d:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setDimmed(Z)V

    iget-object v0, p0, Le2/a$c;->a:Lcom/nirenr/screencapture/ScreenCaptureListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/nirenr/screencapture/ScreenCaptureListener;->onScreenCaptureError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
