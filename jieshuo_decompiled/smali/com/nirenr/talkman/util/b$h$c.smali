.class Lcom/nirenr/talkman/util/b$h$c;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/util/b$h;->onScreenCaptureDone(Landroid/graphics/Bitmap;)V
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
.field final synthetic a:Ljava/io/ByteArrayOutputStream;

.field final synthetic b:Lcom/nirenr/talkman/util/b$h;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/util/b$h;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/b$h$c;->b:Lcom/nirenr/talkman/util/b$h;

    iput-object p2, p0, Lcom/nirenr/talkman/util/b$h$c;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/util/b$h$c;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/nirenr/talkman/util/b$h$c;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "\u7b80\u5355\u63cf\u8ff0\u753b\u9762\u5185\u5bb9\uff0c\u91cd\u70b9\u63cf\u8ff0\u4eba\u7269\u52a8\u4f5c\u548c\u5f62\u6001\uff0c\u4e0d\u8bc6\u522b\u6587\u5b57"

    invoke-static {p1, v0}, Lcom/nirenr/talkman/ai/g;->k([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/util/b$h$c;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/util/b$h$c;->b:Lcom/nirenr/talkman/util/b$h;

    iget-object v0, v0, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-virtual {v0}, Lcom/nirenr/talkman/util/b;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/nirenr/talkman/util/b$h$c;->b:Lcom/nirenr/talkman/util/b$h;

    iget-object v1, v1, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {v1, v0}, Lcom/nirenr/talkman/util/b;->l(Lcom/nirenr/talkman/util/b;I)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONArray;

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "^\u8fd9[^\u3002]*\u3002"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/nirenr/talkman/util/b$h$c;->b:Lcom/nirenr/talkman/util/b$h;

    iget-object v1, v1, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {v1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isCN()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/util/b$h$c;->b:Lcom/nirenr/talkman/util/b$h;

    iget-object v1, v1, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-virtual {v1, p1}, Lcom/nirenr/talkman/util/b;->R(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/nirenr/talkman/util/b$h$c;->b:Lcom/nirenr/talkman/util/b$h;

    iget-object v1, v1, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {v1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-static {v1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/util/b$h$c;->b:Lcom/nirenr/talkman/util/b$h;

    iget-object v2, v2, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {v2}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const v3, 0x7f070697

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "en"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh"

    new-instance v3, Lcom/nirenr/talkman/util/b$h$c$a;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/util/b$h$c$a;-><init>(Lcom/nirenr/talkman/util/b$h$c;)V

    invoke-static {p1, v2, v1, v3}, Lcom/nirenr/talkman/util/d;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/translate/TransApi$OnResultListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$h$c;->b:Lcom/nirenr/talkman/util/b$h;

    iget-object p1, p1, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->c(Lcom/nirenr/talkman/util/b;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/nirenr/talkman/util/b;->l(Lcom/nirenr/talkman/util/b;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$h$c;->b:Lcom/nirenr/talkman/util/b$h;

    iget-object p1, p1, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->c(Lcom/nirenr/talkman/util/b;)I

    move-result p1

    const/16 v1, 0x14

    if-le p1, v1, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$h$c;->b:Lcom/nirenr/talkman/util/b$h;

    iget-object p1, p1, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/util/b;->M(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/util/b$h$c;->b:Lcom/nirenr/talkman/util/b$h;

    iget-object p1, p1, Lcom/nirenr/talkman/util/b$h;->a:Lcom/nirenr/talkman/util/b;

    invoke-static {p1}, Lcom/nirenr/talkman/util/b;->i(Lcom/nirenr/talkman/util/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const-string v0, "\u8bc6\u522b\u5185\u5bb9\u51fa\u9519\uff0c\u5df2\u9000\u51fa\u89c6\u9891\u8bc6\u522b"

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
