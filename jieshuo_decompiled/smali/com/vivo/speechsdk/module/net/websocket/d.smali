.class public Lcom/vivo/speechsdk/module/net/websocket/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/WebSocketListener;


# instance fields
.field private a:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lcom/vivo/speechsdk/module/api/net/WebSocketListener;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    return-object v0
.end method

.method public a(Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onClosed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/vivo/speechsdk/module/api/net/WebSocketListener;->onClosed(ILjava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onClosing(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/vivo/speechsdk/module/api/net/WebSocketListener;->onClosing(ILjava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/vivo/speechsdk/module/api/net/WebSocketListener;->onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/vivo/speechsdk/module/api/net/WebSocketListener;->onMessage(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onMessage([B)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/vivo/speechsdk/module/api/net/WebSocketListener;->onMessage([B)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onOpen(I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/d;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/vivo/speechsdk/module/api/net/WebSocketListener;->onOpen(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
