.class public Lcom/baidu/speech/utils/auth/JsonResponseHandler;
.super Lcom/baidu/speech/utils/auth/ResponseHandler;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "JsonResponseHandler"

.field public static final UTF8_BOM:Ljava/lang/String; = "\ufeff"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/speech/utils/auth/ResponseHandler;-><init>()V

    return-void
.end method

.method private static getResponseString([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_1

    const-string p0, "\ufeff"

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v2

    :catch_0
    move-exception p0

    new-array p1, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoding response into string failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p1, v0

    const-string p0, "JsonResponseHandler"

    invoke-static {p0, p1}, Lcom/baidu/speech/utils/LogUtil;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method private parseResponse([B)Lorg/json/JSONObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "utf-8"

    invoke-static {p1, v1}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public onFailure(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onFailure(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :try_start_0
    invoke-direct {p0, p4}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;->parseResponse([B)Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p5, p4}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;->onFailure(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    new-instance p4, Lorg/json/JSONException;

    const-string p5, "Unexpected response type JsonResponseHandler"

    invoke-direct {p4, p5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;->onFailure(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;->onFailure(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailure(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Throwable;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(ILjava/util/Map;Ljava/lang/String;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    const/4 p3, 0x0

    :try_start_0
    invoke-direct {p0, p4}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;->parseResponse([B)Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p0, p1, p2, p4}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;->onSuccess(ILjava/util/Map;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    new-instance p4, Lorg/json/JSONException;

    const-string v0, "Unexpected response type JsonResponseHandler"

    invoke-direct {p4, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;->onFailure(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/baidu/speech/utils/auth/JsonResponseHandler;->onFailure(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onSuccess(ILjava/util/Map;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    return-void
.end method
