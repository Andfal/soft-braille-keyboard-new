.class Lcom/baidu/translate/TransApi$AsyncTransTask;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/translate/TransApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTransTask"
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
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field private d:Lcom/baidu/translate/TransApi$OnResultListener;

.field final synthetic e:Lcom/baidu/translate/TransApi;


# direct methods
.method public constructor <init>(Lcom/baidu/translate/TransApi;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->e:Lcom/baidu/translate/TransApi;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/baidu/translate/TransApi;Lcom/baidu/translate/TransApi$OnResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->e:Lcom/baidu/translate/TransApi;

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    iput-object p2, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->d:Lcom/baidu/translate/TransApi$OnResultListener;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/translate/TransApi$AsyncTransTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->a:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->b:Ljava/lang/String;

    const/4 v2, 0x2

    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->e:Lcom/baidu/translate/TransApi;

    invoke-static {v2, v0, v1, p1}, Lcom/baidu/translate/TransApi;->b(Lcom/baidu/translate/TransApi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "https://fanyi-api.baidu.com/api/trans/vip/translate"

    invoke-static {v0, p1}, Lcom/baidu/translate/HttpGet;->get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/baidu/translate/TransApi$AsyncTransTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->e:Lcom/baidu/translate/TransApi;

    const-string v1, "TransApi"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/translate/TransApi;->print(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "trans_result"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "dst"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->e:Lcom/baidu/translate/TransApi;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/translate/TransApi;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/nirenr/talkman/util/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->d:Lcom/baidu/translate/TransApi$OnResultListener;

    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v0, p1}, Lcom/baidu/translate/TransApi$OnResultListener;->onTransResult(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->e:Lcom/baidu/translate/TransApi;

    invoke-static {v0}, Lcom/baidu/translate/TransApi;->a(Lcom/baidu/translate/TransApi;)Lcom/baidu/translate/TransApi$OnResultListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->e:Lcom/baidu/translate/TransApi;

    invoke-static {v0}, Lcom/baidu/translate/TransApi;->a(Lcom/baidu/translate/TransApi;)Lcom/baidu/translate/TransApi$OnResultListener;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->d:Lcom/baidu/translate/TransApi$OnResultListener;

    if-eqz v0, :cond_3

    :goto_3
    iget-object v1, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/baidu/translate/TransApi$OnResultListener;->onTransResult(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->e:Lcom/baidu/translate/TransApi;

    invoke-static {v0}, Lcom/baidu/translate/TransApi;->a(Lcom/baidu/translate/TransApi;)Lcom/baidu/translate/TransApi$OnResultListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/translate/TransApi$AsyncTransTask;->e:Lcom/baidu/translate/TransApi;

    invoke-static {v0}, Lcom/baidu/translate/TransApi;->a(Lcom/baidu/translate/TransApi;)Lcom/baidu/translate/TransApi$OnResultListener;

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
