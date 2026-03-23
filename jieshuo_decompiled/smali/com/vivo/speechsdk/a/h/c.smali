.class public Lcom/vivo/speechsdk/a/h/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final d:I = 0x66

.field private static final e:I = 0x67

.field private static final f:I = 0x68

.field private static final g:I = 0x69

.field private static final h:I = 0x6a

.field private static final i:I = 0x6b

.field private static final j:I = 0x6c

.field private static final k:I = 0x6d

.field private static final l:I = 0x6e


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

.field private c:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/speechsdk/a/h/c;-><init>(Landroid/os/Looper;Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/vivo/speechsdk/a/h/c;->c:Landroid/os/Looper;

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/vivo/speechsdk/a/h/c;->c:Landroid/os/Looper;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/a/h/c;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onSpeechEnd(I)V

    goto :goto_0

    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onSpeechStart(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/vivo/speechsdk/api/SpeechError;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    goto :goto_0

    :pswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2, v3, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onEvent(ILandroid/os/Bundle;I)V

    goto :goto_0

    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onEnd(I)V

    goto :goto_0

    :pswitch_5
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2, v3, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onVolumeChanged(I[BI)V

    goto :goto_0

    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onRecordEnd(I)V

    goto :goto_0

    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onRecordStart(I)V

    goto :goto_0

    :pswitch_8
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v2, v3, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onResult(ILjava/lang/String;I)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEnd(I)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/h/c;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onEnd(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->a:Landroid/os/Handler;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Lcom/vivo/speechsdk/api/SpeechError;I)V
    .locals 4

    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2711

    invoke-virtual {v0, v3, v1, v2}, Lcom/vivo/speechsdk/b/i/b;->a(IILjava/lang/String;)V

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->error(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/h/c;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->a:Landroid/os/Handler;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/h/c;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onEvent(ILandroid/os/Bundle;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->a:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRecordEnd(I)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/h/c;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onRecordEnd(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->a:Landroid/os/Handler;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onRecordStart(I)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/h/c;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onRecordStart(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->a:Landroid/os/Handler;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResult(ILjava/lang/String;I)V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->track(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/h/c;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onResult(ILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSpeechEnd(I)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/h/c;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onSpeechEnd(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->a:Landroid/os/Handler;

    const/16 v1, 0x6e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSpeechStart(I)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/h/c;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onSpeechStart(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->a:Landroid/os/Handler;

    const/16 v1, 0x6d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVolumeChanged(I[BI)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/h/c;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->b:Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;->onVolumeChanged(I[BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/c;->a:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method
