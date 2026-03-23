.class public Lcom/vivo/speechsdk/d/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/InitListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final c:I = 0x66

.field private static final d:I = 0x67


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/vivo/speechsdk/api/InitListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/d/f/a;->a:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/d/f/a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lcom/vivo/speechsdk/api/InitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/f/a;->b:Lcom/vivo/speechsdk/api/InitListener;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/a;->b:Lcom/vivo/speechsdk/api/InitListener;

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
    invoke-interface {v0}, Lcom/vivo/speechsdk/api/InitListener;->onSuccess()V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/api/InitListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    :goto_0
    return v1
.end method

.method public onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/a;->b:Lcom/vivo/speechsdk/api/InitListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/a;->b:Lcom/vivo/speechsdk/api/InitListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/api/InitListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/a;->a:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/a;->b:Lcom/vivo/speechsdk/api/InitListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/a;->b:Lcom/vivo/speechsdk/api/InitListener;

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/InitListener;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/a;->a:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void
.end method
