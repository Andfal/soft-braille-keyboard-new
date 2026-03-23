.class Lcom/vivo/speechsdk/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/d/b;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/b;->a(Lcom/vivo/speechsdk/d/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/b;->b(Lcom/vivo/speechsdk/d/b;)Landroid/os/Handler;

    move-result-object p1

    const v0, 0x9cb2

    const/4 v1, 0x0

    const/16 v2, 0x12e

    invoke-virtual {p1, v2, v0, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/b;->a(Lcom/vivo/speechsdk/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/b;->b(Lcom/vivo/speechsdk/d/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/b;->a(Lcom/vivo/speechsdk/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/b;->b(Lcom/vivo/speechsdk/d/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x134

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/b;->a(Lcom/vivo/speechsdk/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/b;->b(Lcom/vivo/speechsdk/d/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/b;->a(Lcom/vivo/speechsdk/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/b;->b(Lcom/vivo/speechsdk/d/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x135

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    const/4 v1, 0x0

    const-string v2, "play complete"

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/d/b;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/b;->b(Lcom/vivo/speechsdk/d/b;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public playProgress(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/d/b;->a(Lcom/vivo/speechsdk/d/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->obtain()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_percent"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_bpos"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_epos"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_frame_count"

    invoke-virtual {v0, p1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/d/b$a;->a:Lcom/vivo/speechsdk/d/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/d/b;->b(Lcom/vivo/speechsdk/d/b;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x132

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
