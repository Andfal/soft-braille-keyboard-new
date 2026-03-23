.class public interface abstract Lcom/vivo/speechsdk/asr/api/IRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract destroy()V
.end method

.method public abstract doAction(ILandroid/os/Bundle;)V
.end method

.method public abstract feedAudioData([BI)V
.end method

.method public abstract isListening()Z
.end method

.method public abstract start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)I
.end method

.method public abstract stop()V
.end method

.method public abstract updateHotWord(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V
.end method
