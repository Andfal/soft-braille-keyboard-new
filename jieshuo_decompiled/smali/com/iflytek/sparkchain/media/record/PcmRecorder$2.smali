.class Lcom/iflytek/sparkchain/media/record/PcmRecorder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/media/record/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/media/record/PcmRecorder;->setListener(Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

.field final synthetic val$listener:Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/media/record/PcmRecorder;Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$2;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    iput-object p2, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$2;->val$listener:Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffer([BII)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$2;->val$listener:Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;->onRecordBuffer([BII)V

    return-void
.end method

.method public onDecibel(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$2;->val$listener:Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;

    invoke-interface {v0, p1}, Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;->onDecibel(I)V

    return-void
.end method

.method public onError(Lcom/iflytek/sparkchain/media/speech/SpeechError;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$2;->val$listener:Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;

    check-cast p1, Lcom/iflytek/sparkchain/core/media/speech/SpeechError;

    invoke-interface {v0, p1}, Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;->onError(Lcom/iflytek/sparkchain/core/media/speech/SpeechError;)V

    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$2;->val$listener:Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;

    invoke-interface {v0}, Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;->onRecordReleased()V

    return-void
.end method

.method public onStart(Z)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$2;->val$listener:Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;

    invoke-interface {v0, p1}, Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;->onRecordStarted(Z)V

    return-void
.end method
