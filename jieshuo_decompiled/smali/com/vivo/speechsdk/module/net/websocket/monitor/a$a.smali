.class Lcom/vivo/speechsdk/module/net/websocket/monitor/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/net/websocket/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/websocket/monitor/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/monitor/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a(Lcom/vivo/speechsdk/module/net/websocket/monitor/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0x2712

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->b(Lcom/vivo/speechsdk/module/net/websocket/monitor/a;)V

    return-void
.end method

.method public onPing(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a(Lcom/vivo/speechsdk/module/net/websocket/monitor/a;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2713

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPong(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$a;->a:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a(Lcom/vivo/speechsdk/module/net/websocket/monitor/a;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2714

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
