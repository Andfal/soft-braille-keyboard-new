.class public Lcom/vivo/speechsdk/a/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final c:I = 0x66

.field private static final d:I = 0x67


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/a/h/d;->a:Landroid/os/Handler;

    iput-object p2, p0, Lcom/vivo/speechsdk/a/h/d;->b:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;

    new-instance p2, Landroid/os/Handler;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/vivo/speechsdk/a/h/d;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/d;->b:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x66

    if-eq v2, v3, :cond_2

    const/16 p1, 0x67

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;->onSuccess()V

    goto :goto_0

    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    new-instance v3, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v3, v2, p1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    :goto_0
    return v1
.end method

.method public onError(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1, p1, p2}, Lcom/vivo/speechsdk/b/i/b;->a(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/d;->b:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/d;->b:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;

    new-instance v1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v1, p1, p2}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/d;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/d;->b:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/d;->b:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;

    invoke-interface {v0}, Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/h/d;->a:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method
