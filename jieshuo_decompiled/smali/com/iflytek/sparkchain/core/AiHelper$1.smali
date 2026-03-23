.class Lcom/iflytek/sparkchain/core/AiHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/core/AiHelper;->record(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;Lcom/iflytek/sparkchain/core/AiRequest$Builder;Ljava/lang/String;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private endBuffer:[B

.field private index:I

.field final synthetic this$0:Lcom/iflytek/sparkchain/core/AiHelper;

.field final synthetic val$aiHandle:Lcom/iflytek/sparkchain/core/AiHandle;

.field final synthetic val$builder:Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

.field final synthetic val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/core/AiHelper;Lcom/iflytek/sparkchain/core/AiRequest$Builder;Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    iput-object p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    iput-object p3, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$aiHandle:Lcom/iflytek/sparkchain/core/AiHandle;

    iput-object p5, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$builder:Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->index:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->endBuffer:[B

    return-void
.end method


# virtual methods
.method public onDecibel(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$builder:Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getDecibelListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$builder:Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getDecibelListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/sparkchain/media/listener/DecibelListener;->onDecibel(I)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/iflytek/sparkchain/core/media/speech/SpeechError;)V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$000(Lcom/iflytek/sparkchain/core/AiHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record failure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/speech/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AEE"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$builder:Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getDecibelListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$builder:Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getDecibelListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/speech/SpeechError;->getErrorCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/speech/SpeechError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/iflytek/sparkchain/media/listener/DecibelListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRecordBuffer([BII)V
    .locals 2

    iget p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->index:I

    const/4 p3, 0x1

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    sget-object v0, Lcom/iflytek/sparkchain/core/DataStatus;->CONTINUE:Lcom/iflytek/sparkchain/core/DataStatus;

    invoke-virtual {p2, v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->dataStatus(Lcom/iflytek/sparkchain/core/DataStatus;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    sget-object v0, Lcom/iflytek/sparkchain/core/DataStatus;->BEGIN:Lcom/iflytek/sparkchain/core/DataStatus;

    invoke-virtual {p2, v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->dataStatus(Lcom/iflytek/sparkchain/core/DataStatus;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->audio(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;I)Ljava/lang/Object;

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    const-string v0, "audio"

    invoke-virtual {p2, v0, p2}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->desc(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest$Builder;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->build()Lcom/iflytek/sparkchain/core/AiRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$aiHandle:Lcom/iflytek/sparkchain/core/AiHandle;

    invoke-virtual {p2, v0, v1}, Lcom/iflytek/sparkchain/core/AiHelper;->write(Lcom/iflytek/sparkchain/core/AiRequest;Lcom/iflytek/sparkchain/core/AiHandle;)I

    move-result p2

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->endBuffer:[B

    iget p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->index:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->index:I

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "write failure "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->index:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AEE"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$builder:Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getDecibelListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$builder:Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getDecibelListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/iflytek/sparkchain/media/listener/DecibelListener;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onRecordReleased()V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$aiHandle:Lcom/iflytek/sparkchain/core/AiHandle;

    const-string v1, "AEE"

    if-nez v0, :cond_1

    const-string v0, "end failure 8305"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$builder:Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getDecibelListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$builder:Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getDecibelListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v1

    const/16 v2, 0x2071

    invoke-interface {v1, v2, v0}, Lcom/iflytek/sparkchain/media/listener/DecibelListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record onRecordReleased:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    sget-object v2, Lcom/iflytek/sparkchain/core/DataStatus;->END:Lcom/iflytek/sparkchain/core/DataStatus;

    invoke-virtual {v0, v2}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->dataStatus(Lcom/iflytek/sparkchain/core/DataStatus;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    iget-object v2, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->endBuffer:[B

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->audio(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    const-string v2, "status"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    const-string v2, "audio"

    invoke-virtual {v0, v2, v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->desc(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiRequest$Builder;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    iget-object v2, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$dataBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v2}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->build()Lcom/iflytek/sparkchain/core/AiRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$aiHandle:Lcom/iflytek/sparkchain/core/AiHandle;

    invoke-virtual {v0, v2, v3}, Lcom/iflytek/sparkchain/core/AiHelper;->write(Lcom/iflytek/sparkchain/core/AiRequest;Lcom/iflytek/sparkchain/core/AiHandle;)I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "record "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " write\u6210\u529f:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6700\u540e\u4e00\u5e27 failure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$builder:Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getDecibelListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiHelper$1;->val$builder:Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getDecibelListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/iflytek/sparkchain/media/listener/DecibelListener;->onError(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRecordStarted(Z)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "record onRecordStarted:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AEE"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
