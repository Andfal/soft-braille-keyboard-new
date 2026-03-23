.class Lcom/nirenr/talkman/ai/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/h;->z(Landroid/graphics/Rect;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
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

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h$b;->b:Lcom/nirenr/talkman/ai/h;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/h$b;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 5

    const-string v0, "lua"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/ai/h$b;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/nirenr/talkman/ai/h$b;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v1}, Lcom/nirenr/talkman/ai/h;->b(Lcom/nirenr/talkman/ai/h;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nirenr/talkman/ai/h$b;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v1}, Lcom/nirenr/talkman/ai/h;->b(Lcom/nirenr/talkman/ai/h;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/util/AsyncTaskX;->cancel()Z

    :cond_1
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    const v2, 0x7f0704d3

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    const-string v2, "ocr: start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ocr: end "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$b;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/h;->c(Lcom/nirenr/talkman/ai/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseOCR()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$b;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v0}, Lcom/nirenr/talkman/ai/h;->c(Lcom/nirenr/talkman/ai/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseImageToText()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u4e00\u53e5\u8bdd\u7b80\u5355\u63cf\u8ff0\u56fe\u7247\uff0c\u8bc6\u522b\u6587\u5b57"

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$b;->b:Lcom/nirenr/talkman/ai/h;

    new-instance v1, Lcom/nirenr/talkman/ai/h$b$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/ai/h$b$a;-><init>(Lcom/nirenr/talkman/ai/h$b;)V

    const/16 v2, 0x14

    invoke-static {v2, p1, v1}, Lcom/nirenr/talkman/ai/h;->k(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/nirenr/talkman/ai/h;->e(Lcom/nirenr/talkman/ai/h;Lcom/androlua/util/AsyncTaskX;)V

    return-void

    :cond_2
    new-instance v0, Lcom/nirenr/talkman/ai/h$b$b;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/ai/h$b$b;-><init>(Lcom/nirenr/talkman/ai/h$b;[B)V

    iget-object v2, p0, Lcom/nirenr/talkman/ai/h$b;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v2}, Lcom/nirenr/talkman/ai/h;->b(Lcom/nirenr/talkman/ai/h;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/ai/h$b;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {v2}, Lcom/nirenr/talkman/ai/h;->b(Lcom/nirenr/talkman/ai/h;)Lcom/androlua/util/AsyncTaskX;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androlua/util/AsyncTaskX;->cancel()Z

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/nirenr/talkman/ai/h$b;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {}, Lcom/nirenr/talkman/ai/BaiduAI;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xb

    invoke-static {v2, p1, v0}, Lcom/nirenr/talkman/ai/h;->k(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p1

    goto :goto_1

    :cond_4
    invoke-static {p1, v0}, Lcom/nirenr/talkman/ai/g;->f([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;

    move-result-object p1

    :goto_1
    invoke-static {v1, p1}, Lcom/nirenr/talkman/ai/h;->e(Lcom/nirenr/talkman/ai/h;Lcom/androlua/util/AsyncTaskX;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/nirenr/talkman/ai/h$b;->b:Lcom/nirenr/talkman/ai/h;

    invoke-static {p1, v0}, Lcom/nirenr/talkman/ai/h;->w([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :goto_2
    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$b;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$b;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method
