.class public Lcom/vivo/speechsdk/module/net/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "HttpHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/vivo/speechsdk/module/api/net/Req;Ly2/Response;)Lcom/vivo/speechsdk/module/api/net/Resp;
    .locals 3

    invoke-virtual {p1}, Ly2/Response;->b()Ly2/c0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/api/net/Req;->respType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/module/net/utils/b;->a(Ly2/c0;I)Lcom/vivo/speechsdk/module/api/net/RespBody;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->body(Lcom/vivo/speechsdk/module/api/net/RespBody;)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;

    invoke-virtual {p1}, Ly2/Response;->g()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->code(I)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;

    invoke-virtual {p1}, Ly2/Response;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->message(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;

    invoke-virtual {v1, p0}, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->request(Lcom/vivo/speechsdk/module/api/net/Req;)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;

    invoke-virtual {p1}, Ly2/Response;->m()Ly2/v;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Ly2/v;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ly2/v;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Ly2/v;->f(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Resp$Builder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vivo/speechsdk/module/api/net/Resp$Builder;->build()Lcom/vivo/speechsdk/module/api/net/Resp;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ly2/c0;I)Lcom/vivo/speechsdk/module/api/net/RespBody;
    .locals 3

    new-instance v0, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;-><init>()V

    invoke-virtual {p0}, Ly2/c0;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->contentLength(J)Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;

    move-result-object v0

    invoke-virtual {p0}, Ly2/c0;->g()Ly2/y;

    move-result-object v1

    invoke-virtual {v1}, Ly2/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->contentType(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;

    move-result-object v0

    const/16 v1, 0x3ec

    if-ne p1, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ly2/c0;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->string(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "HttpHelper"

    const-string v2, "bodyStr"

    invoke-static {v1, v2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Ly2/c0;->close()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ly2/c0;->close()V

    throw p1

    :cond_0
    invoke-virtual {p0}, Ly2/c0;->b()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->byteStream(Ljava/io/InputStream;)Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;

    :goto_2
    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/api/net/RespBody$Builder;->build()Lcom/vivo/speechsdk/module/api/net/RespBody;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsupportedEncoding  | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1

    const-string v1, "null"

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpHelper"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Lcom/vivo/speechsdk/module/api/net/Req;)Ly2/Request;
    .locals 5

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/api/net/Req;->body()Lcom/vivo/speechsdk/module/api/net/ReqBody;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;

    new-instance v1, Ly2/z$a;

    invoke-direct {v1}, Ly2/z$a;-><init>()V

    sget-object v2, Ly2/z;->p:Ly2/y;

    invoke-virtual {v1, v2}, Ly2/z$a;->e(Ly2/y;)Ly2/z$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/speechsdk/module/net/utils/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;

    iget-object v4, v0, Lcom/vivo/speechsdk/module/api/net/ReqBody;->mContentType:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;-><init>(Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {v1, v0, v2, v3}, Ly2/z$a;->b(Ljava/lang/String;Ljava/lang/String;Ly2/b0;)Ly2/z$a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/z$a;->d()Ly2/z;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/vivo/speechsdk/module/api/net/ReqBody;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Ly2/y;->e(Ljava/lang/String;)Ly2/y;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/api/net/Req;->body()Lcom/vivo/speechsdk/module/api/net/ReqBody;

    move-result-object v1

    iget-object v1, v1, Lcom/vivo/speechsdk/module/api/net/ReqBody;->mContent:Ljava/lang/String;

    invoke-static {v0, v1}, Ly2/b0;->create(Ly2/y;Ljava/lang/String;)Ly2/b0;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ly2/Request$a;

    invoke-direct {v1}, Ly2/Request$a;-><init>()V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/api/net/Req;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ly2/Request$a;->h(Ljava/lang/String;)Ly2/Request$a;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/api/net/Req;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ly2/Request$a;->e(Ljava/lang/String;Ly2/b0;)Ly2/Request$a;

    :cond_2
    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/api/net/Req;->headers()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ly2/Request$a;->a(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ly2/Request$a;->b()Ly2/Request;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v1, "Security"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/security/ISignTool;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/vivo/speechsdk/module/api/security/ISignTool;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "null"

    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0}, Lcom/vivo/speechsdk/module/net/utils/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object p0

    :cond_2
    const-string v3, "asr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "tts"

    if-eqz v4, :cond_5

    const-string v2, "asr@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "nlu"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "1"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v7, "|"

    if-eqz p0, :cond_3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, "tts@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
