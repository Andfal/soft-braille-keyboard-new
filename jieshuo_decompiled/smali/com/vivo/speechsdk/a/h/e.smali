.class public Lcom/vivo/speechsdk/a/h/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/asr/api/IVadListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final c:I = 0x66

.field private static final d:I = 0x67

.field private static final e:I = 0x68


# instance fields
.field private a:Lcom/vivo/speechsdk/asr/api/IVadListener;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/a/h/e;->b:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/h/e;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lcom/vivo/speechsdk/asr/api/IVadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/h/e;->a:Lcom/vivo/speechsdk/asr/api/IVadListener;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/e;->a:Lcom/vivo/speechsdk/asr/api/IVadListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, p1}, Lcom/vivo/speechsdk/asr/api/IVadListener;->onVadData([BI)V

    goto :goto_0

    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {v0, v2, p1}, Lcom/vivo/speechsdk/asr/api/IVadListener;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/asr/api/IVadListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/e;->a:Lcom/vivo/speechsdk/asr/api/IVadListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/e;->a:Lcom/vivo/speechsdk/asr/api/IVadListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/asr/api/IVadListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/e;->b:Landroid/os/Handler;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/e;->a:Lcom/vivo/speechsdk/asr/api/IVadListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/e;->a:Lcom/vivo/speechsdk/asr/api/IVadListener;

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/asr/api/IVadListener;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/e;->b:Landroid/os/Handler;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVadData([BI)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/e;->a:Lcom/vivo/speechsdk/asr/api/IVadListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/e;->a:Lcom/vivo/speechsdk/asr/api/IVadListener;

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/asr/api/IVadListener;->onVadData([BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/e;->b:Landroid/os/Handler;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method
