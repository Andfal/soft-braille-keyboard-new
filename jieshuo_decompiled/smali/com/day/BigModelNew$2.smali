.class Lcom/day/BigModelNew$2;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/day/BigModelNew;->mainall([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bs:[B

.field final synthetic val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# direct methods
.method constructor <init>([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)V
    .locals 0

    iput-object p1, p0, Lcom/day/BigModelNew$2;->val$bs:[B

    iput-object p2, p0, Lcom/day/BigModelNew$2;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/day/BigModelNew$2;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/day/BigModelNew$2;->val$bs:[B

    invoke-static {p1}, Lcom/nirenr/talkman/ai/g;->l([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/day/BigModelNew$2;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/day/BigModelNew$2;->val$bs:[B

    iget-object v0, p0, Lcom/day/BigModelNew$2;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-static {p1, v0}, Lcom/day/BigModelNew;->main2([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONArray;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/day/BigModelNew$2;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    new-instance v1, Lcom/nirenr/talkman/ai/OcrResult;

    invoke-direct {v1, p1}, Lcom/nirenr/talkman/ai/OcrResult;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/ai/OcrResult$OCRListener;->onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/day/BigModelNew$2;->val$bs:[B

    iget-object v0, p0, Lcom/day/BigModelNew$2;->val$listener:Lcom/nirenr/talkman/ai/OcrResult$OCRListener;

    invoke-static {p1, v0}, Lcom/day/BigModelNew;->main2([BLcom/nirenr/talkman/ai/OcrResult$OCRListener;)Lcom/androlua/util/AsyncTaskX;

    :goto_0
    return-void
.end method
