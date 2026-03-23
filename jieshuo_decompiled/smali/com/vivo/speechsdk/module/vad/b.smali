.class public Lcom/vivo/speechsdk/module/vad/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/vad/VadListener;
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/vivo/speechsdk/module/api/vad/VadListener;

.field private b:Landroid/os/Handler;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/api/vad/VadListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/vad/b;->c:I

    iput-object p1, p0, Lcom/vivo/speechsdk/module/vad/b;->a:Lcom/vivo/speechsdk/module/api/vad/VadListener;

    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->b:Landroid/os/Handler;

    iget v2, p0, Lcom/vivo/speechsdk/module/vad/b;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/vad/b;->d()V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Looper;II)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->b:Landroid/os/Handler;

    iput p2, p0, Lcom/vivo/speechsdk/module/vad/b;->d:I

    iput p3, p0, Lcom/vivo/speechsdk/module/vad/b;->e:I

    int-to-long p1, p2

    const/4 p3, 0x0

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/vad/b;->c:I

    return v0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput v1, p0, Lcom/vivo/speechsdk/module/vad/b;->c:I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->a:Lcom/vivo/speechsdk/module/api/vad/VadListener;

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/vivo/speechsdk/module/vad/b;->c:I

    invoke-interface {v0, p1, v1}, Lcom/vivo/speechsdk/module/api/vad/VadListener;->onVadEvent(II)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->a:Lcom/vivo/speechsdk/module/api/vad/VadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/vad/VadListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVadData([BI)V
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iput v0, p0, Lcom/vivo/speechsdk/module/vad/b;->c:I

    :cond_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/vad/b;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/vad/b;->d()V

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->a:Lcom/vivo/speechsdk/module/api/vad/VadListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/vad/VadListener;->onVadData([BI)V

    :cond_2
    return-void
.end method

.method public onVadEvent(II)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/b;->a:Lcom/vivo/speechsdk/module/api/vad/VadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/vad/VadListener;->onVadEvent(II)V

    :cond_0
    return-void
.end method
