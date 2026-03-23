.class Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/NetQualityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$2;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public low(I)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$2;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$600(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public netInfo(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$2;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$600(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
