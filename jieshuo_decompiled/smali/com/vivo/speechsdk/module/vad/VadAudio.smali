.class public Lcom/vivo/speechsdk/module/vad/VadAudio;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FAKE2CHANNEL:I = 0x1

.field public static final REAL2CHANNEL:I


# instance fields
.field private beginMs:I

.field private endMs:I

.field private fake2ChannelFlag:I

.field private silence:S

.field private vadData:[S

.field private vadFlag:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I[S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->vadFlag:I

    iput-object p2, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->vadData:[S

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->vadFlag:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->vadData:[S

    iput v0, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->beginMs:I

    iput v0, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->endMs:I

    iput-short v0, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->silence:S

    iput v0, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->fake2ChannelFlag:I

    return-void
.end method

.method public getBeginMs()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->beginMs:I

    return v0
.end method

.method public getEndMs()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->endMs:I

    return v0
.end method

.method public getFake2ChannelFlag()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->fake2ChannelFlag:I

    return v0
.end method

.method public getSilence()S
    .locals 1

    iget-short v0, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->silence:S

    return v0
.end method

.method public getVadData()[S
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->vadData:[S

    return-object v0
.end method

.method public getVadFlag()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->vadFlag:I

    return v0
.end method

.method public setBeginMs(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->beginMs:I

    return-void
.end method

.method public setEndMs(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->endMs:I

    return-void
.end method

.method public setFake2ChannelFlag(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->fake2ChannelFlag:I

    return-void
.end method

.method public setSilence(S)V
    .locals 0

    iput-short p1, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->silence:S

    return-void
.end method

.method public setVadData([S)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->vadData:[S

    return-void
.end method

.method public setVadFlag(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/vad/VadAudio;->vadFlag:I

    return-void
.end method
