.class Lcom/vivo/speechsdk/module/net/websocket/j/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/net/websocket/j/a;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/j/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/j/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/j/a;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a(Lcom/vivo/speechsdk/module/net/websocket/j/a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "FakeWebSocket"

    const-string v2, "stop...."

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/j/a;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/net/websocket/j/a;->b(Lcom/vivo/speechsdk/module/net/websocket/j/a;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x46

    int-to-long v2, v2

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/j/a;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/j/a;

    array-length v4, v1

    invoke-static {v3, v4}, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a(Lcom/vivo/speechsdk/module/net/websocket/j/a;I)I

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/j/a;

    array-length v1, v1

    invoke-static {v3, v1}, Lcom/vivo/speechsdk/module/net/websocket/j/a;->b(Lcom/vivo/speechsdk/module/net/websocket/j/a;I)I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    const-string v2, "FakeWebSocket"

    const-string v3, "send stoped !!!"

    invoke-static {v2, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/j/a;

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a(Lcom/vivo/speechsdk/module/net/websocket/j/a;Z)Z

    throw v1

    :catch_1
    :cond_1
    :goto_2
    const-string v1, "FakeWebSocket"

    const-string v2, "send stoped !!!"

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/j/a;

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a(Lcom/vivo/speechsdk/module/net/websocket/j/a;Z)Z

    return-void
.end method
