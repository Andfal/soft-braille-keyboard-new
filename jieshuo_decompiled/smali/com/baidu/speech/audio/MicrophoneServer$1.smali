.class Lcom/baidu/speech/audio/MicrophoneServer$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/audio/MicrophoneServer;-><init>(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/audio/MicrophoneServer;


# direct methods
.method constructor <init>(Lcom/baidu/speech/audio/MicrophoneServer;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v3}, Lcom/baidu/speech/audio/MicrophoneServer;->access$000(Lcom/baidu/speech/audio/MicrophoneServer;)Landroid/net/LocalServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v4}, Lcom/baidu/speech/audio/MicrophoneServer;->access$100(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;

    invoke-direct {v5, v3}, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;-><init>(Landroid/net/LocalSocket;)V

    iget-object v3, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v3}, Lcom/baidu/speech/audio/MicrophoneServer;->access$100(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/baidu/speech/audio/MicrophoneServer;->TAG:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add wrap socket, mRemoteOutputStreams size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v7}, Lcom/baidu/speech/audio/MicrophoneServer;->access$100(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " firstStart = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v7}, Lcom/baidu/speech/audio/MicrophoneServer;->access$200(Lcom/baidu/speech/audio/MicrophoneServer;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Lcom/baidu/speech/utils/LogUtil;->i(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v3}, Lcom/baidu/speech/audio/MicrophoneServer;->access$100(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v3}, Lcom/baidu/speech/audio/MicrophoneServer;->access$200(Lcom/baidu/speech/audio/MicrophoneServer;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v3, v1}, Lcom/baidu/speech/audio/MicrophoneServer;->access$202(Lcom/baidu/speech/audio/MicrophoneServer;Z)Z

    iget-object v3, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v3}, Lcom/baidu/speech/audio/MicrophoneServer;->access$300(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/io/DataInputStream;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    :try_start_2
    iget-object v3, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v3}, Lcom/baidu/speech/audio/MicrophoneServer;->access$300(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/io/DataInputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    iget-object v3, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v3, v0}, Lcom/baidu/speech/audio/MicrophoneServer;->access$302(Lcom/baidu/speech/audio/MicrophoneServer;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v3}, Lcom/baidu/speech/audio/MicrophoneServer;->access$400(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v6}, Lcom/baidu/speech/audio/MicrophoneServer;->access$500(Lcom/baidu/speech/audio/MicrophoneServer;)I

    move-result v6

    invoke-static {v3, v5, v6}, Lcom/baidu/speech/audio/MicrophoneServer;->access$600(Lcom/baidu/speech/audio/MicrophoneServer;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v3

    iget-object v5, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v5, v6}, Lcom/baidu/speech/audio/MicrophoneServer;->access$302(Lcom/baidu/speech/audio/MicrophoneServer;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;

    new-instance v3, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    :cond_1
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v3

    sget-object v4, Lcom/baidu/speech/audio/MicrophoneServer;->TAG:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mRemoteOutputStreams.size\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v7}, Lcom/baidu/speech/audio/MicrophoneServer;->access$100(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v1, v2}, Lcom/baidu/speech/audio/MicrophoneServer;->access$202(Lcom/baidu/speech/audio/MicrophoneServer;Z)Z

    iget-object v1, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v1}, Lcom/baidu/speech/audio/MicrophoneServer;->access$100(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    iget-object v2, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v2}, Lcom/baidu/speech/audio/MicrophoneServer;->access$100(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LocalSocket;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_2
    move-exception v4

    :try_start_7
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v2}, Lcom/baidu/speech/audio/MicrophoneServer;->access$100(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iget-object v1, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v1}, Lcom/baidu/speech/audio/MicrophoneServer;->access$300(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/io/DataInputStream;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_8
    iget-object v1, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v1}, Lcom/baidu/speech/audio/MicrophoneServer;->access$300(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/io/DataInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v1, v0}, Lcom/baidu/speech/audio/MicrophoneServer;->access$302(Lcom/baidu/speech/audio/MicrophoneServer;Ljava/io/DataInputStream;)Ljava/io/DataInputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    :try_start_9
    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v0}, Lcom/baidu/speech/audio/MicrophoneServer;->access$000(Lcom/baidu/speech/audio/MicrophoneServer;)Landroid/net/LocalServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    invoke-static {}, Lcom/baidu/speech/audio/MicrophoneServer;->access$700()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/baidu/speech/audio/MicrophoneServer;->access$700()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/speech/audio/MicrophoneServer$1;->this$0:Lcom/baidu/speech/audio/MicrophoneServer;

    invoke-static {v2}, Lcom/baidu/speech/audio/MicrophoneServer;->access$400(Lcom/baidu/speech/audio/MicrophoneServer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v1

    :catchall_2
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0
.end method
