.class Lcom/nirenr/talkman/ai/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/h;->y(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

.field final synthetic b:Lcom/nirenr/talkman/ai/h;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/h;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h$d;->b:Lcom/nirenr/talkman/ai/h;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/h$d;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/ai/h$d;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    const-string v0, "\u8bf7\u91cd\u8bd5"

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$d;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/h;->a(Lcom/nirenr/talkman/ai/h;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$d;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/h;->a(Lcom/nirenr/talkman/ai/h;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/util/AsyncTaskX;->cancel()Z

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$d;->b:Lcom/nirenr/talkman/ai/h;

    new-instance v1, Lcom/nirenr/talkman/ai/h$d$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/ai/h$d$a;-><init>(Lcom/nirenr/talkman/ai/h$d;)V

    invoke-static {p1, v1}, Lcom/nirenr/talkman/ai/h;->t(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nirenr/talkman/ai/h;->d(Lcom/nirenr/talkman/ai/h;Lcom/androlua/util/AsyncTaskX;)V

    return-void
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$d;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method
