.class public Lcom/iflytek/sparkchain/core/asr/AudioAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bitdepth:I

.field private channels:I

.field private encoding:Ljava/lang/String;

.field private frameSize:I

.field private sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->sampleRate:I

    const-string v0, "raw"

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->encoding:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->channels:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->bitdepth:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->frameSize:I

    return-void
.end method


# virtual methods
.method public getBitdepth()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->bitdepth:I

    return v0
.end method

.method public getChannels()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->channels:I

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameSize()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->frameSize:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->sampleRate:I

    return v0
.end method

.method public setBitdepth(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->bitdepth:I

    return-void
.end method

.method public setChannels(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->channels:I

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFrameSize(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->frameSize:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->sampleRate:I

    return-void
.end method
