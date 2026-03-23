.class public Lcom/unisound/client/SpeechSynthesizer;
.super Lcom/unisound/sdk/au;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/sdk/au;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()I
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/au;->cancel()I

    move-result v0

    return v0
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/au;->getOption(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getStatus()I
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/au;->getStatus()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/au;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/au;->init(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public pause()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/au;->pause()V

    return-void
.end method

.method public playSynWav()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/au;->playSynWav()V

    return-void
.end method

.method public playText(Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/au;->playText(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public release(ILjava/lang/String;)I
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/au;->release(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public resume()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/au;->resume()V

    return-void
.end method

.method public setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/au;->setAudioSource(Lcom/unisound/client/IAudioSource;)I

    move-result p1

    return p1
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/au;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public setTTSListener(Lcom/unisound/client/SpeechSynthesizerListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/au;->setTTSListener(Lcom/unisound/client/SpeechSynthesizerListener;)V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/au;->stop()V

    return-void
.end method

.method public synthesizeText(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/au;->synthesizeText(Ljava/lang/String;)V

    return-void
.end method
