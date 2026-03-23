.class public abstract Lcom/baidu/speech/utils/auth/ResponseHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "TtsResponseHandler"


# instance fields
.field private requestURI:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/speech/utils/auth/ResponseHandler;->requestURI:Ljava/net/URI;

    return-void
.end method


# virtual methods
.method public getRequestURI()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/ResponseHandler;->requestURI:Ljava/net/URI;

    return-object v0
.end method

.method public abstract onFailure(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onSuccess(ILjava/util/Map;Ljava/lang/String;[B)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation
.end method

.method public sendErrorMessage(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/speech/utils/auth/ResponseHandler;->onFailure(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V

    return-void
.end method

.method public sendResponseMessage(Lcom/baidu/speech/utils/auth/HttpResponseEntity;)V
    .locals 10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "TtsResponseHandler"

    invoke-static {v2, v1}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->getResponseCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->getHeader()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p1}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->getContentType()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {p1}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    const/16 v7, 0xc8

    if-ne v1, v7, :cond_1

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {v2, v5, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v6, v4, v0}, Lcom/baidu/speech/utils/auth/ResponseHandler;->onSuccess(ILjava/util/Map;Ljava/lang/String;[B)V

    goto :goto_1

    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request fail statusCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->getContentType()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/baidu/speech/utils/auth/ResponseHandler;->onFailure(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->getHeader()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p1}, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->getContentType()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, p0

    move v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/baidu/speech/utils/auth/ResponseHandler;->onFailure(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setRequestURI(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/ResponseHandler;->requestURI:Ljava/net/URI;

    return-void
.end method
