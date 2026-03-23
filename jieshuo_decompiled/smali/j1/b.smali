.class public Lj1/b;
.super Lk1/d;
.source "SourceFile"


# instance fields
.field private b:Ll0/f;

.field private c:Lcom/baidu/tts/client/model/ModelBags;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lk1/d;-><init>()V

    return-void
.end method


# virtual methods
.method public i(ILjava/util/Map;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 1
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

    const-string p2, "GetListHttpHandler"

    const-string v0, "onFailure2"

    invoke-static {p2, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p4

    sget-object v0, Lb1/n;->h0:Lb1/n;

    invoke-virtual {p4, v0, p1, p2, p3}, Ld1/c;->e(Lb1/n;ILjava/lang/String;Ljava/lang/Throwable;)Ll0/f;

    move-result-object p1

    iput-object p1, p0, Lj1/b;->b:Ll0/f;

    return-void
.end method

.method public j(ILjava/util/Map;Lorg/json/JSONObject;)V
    .locals 1
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

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSuccess response="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GetListHttpHandler"

    invoke-static {p2, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lb1/g;->y:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    sget-object p2, Lb1/g;->z:Lb1/g;

    invoke-virtual {p2}, Lb1/g;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    const/16 v0, -0x3ec

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Ld1/c;->b()Ld1/c;

    move-result-object p3

    sget-object v0, Lb1/n;->i0:Lb1/n;

    invoke-virtual {p3, v0, p1, p2}, Ld1/c;->d(Lb1/n;ILjava/lang/String;)Ll0/f;

    move-result-object p1

    iput-object p1, p0, Lj1/b;->b:Ll0/f;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Lb1/g;->q:Lb1/g;

    invoke-virtual {p1}, Lb1/g;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Lcom/baidu/tts/client/model/ModelBags;

    invoke-direct {p2}, Lcom/baidu/tts/client/model/ModelBags;-><init>()V

    iput-object p2, p0, Lj1/b;->c:Lcom/baidu/tts/client/model/ModelBags;

    invoke-virtual {p2, p1}, Lcom/baidu/tts/client/model/ModelBags;->parseJson(Lorg/json/JSONArray;)V

    :goto_1
    return-void
.end method

.method public k()Lcom/baidu/tts/client/model/ModelBags;
    .locals 1

    iget-object v0, p0, Lj1/b;->c:Lcom/baidu/tts/client/model/ModelBags;

    return-object v0
.end method
