.class public Lcom/unisound/common/u;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private a:Lcom/unisound/common/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p0, p1}, Lcom/unisound/common/u;->a(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/u;->a:Lcom/unisound/common/v;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/common/v;->a(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public removeSendMessage()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public sendMessage(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setMessageLisenter(Lcom/unisound/common/v;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/u;->a:Lcom/unisound/common/v;

    return-void
.end method
