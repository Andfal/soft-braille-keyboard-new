.class Lcom/nirenr/talkman/ai/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/h;->m(ILcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

.field final synthetic b:I

.field final synthetic c:Lcom/nirenr/talkman/ai/h;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/h;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h$e;->c:Lcom/nirenr/talkman/ai/h;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/h$e;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    iput p3, p0, Lcom/nirenr/talkman/ai/h$e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/ai/h$e;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$e;->c:Lcom/nirenr/talkman/ai/h;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/h;->a(Lcom/nirenr/talkman/ai/h;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$e;->c:Lcom/nirenr/talkman/ai/h;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/h;->a(Lcom/nirenr/talkman/ai/h;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/util/AsyncTaskX;->cancel()Z

    :cond_1
    iget v0, p0, Lcom/nirenr/talkman/ai/h$e;->b:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$e;->c:Lcom/nirenr/talkman/ai/h;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/h;->c(Lcom/nirenr/talkman/ai/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getStatusBarWindowHeight()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$e;->c:Lcom/nirenr/talkman/ai/h;

    iget v1, p0, Lcom/nirenr/talkman/ai/h$e;->b:I

    new-instance v2, Lcom/nirenr/talkman/ai/h$e$a;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/ai/h$e$a;-><init>(Lcom/nirenr/talkman/ai/h$e;)V

    invoke-static {v1, p1, v2}, Lcom/nirenr/talkman/ai/h;->j(ILandroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nirenr/talkman/ai/h;->d(Lcom/nirenr/talkman/ai/h;Lcom/androlua/util/AsyncTaskX;)V

    return-void
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$e;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method
