.class public Lcom/iflytek/sparkchain/plugins/bot/BotUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;,
        Lcom/iflytek/sparkchain/plugins/bot/BotUtil$g;,
        Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;
    }
.end annotation


# static fields
.field public static final GET_TYPE:I = 0x3

.field public static final POST_TYPE:I = 0x2

.field public static final SOCKET_TYPE:I = 0x1

.field public static final UPLOAD_TYPE:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private apiKey:Ljava/lang/String;

.field private apiSecret:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private callback:Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;

.field private client:Lcom/iflytek/sparkchain/plugins/c/a;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private wsUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SparkChain"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->TAG:Ljava/lang/String;

    const-string v0, "ws://sparkbot.xf-yun.com/api/v1/chat"

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->wsUrl:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->doUpload(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->doDelete(I[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->appId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->doPostRequest(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->callback:Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;

    return-object p0
.end method

.method static synthetic access$500(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->doCallback(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->wsUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->assemble_ws_auth_url(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$802(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Lcom/iflytek/sparkchain/plugins/c/a;)Lcom/iflytek/sparkchain/plugins/c/a;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->client:Lcom/iflytek/sparkchain/plugins/c/a;

    return-object p1
.end method

.method static synthetic access$900(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/c/a;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->createClient(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/c/a;

    move-result-object p0

    return-object p0
.end method

.method private assembleRequestHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "hmacsha256"

    const-string v1, "\n"

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    :try_start_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/security/MessageDigest;->update([B)V

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SHA256="

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/iflytek/sparkchain/plugins/bot/a;->a()Ljava/util/Base64$Encoder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/iflytek/sparkchain/plugins/bot/b;->a(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "date: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "digest: "

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "UTF-8"

    invoke-static {p4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p4

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-direct {v2, p3, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-virtual {v1, p3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p3

    invoke-static {}, Lcom/iflytek/sparkchain/plugins/bot/a;->a()Ljava/util/Base64$Encoder;

    move-result-object p4

    invoke-static {p4, p3}, Lcom/iflytek/sparkchain/plugins/bot/b;->a(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p4, "hmac-auth api_key=\"%s\", algorithm=\"%s\", headers=\"%s\", signature=\"%s\""

    const/4 v0, 0x4

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "hmac-sha256"

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string p2, "host date request-line digest"

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 p2, 0x3

    aput-object p3, v0, p2

    invoke-static {p4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "authorization"

    invoke-interface {p3, p4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "host"

    invoke-interface {p3, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "date"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "digest"

    invoke-interface {p3, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "assemble requestHeader  error:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private assemble_ws_auth_url(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->parse_url(Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;

    move-result-object p4

    invoke-virtual {p4}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;->b()Ljava/lang/String;

    move-result-object p4

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v1, v3, v5

    const/4 v6, 0x2

    aput-object p2, v3, v6

    const/4 p2, 0x3

    aput-object p4, v3, p2

    const-string p4, "host: %s\ndate: %s\n%s %s HTTP/1.1"

    invoke-static {p4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p4}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->sha256base64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v4

    const-string p3, "hmac-sha256"

    aput-object p3, v2, v5

    const-string p3, "host date request-line"

    aput-object p3, v2, v6

    aput-object p4, v2, p2

    const-string p2, "api_key=\"%s\", algorithm=\"%s\", headers=\"%s\", signature=\"%s\""

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/iflytek/sparkchain/plugins/bot/a;->a()Ljava/util/Base64$Encoder;

    move-result-object p3

    sget-object p4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p3, p2}, Lcom/iflytek/sparkchain/plugins/bot/b;->a(Ljava/util/Base64$Encoder;[B)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p3, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "host="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&date="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "&authorization="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private auth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->apiKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->apiSecret:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->appId:Ljava/lang/String;

    iget-object p3, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$f;

    invoke-direct {v0, p0, p1, p2}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$f;-><init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createClient(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/c/a;
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->wsUrl:Ljava/lang/String;

    const-string v1, "GET"

    invoke-static {v0, p1, p2, v1}, Lcom/iflytek/sparkchain/plugins/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->wsUrl:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "SparkChain"

    const-string p2, "wsUrl is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lcom/iflytek/sparkchain/plugins/c/a;

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/iflytek/sparkchain/plugins/c/a;-><init>(Ljava/net/URI;I)V

    new-instance p1, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$d;

    invoke-direct {p1, p0}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$d;-><init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)V

    invoke-virtual {p2, p1}, Lcom/iflytek/sparkchain/plugins/c/a;->a(Lcom/iflytek/sparkchain/plugins/c/a$a;)V

    invoke-virtual {p2}, Lorg/java_websocket/client/WebSocketClient;->connect()V

    return-object p2
.end method

.method private doCallback(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SparkChain"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->callback:Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private doDelete(I[Ljava/lang/String;)V
    .locals 4

    const-string v0, "https://sparkbot.xf-yun.com/api/v1/ingest_data/delete"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "app_id"

    :try_start_0
    iget-object v3, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    array-length p2, p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    const-string p2, "source_ids"

    :try_start_1
    iget-object v2, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->appId:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string p2, "delete_all"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->doPostRequest(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->callback:Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    invoke-interface {p2, p1, v0}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;->a(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private doGetRequest(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ly2/OkHttpClient;

    invoke-direct {v0}, Ly2/OkHttpClient;-><init>()V

    new-instance v1, Ly2/Request$a;

    invoke-direct {v1}, Ly2/Request$a;-><init>()V

    invoke-virtual {v1, p1}, Ly2/Request$a;->h(Ljava/lang/String;)Ly2/Request$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Request$a;->b()Ly2/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly2/OkHttpClient;->z(Ly2/Request;)Ly2/Call;

    move-result-object p1

    invoke-interface {p1}, Ly2/Call;->execute()Ly2/Response;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Response;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ly2/Response;->b()Ly2/c0;

    move-result-object v0

    invoke-virtual {v0}, Ly2/c0;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/Response;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/Response;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->doCallback(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ly2/Response;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private doPostRequest(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8

    :try_start_0
    new-instance v0, Ly2/OkHttpClient;

    invoke-direct {v0}, Ly2/OkHttpClient;-><init>()V

    const-string v1, "application/json;charset=utf-8"

    invoke-static {v1}, Ly2/y;->g(Ljava/lang/String;)Ly2/y;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ly2/b0;->create(Ly2/y;Ljava/lang/String;)Ly2/b0;

    move-result-object v1

    new-instance v2, Ly2/Request$a;

    invoke-direct {v2}, Ly2/Request$a;-><init>()V

    invoke-virtual {v2, p1}, Ly2/Request$a;->h(Ljava/lang/String;)Ly2/Request$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Ly2/Request$a;->f(Ly2/b0;)Ly2/Request$a;

    move-result-object v1

    iget-object v4, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->apiKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->apiSecret:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "POST"

    :try_start_1
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->assembleRequestHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Ly2/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ly2/Request$a;->b()Ly2/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly2/OkHttpClient;->z(Ly2/Request;)Ly2/Call;

    move-result-object p1

    invoke-interface {p1}, Ly2/Call;->execute()Ly2/Response;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Response;->u()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/String;

    invoke-virtual {p1}, Ly2/Response;->b()Ly2/c0;

    move-result-object v0

    invoke-virtual {v0}, Ly2/c0;->c()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {p2, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/Response;->g()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " message: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/Response;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1}, Ly2/Response;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private doUpload(Ljava/io/File;)V
    .locals 8

    const-string v0, "app_id"

    const-string v2, "https://sparkbot.xf-yun.com/api/v1/ingest_data/document"

    new-instance v7, Ly2/OkHttpClient;

    invoke-direct {v7}, Ly2/OkHttpClient;-><init>()V

    const-string v1, "multipart/form-data"

    invoke-static {v1}, Ly2/y;->g(Ljava/lang/String;)Ly2/y;

    move-result-object v1

    invoke-static {v1, p1}, Ly2/b0;->create(Ly2/y;Ljava/io/File;)Ly2/b0;

    move-result-object v1

    :try_start_0
    new-instance v3, Ly2/z$a;

    invoke-direct {v3}, Ly2/z$a;-><init>()V

    sget-object v4, Ly2/z;->p:Ly2/y;

    invoke-virtual {v3, v4}, Ly2/z$a;->e(Ly2/y;)Ly2/z$a;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->appId:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ly2/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Ly2/z$a;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "file"

    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v6, "UTF-8"

    invoke-direct {v5, p1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4, v5, v1}, Ly2/z$a;->b(Ljava/lang/String;Ljava/lang/String;Ly2/b0;)Ly2/z$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/z$a;->d()Ly2/z;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v1, Ly2/Request$a;

    invoke-direct {v1}, Ly2/Request$a;-><init>()V

    invoke-virtual {v1, v2}, Ly2/Request$a;->h(Ljava/lang/String;)Ly2/Request$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Ly2/Request$a;->f(Ly2/b0;)Ly2/Request$a;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    iget-object v3, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->appId:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v3, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->apiKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->apiSecret:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v5, "POST"

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->assembleRequestHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ly2/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ly2/Request$a;->b()Ly2/Request;

    move-result-object p1

    invoke-virtual {v7, p1}, Ly2/OkHttpClient;->z(Ly2/Request;)Ly2/Call;

    move-result-object p1

    new-instance v0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$e;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$e;-><init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)V

    invoke-interface {p1, v0}, Ly2/Call;->b(Ly2/e;)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private parse_url(Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;
    .locals 4

    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$i;-><init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid request url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$g;-><init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/lang/String;)V

    throw v0
.end method

.method private static sha256base64(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    invoke-static {}, Lcom/iflytek/sparkchain/plugins/bot/a;->a()Ljava/util/Base64$Encoder;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/iflytek/sparkchain/plugins/bot/c;->a(Ljava/util/Base64$Encoder;[B)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public chat(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->client:Lcom/iflytek/sparkchain/plugins/c/a;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->client:Lcom/iflytek/sparkchain/plugins/c/a;

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->apiSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->apiKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->apiKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->apiSecret:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->createClient(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/plugins/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->client:Lcom/iflytek/sparkchain/plugins/c/a;

    :goto_1
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->client:Lcom/iflytek/sparkchain/plugins/c/a;

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->client:Lcom/iflytek/sparkchain/plugins/c/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/plugins/c/a;->send(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public deleteFile([Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$b;-><init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Z[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->client:Lcom/iflytek/sparkchain/plugins/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->client:Lcom/iflytek/sparkchain/plugins/c/a;

    invoke-virtual {v0}, Lorg/java_websocket/client/WebSocketClient;->close()V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDocuments()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$c;

    invoke-direct {v1, p0}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$c;-><init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCallback(Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->callback:Lcom/iflytek/sparkchain/plugins/bot/BotUtil$h;

    return-void
.end method

.method public uploadFile(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$a;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil$a;-><init>(Lcom/iflytek/sparkchain/plugins/bot/BotUtil;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uploadFile(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/plugins/bot/BotUtil;->uploadFile(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SparkChain"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
