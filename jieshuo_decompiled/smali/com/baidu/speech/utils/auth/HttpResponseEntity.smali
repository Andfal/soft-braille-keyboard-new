.class public Lcom/baidu/speech/utils/auth/HttpResponseEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private contentEncoding:Ljava/lang/String;

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private inputStream:Ljava/io/InputStream;

.field private responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response getInputstream is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->contentEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->header:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->responseCode:I

    return v0
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->contentEncoding:Ljava/lang/String;

    return-void
.end method

.method public setContentLength(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->contentLength:J

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setHeader(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->header:Ljava/util/Map;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->inputStream:Ljava/io/InputStream;

    return-void
.end method

.method public setResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/speech/utils/auth/HttpResponseEntity;->responseCode:I

    return-void
.end method
