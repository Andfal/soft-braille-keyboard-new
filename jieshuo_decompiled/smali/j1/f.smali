.class public Lj1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/baidu/tts/client/model/ModelBags;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/baidu/tts/jni/EmbeddedSynthesizerEngine;->bdTTSGetEngineParam()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v0, Lb1/g;->w:Lb1/g;

    invoke-virtual {v0}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "getDefaultList"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()Lcom/baidu/tts/client/model/ModelBags;
    .locals 4

    new-instance v0, Lk1/b;

    invoke-direct {v0}, Lk1/b;-><init>()V

    sget-object v1, Lb1/o;->c:Lb1/o;

    invoke-virtual {v1}, Lb1/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lj1/f;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lj1/b;

    invoke-direct {v3}, Lj1/b;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lk1/b;->e(Ljava/lang/String;Ljava/lang/String;Lk1/g;)V

    invoke-virtual {v3}, Lj1/b;->k()Lcom/baidu/tts/client/model/ModelBags;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lj1/f;->a()Lcom/baidu/tts/client/model/ModelBags;

    move-result-object v0

    return-object v0
.end method
