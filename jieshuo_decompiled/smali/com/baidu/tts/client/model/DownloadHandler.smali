.class public Lcom/baidu/tts/client/model/DownloadHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOWNLOAD_SUCCESS:I


# instance fields
.field private a:Lw0/b;

.field private b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lw0/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ll0/f;

.field private d:Ly0/a;

.field private volatile e:Z

.field private f:Li1/a;

.field private g:Lcom/baidu/tts/client/model/RecordData;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Li1/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ly0/a;->a()Ly0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->d:Ly0/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->g:Lcom/baidu/tts/client/model/RecordData;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->f:Li1/a;

    return-void
.end method

.method private a()Lcom/baidu/tts/client/model/OnDownloadListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->a:Lw0/b;

    invoke-virtual {v0}, Lw0/b;->e()Lcom/baidu/tts/client/model/OnDownloadListener;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/baidu/tts/client/model/RecordData;

    iget-object v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->f:Li1/a;

    invoke-direct {v0, v1}, Lcom/baidu/tts/client/model/RecordData;-><init>(Li1/a;)V

    iput-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->g:Lcom/baidu/tts/client/model/RecordData;

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/baidu/tts/client/model/Statistics;->isStatistics:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->g:Lcom/baidu/tts/client/model/RecordData;

    iget-object v2, p0, Lcom/baidu/tts/client/model/DownloadHandler;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, v0}, Lcom/baidu/tts/client/model/RecordData;->setStartInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lcom/baidu/tts/client/model/DownloadHandler;->a()Lcom/baidu/tts/client/model/OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->e:Z

    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Lcom/baidu/tts/client/model/OnDownloadListener;->onStart(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    sget-boolean v0, Lcom/baidu/tts/client/model/Statistics;->isStatistics:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->g:Lcom/baidu/tts/client/model/RecordData;

    iget-object v2, p0, Lcom/baidu/tts/client/model/DownloadHandler;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/baidu/tts/client/model/RecordData;->setEndInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/baidu/tts/client/model/DownloadHandler;->a()Lcom/baidu/tts/client/model/OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->e:Z

    if-nez v1, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/baidu/tts/client/model/OnDownloadListener;->onFinish(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->a:Lw0/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lw0/b;->b(Lcom/baidu/tts/client/model/OnDownloadListener;)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/baidu/tts/client/model/Statistics;->isStatistics:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->g:Lcom/baidu/tts/client/model/RecordData;

    iget-object v2, p0, Lcom/baidu/tts/client/model/DownloadHandler;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/baidu/tts/client/model/RecordData;->setEndInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    sget-boolean p1, Lcom/baidu/tts/client/model/Statistics;->isStatistics:Z

    if-eqz p1, :cond_4

    new-instance p1, Lcom/baidu/tts/client/model/Statistics;

    iget-object p2, p0, Lcom/baidu/tts/client/model/DownloadHandler;->f:Li1/a;

    invoke-virtual {p2}, Li1/a;->p()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/baidu/tts/client/model/Statistics;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/baidu/tts/client/model/Statistics;->start()I

    move-result p1

    const-string p2, "DownloadHandler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " statistics ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method private a(Ljava/lang/String;JJ)V
    .locals 6

    invoke-direct {p0}, Lcom/baidu/tts/client/model/DownloadHandler;->a()Lcom/baidu/tts/client/model/OnDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->e:Z

    if-nez v1, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/baidu/tts/client/model/OnDownloadListener;->onProgress(Ljava/lang/String;JJ)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getDownloadParams()Lw0/b;
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->a:Lw0/b;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->c:Ll0/f;

    invoke-virtual {p0, v0}, Lcom/baidu/tts/client/model/DownloadHandler;->getErrorCode(Ll0/f;)I

    move-result v0

    return v0
.end method

.method public getErrorCode(Ll0/f;)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ll0/f;->b()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->c:Ll0/f;

    invoke-virtual {p0, v0}, Lcom/baidu/tts/client/model/DownloadHandler;->getErrorMessage(Ll0/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorMessage(Ll0/f;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ll0/f;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getModelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->a:Lw0/b;

    invoke-virtual {v0}, Lw0/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTtsError()Ll0/f;
    .locals 1

    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->c:Ll0/f;

    return-object v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadHandler"

    const-string v1, "reset"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset(Lw0/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/baidu/tts/client/model/DownloadHandler;->setDownloadParams(Lw0/b;)V

    invoke-virtual {p0}, Lcom/baidu/tts/client/model/DownloadHandler;->reset()V

    return-void
.end method

.method public setCheckFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lw0/a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->b:Ljava/util/concurrent/Future;

    return-void
.end method

.method public setDownloadParams(Lw0/b;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->a:Lw0/b;

    return-void
.end method

.method public setTtsError(Ll0/f;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->c:Ll0/f;

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadHandler"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->e:Z

    iget-object v1, p0, Lcom/baidu/tts/client/model/DownloadHandler;->b:Ljava/util/concurrent/Future;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v2, p0, Lcom/baidu/tts/client/model/DownloadHandler;->b:Ljava/util/concurrent/Future;

    :cond_0
    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->d:Ly0/a;

    invoke-virtual {v0, p0}, Ly0/a;->c(Lcom/baidu/tts/client/model/DownloadHandler;)V

    iget-object v0, p0, Lcom/baidu/tts/client/model/DownloadHandler;->a:Lw0/b;

    invoke-virtual {v0, v2}, Lw0/b;->b(Lcom/baidu/tts/client/model/OnDownloadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateFinish(Ljava/lang/String;Ll0/f;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/baidu/tts/client/model/DownloadHandler;->setTtsError(Ll0/f;)V

    invoke-virtual {p0}, Lcom/baidu/tts/client/model/DownloadHandler;->getErrorCode()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/baidu/tts/client/model/DownloadHandler;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public updateFinish(Ly0/d;Ll0/f;)V
    .locals 0

    invoke-virtual {p1}, Ly0/d;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/baidu/tts/client/model/DownloadHandler;->updateFinish(Ljava/lang/String;Ll0/f;)V

    return-void
.end method

.method public updateProgress(Ly0/d;)V
    .locals 6

    invoke-virtual {p1}, Ly0/d;->q()J

    move-result-wide v2

    invoke-virtual {p1}, Ly0/d;->k()J

    move-result-wide v4

    invoke-virtual {p1}, Ly0/d;->p()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/tts/client/model/DownloadHandler;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method public updateStart(Ly0/d;)V
    .locals 0

    invoke-virtual {p1}, Ly0/d;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/tts/client/model/DownloadHandler;->a(Ljava/lang/String;)V

    return-void
.end method
