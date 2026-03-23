.class public Lcom/iflytek/sparkchain/media/PcmPlayerHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/media/MediaPlayerHelper;
.implements Lcom/iflytek/sparkchain/media/PcmPlayerWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/media/PcmPlayerHelper$Holder;
    }
.end annotation


# instance fields
.field private isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mBuffer:Lcom/iflytek/sparkchain/media/record/a;

.field private mContext:Landroid/content/Context;

.field private mPlayer:Lcom/iflytek/sparkchain/media/player/b;

.field private totalPercent:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->totalPercent:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private doInitPlayer(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    if-nez p1, :cond_0

    new-instance p1, Lcom/iflytek/sparkchain/media/player/b;

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/sparkchain/media/player/b;-><init>(Landroid/content/Context;IZZZ)V

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    :cond_0
    iget-object p1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static getInst()Lcom/iflytek/sparkchain/media/PcmPlayerHelper;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper$Holder;->access$000()Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/iflytek/sparkchain/media/player/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->doInitPlayer(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {p1, p2}, Lcom/iflytek/sparkchain/media/player/b;->setListener(Lcom/iflytek/sparkchain/media/player/c;)V

    return-void
.end method

.method public initPlayer(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->doInitPlayer(Landroid/content/Context;)V

    return-void
.end method

.method public isInit()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/b;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/b;->pause()Z

    :cond_0
    return-void
.end method

.method public play()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/b;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/b;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/b;->stop()Z

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/media/player/b;->play(Lcom/iflytek/sparkchain/media/record/a;)Z
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AEE"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/media/player/b;->stop()Z

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/media/player/b;->release()V

    :cond_0
    iput-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public resetBuffer(I)V
    .locals 7

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mContext:Landroid/content/Context;

    const/16 v3, 0x3e80

    if-gtz p1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, p1

    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x64

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/sparkchain/media/record/a;->reset(Landroid/content/Context;IILjava/lang/String;I)V

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/record/a;->deleteFile()V

    goto :goto_2

    :cond_2
    new-instance v6, Lcom/iflytek/sparkchain/media/record/a;

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mContext:Landroid/content/Context;

    const/16 v2, 0x3e80

    if-gtz p1, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    move v3, p1

    :goto_1
    const/4 v4, 0x0

    const/16 v5, 0x64

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/iflytek/sparkchain/media/record/a;-><init>(Landroid/content/Context;IILjava/lang/String;I)V

    iput-object v6, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    :goto_2
    return-void
.end method

.method public resetPercent(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->totalPercent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/b;->resume()Z

    :cond_0
    return-void
.end method

.method public setLocalDataSize(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->resetBuffer(I)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/media/record/a;->setMaxFileSize(I)V

    return-void
.end method

.method public declared-synchronized startPlay(Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p1, -0x1

    return p1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/media/player/b;->setListener(Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;)V

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mPlayer:Lcom/iflytek/sparkchain/media/player/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/b;->stop()Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->resetBuffer(I)V

    return-void
.end method

.method public write(Ljava/util/ArrayList;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;II)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->totalPercent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/iflytek/sparkchain/media/record/a;->writeStream(Ljava/util/ArrayList;III)Z

    move-result p1

    return p1
.end method

.method public write([BII)Z
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->totalPercent:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/iflytek/sparkchain/media/record/a;->writeStream(Ljava/util/ArrayList;III)Z

    move-result p1

    return p1
.end method
