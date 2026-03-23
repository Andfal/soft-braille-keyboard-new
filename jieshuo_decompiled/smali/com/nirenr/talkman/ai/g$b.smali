.class Lcom/nirenr/talkman/ai/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/ai/g;->f([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/nirenr/talkman/util/HttpUtil$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/ai/g$b;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ly2/Call;Ljava/io/IOException;)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/ai/g$b;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ly2/Call;Ly2/Response;)V
    .locals 10

    const-string p1, "y"

    const-string v0, "x"

    :try_start_0
    invoke-virtual {p2}, Ly2/Response;->b()Ly2/c0;

    move-result-object p2

    invoke-virtual {p2}, Ly2/c0;->j()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "result"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "OCR"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "words"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    invoke-direct {v5, v4}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;)V

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "top_left"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-int v4, v6

    iput v4, v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    const-string v4, "down_right"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    iget v4, v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    int-to-double v8, v4

    sub-double/2addr v6, v8

    double-to-int v4, v6

    iput v4, v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    iget v6, v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    int-to-double v6, v6

    sub-double/2addr v3, v6

    double-to-int v3, v3

    iput v3, v5, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    aput-object v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/nirenr/talkman/ai/OcrResult;

    const/4 p2, 0x2

    invoke-direct {p1, p2, v1}, Lcom/nirenr/talkman/ai/OcrResult;-><init>(I[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/nirenr/talkman/ai/g$b$a;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/ai/g$b$a;-><init>(Lcom/nirenr/talkman/ai/g$b;Lcom/nirenr/talkman/ai/OcrResult;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p2, p0, Lcom/nirenr/talkman/ai/g$b;->a:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onError(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
