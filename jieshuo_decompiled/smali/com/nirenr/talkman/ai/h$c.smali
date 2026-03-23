.class Lcom/nirenr/talkman/ai/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/screencapture/ScreenCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/h;->A(Landroid/graphics/Rect;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
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

    iput-object p1, p0, Lcom/nirenr/talkman/ai/h$c;->b:Lcom/nirenr/talkman/ai/h;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/h$c;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenCaptureDone(Landroid/graphics/Bitmap;)V
    .locals 4

    const-string v0, "lua"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/ai/h$c;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    const v2, 0x7f0704d3

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v1, "ocr: start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ocr: end "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "\u4e00\u53e5\u8bdd\u8bc6\u522b\u8fd9\u662f\u4ec0\u4e48\u56fe\u6807\uff0c\u5982\u679c\u4e0d\u662f\u56fe\u6807\u4e00\u53e5\u8bdd\u63cf\u8ff0\u56fe\u7247\uff0c\u8bc6\u522b\u6587\u5b57"

    sput-object v0, Lcom/day/BigModelNew;->MyQuestion:Ljava/lang/String;

    new-instance v0, Lcom/nirenr/talkman/ai/h$c$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/ai/h$c$a;-><init>(Lcom/nirenr/talkman/ai/h$c;)V

    const/16 v1, 0x14

    invoke-static {v1, p1, v0}, Lcom/nirenr/talkman/ai/h;->k(I[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$c;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenCaptureError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/h$c;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method
