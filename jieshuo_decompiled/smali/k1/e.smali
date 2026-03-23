.class public abstract Lk1/e;
.super Lk1/a;
.source "SourceFile"


# instance fields
.field private f:J

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    invoke-direct {p0, p1}, Lk1/a;-><init>(Ljava/io/File;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lk1/e;->f:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lk1/e;->g:Z

    return-void
.end method


# virtual methods
.method public c(Lk1/c;)V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lk1/c;->j()I

    move-result v0

    invoke-virtual {p1}, Lk1/c;->i()Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0x1a0

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v0, v1, v3, v3}, Lk1/a;->i(ILjava/util/Map;Ljava/lang/Throwable;Ljava/io/File;)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x12c

    if-le v0, v2, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/Exception;

    const-string v2, "response failed "

    invoke-direct {p1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, p1, v3}, Lk1/a;->i(ILjava/util/Map;Ljava/lang/Throwable;Ljava/io/File;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Content-Range"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iput-boolean v3, p0, Lk1/e;->g:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lk1/e;->f:J

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " HEADER_CONTENT_RANGE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RangeFileAsyncHttpRH"

    invoke-static {v3, v2}, Lv0/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lk1/c;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lk1/e;->n(Lk1/c;)[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, v2, p1}, Lk1/a;->d(ILjava/util/Map;Ljava/lang/String;[B)V

    :cond_3
    :goto_1
    return-void
.end method

.method public m(Ljava/net/HttpURLConnection;)V
    .locals 5

    iget-object v0, p0, Lk1/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk1/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk1/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lk1/e;->f:J

    :cond_0
    iget-wide v0, p0, Lk1/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk1/e;->g:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lk1/e;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Range"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected n(Lk1/c;)[B
    .locals 8

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lk1/c;->g()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Lk1/c;->a()J

    move-result-wide v1

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lk1/a;->k()Ljava/io/File;

    move-result-object v3

    iget-boolean v4, p0, Lk1/e;->g:Z

    invoke-direct {p1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/16 v3, 0x1000

    :try_start_1
    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v5, v6

    invoke-virtual {p1, v3, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v6, v5

    invoke-virtual {p0, v6, v7, v1, v2}, Lk1/a;->j(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
