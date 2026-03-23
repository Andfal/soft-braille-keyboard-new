.class public Lj1/h;
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


# instance fields
.field private a:Lcom/baidu/tts/client/model/Conditions;


# direct methods
.method public constructor <init>(Lcom/baidu/tts/client/model/Conditions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/h;->a:Lcom/baidu/tts/client/model/Conditions;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lj1/h;->a:Lcom/baidu/tts/client/model/Conditions;

    invoke-virtual {v0}, Lcom/baidu/tts/client/model/Conditions;->getJSONConditions()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    sget-object v1, Lb1/g;->g:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lb1/g;->w:Lb1/g;

    invoke-virtual {v1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getList"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getlist params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GetServerModelsWork"

    invoke-static {v2, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-direct {p0}, Lj1/h;->b()Ljava/lang/String;

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

    invoke-virtual {p0}, Lj1/h;->a()Lcom/baidu/tts/client/model/ModelBags;

    move-result-object v0

    return-object v0
.end method
