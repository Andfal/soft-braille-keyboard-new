.class Lcom/vivo/speechsdk/module/player/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/player/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/player/c;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/player/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "PcmPlayer"

    const/16 v2, 0x64

    const/16 v3, 0xa

    const/16 v4, 0xd

    const/16 v5, 0x8

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->a(Lcom/vivo/speechsdk/module/player/c;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->b(Lcom/vivo/speechsdk/module/player/c;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->j(Lcom/vivo/speechsdk/module/player/c;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_6

    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->m(Lcom/vivo/speechsdk/module/player/c;)Z

    move-result v9

    const/16 v11, 0xe

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    const/4 v10, 0x5

    invoke-static {v9, v10}, Lcom/vivo/speechsdk/module/player/c;->c(Lcom/vivo/speechsdk/module/player/c;I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->n(Lcom/vivo/speechsdk/module/player/c;)V

    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->o(Lcom/vivo/speechsdk/module/player/c;)[B

    move-result-object v9

    iget-object v10, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v10}, Lcom/vivo/speechsdk/module/player/c;->p(Lcom/vivo/speechsdk/module/player/c;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v10, v6}, Lcom/vivo/speechsdk/module/player/c;->b(Lcom/vivo/speechsdk/module/player/c;Z)Z

    iget-object v10, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v10}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v10

    const/16 v12, 0x9

    invoke-virtual {v10, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    iget-object v10, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v10}, Lcom/vivo/speechsdk/module/player/c;->r(Lcom/vivo/speechsdk/module/player/c;)Landroid/media/AudioTrack;

    move-result-object v10

    array-length v12, v9

    invoke-virtual {v10, v9, v6, v12}, Landroid/media/AudioTrack;->write([BII)I

    move-result v10

    iget-object v12, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    array-length v9, v9

    invoke-static {v12, v9, v10}, Lcom/vivo/speechsdk/module/player/c;->a(Lcom/vivo/speechsdk/module/player/c;II)V

    add-int/2addr v0, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v12, v9, v7

    const-wide/16 v14, 0x1f4

    cmp-long v16, v12, v14

    if-ltz v16, :cond_0

    iget-object v7, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v7}, Lcom/vivo/speechsdk/module/player/c;->c(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/IBuffer;

    move-result-object v7

    invoke-interface {v7}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getPosition()I

    move-result v7

    invoke-static {v7}, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->getAudioInfo(I)Lcom/vivo/speechsdk/module/api/player/AudioFrame;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v8, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v8}, Lcom/vivo/speechsdk/module/player/c;->r(Lcom/vivo/speechsdk/module/player/c;)Landroid/media/AudioTrack;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v8

    iget-object v12, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v12}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v11, v8, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    move-wide v7, v9

    goto/16 :goto_0

    :cond_3
    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->d(Lcom/vivo/speechsdk/module/player/c;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->c(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/IBuffer;

    move-result-object v9

    invoke-interface {v9}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->isBuffering()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    const/4 v10, 0x6

    invoke-static {v9, v10}, Lcom/vivo/speechsdk/module/player/c;->c(Lcom/vivo/speechsdk/module/player/c;I)Z

    move-result v9

    if-eqz v9, :cond_0

    const-wide/16 v9, 0xa

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :cond_4
    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->c(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/IBuffer;

    move-result-object v9

    invoke-interface {v9}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getSize()I

    move-result v9

    iget-object v12, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v12}, Lcom/vivo/speechsdk/module/player/c;->c(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/IBuffer;

    move-result-object v12

    invoke-interface {v12}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getPosition()I

    move-result v12

    if-ne v9, v12, :cond_0

    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->r(Lcom/vivo/speechsdk/module/player/c;)Landroid/media/AudioTrack;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v9

    iget-object v12, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v12}, Lcom/vivo/speechsdk/module/player/c;->e(Lcom/vivo/speechsdk/module/player/c;)I

    move-result v12

    div-int/2addr v12, v5

    div-int v12, v0, v12

    if-lt v9, v12, :cond_5

    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9, v10}, Lcom/vivo/speechsdk/module/player/c;->a(Lcom/vivo/speechsdk/module/player/c;I)V

    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->c(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/IBuffer;

    move-result-object v9

    invoke-interface {v9}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getPosition()I

    move-result v9

    invoke-static {v9}, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->getAudioInfo(I)Lcom/vivo/speechsdk/module/api/player/AudioFrame;

    move-result-object v9

    if-eqz v9, :cond_0

    iput v2, v9, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mPercent:I

    iget-object v10, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v10}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v11, v12, v6, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    :goto_1
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_0

    :cond_5
    :try_start_1
    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->r(Lcom/vivo/speechsdk/module/player/c;)Landroid/media/AudioTrack;

    move-result-object v9

    invoke-static {}, Lcom/vivo/speechsdk/module/player/c;->b()[B

    move-result-object v13

    invoke-static {}, Lcom/vivo/speechsdk/module/player/c;->b()[B

    move-result-object v14

    array-length v14, v14

    invoke-virtual {v9, v13, v6, v14}, Landroid/media/AudioTrack;->write([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catch_0
    :try_start_2
    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9, v10}, Lcom/vivo/speechsdk/module/player/c;->a(Lcom/vivo/speechsdk/module/player/c;I)V

    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->c(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/IBuffer;

    move-result-object v9

    invoke-interface {v9}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getPosition()I

    move-result v9

    invoke-static {v9}, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->getAudioInfo(I)Lcom/vivo/speechsdk/module/api/player/AudioFrame;

    move-result-object v9

    if-eqz v9, :cond_0

    iput v2, v9, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mPercent:I

    iget-object v10, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v10}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v11, v12, v6, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    goto :goto_1

    :cond_6
    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->f(Lcom/vivo/speechsdk/module/player/c;)I

    move-result v9

    const/4 v11, 0x3

    if-ne v9, v11, :cond_7

    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->g(Lcom/vivo/speechsdk/module/player/c;)V

    goto/16 :goto_0

    :cond_7
    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->f(Lcom/vivo/speechsdk/module/player/c;)I

    move-result v9

    if-eq v9, v10, :cond_8

    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->f(Lcom/vivo/speechsdk/module/player/c;)I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_0

    :cond_8
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v9, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v9}, Lcom/vivo/speechsdk/module/player/c;->h(Lcom/vivo/speechsdk/module/player/c;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->i(Lcom/vivo/speechsdk/module/player/c;)V

    const-string v0, "PcmPlayer"

    const-string v7, "PcmPlayer stopped"

    invoke-static {v0, v7}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->k(Lcom/vivo/speechsdk/module/player/c;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->f(Lcom/vivo/speechsdk/module/player/c;)I

    move-result v0

    if-ne v0, v5, :cond_a

    :cond_9
    const-string v0, "PcmPlayer"

    const-string v2, "internal release"

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0, v6}, Lcom/vivo/speechsdk/module/player/c;->a(Lcom/vivo/speechsdk/module/player/c;Z)V

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :cond_b
    :try_start_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    :try_start_6
    const-string v2, "PcmPlayer"

    const-string v7, "unknown error "

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0x66

    invoke-virtual {v2, v3, v7, v6, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->k(Lcom/vivo/speechsdk/module/player/c;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->f(Lcom/vivo/speechsdk/module/player/c;)I

    move-result v0

    if-ne v0, v5, :cond_d

    :cond_c
    const-string v0, "PcmPlayer"

    const-string v2, "internal release"

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0, v6}, Lcom/vivo/speechsdk/module/player/c;->a(Lcom/vivo/speechsdk/module/player/c;Z)V

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v2, "PcmPlayer"

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->k(Lcom/vivo/speechsdk/module/player/c;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->f(Lcom/vivo/speechsdk/module/player/c;)I

    move-result v0

    if-ne v0, v5, :cond_f

    :cond_e
    const-string v0, "PcmPlayer"

    const-string v2, "internal release"

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0, v6}, Lcom/vivo/speechsdk/module/player/c;->a(Lcom/vivo/speechsdk/module/player/c;Z)V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_8
    const-string v2, "PcmPlayer"

    const-string v7, "w"

    invoke-static {v2, v7, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v0

    const-string v2, "buffer could not be created"

    const/16 v7, 0x65

    invoke-virtual {v0, v3, v7, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->k(Lcom/vivo/speechsdk/module/player/c;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->f(Lcom/vivo/speechsdk/module/player/c;)I

    move-result v0

    if-ne v0, v5, :cond_11

    :cond_10
    const-string v0, "PcmPlayer"

    const-string v2, "internal release"

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0, v6}, Lcom/vivo/speechsdk/module/player/c;->a(Lcom/vivo/speechsdk/module/player/c;Z)V

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_4
    :try_start_9
    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v0

    const-string v7, "Illegal Argument "

    invoke-virtual {v0, v3, v2, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->k(Lcom/vivo/speechsdk/module/player/c;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->f(Lcom/vivo/speechsdk/module/player/c;)I

    move-result v0

    if-ne v0, v5, :cond_13

    :cond_12
    const-string v0, "PcmPlayer"

    const-string v2, "internal release"

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0, v6}, Lcom/vivo/speechsdk/module/player/c;->a(Lcom/vivo/speechsdk/module/player/c;Z)V

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exit !!! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PcmPlayer"

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_3
    iget-object v2, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/player/c;->q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/player/c;->k(Lcom/vivo/speechsdk/module/player/c;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/player/c;->f(Lcom/vivo/speechsdk/module/player/c;)I

    move-result v2

    if-ne v2, v5, :cond_15

    :cond_14
    const-string v2, "PcmPlayer"

    const-string v3, "internal release"

    invoke-static {v2, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/vivo/speechsdk/module/player/c$a;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v2, v6}, Lcom/vivo/speechsdk/module/player/c;->a(Lcom/vivo/speechsdk/module/player/c;Z)V

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exit !!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PcmPlayer"

    invoke-static {v3, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
