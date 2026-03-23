.class public Lcom/iflytek/sparkchain/plugins/music/tools/a;
.super Lcom/iflytek/sparkchain/plugins/base/BaseTool;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;-><init>()V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/music/tools/a;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/plugins/music/b/a;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/plugins/music/b/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->argsSchema:Lcom/iflytek/sparkchain/plugins/base/BaseModel;

    const-string v0, "switchSongs"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->name:Ljava/lang/String;

    const-string v0, "\u6b4c\u66f2\u5207\u6362\u3002\u6267\u884c\u6b4c\u66f2\u4e0a\u3001\u4e0b\u4e00\u9996\u5207\u6362"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs run(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const-string p2, "do control music success!"

    const-string v0, ""

    const-string v1, "switch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SparkChain"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, p2}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->toResult(Lorg/json/JSONObject;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x4a38

    invoke-virtual {p0, v2, p1, p2}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->toResult(Lorg/json/JSONObject;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
