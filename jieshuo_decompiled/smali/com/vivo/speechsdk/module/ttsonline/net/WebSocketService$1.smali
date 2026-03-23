.class Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$100(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Lcom/vivo/speechsdk/module/ttsonline/SocketListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/module/ttsonline/SocketListener;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$100(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Lcom/vivo/speechsdk/module/ttsonline/SocketListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/ttsonline/SocketListener;->onLowQuality(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$500(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closed code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TtsWsService"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$100(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Lcom/vivo/speechsdk/module/ttsonline/SocketListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/ttsonline/SocketListener;->onClosed(I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$300(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server closing code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$400(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TtsWsService"

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    const/16 v2, 0x3aff

    invoke-static {v1, v2, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$500(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;ILjava/lang/String;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_6
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$200(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpen | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TtsWsService"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$000(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;->this$0:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->access$100(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Lcom/vivo/speechsdk/module/ttsonline/SocketListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/ttsonline/SocketListener;->onOpen(I)V

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
