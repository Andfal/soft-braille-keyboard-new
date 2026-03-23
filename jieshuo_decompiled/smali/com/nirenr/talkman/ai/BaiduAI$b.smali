.class Lcom/nirenr/talkman/ai/BaiduAI$b;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/ai/BaiduAI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private final c:Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/ai/BaiduAI$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nirenr/talkman/ai/BaiduAI$b;->b:[B

    iput-object p3, p0, Lcom/nirenr/talkman/ai/BaiduAI$b;->c:Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    const-string p3, "BaiduAI"

    invoke-virtual {p2, p3, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/ai/BaiduAI$b;->f([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected varargs f([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/ai/BaiduAI$b;->a:Ljava/lang/String;

    const-string v0, "ai_custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/nirenr/talkman/ai/BaiduAI;->b()Ld0/a;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/BaiduAI$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/ai/BaiduAI$b;->b:[B

    invoke-virtual {p1, v0, v1}, Ld0/a;->h(Ljava/lang/String;[B)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/nirenr/talkman/ai/BaiduAI;->a()Ld0/a;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/ai/BaiduAI$b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/ai/BaiduAI$b;->b:[B

    invoke-virtual {p1, v0, v1}, Ld0/a;->h(Ljava/lang/String;[B)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method protected g(Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v1, "BaiduAI"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/ai/BaiduAI$b;->c:Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/ai/BaiduAI$AipTaskCallback;->onCallback(Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/nirenr/talkman/ai/BaiduAI;->c(Lcom/nirenr/talkman/ai/BaiduAI$b;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/ai/BaiduAI$b;->g(Lorg/json/JSONObject;)V

    return-void
.end method
