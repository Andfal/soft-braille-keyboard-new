.class public Lcom/iflytek/sparkchain/plugins/map/tools/a;
.super Lcom/iflytek/sparkchain/plugins/base/BaseTool;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;-><init>()V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/map/tools/a;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/plugins/a/a/a;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/plugins/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->argsSchema:Lcom/iflytek/sparkchain/plugins/base/BaseModel;

    const-string v0, "\u8def\u7ebf\u89c4\u5212\u6216\u5bfc\u822a\u3002"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->description:Ljava/lang/String;

    const-string v0, "map"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs run(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const-string p2, ""

    const-string v0, "area"

    const-string v1, "destination"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SparkChain"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "do search success!"

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->toResult(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
