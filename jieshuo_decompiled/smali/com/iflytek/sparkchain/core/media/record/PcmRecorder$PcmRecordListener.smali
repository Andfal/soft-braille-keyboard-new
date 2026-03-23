.class public interface abstract Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/media/record/PcmRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PcmRecordListener"
.end annotation


# virtual methods
.method public abstract onDecibel(I)V
.end method

.method public abstract onError(Lcom/iflytek/sparkchain/core/media/speech/SpeechError;)V
.end method

.method public abstract onRecordBuffer([BII)V
.end method

.method public abstract onRecordReleased()V
.end method

.method public abstract onRecordStarted(Z)V
.end method
