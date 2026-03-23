.class Lcom/vivo/speechsdk/tts/api/TTSEngine$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/tts/api/ISynthesizeProListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/tts/api/TTSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/tts/api/TTSEngine;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/tts/api/TTSEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferProgress(III[BI)V
    .locals 0

    iget-object p5, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p5}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p5}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p5

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;->onBufferProgress(III[B)V

    :cond_0
    return-void
.end method

.method public onEnd(I)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;->onEnd()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/vivo/speechsdk/api/SpeechError;I)V
    .locals 0

    iget-object p2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p2}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p2}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    :cond_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;I)V
    .locals 0

    iget-object p3, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p3}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p3}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onPlayCompleted(I)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;->onPlayCompleted()V

    :cond_0
    return-void
.end method

.method public onPlayProgress(IIII)V
    .locals 0

    iget-object p4, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p4}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p4}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p4

    invoke-interface {p4, p1, p2, p3}, Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;->onPlayProgress(III)V

    :cond_0
    return-void
.end method

.method public onSpeakBegin(I)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;->onSpeakBegin()V

    :cond_0
    return-void
.end method

.method public onSpeakPaused(I)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;->onSpeakPaused()V

    :cond_0
    return-void
.end method

.method public onSpeakResumed(I)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$3;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->c(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;->onSpeakResumed()V

    :cond_0
    return-void
.end method
