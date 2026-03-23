.class public Lk1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static h:Ljavax/net/ssl/SSLContext;

.field private static i:[Ljava/lang/String;


# instance fields
.field private a:Z

.field private b:I

.field private c:Ljava/net/Proxy;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/net/HttpURLConnection;

.field final g:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lk1/b;->i:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk1/b;->a:Z

    const/16 v0, 0xbb8

    iput v0, p0, Lk1/b;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lk1/b;->c:Ljava/net/Proxy;

    iput-object v0, p0, Lk1/b;->d:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lk1/b;->e:I

    iput-object v0, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    new-instance v1, Lk1/b$a;

    invoke-direct {v1, p0}, Lk1/b$a;-><init>(Lk1/b;)V

    iput-object v1, p0, Lk1/b;->g:Ljavax/net/ssl/HostnameVerifier;

    sget-object v1, Lk1/b;->h:Ljavax/net/ssl/SSLContext;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    sput-object v1, Lk1/b;->h:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v1, v0, v0, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lk1/g;)V
    .locals 5

    const-string v0, "HttpClientUtil"

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lk1/b;->a:Z

    if-nez v2, :cond_0

    const-string v2, "UTF-8"

    invoke-static {p1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "https"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lk1/b;->c:Ljava/net/Proxy;

    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    :goto_1
    iput-object v2, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    goto :goto_1

    :goto_2
    iget-object v2, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v3, p0, Lk1/b;->g:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    sget-object v2, Lk1/b;->h:Ljavax/net/ssl/SSLContext;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_4

    :cond_2
    iget-object v2, p0, Lk1/b;->c:Ljava/net/Proxy;

    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    :goto_3
    iput-object v2, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    goto :goto_4

    :cond_3
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    goto :goto_3

    :cond_4
    :goto_4
    instance-of v2, p4, Lk1/e;

    if-eqz v2, :cond_5

    move-object v2, p4

    check-cast v2, Lk1/e;

    iget-object v3, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v3}, Lk1/e;->m(Ljava/net/HttpURLConnection;)V

    :cond_5
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-interface {p4, p1}, Lk1/g;->b(Ljava/net/URI;)V

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    iget v2, p0, Lk1/b;->b:I

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    iget v2, p0, Lk1/b;->b:I

    invoke-virtual {p1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string p1, "POST"

    if-ne p3, p1, :cond_6

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setDoInput(Z)V

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

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

    :cond_6
    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    iput p1, p0, Lk1/b;->e:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ResponseCode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lk1/b;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk1/b;->d:Ljava/lang/String;

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    new-instance p1, Lk1/c;

    invoke-direct {p1}, Lk1/c;-><init>()V

    iget-object p2, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getContentLength()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Lk1/c;->c(J)V

    iget-object p2, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1, p2}, Lk1/c;->d(Ljava/io/InputStream;)V

    invoke-virtual {p1, v1}, Lk1/c;->f(Ljava/util/Map;)V

    iget-object p2, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lk1/c;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lk1/b;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lk1/c;->h(Ljava/lang/String;)V

    iget p2, p0, Lk1/b;->e:I

    invoke-virtual {p1, p2}, Lk1/c;->b(I)V

    invoke-interface {p4, p1}, Lk1/g;->c(Lk1/c;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b

    goto :goto_5

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    if-eqz p4, :cond_7

    :try_start_1
    iget p2, p0, Lk1/b;->e:I

    iget-object p3, p0, Lk1/b;->d:Ljava/lang/String;

    invoke-interface {p4, p2, v1, p3, p1}, Lk1/g;->a(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b

    goto :goto_5

    :catch_1
    move-exception p1

    if-eqz p4, :cond_8

    :try_start_2
    iget p2, p0, Lk1/b;->e:I

    iget-object p3, p0, Lk1/b;->d:Ljava/lang/String;

    invoke-interface {p4, p2, v1, p3, p1}, Lk1/g;->a(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b

    goto :goto_5

    :catch_2
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b

    goto :goto_5

    :catch_3
    move-exception p1

    if-eqz p4, :cond_9

    :try_start_4
    iget p2, p0, Lk1/b;->e:I

    iget-object p3, p0, Lk1/b;->d:Ljava/lang/String;

    invoke-interface {p4, p2, v1, p3, p1}, Lk1/g;->a(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b

    goto :goto_5

    :catch_4
    move-exception p1

    if-eqz p4, :cond_a

    :try_start_5
    iget p2, p0, Lk1/b;->e:I

    iget-object p3, p0, Lk1/b;->d:Ljava/lang/String;

    invoke-interface {p4, p2, v1, p3, p1}, Lk1/g;->a(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object p1, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    if-eqz p1, :cond_b

    :goto_5
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    return-void

    :goto_6
    iget-object p2, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw p1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lk1/b;->f:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const/16 p1, 0xbb8

    :cond_0
    iput p1, p0, Lk1/b;->b:I

    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object v0, p0, Lk1/b;->c:Ljava/net/Proxy;

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lk1/g;)V
    .locals 1

    const-string v0, "POST"

    invoke-direct {p0, p1, p2, v0, p3}, Lk1/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lk1/g;)V

    return-void
.end method

.method public f(Ljava/lang/String;Lk1/g;)V
    .locals 2

    const-string v0, ""

    const-string v1, "GET"

    invoke-direct {p0, p1, v0, v1, p2}, Lk1/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lk1/g;)V

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lk1/b;->a:Z

    return-void
.end method
