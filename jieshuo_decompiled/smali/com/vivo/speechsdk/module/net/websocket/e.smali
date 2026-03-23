.class public Lcom/vivo/speechsdk/module/net/websocket/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/IWebSocket;


# static fields
.field private static final h:Ljava/lang/String; = "WebSocketCompatible"


# instance fields
.field a:Lcom/vivo/speechsdk/module/net/websocket/f;

.field b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

.field c:Ly2/OkHttpClient;

.field d:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

.field e:Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;

.field f:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

.field g:I


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/f;Ly2/OkHttpClient;Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;Lcom/vivo/speechsdk/module/api/net/IHostSelector;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->a:Lcom/vivo/speechsdk/module/net/websocket/f;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->c:Ly2/OkHttpClient;

    iput-object p3, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->e:Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;

    iput-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->f:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    iput p5, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->g:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->cancel()V

    :cond_0
    return-void
.end method

.method public close(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->close(ILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized connect(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/utils/b;->a(Lcom/vivo/speechsdk/module/api/net/Req;)Ly2/Request;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->a:Lcom/vivo/speechsdk/module/net/websocket/f;

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v2

    invoke-virtual {v2}, Ly2/w;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->g:I

    invoke-virtual {v1, v2, v3}, Lcom/vivo/speechsdk/module/net/websocket/f;->a(Ljava/lang/String;I)Lcom/vivo/speechsdk/module/net/websocket/f$b;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    iput-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    goto :goto_0

    :cond_0
    const-string v1, "WebSocketCompatible"

    const-string v2, "find a available connection , but not same object"

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/Req;->preload()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "WebSocketCompatible"

    const-string p2, "find a available connection , do not reconnect"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    if-nez v1, :cond_3

    new-instance v1, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->a:Lcom/vivo/speechsdk/module/net/websocket/f;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->c:Ly2/OkHttpClient;

    iget-object v5, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->e:Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;

    iget-object v6, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->f:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/Req;->isCacheEnable()Z

    move-result v8

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/Req;->isRetryEnable()Z

    move-result v9

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/Req;->pingInterval()I

    move-result v10

    iget v11, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->g:I

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v11}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;-><init>(Lcom/vivo/speechsdk/module/net/websocket/f;Ly2/OkHttpClient;Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;Lcom/vivo/speechsdk/module/api/net/IHostSelector;Landroid/os/Looper;ZZII)V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->a:Lcom/vivo/speechsdk/module/net/websocket/f;

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/module/net/websocket/f;->a(Lcom/vivo/speechsdk/module/net/websocket/f$b;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create websocket | engine id = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->g:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WebSocketCompatible"

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->setIntoUse()V

    :goto_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->d:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->setWebSocketEventListener(Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    invoke-virtual {p1, v0, p2}, Lcom/vivo/speechsdk/module/net/websocket/a;->connect(Ly2/Request;Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public ping(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->ping(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public queueSize()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->send(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public send([B)Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->send([B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setEventListener(Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->d:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->start()V

    :cond_0
    return-void
.end method

.method public state()I
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/e;->b:Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
