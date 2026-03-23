.class Lcom/vivo/speechsdk/asr/api/ASREngine$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/asr/api/ASREngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/asr/api/ASREngine;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(I)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerListener;->onEnd()V

    :cond_0
    return-void
.end method

.method public onError(Lcom/vivo/speechsdk/api/SpeechError;I)V
    .locals 0

    iget-object p2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p2}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p2}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerListener;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    :cond_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;I)V
    .locals 0

    iget-object p3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p3}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p3}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/vivo/speechsdk/asr/api/IRecognizerListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onRecordEnd(I)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerListener;->onRecordEnd()V

    :cond_0
    return-void
.end method

.method public onRecordStart(I)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerListener;->onRecordStart()V

    :cond_0
    return-void
.end method

.method public onResult(ILjava/lang/String;I)V
    .locals 0

    iget-object p3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p3}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p3}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/vivo/speechsdk/asr/api/IRecognizerListener;->onResult(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSpeechEnd(I)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerListener;->onSpeechEnd()V

    :cond_0
    return-void
.end method

.method public onSpeechStart(I)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/asr/api/IRecognizerListener;->onSpeechStart()V

    :cond_0
    return-void
.end method

.method public onVolumeChanged(I[BI)V
    .locals 0

    iget-object p3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p3}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$6;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p3}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$900(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/vivo/speechsdk/asr/api/IRecognizerListener;->onVolumeChanged(I[B)V

    :cond_0
    return-void
.end method
