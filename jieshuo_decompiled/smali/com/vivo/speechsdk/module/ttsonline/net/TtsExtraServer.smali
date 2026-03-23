.class public Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEF_CONNECT_TIME:I = 0x1388

.field private static final HEAD_APPID:Ljava/lang/String; = "appid"

.field private static final HEAD_IMEI:Ljava/lang/String; = "imei"

.field private static final HEAD_VAID:Ljava/lang/String; = "vaid"

.field private static final SUCCESS_MESSAGE:Ljava/lang/String; = "OK"

.field private static final TAG:Ljava/lang/String; = "TtsExtraServer"

.field private static final UPLOAD_TEMPLATE:Ljava/lang/String; = "{\"text\":\"%s\"}"


# instance fields
.field private mFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

.field private mSpeakers:Ljava/lang/String;

.field private mWaitTimeOut:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v1, "Net"

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/net/INetFactory;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->mFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    const-string v1, "key_connect_time_out"

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->mWaitTimeOut:I

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->mSpeakers:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->mSpeakers:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getSupportSpeakers(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 14

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->mSpeakers:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->mSpeakers:Ljava/lang/String;

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->mFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->createHttpClient()Lcom/vivo/speechsdk/module/api/net/IHttp;

    move-result-object v2

    const-string v3, "key_did"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_vaid"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_appid"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_token"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_openid"

    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "key_new_authentication_enable"

    invoke-virtual {p1, v8, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :goto_0
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "key_ws_host"

    invoke-virtual {p1, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "https://%s/vcns_config"

    const/4 v12, 0x0

    if-eqz v10, :cond_2

    invoke-virtual {p1, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    aput-object v9, v10, v12

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_2
    new-array v9, v1, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->mFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    const/4 v13, 0x2

    invoke-interface {v10, v13}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->getDomain(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_1
    invoke-static {p1, v9, v8, v1, v1}, Lcom/vivo/speechsdk/module/ttsonline/net/Protocol;->url(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-instance v9, Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    invoke-direct {v9}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;-><init>()V

    const-string v10, "Connection"

    const-string v11, "close"

    invoke-virtual {v9, v10, v11}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->url(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->get()Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v9

    invoke-static {v1}, Lcom/vivo/speechsdk/common/utils/StringUtils;->getUrlQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "/vcns_config"

    invoke-static {p1, v10, v1, v8}, Lcom/vivo/speechsdk/module/ttsonline/net/Protocol;->generateAuthHeaders(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v8, v10}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    goto :goto_2

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "imei"

    invoke-virtual {v9, p1, v3}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "vaid"

    invoke-virtual {v9, p1, v4}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "appid"

    invoke-virtual {v9, p1, v5}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "token"

    invoke-virtual {v9, p1, v6}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "openid"

    invoke-virtual {v9, p1, v7}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_8
    invoke-virtual {v9}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->build()Lcom/vivo/speechsdk/module/api/net/Req;

    move-result-object p1

    const-string v1, "request cost"

    invoke-static {v1}, Lcom/vivo/speechsdk/b/g/a;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer$1;

    invoke-direct {v1, p0, v0}, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer$1;-><init>(Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v2, p1, v1}, Lcom/vivo/speechsdk/module/api/net/IHttp;->request(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/Callback;)V

    :try_start_0
    iget p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->mWaitTimeOut:I

    int-to-long v1, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->mSpeakers:Ljava/lang/String;

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public uploadText(Landroid/os/Bundle;Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->mFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->createHttpClient()Lcom/vivo/speechsdk/module/api/net/IHttp;

    move-result-object v2

    const-string v3, "key_did"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_vaid"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_appid"

    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_token"

    invoke-virtual {v1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_openid"

    invoke-virtual {v1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "key_ws_host"

    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "https://%s/upload_full_text?request_id="

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v10, :cond_0

    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    aput-object v9, v10, v12

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    new-array v9, v13, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->mFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    const/4 v14, 0x2

    invoke-interface {v10, v14}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->getDomain(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v11, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, p3

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/vivo/speechsdk/module/api/net/ReqBody;

    const-string v11, "application/json"

    invoke-direct {v10, v11}, Lcom/vivo/speechsdk/module/api/net/ReqBody;-><init>(Ljava/lang/String;)V

    new-array v11, v13, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/vivo/speechsdk/module/ttsonline/net/Protocol;->getBase64Text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const-string v12, "{\"text\":\"%s\"}"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/vivo/speechsdk/module/api/net/ReqBody;->mContent:Ljava/lang/String;

    new-instance v11, Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    invoke-direct {v11}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;-><init>()V

    const-string v12, "Connection"

    const-string v13, "close"

    invoke-virtual {v11, v12, v13}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->url(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->post(Lcom/vivo/speechsdk/module/api/net/ReqBody;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v10

    invoke-static {v9}, Lcom/vivo/speechsdk/common/utils/StringUtils;->getUrlQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "/upload_full_text"

    invoke-static {v1, v11, v9, v8}, Lcom/vivo/speechsdk/module/ttsonline/net/Protocol;->generateAuthHeaders(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v9, v11}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    goto :goto_1

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "imei"

    invoke-virtual {v10, v1, v3}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "vaid"

    invoke-virtual {v10, v1, v4}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "appid"

    invoke-virtual {v10, v1, v5}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "token"

    invoke-virtual {v10, v1, v6}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "openid"

    invoke-virtual {v10, v1, v7}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_6
    invoke-virtual {v10}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->build()Lcom/vivo/speechsdk/module/api/net/Req;

    move-result-object v1

    const-string v3, "upload cost"

    invoke-static {v3}, Lcom/vivo/speechsdk/b/g/a;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer$2;

    invoke-direct {v3, v0}, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer$2;-><init>(Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;)V

    invoke-interface {v2, v1, v3}, Lcom/vivo/speechsdk/module/api/net/IHttp;->request(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/Callback;)V

    return-void
.end method
