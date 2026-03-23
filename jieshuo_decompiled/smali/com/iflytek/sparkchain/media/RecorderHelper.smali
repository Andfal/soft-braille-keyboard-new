.class public Lcom/iflytek/sparkchain/media/RecorderHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/media/MediaRecorderHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/media/RecorderHelper$Params;,
        Lcom/iflytek/sparkchain/media/RecorderHelper$BaseParams;,
        Lcom/iflytek/sparkchain/media/RecorderHelper$Holder;
    }
.end annotation


# instance fields
.field protected pcmRecorder:Lcom/iflytek/sparkchain/media/record/PcmRecorder;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper;->pcmRecorder:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    return-void
.end method

.method public static genFrom(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)Lcom/iflytek/sparkchain/media/RecorderHelper$Params;
    .locals 2

    invoke-static {}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->builder()Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getAudioSource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;->source(I)Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;->rate(I)Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getChannel()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;->channel(S)Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getAudioFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;->format(I)Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;->size(I)Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->getDecibelListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;->listener(Lcom/iflytek/sparkchain/media/listener/DecibelListener;)Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params$Builder;->build()Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    move-result-object p0

    return-object p0
.end method

.method public static genFrom(Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;)Lcom/iflytek/sparkchain/media/record/b;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/media/RecorderHelper$1;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/media/RecorderHelper$1;-><init>(Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;)V

    return-object v0
.end method

.method public static getInst()Lcom/iflytek/sparkchain/media/RecorderHelper;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/media/RecorderHelper$Holder;->access$000()Lcom/iflytek/sparkchain/media/RecorderHelper;

    move-result-object v0

    return-object v0
.end method

.method private release()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper;->pcmRecorder:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->stopRecord(Z)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper;->pcmRecorder:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->releaseRecord()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper;->pcmRecorder:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    :cond_0
    return-void
.end method


# virtual methods
.method public init(Lcom/iflytek/sparkchain/media/RecorderHelper$Params;Lcom/iflytek/sparkchain/media/record/b;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper;->pcmRecorder:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-direct {v0, p1, p2}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;-><init>(Lcom/iflytek/sparkchain/media/RecorderHelper$Params;Lcom/iflytek/sparkchain/media/record/b;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/RecorderHelper;->pcmRecorder:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/RecorderHelper;->release()V

    return-void
.end method
