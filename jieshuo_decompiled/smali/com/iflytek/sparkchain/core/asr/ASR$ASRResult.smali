.class public Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/asr/ASR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ASRResult"
.end annotation


# instance fields
.field private begin:I

.field private bestMatchText:Ljava/lang/String;

.field private end:I

.field private sid:Ljava/lang/String;

.field private status:I

.field final synthetic this$0:Lcom/iflytek/sparkchain/core/asr/ASR;

.field private transcriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/asr/Transcription;",
            ">;"
        }
    .end annotation
.end field

.field private vads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/asr/Vad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/core/asr/ASR;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->this$0:Lcom/iflytek/sparkchain/core/asr/ASR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBegin()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->begin:I

    return v0
.end method

.method public getBestMatchText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->bestMatchText:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->end:I

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->status:I

    return v0
.end method

.method public getTranscriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/asr/Transcription;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->transcriptions:Ljava/util/List;

    return-object v0
.end method

.method public getVads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/asr/Vad;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->vads:Ljava/util/List;

    return-object v0
.end method

.method public setBegin(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->begin:I

    return-void
.end method

.method public setBestMatchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->bestMatchText:Ljava/lang/String;

    return-void
.end method

.method public setEnd(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->end:I

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->sid:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->status:I

    return-void
.end method

.method public setTranscriptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/asr/Transcription;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->transcriptions:Ljava/util/List;

    return-void
.end method

.method public setVads(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/asr/Vad;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->vads:Ljava/util/List;

    return-void
.end method
