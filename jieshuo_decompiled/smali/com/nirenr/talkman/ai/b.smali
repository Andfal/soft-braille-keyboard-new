.class public Lcom/nirenr/talkman/ai/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([BILcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "username"

    const-string v2, "nirenr"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "password"

    const-string v2, "jieshuo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "captchaType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "captchaData"

    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "Content-Type"

    const-string v1, "application/json; charset=utf-8"

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "https://www.bingtop.com/ocr/upload/"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/ai/b$b;

    invoke-direct {v1, p2}, Lcom/nirenr/talkman/ai/b$b;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    invoke-static {p1, v0, p0, v1}, Lcom/nirenr/talkman/util/HttpUtil;->h(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)Lcom/nirenr/talkman/util/HttpUtil$d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static b(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 6

    invoke-virtual {p0}, Lcom/androlua/LuaService;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/androlua/LuaService;->getWidth()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    div-int/lit8 v3, v0, 0x4

    mul-int/lit8 v4, v3, 0x3

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Lcom/nirenr/talkman/ai/b$a;

    invoke-direct {v1, p0, v0}, Lcom/nirenr/talkman/ai/b$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    invoke-virtual {p0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getScreenShot(Landroid/graphics/Rect;Lcom/nirenr/screencapture/ScreenCaptureListener;)V

    return-void
.end method
