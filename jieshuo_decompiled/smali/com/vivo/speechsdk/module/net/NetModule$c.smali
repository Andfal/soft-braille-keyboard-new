.class Lcom/vivo/speechsdk/module/net/NetModule$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/INetFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/NetModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/net/NetModule;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/NetModule;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/NetModule$c;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHttpClient()Lcom/vivo/speechsdk/module/api/net/IHttp;
    .locals 2

    new-instance v0, Lcom/vivo/speechsdk/module/net/http/HttpClient;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/NetModule$c;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/net/NetModule;->b(Lcom/vivo/speechsdk/module/net/NetModule;)Ly2/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/module/net/http/HttpClient;-><init>(Ly2/OkHttpClient;)V

    return-object v0
.end method

.method public createNetworkState()Lcom/vivo/speechsdk/module/api/net/INetworkState;
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/module/net/utils/e;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/net/utils/e;-><init>()V

    return-object v0
.end method

.method public createWebSocket(Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;Lcom/vivo/speechsdk/module/api/net/IHostSelector;Landroid/os/Looper;II)Lcom/vivo/speechsdk/module/api/net/IWebSocket;
    .locals 10

    const/4 v0, 0x2

    if-ne v0, p4, :cond_0

    new-instance p4, Lcom/vivo/speechsdk/module/net/websocket/h;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/NetModule$c;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/NetModule;->c(Lcom/vivo/speechsdk/module/net/NetModule;)Lcom/vivo/speechsdk/module/net/websocket/f;

    move-result-object v2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/NetModule$c;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/NetModule;->b(Lcom/vivo/speechsdk/module/net/NetModule;)Ly2/OkHttpClient;

    move-result-object v3

    move-object v1, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/vivo/speechsdk/module/net/websocket/h;-><init>(Lcom/vivo/speechsdk/module/net/websocket/f;Ly2/OkHttpClient;Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;Lcom/vivo/speechsdk/module/api/net/IHostSelector;Landroid/os/Looper;I)V

    return-object p4

    :cond_0
    new-instance p3, Lcom/vivo/speechsdk/module/net/websocket/e;

    iget-object p4, p0, Lcom/vivo/speechsdk/module/net/NetModule$c;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-static {p4}, Lcom/vivo/speechsdk/module/net/NetModule;->c(Lcom/vivo/speechsdk/module/net/NetModule;)Lcom/vivo/speechsdk/module/net/websocket/f;

    move-result-object v5

    iget-object p4, p0, Lcom/vivo/speechsdk/module/net/NetModule$c;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-static {p4}, Lcom/vivo/speechsdk/module/net/NetModule;->b(Lcom/vivo/speechsdk/module/net/NetModule;)Ly2/OkHttpClient;

    move-result-object v6

    move-object v4, p3

    move-object v7, p1

    move-object v8, p2

    move v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/vivo/speechsdk/module/net/websocket/e;-><init>(Lcom/vivo/speechsdk/module/net/websocket/f;Ly2/OkHttpClient;Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;Lcom/vivo/speechsdk/module/api/net/IHostSelector;I)V

    return-object p3
.end method

.method public getDnsFinder()Lcom/vivo/speechsdk/module/api/net/IDnsFinder;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/NetModule$c;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/NetModule;->d(Lcom/vivo/speechsdk/module/net/NetModule;)Lcom/vivo/speechsdk/module/net/OkHttpDns;

    move-result-object v0

    return-object v0
.end method

.method public getDomain(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/f;->b()Lcom/vivo/speechsdk/module/net/utils/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/net/utils/f;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/f;->b()Lcom/vivo/speechsdk/module/net/utils/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/net/utils/f;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNetMonitor()Lcom/vivo/speechsdk/module/api/net/INetMonitor;
    .locals 3

    const-class v0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/NetModule$c;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-static {}, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->a()Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/module/net/NetModule;->a(Lcom/vivo/speechsdk/module/net/NetModule;Lcom/vivo/speechsdk/module/net/websocket/monitor/b;)Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/NetModule$c;->a:Lcom/vivo/speechsdk/module/net/NetModule;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/net/NetModule;->e(Lcom/vivo/speechsdk/module/net/NetModule;)Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
