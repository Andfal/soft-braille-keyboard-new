.class public Lcom/unisound/client/VoicePrintRecognizer;
.super Lcom/unisound/sdk/ci;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/sdk/ci;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/ci;->cancel()V

    return-void
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/ci;->getOption(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public init(Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/ci;->init(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/ci;->setAudioSource(Lcom/unisound/client/IAudioSource;)I

    move-result p1

    return p1
.end method

.method public setListener(Lcom/unisound/client/VoicePrintRecognizerListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/ci;->setListener(Lcom/unisound/client/VoicePrintRecognizerListener;)V

    return-void
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/ci;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public start(Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/ci;->start(Ljava/lang/String;I)V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/ci;->stop()V

    return-void
.end method
