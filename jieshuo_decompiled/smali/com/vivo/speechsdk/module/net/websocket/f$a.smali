.class final Lcom/vivo/speechsdk/module/net/websocket/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/net/websocket/f;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/f;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/f$a;->a:Lcom/vivo/speechsdk/module/net/websocket/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/f$a;->a:Lcom/vivo/speechsdk/module/net/websocket/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/vivo/speechsdk/module/net/websocket/f;->a(Lcom/vivo/speechsdk/module/net/websocket/f;J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/module/net/websocket/f;->a()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/vivo/speechsdk/module/net/websocket/f;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
