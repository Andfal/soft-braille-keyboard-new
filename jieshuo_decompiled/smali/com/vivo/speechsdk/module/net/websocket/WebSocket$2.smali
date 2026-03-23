.class Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x0

    const/16 v3, 0x67

    if-eq v0, v1, :cond_5

    const/16 v1, 0x66

    const/16 v4, 0xa

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->e(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    const-string v0, "WebSocket"

    const-string v1, "connect ping time out | reconnect"

    invoke-interface {p1, v0, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1, v4}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;I)I

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->h(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->request()Ly2/Request;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->i(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Ly2/g0;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;Ly2/Request;Ly2/g0;)Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;)Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->e(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    const-string v1, "WebSocket"

    const-string v3, "socket.close()"

    invoke-interface {v0, v1, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->close(ILjava/lang/String;)Z

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    monitor-enter v0

    :try_start_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0xb

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)I

    move-result p1

    if-ne p1, v1, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->e(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "WebSocket"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open by reuse 0 | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    iget v4, v4, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->d(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->g(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->e(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "WebSocket"

    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "open by reuse 1 | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    iget v8, v8, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " dur="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->d(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v5}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->h(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    move-result-object p1

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->i(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Ly2/g0;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->setListener(Ly2/g0;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->b(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onStart()V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->b(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onOpen(Z)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->j(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/module/net/websocket/d;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/module/net/websocket/d;->onOpen(I)V

    :cond_4
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1, v4}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;I)I

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_5
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->b(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;J)J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->h(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->detectLatency(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->f(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Landroid/os/Handler;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->f(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    :goto_1
    return v2
.end method
