.class public Lcom/unisound/common/ap;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/unisound/common/ae;

.field private c:Ljava/lang/String;

.field private d:Lcom/unisound/common/ac;

.field private e:Lcom/unisound/client/ErrorCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unisound/common/ap;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/ap;->d:Lcom/unisound/common/ac;

    new-instance v0, Lcom/unisound/client/ErrorCode;

    invoke-direct {v0}, Lcom/unisound/client/ErrorCode;-><init>()V

    iput-object v0, p0, Lcom/unisound/common/ap;->e:Lcom/unisound/client/ErrorCode;

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/common/ap;->b:Lcom/unisound/common/ae;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unisound/common/ap;->e:Lcom/unisound/client/ErrorCode;

    invoke-virtual {v1, p1}, Lcom/unisound/client/ErrorCode;->createProfessionError(I)Lcom/unisound/sdk/bw;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/unisound/common/ae;->a(Lcom/unisound/common/ap;Lcom/unisound/sdk/bw;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/ap;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a()Lcom/unisound/common/ac;
    .locals 1

    iget-object v0, p0, Lcom/unisound/common/ap;->d:Lcom/unisound/common/ac;

    return-object v0
.end method

.method a(Lcom/unisound/common/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/ap;->b:Lcom/unisound/common/ae;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/ap;->a:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/lang/String;Lcom/unisound/common/ac;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unisound/common/ac;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/unisound/common/ap;->d:Lcom/unisound/common/ac;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/unisound/common/ac;->a(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/common/ap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?ak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&imei="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/unisound/common/k;->q:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&an=wechar"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&si="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/unisound/common/ac;->c()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&av=1.0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&sn=abcdefg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&trace=1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisound/common/ap;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "data=<SCENE>\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p2, "</SCENE>"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/unisound/common/ap;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/ap;->b:Lcom/unisound/common/ae;

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadSceneTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unisound/common/r;->e(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "errorCode"

    const v1, -0xf624

    :try_start_0
    iget-object v2, p0, Lcom/unisound/common/ap;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/unisound/common/ap;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const/16 v5, 0x7530

    invoke-virtual {v3, v5}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v5, 0xc8

    if-ne v2, v5, :cond_9

    new-instance v2, Lorg/json/JSONObject;

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload userdata code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unisound/common/ap;->d:Lcom/unisound/common/ac;

    invoke-virtual {v0, v4}, Lcom/unisound/common/ac;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const v1, -0xf62d

    goto :goto_1

    :cond_2
    const/4 v1, -0x5

    if-ne v0, v1, :cond_3

    const v1, -0xf62e

    goto :goto_1

    :cond_3
    const/4 v1, -0x8

    if-ne v0, v1, :cond_4

    const v1, -0xf62f

    goto :goto_1

    :cond_4
    const/16 v1, -0xb

    if-ne v0, v1, :cond_5

    const v1, -0xf630

    goto :goto_1

    :cond_5
    const/16 v1, -0xc

    if-ne v0, v1, :cond_6

    const v1, -0xf631

    goto :goto_1

    :cond_6
    const/16 v1, -0xd

    if-ne v0, v1, :cond_7

    const v1, -0xf632

    goto :goto_1

    :cond_7
    const/4 v1, -0x6

    if-ne v0, v1, :cond_8

    const v1, -0xf62b

    goto :goto_1

    :cond_8
    const v1, -0xf623

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_1
    invoke-direct {p0, v1}, Lcom/unisound/common/ap;->a(I)V

    return-void
.end method
