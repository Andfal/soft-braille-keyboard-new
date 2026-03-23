.class public Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;
.super Ly2/b0;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private d:[B

.field private final e:Ly2/y;

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ly2/b0;-><init>()V

    const-string v0, "MultiRequestBody"

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;->a:Ljava/lang/String;

    const/16 v1, 0x1400

    iput v1, p0, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;->f:I

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->getOffest()I

    move-result v1

    iput v1, p0, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;->c:I

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->getFileLength()J

    move-result-wide v2

    int-to-long v4, v1

    sub-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " offest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " blockSize "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->getBlockSize()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/ReqMultiBody;->getBlockSize()I

    move-result p1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    long-to-int p1, v2

    :goto_0
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;->d:[B

    invoke-static {p2}, Ly2/y;->g(Ljava/lang/String;)Ly2/y;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;->e:Ly2/y;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;->d:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ly2/y;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;->e:Ly2/y;

    return-object v0
.end method

.method public final writeTo(Lm3/f;)V
    .locals 8

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;->d:[B

    array-length v5, v4

    if-ge v2, v5, :cond_2

    array-length v5, v4

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;->c:I

    add-int/2addr v6, v2

    int-to-long v6, v6

    invoke-static {v0, v4, v5, v6, v7}, Lcom/vivo/speechsdk/common/utils/FileUtils;->readFile(Ljava/io/File;[BIJ)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    sub-int v6, v4, v5

    const/16 v7, 0x1400

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, p0, Lcom/vivo/speechsdk/module/net/http/MultiRequestBody;->d:[B

    invoke-interface {p1, v7, v5, v6}, Lm3/f;->write([BII)Lm3/f;

    invoke-interface {p1}, Lm3/f;->flush()V

    add-int/2addr v5, v6

    goto :goto_0

    :cond_1
    add-int/2addr v2, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " allReadSize "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MultiRequestBody"

    invoke-static {v5, v4}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    if-le v3, v4, :cond_0

    :cond_2
    return-void
.end method
