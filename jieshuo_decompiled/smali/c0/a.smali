.class public Lc0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lc0/b;)Lc0/c;
    .locals 9

    invoke-virtual {p0}, Lc0/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lc0/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lc0/b;->g()Ljava/util/HashMap;

    move-result-object v2

    new-instance v3, Lc0/c;

    invoke-direct {v3}, Lc0/c;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lc0/b;->j()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lc0/b;->k()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "%s?%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lc0/b;->k()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-virtual {p0}, Lc0/b;->i()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lc0/b;->e()Lf0/a;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lc0/b;->e()Lf0/a;

    move-result-object v4

    invoke-virtual {v4}, Lf0/a;->b()Ljava/net/Proxy;

    move-result-object v4

    :goto_1
    invoke-virtual {v7, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lc0/b;->e()Lf0/a;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lc0/b;->e()Lf0/a;

    move-result-object v7

    invoke-virtual {v7}, Lf0/a;->a()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Lc0/b;->e()Lf0/a;

    move-result-object p0

    invoke-virtual {p0}, Lf0/a;->c()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :cond_2
    invoke-virtual {v4, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-static {v2, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/net/URLConnection;->connect()V

    new-instance p0, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    invoke-virtual {v4}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Lc0/c;->e(Ljava/util/Map;)V

    invoke-virtual {v3, p0}, Lc0/c;->f(I)V

    invoke-virtual {v3, v0}, Lc0/c;->d(Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_4

    return-object v3

    :cond_4
    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_3
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_5

    invoke-virtual {v0, v1, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {v3, p0}, Lc0/c;->c([B)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object v3

    :catch_0
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v3
.end method
