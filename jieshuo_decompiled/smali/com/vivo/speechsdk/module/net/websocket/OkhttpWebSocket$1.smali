.class Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;
.super Ly2/g0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-direct {p0}, Ly2/g0;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Ly2/f0;ILjava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->d(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->c(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OkhttpWebSocket"

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onClosed(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->e(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/net/websocket/d;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/vivo/speechsdk/module/net/websocket/d;->onClosed(ILjava/lang/String;)V

    return-void
.end method

.method public onClosing(Ly2/f0;ILjava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->d(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->c(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OkhttpWebSocket"

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onClosing(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->e(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/net/websocket/d;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/vivo/speechsdk/module/net/websocket/d;->onClosing(ILjava/lang/String;)V

    return-void
.end method

.method public onFailure(Ly2/f0;Ljava/lang/Throwable;Ly2/Response;)V
    .locals 7

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->d(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->c(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OkhttpWebSocket"

    invoke-interface {p1, v2, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-virtual {p1, p3}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(Ly2/Response;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    move-result-object v0

    const/4 v3, 0x0

    if-nez p3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ly2/Response;->g()I

    move-result v4

    :goto_1
    invoke-virtual {v0, p2, v4, p1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/module/net/websocket/a;->onConnectFailed(Ljava/lang/Throwable;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->d(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onConnectFailed | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->c(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    iget v0, v0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    const/16 v1, 0x40

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->destroy()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->e(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/net/websocket/d;

    move-result-object v0

    if-nez p3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p3}, Ly2/Response;->g()I

    move-result v3

    :goto_3
    invoke-virtual {v0, p2, v3, p1}, Lcom/vivo/speechsdk/module/net/websocket/d;->onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onMessage(Ly2/f0;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    iget-boolean v0, p1, Lcom/vivo/speechsdk/module/net/websocket/a;->i:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->d(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessage String "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->c(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OkhttpWebSocket"

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->e(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/net/websocket/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/d;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Ly2/f0;Lm3/h;)V
    .locals 2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    iget-boolean v0, p1, Lcom/vivo/speechsdk/module/net/websocket/a;->i:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->d(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessage bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->c(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OkhttpWebSocket"

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    move-result-object p1

    invoke-virtual {p2}, Lm3/h;->w()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onMessage([B)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->e(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/net/websocket/d;

    move-result-object p1

    invoke-virtual {p2}, Lm3/h;->w()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/d;->onMessage([B)V

    :cond_1
    return-void
.end method

.method public onOpen(Ly2/f0;Ly2/Response;)V
    .locals 4

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onOpen(Z)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->b(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {p2, v1, v2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;J)J

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    const/16 v1, 0xa

    invoke-virtual {p2, v1}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->d(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "OkhttpWebSocket"

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOpen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->c(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    iget v3, v3, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->e(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/net/websocket/d;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/module/net/websocket/d;->onOpen(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p2, v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->a(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;J)J

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->d(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "OkhttpWebSocket"

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpen but user not started, don\'t notify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->c(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    iget v2, v2, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-virtual {p2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->isIdle()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->d(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "OkhttpWebSocket"

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpen but already idle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->c(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-virtual {p2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->destroy()V

    :goto_0
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;->a:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/net/websocket/a;->onConnectSuccess()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p2
.end method
