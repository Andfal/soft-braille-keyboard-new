.class public Lcom/vivo/speechsdk/module/ttsonline/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/IParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/module/api/IParser<",
        "Lcom/vivo/speechsdk/module/api/tts/TtsResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "VivoParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lcom/vivo/speechsdk/module/api/tts/TtsResult;
    .locals 10

    const-string p2, ""

    const-string v0, "VivoParser"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "error_code"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v3, "error_msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sid"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ver"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    new-instance p2, Lcom/vivo/speechsdk/module/api/tts/TtsResult;

    invoke-direct {p2, v3, p1, v4}, Lcom/vivo/speechsdk/module/api/tts/TtsResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p2

    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "onMessage json data null"

    invoke-static {v0, v5}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_0

    :cond_1
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v6, :cond_4

    const-string v5, "status"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\\"

    invoke-virtual {v7, v8, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    const-string v9, "progress"

    invoke-virtual {v6, v9, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v9, "slice"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    new-instance v9, Lcom/vivo/speechsdk/module/api/tts/TtsResult;

    invoke-direct {v9, v3, p1, v4}, Lcom/vivo/speechsdk/module/api/tts/TtsResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, 0x2

    :try_start_1
    new-array p1, p1, [Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "-"

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :cond_2
    aget-object p2, p1, v8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v9, p2}, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->setOffset(I)V

    const/4 p2, 0x1

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v9, p1}, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->setTotal(I)V

    invoke-virtual {v9, v6}, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->setSlice(I)V

    invoke-virtual {v9, v5}, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->setStatus(I)V

    invoke-virtual {v9, v2}, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->setVer(Ljava/lang/String;)V

    if-eqz v7, :cond_3

    invoke-virtual {v9, v7}, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->setAudio([B)V

    array-length p1, v7

    invoke-virtual {v9, p1}, Lcom/vivo/speechsdk/module/api/tts/TtsResult;->setAudioLength(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    move-object v1, v9

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v1, v9

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v1, v9

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_1
    const-string p2, "Exception"

    goto :goto_3

    :catch_3
    move-exception p1

    :goto_2
    const-string p2, "JSONException"

    :goto_3
    invoke-static {v0, p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-object v1
.end method

.method public bridge synthetic prase(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/module/ttsonline/d;->a(Ljava/lang/String;Z)Lcom/vivo/speechsdk/module/api/tts/TtsResult;

    move-result-object p1

    return-object p1
.end method
