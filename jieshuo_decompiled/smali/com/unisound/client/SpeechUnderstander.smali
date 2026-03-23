.class public Lcom/unisound/client/SpeechUnderstander;
.super Lcom/unisound/sdk/bb;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisound/sdk/bb;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/bb;->cancel()V

    return-void
.end method

.method public getOption(I)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/bb;->getOption(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/unisound/sdk/bb;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/bb;->init(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setAudioSource(Lcom/unisound/client/IAudioSource;)I
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/bb;->setAudioSource(Lcom/unisound/client/IAudioSource;)I

    move-result p1

    return p1
.end method

.method public setListener(Lcom/unisound/client/SpeechUnderstanderListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unisound/sdk/bb;->setListener(Lcom/unisound/client/SpeechUnderstanderListener;)V

    return-void
.end method

.method public setOnlineWakeupWord(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/unisound/sdk/bb;->setOnlineWakeupWord(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setOption(ILjava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/unisound/sdk/bb;->setOption(ILjava/lang/Object;)V

    return-void
.end method

.method public start()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/bb;->start()V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/bb;->stop()V

    return-void
.end method

.method public uploadUserData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/unisound/sdk/bb;->uploadUserData(Ljava/util/Map;)V

    return-void
.end method
