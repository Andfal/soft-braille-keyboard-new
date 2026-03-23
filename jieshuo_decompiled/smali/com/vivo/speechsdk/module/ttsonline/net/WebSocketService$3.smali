.class Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/WebSocketListener;


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

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$3;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$3;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$600(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onClosing(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$3;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$600(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/net/NetworkError;->getProfessionalNetworkCodeByThrowable(Ljava/lang/Throwable;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] onFailure code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " msg "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$3;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {p2, p3}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "TtsWsService"

    invoke-static {v1, p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$3;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$600(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Landroid/os/Handler;

    move-result-object p2

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$3;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v1, p3, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$700(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x68

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$3;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$600(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onMessage([B)V
    .locals 0

    return-void
.end method

.method public onOpen(I)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$3;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$600(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
