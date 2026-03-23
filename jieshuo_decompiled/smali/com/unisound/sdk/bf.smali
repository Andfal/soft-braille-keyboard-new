.class Lcom/unisound/sdk/bf;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bb;


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/bb;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/16 v2, 0x14

    if-eq v0, v2, :cond_9

    const/16 v2, 0x4ba

    if-eq v0, v2, :cond_8

    const/16 v2, 0xc81

    if-eq v0, v2, :cond_7

    const/4 v2, 0x5

    const/16 v3, 0x453

    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x4b1

    if-eq v0, v2, :cond_1

    const/16 v2, 0x4b2

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-interface {v0, p1, v2}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x514

    invoke-interface {v0, v1, p1}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x517

    invoke-interface {v0, v1, p1}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xce5

    invoke-interface {v0, v1, p1}, Lcom/unisound/client/SpeechUnderstanderListener;->onError(ILjava/lang/String;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x44f

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    return-void

    :pswitch_4
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x462

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    return-void

    :pswitch_5
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x454

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x45d

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    return-void

    :pswitch_7
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x46b

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x450

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    return-void

    :pswitch_9
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v0, v4

    const/16 v2, 0x44e

    invoke-interface {p1, v2, v0}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1, v1}, Lcom/unisound/sdk/bb;->d(Lcom/unisound/sdk/bb;Z)Z

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->l(Lcom/unisound/sdk/bb;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-interface {p1, v3, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    return-void

    :pswitch_a
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x44d

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/unisound/client/SpeechUnderstanderListener;->onResult(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/unisound/client/SpeechUnderstanderListener;->onResult(ILjava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x463

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x45f

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x45e

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-interface {p1, v3, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_6
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    iget-object p1, p1, Lcom/unisound/sdk/bb;->v:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    iget-object p1, p1, Lcom/unisound/sdk/bb;->w:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    iget-object p1, p1, Lcom/unisound/sdk/bb;->x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;Z)Z

    return-void

    :cond_7
    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/unisound/client/SpeechUnderstanderListener;->onResult(ILjava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lcom/unisound/client/SpeechUnderstanderListener;->onResult(ILjava/lang/String;)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0x451

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->k(Lcom/unisound/sdk/bb;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/unisound/sdk/bf;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const/16 v0, 0xc1f

    invoke-interface {p1, v0, v1}, Lcom/unisound/client/SpeechUnderstanderListener;->onEvent(II)V

    :cond_b
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
