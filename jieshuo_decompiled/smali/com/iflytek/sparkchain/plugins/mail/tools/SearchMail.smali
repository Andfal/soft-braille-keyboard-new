.class public Lcom/iflytek/sparkchain/plugins/mail/tools/SearchMail;
.super Lcom/iflytek/sparkchain/plugins/base/BaseTool;
.source "SourceFile"


# instance fields
.field private mailImpl:Lcom/iflytek/sparkchain/plugins/mail/MailImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;-><init>()V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/mail/tools/SearchMail;->initParams()V

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;-><init>()V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/plugins/mail/tools/SearchMail;->initParams()V

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;

    invoke-direct {v0, p1}, Lcom/iflytek/sparkchain/plugins/mail/MailImpl;-><init>(Lcom/iflytek/sparkchain/plugins/mail/Mail$Config;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/mail/tools/SearchMail;->mailImpl:Lcom/iflytek/sparkchain/plugins/mail/MailImpl;

    return-void
.end method

.method private initParams()V
    .locals 1

    const-string v0, "find_email"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->name:Ljava/lang/String;

    const-string v0, "\u90ae\u4ef6\u68c0\u7d22\u3002"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->description:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->isDirect:Z

    new-instance v0, Lcom/iflytek/sparkchain/plugins/mail/a/a;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/plugins/mail/a/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->argsSchema:Lcom/iflytek/sparkchain/plugins/base/BaseModel;

    return-void
.end method

.method private toJSON(Ljava/util/List;Z)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "isSuccess"

    const-string v3, "mailList"

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/plugins/mail/Mail$Msg;->toJSON()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p1, 0x1

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    :try_start_1
    const-string p1, "SparkChain"

    const-string v4, "Mail Not Found"

    invoke-static {p1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public varargs run(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "do search success!"

    invoke-virtual {p0, p1, p2, v0}, Lcom/iflytek/sparkchain/plugins/base/BaseTool;->toResult(Ljava/lang/String;ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
