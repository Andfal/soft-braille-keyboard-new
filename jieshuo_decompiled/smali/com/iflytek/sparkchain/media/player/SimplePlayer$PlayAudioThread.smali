.class Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/media/player/SimplePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayAudioThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;


# direct methods
.method private constructor <init>(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/media/player/SimplePlayer;Lcom/iflytek/sparkchain/media/player/SimplePlayer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;-><init>(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$100(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;->onStart()V

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$200(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$300(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$300(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)I

    move-result v3

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v3, v4}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$302(Lcom/iflytek/sparkchain/media/player/SimplePlayer;I)I

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$400(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$100(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;->onStop()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$300(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$100(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;->onPause()V

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$500(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$300(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)I

    move-result v2

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$500(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Landroid/media/AudioTrack;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V

    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$500(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Landroid/media/AudioTrack;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$600(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)[B

    move-result-object v3

    iget-object v6, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v6}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$700(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)I

    move-result v6

    iget-object v7, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v7}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$800(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)I

    move-result v7

    invoke-virtual {v2, v3, v6, v7}, Landroid/media/AudioTrack;->write([BII)I

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$800(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$712(Lcom/iflytek/sparkchain/media/player/SimplePlayer;I)I

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$700(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)I

    move-result v2

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$600(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)[B

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-virtual {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->onPlayComplete()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_1
    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$200(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_3
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v3, v1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$302(Lcom/iflytek/sparkchain/media/player/SimplePlayer;I)I

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$500(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "AudioPlayer"

    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play media failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$200(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_8
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v3, v1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$302(Lcom/iflytek/sparkchain/media/player/SimplePlayer;I)I

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$500(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    if-eqz v1, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$500(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v1, v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$502(Lcom/iflytek/sparkchain/media/player/SimplePlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_5
    return-void

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :goto_3
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v3}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$200(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_a
    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v4, v1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$302(Lcom/iflytek/sparkchain/media/player/SimplePlayer;I)I

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$500(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$500(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Landroid/media/AudioTrack;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;->this$0:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-static {v1, v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->access$502(Lcom/iflytek/sparkchain/media/player/SimplePlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;

    :cond_6
    throw v2

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0
.end method
