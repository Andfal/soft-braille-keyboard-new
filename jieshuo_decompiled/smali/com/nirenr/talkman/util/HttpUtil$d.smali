.class public Lcom/nirenr/talkman/util/HttpUtil$d;
.super Lcom/androlua/util/AsyncTaskX;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/util/HttpUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androlua/util/AsyncTaskX<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        "Lcom/nirenr/talkman/util/HttpUtil$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;

.field private c:[B

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lcom/nirenr/talkman/util/HttpUtil$UpdateListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/androlua/util/AsyncTaskX;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/util/HttpUtil$d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/nirenr/talkman/util/HttpUtil$d;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/nirenr/talkman/util/HttpUtil$d;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/nirenr/talkman/util/HttpUtil$d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/nirenr/talkman/util/HttpUtil$d;->f:Ljava/util/HashMap;

    iput-object p6, p0, Lcom/nirenr/talkman/util/HttpUtil$d;->b:Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;

    return-void
.end method

.method private formatData(Ljava/util/Map;)[B
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/util/HttpUtil$d;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/util/HttpUtil$d;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "UTF-8"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private formatData([Ljava/lang/Object;)[B
    .locals 2

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    aget-object p1, p1, v0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/util/HttpUtil$d;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UTF-8"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    check-cast p1, [B

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/FileInputStream;

    check-cast p1, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object p1

    goto :goto_1

    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/util/HttpUtil$d;->formatData(Ljava/util/Map;)[B

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/androlua/util/AsyncTaskX;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/util/HttpUtil$d;->f([Ljava/lang/Object;)Lcom/nirenr/talkman/util/HttpUtil$c;

    move-result-object p1

    return-object p1
.end method

.method protected f([Ljava/lang/Object;)Lcom/nirenr/talkman/util/HttpUtil$c;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "GET"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "download"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->a:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    const v7, 0xea60

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setDoInput(Z)V

    const-string v8, "Accept-Language"

    const-string v9, "zh-cn,zh;q=0.5"

    invoke-virtual {v6, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Accept-Charset"

    iget-object v9, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v10, "UTF-8"

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v10

    :goto_0
    :try_start_1
    invoke-virtual {v6, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->e:Ljava/lang/String;

    if-eqz v8, :cond_1

    const-string v9, "Cookie"

    invoke-virtual {v6, v9, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/nirenr/talkman/util/HttpUtil;->a()Ljava/util/HashMap;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/nirenr/talkman/util/HttpUtil;->a()Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v11, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v8, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->f:Ljava/util/HashMap;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v11, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v8, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->g:Ljava/lang/String;

    if-eqz v8, :cond_4

    invoke-virtual {v6, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_4
    iget-object v8, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->g:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    array-length v8, v0

    if-eqz v8, :cond_5

    invoke-direct/range {p0 .. p1}, Lcom/nirenr/talkman/util/HttpUtil$d;->formatData([Ljava/lang/Object;)[B

    move-result-object v8

    iput-object v8, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->c:[B

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    const-string v8, "Content-length"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->c:[B

    array-length v11, v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    iget-object v8, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->g:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    array-length v2, v0

    if-eqz v2, :cond_9

    new-instance v2, Ljava/io/File;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_7
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    int-to-long v9, v9

    const/high16 v11, 0x20000

    :try_start_2
    new-array v11, v11, [B

    const-wide/16 v12, 0x0

    :goto_3
    invoke-virtual {v8, v11}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-eq v14, v5, :cond_8

    invoke-virtual {v0, v11, v4, v14}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v14, v14

    add-long/2addr v12, v14

    new-array v14, v7, [Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    const-string v5, "%d"

    new-array v3, v7, [Ljava/lang/Object;

    const-wide/16 v16, 0x64

    mul-long v16, v16, v12

    div-long v16, v16, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v3, v4

    invoke-static {v15, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v4

    invoke-virtual {v1, v14}, Lcom/androlua/util/AsyncTaskX;->publishProgress([Ljava/lang/Object;)V

    const/4 v5, -0x1

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/nirenr/talkman/util/HttpUtil$c;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v0, v3, v2, v5, v4}, Lcom/nirenr/talkman/util/HttpUtil$c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/nirenr/talkman/util/HttpUtil$c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v2, v5, v0, v4, v3}, Lcom/nirenr/talkman/util/HttpUtil$c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2

    :cond_9
    array-length v0, v0

    if-eqz v0, :cond_a

    invoke-virtual {v6}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->c:[B

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_a
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v6}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    const-string v0, "Set-Cookie"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-string v8, ";"

    if-eqz v0, :cond_b

    :try_start_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    const-string v0, "Content-Type"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v11, "charset"

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    const-string v13, "="

    invoke-virtual {v9, v13, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v12, :cond_c

    invoke-virtual {v9, v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v12, :cond_d

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    :cond_d
    add-int/2addr v11, v7

    invoke-virtual {v9, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->d:Ljava/lang/String;

    :cond_e
    iget-object v0, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->d:Ljava/lang/String;

    if-nez v0, :cond_f

    iput-object v10, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->d:Ljava/lang/String;

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCharset: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->d:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/androlua/LuaUtil;->readAll(Ljava/io/InputStream;)[B

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    iget-object v10, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->d:Ljava/lang/String;

    invoke-direct {v9, v8, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "line: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v8, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->d:Ljava/lang/String;

    invoke-direct {v6, v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    :goto_6
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/androlua/util/AsyncTaskX;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_11

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_12
    new-instance v0, Lcom/nirenr/talkman/util/HttpUtil$c;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v2, v4, v5, v3}, Lcom/nirenr/talkman/util/HttpUtil$c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    return-object v0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/nirenr/talkman/util/HttpUtil$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lua"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v2, Lcom/nirenr/talkman/util/HttpUtil$c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0, v3, v3}, Lcom/nirenr/talkman/util/HttpUtil$c;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2
.end method

.method protected g(Lcom/nirenr/talkman/util/HttpUtil$c;)V
    .locals 1

    invoke-virtual {p0}, Lcom/androlua/util/AsyncTaskX;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/util/HttpUtil$d;->b:Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;->onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V

    return-void
.end method

.method protected varargs h([Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/androlua/util/AsyncTaskX;->onProgressUpdate([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/util/HttpUtil$d;->h:Lcom/nirenr/talkman/util/HttpUtil$UpdateListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/util/HttpUtil$UpdateListener;->onUpdate([Ljava/lang/String;)V

    return-void
.end method

.method public i(Lcom/nirenr/talkman/util/HttpUtil$UpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/util/HttpUtil$d;->h:Lcom/nirenr/talkman/util/HttpUtil$UpdateListener;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/nirenr/talkman/util/HttpUtil$c;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/util/HttpUtil$d;->g(Lcom/nirenr/talkman/util/HttpUtil$c;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/util/HttpUtil$d;->h([Ljava/lang/String;)V

    return-void
.end method
