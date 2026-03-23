.class public Lcom/vivo/speechsdk/api/UiResultListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/ResultListener;


# instance fields
.field private mAiLasrListener:Lcom/vivo/speechsdk/api/ResultListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/api/ResultListener;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/api/UiResultListener;->mAiLasrListener:Lcom/vivo/speechsdk/api/ResultListener;

    new-instance p1, Landroid/os/Handler;

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    :cond_0
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/api/UiResultListener;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/speechsdk/api/UiResultListener;)Lcom/vivo/speechsdk/api/ResultListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/api/UiResultListener;->mAiLasrListener:Lcom/vivo/speechsdk/api/ResultListener;

    return-object p0
.end method


# virtual methods
.method public onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/UiResultListener;->mAiLasrListener:Lcom/vivo/speechsdk/api/ResultListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/UiResultListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/api/UiResultListener;->mAiLasrListener:Lcom/vivo/speechsdk/api/ResultListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/api/ResultListener;->onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/api/UiResultListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/speechsdk/api/UiResultListener$2;

    invoke-direct {v1, p0, p1}, Lcom/vivo/speechsdk/api/UiResultListener$2;-><init>(Lcom/vivo/speechsdk/api/UiResultListener;Lcom/vivo/speechsdk/api/SpeechError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/UiResultListener;->mAiLasrListener:Lcom/vivo/speechsdk/api/ResultListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/UiResultListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/api/UiResultListener;->mAiLasrListener:Lcom/vivo/speechsdk/api/ResultListener;

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/ResultListener;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/api/UiResultListener;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/speechsdk/api/UiResultListener$1;

    invoke-direct {v1, p0}, Lcom/vivo/speechsdk/api/UiResultListener$1;-><init>(Lcom/vivo/speechsdk/api/UiResultListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setResultListener(Lcom/vivo/speechsdk/api/ResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/api/UiResultListener;->mAiLasrListener:Lcom/vivo/speechsdk/api/ResultListener;

    return-void
.end method
