.class public Lcom/nirenr/talkman/ai/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

.field private static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/nirenr/talkman/ai/OcrResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/baidu/paddle/lite/ocr/PaddleOcr;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/paddle/lite/ocr/PaddleOcr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nirenr/talkman/ai/e;->a:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nirenr/talkman/ai/e;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Lcom/nirenr/talkman/TalkManAccessibilityService;[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 2

    invoke-static {p1}, Lcom/androlua/LuaUtil;->getMD5([B)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/nirenr/talkman/ai/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nirenr/talkman/ai/OcrResult;

    invoke-interface {p2, p0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object p0, Lcom/nirenr/talkman/ai/e;->a:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->iconImage2(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method

.method public static b(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
    .locals 2

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0}, Lcom/androlua/LuaUtil;->getMD5([B)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/nirenr/talkman/ai/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nirenr/talkman/ai/OcrResult;

    invoke-interface {p2, p0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object p0, Lcom/nirenr/talkman/ai/e;->a:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->ocrImage2(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/nirenr/talkman/TalkManAccessibilityService;[BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 2

    invoke-static {p1}, Lcom/androlua/LuaUtil;->getMD5([B)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/nirenr/talkman/ai/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nirenr/talkman/ai/OcrResult;

    invoke-interface {p2, p0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object p0, Lcom/nirenr/talkman/ai/e;->a:Lcom/baidu/paddle/lite/ocr/PaddleOcr;

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/paddle/lite/ocr/PaddleOcr;->ocrImage2(Landroid/graphics/Bitmap;Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    return-void
.end method
