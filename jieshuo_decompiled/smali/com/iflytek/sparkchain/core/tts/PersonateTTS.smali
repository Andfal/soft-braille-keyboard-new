.class public Lcom/iflytek/sparkchain/core/tts/PersonateTTS;
.super Lcom/iflytek/sparkchain/core/tts/TTS;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private native personateTTSCreate(Ljava/lang/String;)I
.end method

.method private native setTTSMaxTokens(II)V
.end method

.method private native setTTSOralLevel(ILjava/lang/String;)V
.end method

.method private native setTTSSparkAssist(IZ)V
.end method

.method private native setTTSTopK(II)V
.end method

.method private native setUrl(ILjava/lang/String;)V
.end method


# virtual methods
.method protected create(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/core/tts/PersonateTTS;->personateTTSCreate(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public maxTokens(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/PersonateTTS;->setTTSMaxTokens(II)V

    return-void
.end method

.method public oralLevel(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/PersonateTTS;->setTTSOralLevel(ILjava/lang/String;)V

    return-void
.end method

.method public sparkAssist(Z)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/PersonateTTS;->setTTSSparkAssist(IZ)V

    return-void
.end method

.method public topK(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/PersonateTTS;->setTTSTopK(II)V

    return-void
.end method

.method public url(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/PersonateTTS;->setUrl(ILjava/lang/String;)V

    return-void
.end method
