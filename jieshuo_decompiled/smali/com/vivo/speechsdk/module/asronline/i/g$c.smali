.class Lcom/vivo/speechsdk/module/asronline/i/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/WebSocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/asronline/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/asronline/i/g;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/asronline/i/g;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->d(Lcom/vivo/speechsdk/module/asronline/i/g;)Landroid/os/Handler;

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

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->d(Lcom/vivo/speechsdk/module/asronline/i/g;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 7

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/net/NetworkError;->getProfessionalNetworkCodeByThrowable(Ljava/lang/Throwable;)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/asronline/i/g;->e(Lcom/vivo/speechsdk/module/asronline/i/g;)I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/asronline/i/g;->c(Lcom/vivo/speechsdk/module/asronline/i/g;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "AsrWsService"

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] onFailure code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " msg "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, p1

    goto :goto_0

    :cond_0
    move-object v6, p3

    :goto_0
    invoke-static {p2, v6}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v3, p2}, Lcom/vivo/speechsdk/common/utils/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/asronline/i/g;->d(Lcom/vivo/speechsdk/module/asronline/i/g;)Landroid/os/Handler;

    move-result-object p2

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v2, p3, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x68

    invoke-virtual {p2, p3, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_1
    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/asronline/i/g;->c(Lcom/vivo/speechsdk/module/asronline/i/g;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "AsrWsService"

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] onFailure code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " msg "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, p1

    goto :goto_2

    :cond_2
    move-object v6, p3

    :goto_2
    invoke-static {p2, v6}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, v3, p2}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/asronline/i/g;->d(Lcom/vivo/speechsdk/module/asronline/i/g;)Landroid/os/Handler;

    move-result-object p2

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v2, p3, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x67

    invoke-virtual {p2, p3, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_1

    :goto_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->d(Lcom/vivo/speechsdk/module/asronline/i/g;)Landroid/os/Handler;

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

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->c(Lcom/vivo/speechsdk/module/asronline/i/g;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOpen("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsrWsService"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$c;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->d(Lcom/vivo/speechsdk/module/asronline/i/g;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
