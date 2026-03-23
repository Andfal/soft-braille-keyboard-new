.class public interface abstract Lcom/vivo/speechsdk/module/api/asr/IASRService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract action(ILandroid/os/Bundle;)V
.end method

.method public abstract cancel()V
.end method

.method public abstract destroy()V
.end method

.method public abstract feedAudioData([BI)V
.end method

.method public abstract init(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;)I
.end method

.method public abstract isInit()Z
.end method

.method public abstract start(Landroid/os/Bundle;)I
.end method

.method public abstract stop()V
.end method

.method public abstract updateHotWord(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)V
.end method
