.class public Lcom/iltgcl/echovoice/client/EchoVoiceProxy;
.super Lcom/iltgcl/echovoice/client/IEchoVoice;
.source "SourceFile"


# instance fields
.field private final mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;


# direct methods
.method public constructor <init>(Lcom/iltgcl/echovoice/client/IEchoVoice;)V
    .locals 0

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/IEchoVoice;-><init>()V

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0}, Lcom/iltgcl/echovoice/client/IEchoVoice;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public getVoiceNameEntries()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0}, Lcom/iltgcl/echovoice/client/IEchoVoice;->getVoiceNameEntries()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceNameValues()[I
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0}, Lcom/iltgcl/echovoice/client/IEchoVoice;->getVoiceNameValues()[I

    move-result-object v0

    return-object v0
.end method

.method public hasLicense()Z
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0}, Lcom/iltgcl/echovoice/client/IEchoVoice;->hasLicense()Z

    move-result v0

    return v0
.end method

.method public isPaused(I)Z
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0, p1}, Lcom/iltgcl/echovoice/client/IEchoVoice;->isPaused(I)Z

    move-result p1

    return p1
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0}, Lcom/iltgcl/echovoice/client/IEchoVoice;->isReady()Z

    move-result v0

    return v0
.end method

.method public isSpeaking(I)Z
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0, p1}, Lcom/iltgcl/echovoice/client/IEchoVoice;->isSpeaking(I)Z

    move-result p1

    return p1
.end method

.method public pause(I)I
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0, p1}, Lcom/iltgcl/echovoice/client/IEchoVoice;->pause(I)I

    move-result p1

    return p1
.end method

.method public resume(I)I
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0, p1}, Lcom/iltgcl/echovoice/client/IEchoVoice;->resume(I)I

    move-result p1

    return p1
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0}, Lcom/iltgcl/echovoice/client/IEchoVoice;->shutdown()V

    return-void
.end method

.method public speak(Ljava/lang/CharSequence;IILjava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 p3, 0x1

    :cond_0
    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/iltgcl/echovoice/client/IEchoVoice;->speak(Ljava/lang/CharSequence;IILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public speak(Ljava/lang/CharSequence;IILjava/lang/String;IIII)I
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/iltgcl/echovoice/client/IEchoVoice;->speak(Ljava/lang/CharSequence;IILjava/lang/String;IIII)I

    move-result v1

    return v1
.end method

.method public stop(I)I
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0, p1}, Lcom/iltgcl/echovoice/client/IEchoVoice;->stop(I)I

    move-result p1

    return p1
.end method

.method public stopAll()I
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoiceProxy;->mEchoVoice:Lcom/iltgcl/echovoice/client/IEchoVoice;

    invoke-virtual {v0}, Lcom/iltgcl/echovoice/client/IEchoVoice;->stopAll()I

    move-result v0

    return v0
.end method
