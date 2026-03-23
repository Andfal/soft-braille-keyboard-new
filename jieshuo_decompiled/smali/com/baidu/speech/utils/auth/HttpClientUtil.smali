.class public Lcom/baidu/speech/utils/auth/HttpClientUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TIMEOUT:I = 0x1388

.field private static final REQUESTMETHOD_GET:Ljava/lang/String; = "GET"

.field private static final REQUESTMETHOD_POST:Ljava/lang/String; = "POST"

.field private static final TAG:Ljava/lang/String; = "HttpClientUtil"

.field private static mSSLContext:Ljavax/net/ssl/SSLContext;


# instance fields
.field final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field private contentType:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpURLConnection:Ljava/net/HttpURLConnection;

.field private isUrlEncodingEnabled:Z

.field private mTimeOut:I

.field private proxy:Ljava/net/Proxy;

.field private statusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->isUrlEncodingEnabled:Z

    const/16 v0, 0x1388

    iput v0, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->mTimeOut:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->contentType:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->statusCode:I

    iput-object v0, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->headers:Ljava/util/Map;

    new-instance v0, Lcom/baidu/speech/utils/auth/HttpClientUtil$1;

    invoke-direct {v0, p0}, Lcom/baidu/speech/utils/auth/HttpClientUtil$1;-><init>(Lcom/baidu/speech/utils/auth/HttpClientUtil;)V

    iput-object v0, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/baidu/speech/utils/auth/HttpClientUtil;->convertHostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static convertHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "vse.baidu.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vop.baidu.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "openapi.baidu.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "upl.baidu.com"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method private makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;)V
    .locals 8

    const-string v0, "HttpClientUtil"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-boolean v4, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->isUrlEncodingEnabled:Z

    if-nez v4, :cond_0

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v6, "https"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->proxy:Ljava/net/Proxy;

    if-eqz v4, :cond_1

    invoke-virtual {v5, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    :goto_1
    iput-object v4, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_1

    :goto_2
    iget-object v4, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v5, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_4

    :cond_2
    iget-object v4, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->proxy:Ljava/net/Proxy;

    if-eqz v4, :cond_3

    invoke-virtual {v5, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    :goto_3
    iput-object v4, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    goto :goto_4

    :cond_3
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    goto :goto_3

    :goto_4
    iget-object v4, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->headers:Ljava/util/Map;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->headers:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v7, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    instance-of v4, p4, Lcom/baidu/speech/utils/auth/RangeFileAsyncHttpResponseHandler;

    if-eqz v4, :cond_5

    const-string v4, "RangeFileAsyncHttpResponseHandler"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    move-object v4, p4

    check-cast v4, Lcom/baidu/speech/utils/auth/RangeFileAsyncHttpResponseHandler;

    iget-object v5, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4, v5}, Lcom/baidu/speech/utils/auth/RangeFileAsyncHttpResponseHandler;->updateRequestHeaders(Ljava/net/HttpURLConnection;)V

    :cond_5
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;->setRequestURI(Ljava/net/URI;)V

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    iget v4, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->mTimeOut:I

    invoke-virtual {p1, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    iget v4, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->mTimeOut:I

    invoke-virtual {p1, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string p1, "POST"

    if-ne p3, p1, :cond_6

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    new-instance p3, Ljava/io/BufferedOutputStream;

    invoke-direct {p3, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    :cond_6
    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setDoInput(Z)V

    :goto_6
    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iput p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->statusCode:I

    new-array p1, v2, [Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ResponseCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->statusCode:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {v0, p1}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->contentType:Ljava/lang/String;

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    new-instance p1, Lcom/baidu/speech/utils/auth/HttpResponseEntity;

    invoke-direct {p1}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;-><init>()V

    iget-object p2, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getContentLength()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->setContentLength(J)V

    iget-object p2, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->setInputStream(Ljava/io/InputStream;)V

    invoke-virtual {p1, v3}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->setHeader(Ljava/util/Map;)V

    iget-object p2, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->setContentEncoding(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->contentType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->setContentType(Ljava/lang/String;)V

    iget p2, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->statusCode:I

    invoke-virtual {p1, p2}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->setResponseCode(I)V

    invoke-interface {p4, p1}, Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;->sendResponseMessage(Lcom/baidu/speech/utils/auth/HttpResponseEntity;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b

    :goto_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_8

    :catchall_0
    move-exception p1

    goto :goto_9

    :catch_0
    move-exception p1

    if-eqz p4, :cond_7

    :try_start_1
    iget p2, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->statusCode:I

    iget-object p3, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->contentType:Ljava/lang/String;

    invoke-interface {p4, p2, v3, p3, p1}, Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;->sendErrorMessage(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b

    goto :goto_7

    :catch_1
    move-exception p1

    if-eqz p4, :cond_8

    :try_start_2
    iget p2, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->statusCode:I

    iget-object p3, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->contentType:Ljava/lang/String;

    invoke-interface {p4, p2, v3, p3, p1}, Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;->sendErrorMessage(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b

    goto :goto_7

    :catch_2
    move-exception p1

    :try_start_3
    new-array p2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {v0, p2}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b

    goto :goto_7

    :catch_3
    move-exception p1

    if-eqz p4, :cond_9

    :try_start_4
    iget p2, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->statusCode:I

    iget-object p3, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->contentType:Ljava/lang/String;

    invoke-interface {p4, p2, v3, p3, p1}, Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;->sendErrorMessage(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b

    goto :goto_7

    :catch_4
    move-exception p1

    if-eqz p4, :cond_a

    :try_start_5
    iget p2, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->statusCode:I

    iget-object p3, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->contentType:Ljava/lang/String;

    invoke-interface {p4, p2, v3, p3, p1}, Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;->sendErrorMessage(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b

    goto :goto_7

    :cond_b
    :goto_8
    return-void

    :goto_9
    iget-object p2, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw p1
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;)V
    .locals 2

    const-string v0, ""

    const-string v1, "GET"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/baidu/speech/utils/auth/HttpClientUtil;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;)V

    return-void
.end method

.method public getTimeOut(I)I
    .locals 0

    iget p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->mTimeOut:I

    return p1
.end method

.method public isUrlEncodingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->isUrlEncodingEnabled:Z

    return v0
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;)V
    .locals 1

    const-string v0, "POST"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/baidu/speech/utils/auth/HttpClientUtil;->makeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;)V

    return-void
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->headers:Ljava/util/Map;

    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method public setTimeOut(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0x1388

    :cond_0
    iput p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->mTimeOut:I

    return-void
.end method

.method public setURLEncodingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->isUrlEncodingEnabled:Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/HttpClientUtil;->httpURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method
