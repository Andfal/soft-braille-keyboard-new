.class public Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/media/record/PcmRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private audioFormat:I

.field private audioSource:I

.field private bufferSize:I

.field private channel:S

.field private decibelListener:Lcom/iflytek/sparkchain/media/listener/DecibelListener;

.field private rate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->audioSource:I

    const/16 v1, 0x3e80

    iput v1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->rate:I

    iput-short v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->channel:S

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->audioFormat:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->bufferSize:I

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->audioSource:I

    return p0
.end method

.method static synthetic access$100(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->rate:I

    return p0
.end method

.method static synthetic access$200(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)S
    .locals 0

    iget-short p0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->channel:S

    return p0
.end method

.method static synthetic access$300(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->audioFormat:I

    return p0
.end method

.method static synthetic access$400(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->bufferSize:I

    return p0
.end method

.method public static build()Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->audioFormat:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->audioSource:I

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->bufferSize:I

    return v0
.end method

.method public getChannel()S
    .locals 1

    iget-short v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->channel:S

    return v0
.end method

.method public getDecibelListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->decibelListener:Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    return-object v0
.end method

.method public getRate()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->rate:I

    return v0
.end method

.method public setAudioFormat(I)Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->audioFormat:I

    return-object p0
.end method

.method public setAudioSource(I)Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->audioSource:I

    return-object p0
.end method

.method public setBufferSize(I)Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->bufferSize:I

    return-object p0
.end method

.method public setChannel(S)Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;
    .locals 0

    iput-short p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->channel:S

    return-object p0
.end method

.method public setDecibelListener(Lcom/iflytek/sparkchain/media/listener/DecibelListener;)Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->decibelListener:Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    return-object p0
.end method

.method public setRate(I)Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->rate:I

    return-object p0
.end method
