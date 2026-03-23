.class public Lcom/unisound/common/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x7530

    invoke-static {p0, v0}, Lcom/unisound/common/n;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const-string p1, "GET"

    invoke-virtual {p0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "utf-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_0
    move-object v1, p1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_0
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_7

    :catch_2
    move-exception v2

    goto :goto_4

    :catch_3
    move-exception v2

    goto/16 :goto_7

    :cond_1
    const-string v0, "{}"

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :catch_4
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_a

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, p1

    move-object v2, v1

    goto/16 :goto_c

    :catch_5
    move-exception p1

    move-object v2, p1

    move-object p1, v1

    goto :goto_4

    :catch_6
    move-exception p1

    move-object v2, p1

    move-object p1, v1

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v0, p0

    move-object p0, v1

    move-object v2, p0

    goto :goto_c

    :catch_7
    move-exception p0

    move-object v2, p0

    move-object p0, v1

    move-object p1, p0

    :goto_4
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz p1, :cond_4

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_5

    :catch_8
    move-exception p0

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    return-object v0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :catch_9
    move-exception p0

    move-object v2, p0

    move-object p0, v1

    move-object p1, p0

    :goto_7
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p1, :cond_6

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_8

    :catch_a
    move-exception p0

    goto :goto_9

    :cond_6
    :goto_8
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    return-object v0

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_a
    return-object v0

    :catchall_3
    move-exception v0

    move-object v2, v1

    :goto_b
    move-object v1, p1

    :goto_c
    if-eqz v1, :cond_9

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_d

    :catch_b
    move-exception p0

    goto :goto_e

    :cond_9
    :goto_d
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_f

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_f
    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p1}, Lcom/unisound/common/n;->a(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x7530

    invoke-static {p0, p1, v0}, Lcom/unisound/common/n;->a(Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;[BI)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    invoke-virtual {p0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POST"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_1

    new-instance p1, Ljava/io/BufferedReader;

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {p2, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, p0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object p1, p0

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_2
    return-object v0

    :catchall_2
    move-exception p1

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw p1
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v0, 0x7530

    invoke-static {p0, p1, v0}, Lcom/unisound/common/n;->b(Ljava/lang/String;[BI)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;[BI)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {p0, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object p1, p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object p1, p0

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p0, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return p0

    :goto_1
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw p1
.end method
