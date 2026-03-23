.class Lcom/nirenr/talkman/ai/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/h;->x(Landroid/graphics/Rect;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
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

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h$a;->b:Lcom/nirenr/talkman/ai/h;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/h$a;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/ai/h$a;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$a;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/h;->b(Lcom/nirenr/talkman/ai/h;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$a;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/h;->b(Lcom/nirenr/talkman/ai/h;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/util/AsyncTaskX;->cancel()Z

    :cond_1
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    const v1, 0x7f0704d3

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$a;->b:Lcom/nirenr/talkman/ai/h;

    iget-object v1, p0, Lcom/nirenr/talkman/ai/h$a;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-static {p1, v1}, Lcom/nirenr/talkman/ai/h;->t(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1}, Lcom/nirenr/talkman/ai/h;->e(Lcom/nirenr/talkman/ai/h;Lcom/androlua/util/AsyncTaskX;)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/nirenr/talkman/ai/BaiduAI;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$a;->b:Lcom/nirenr/talkman/ai/h;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/nirenr/talkman/ai/h$a;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-static {v1, p1, v2}, Lcom/nirenr/talkman/ai/h;->j(ILandroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$a;->b:Lcom/nirenr/talkman/ai/h;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/ai/h;->e(Lcom/nirenr/talkman/ai/h;Lcom/androlua/util/AsyncTaskX;)V

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$a;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/h;->c(Lcom/nirenr/talkman/ai/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/ai/h$a;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-static {v1, p1, v2}, Lcom/nirenr/talkman/ai/e;->b(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$a;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method
