.class public abstract Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;
.super Lcom/baidu/speech/utils/auth/ResponseHandler;
.source "SourceFile"


# static fields
.field protected static final BUFFER_SIZE:I = 0x1000

.field private static final LOG_TAG:Ljava/lang/String; = "FileAsyncHttpRH"


# instance fields
.field protected final append:Z

.field protected final file:Ljava/io/File;

.field protected frontendFile:Ljava/io/File;

.field protected final renameIfExists:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/speech/utils/auth/ResponseHandler;-><init>()V

    invoke-virtual {p0, p1}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->getTemporaryFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->append:Z

    iput-boolean p1, p0, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->renameIfExists:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;ZZ)V
    .locals 2

    invoke-direct {p0}, Lcom/baidu/speech/utils/auth/ResponseHandler;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "File passed into FileAsyncHttpResponseHandler constructor must not be null"

    invoke-static {v0, v1}, Lcom/baidu/speech/utils/auth/CommonUtility;->asserts(ZLjava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string v1, "Cannot create parent directories for requested File location"

    invoke-static {v0, v1}, Lcom/baidu/speech/utils/auth/CommonUtility;->asserts(ZLjava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Cannot create directories for requested Directory location, might not be a problem"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileAsyncHttpRH"

    invoke-static {v1, v0}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    iput-boolean p2, p0, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->append:Z

    iput-boolean p3, p0, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->renameIfExists:Z

    return-void
.end method


# virtual methods
.method public deleteTargetFile()Z
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getOriginalFile()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Target file is null, fatal!"

    invoke-static {v0, v1}, Lcom/baidu/speech/utils/auth/CommonUtility;->asserts(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->file:Ljava/io/File;

    return-object v0
.end method

.method public getTargetFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->frontendFile:Ljava/io/File;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->getTargetFileByParsingURL()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->frontendFile:Ljava/io/File;

    :cond_1
    iget-object v0, p0, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->frontendFile:Ljava/io/File;

    return-object v0
.end method

.method protected getTargetFileByParsingURL()Ljava/io/File;
    .locals 8

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "Target file is not a directory, cannot proceed"

    invoke-static {v0, v1}, Lcom/baidu/speech/utils/auth/CommonUtility;->asserts(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/ResponseHandler;->getRequestURI()Ljava/net/URI;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "RequestURI is null, cannot proceed"

    invoke-static {v0, v3}, Lcom/baidu/speech/utils/auth/CommonUtility;->asserts(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/ResponseHandler;->getRequestURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->renameIfExists:Z

    if-eqz v4, :cond_3

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, " (%d)"

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    :goto_2
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->getOriginalFile()Ljava/io/File;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-object v3
.end method

.method protected getTemporaryFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Tried creating temporary file without having Context"

    invoke-static {v0, v1}, Lcom/baidu/speech/utils/auth/CommonUtility;->asserts(ZLjava/lang/String;)V

    :try_start_0
    const-string v0, "temp_"

    const-string v1, "_handled"

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "Cannot create temporary file"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "FileAsyncHttpRH"

    invoke-static {v0, p1}, Lcom/baidu/speech/utils/LogUtil;->e(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onFailure(ILjava/util/Map;Ljava/lang/String;[BLjava/lang/Throwable;)V
    .locals 0
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

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p5, p3}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->onFailure(ILjava/util/Map;Ljava/lang/Throwable;Ljava/io/File;)V

    return-void
.end method

.method public abstract onFailure(ILjava/util/Map;Ljava/lang/Throwable;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Throwable;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation
.end method

.method public onProgress(JJ)V
    .locals 0

    return-void
.end method

.method public abstract onSuccess(ILjava/util/Map;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation
.end method

.method public onSuccess(ILjava/util/Map;Ljava/lang/String;[B)V
    .locals 0
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

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/speech/utils/auth/FileAsyncHttpResponseHandler;->onSuccess(ILjava/util/Map;Ljava/io/File;)V

    return-void
.end method
