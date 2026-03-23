.class public Lcom/vivo/speechsdk/d/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

.field private c:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vivo/speechsdk/d/f/b;-><init>(Landroid/os/Looper;Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/vivo/speechsdk/d/f/b;->c:Landroid/os/Looper;

    new-instance p2, Landroid/os/Handler;

    if-nez p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_1
    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/vivo/speechsdk/d/f/b;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/d/f/b;)Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    return-void
.end method

.method public onBufferProgress(III[BI)V
    .locals 9

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/f/b;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onBufferProgress(III[BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->a:Landroid/os/Handler;

    new-instance v8, Lcom/vivo/speechsdk/d/f/b$a;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/vivo/speechsdk/d/f/b$a;-><init>(Lcom/vivo/speechsdk/d/f/b;III[BI)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onEnd(I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/f/b;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onEnd(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/speechsdk/d/f/b$i;

    invoke-direct {v1, p0, p1}, Lcom/vivo/speechsdk/d/f/b$i;-><init>(Lcom/vivo/speechsdk/d/f/b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Lcom/vivo/speechsdk/api/SpeechError;I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/f/b;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/speechsdk/d/f/b$h;

    invoke-direct {v1, p0, p1, p2}, Lcom/vivo/speechsdk/d/f/b$h;-><init>(Lcom/vivo/speechsdk/d/f/b;Lcom/vivo/speechsdk/api/SpeechError;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/f/b;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onEvent(ILandroid/os/Bundle;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/speechsdk/d/f/b$g;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/vivo/speechsdk/d/f/b$g;-><init>(Lcom/vivo/speechsdk/d/f/b;ILandroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlayCompleted(I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/f/b;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onPlayCompleted(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/speechsdk/d/f/b$f;

    invoke-direct {v1, p0, p1}, Lcom/vivo/speechsdk/d/f/b$f;-><init>(Lcom/vivo/speechsdk/d/f/b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onPlayProgress(IIII)V
    .locals 8

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/f/b;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onPlayProgress(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->a:Landroid/os/Handler;

    new-instance v7, Lcom/vivo/speechsdk/d/f/b$c;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/vivo/speechsdk/d/f/b$c;-><init>(Lcom/vivo/speechsdk/d/f/b;IIII)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSpeakBegin(I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/f/b;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onSpeakBegin(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/speechsdk/d/f/b$b;

    invoke-direct {v1, p0, p1}, Lcom/vivo/speechsdk/d/f/b$b;-><init>(Lcom/vivo/speechsdk/d/f/b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSpeakPaused(I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/f/b;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onSpeakPaused(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/speechsdk/d/f/b$d;

    invoke-direct {v1, p0, p1}, Lcom/vivo/speechsdk/d/f/b$d;-><init>(Lcom/vivo/speechsdk/d/f/b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSpeakResumed(I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/d/f/b;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->b:Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;->onSpeakResumed(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/d/f/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/vivo/speechsdk/d/f/b$e;

    invoke-direct {v1, p0, p1}, Lcom/vivo/speechsdk/d/f/b$e;-><init>(Lcom/vivo/speechsdk/d/f/b;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
