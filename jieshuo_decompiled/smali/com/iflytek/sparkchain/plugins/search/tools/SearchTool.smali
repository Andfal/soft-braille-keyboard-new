.class public Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;
.super Lcom/iflytek/sparkchain/plugins/base/BaseTool;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private UID:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private apiSecret:Ljava/lang/String;

.field private appID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;-><init>()V

    const-string v0, "SparkChain"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->TAG:Ljava/lang/String;

    const-string v0, "cf714658"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->appID:Ljava/lang/String;

    const-string v0, "d1961748909c404621b9f6dd6b1b18ce"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->apiKey:Ljava/lang/String;

    const-string v0, "NTE0ZGI3ZDI3ZjYwOWM4OTNlOWY2OWUz"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->apiSecret:Ljava/lang/String;

    const-string v0, "d17705645154"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->UID:Ljava/lang/String;

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->init()V

    return-void
.end method

.method private getJSONString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "search URI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SparkChain"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v1, "Mozilla/5.0"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 1

    const-string v0, "\u5b9e\u65f6\u4e92\u8054\u7f51\u4fe1\u606f\u67e5\u8be2\u3002"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->description:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/sparkchain/plugins/c/b/a;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/plugins/c/b/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->argsSchema:Lcom/iflytek/sparkchain/plugins/base/BaseModel;

    const-string v0, "search"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->name:Ljava/lang/String;

    return-void
.end method

.method private query(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://192.168.50.12:8000/search?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&max_results=3"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->getJSONString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "body"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "\u672a\u67e5\u5230\u7ed3\u679c"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private reqJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"header\":{\"app_id\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->appID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"uid\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->UID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"},\"parameter\":{\"chat\":{\"domain\":\"search\",\"chat_id\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"random_threshold\":0,\"max_tokens\":2048,\"auditing\":\"default\",\"top_k\":4,\"temperature\":0.5}},\"payload\":{\"message\":{\"text\":[{\"role\":\"user\",\"content\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}]}}}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private search(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->apiKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->apiSecret:Ljava/lang/String;

    const-string v2, "GET"

    const-string v3, "wss://spark-api-knowledge.xf-yun.com/v1/chat"

    invoke-static {v3, v0, v1, v2}, Lcom/iflytek/sparkchain/plugins/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "\u672a\u67e5\u5230\u7ed3\u679c"

    return-object p1

    :cond_0
    new-instance v1, Lcom/iflytek/sparkchain/plugins/c/a;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/iflytek/sparkchain/plugins/c/a;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Lorg/java_websocket/client/WebSocketClient;->connect()V

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool$a;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool$a;-><init>(Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/iflytek/sparkchain/plugins/c/a;->a(Lcom/iflytek/sparkchain/plugins/c/a$a;)V

    const-string v2, "SocketClient connecting"

    const-string v3, "SparkChain"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v1}, Lorg/java_websocket/client/WebSocketClient;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->reqJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/iflytek/sparkchain/plugins/c/a;->send(Ljava/lang/String;)V

    const-string p1, "wait socket result..."

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x0

    aget-object v2, v0, p1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/java_websocket/client/WebSocketClient;->close()V

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public varargs run(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const-string p2, "keyword"

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/plugins/search/tools/SearchTool;->search(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "do search success!"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->toResult(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SparkChain"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 p1, 0x4a38

    const-string p2, "do search failure!"

    const-string v0, "\u672a\u67e5\u8be2\u5230\u7ed3\u679c"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->toResult(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
