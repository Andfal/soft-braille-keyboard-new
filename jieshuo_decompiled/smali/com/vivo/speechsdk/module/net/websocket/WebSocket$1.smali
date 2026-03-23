.class Lcom/vivo/speechsdk/module/net/websocket/WebSocket$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;


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

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPing(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->b(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onPing(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPong(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->e(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->d(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebSocket"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    :goto_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->b(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onPong(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->f(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/WebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->f(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x67

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
