.class public Lcom/iltgcl/echovoice/client/TTSEchoVoice;
.super Lcom/iltgcl/echovoice/client/IEchoVoice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iltgcl/echovoice/client/TTSEchoVoice$TTSEchoVoiceHandler;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/iltgcl/echovoice/client/TTSEchoVoice$TTSEchoVoiceHandler;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final mTempOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mTempTts:Landroid/speech/tts/TextToSpeech;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/IEchoVoice;-><init>()V

    new-instance v0, Lcom/iltgcl/echovoice/client/TTSEchoVoice$TTSEchoVoiceHandler;

    invoke-direct {v0, p0}, Lcom/iltgcl/echovoice/client/TTSEchoVoice$TTSEchoVoiceHandler;-><init>(Lcom/iltgcl/echovoice/client/TTSEchoVoice;)V

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mHandler:Lcom/iltgcl/echovoice/client/TTSEchoVoice$TTSEchoVoiceHandler;

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTempOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iput-object p3, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->startTtsInit()V

    return-void
.end method

.method static bridge synthetic a(Lcom/iltgcl/echovoice/client/TTSEchoVoice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->handleTtsInitialized(I)V

    return-void
.end method

.method static bridge synthetic b(Lcom/iltgcl/echovoice/client/TTSEchoVoice;)V
    .locals 0

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->startTtsInit()V

    return-void
.end method

.method private handleTtsInitialized(I)V
    .locals 2

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTempTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    :cond_0
    iget-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTempTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTempTts:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mHandler:Lcom/iltgcl/echovoice/client/TTSEchoVoice$TTSEchoVoiceHandler;

    invoke-virtual {p1}, Lcom/iltgcl/echovoice/client/TTSEchoVoice$TTSEchoVoiceHandler;->retryInit()V

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object p1, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private startTtsInit()V
    .locals 4

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTempOnInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    const-string v3, "com.iltgcl.echovoice"

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTempTts:Landroid/speech/tts/TextToSpeech;

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->getEchoVoiceVersionCode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getVoiceNameEntries()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->getVoiceNameEntries(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceNameValues()[I
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->getVoiceNameValues(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method

.method public hasLicense()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPaused(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpeaking(I)Z
    .locals 0

    invoke-virtual {p0}, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->isReady()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pause(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public resume(I)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public shutdown()V
    .locals 1

    invoke-virtual {p0}, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method public speak(Ljava/lang/CharSequence;IILjava/lang/String;)I
    .locals 9

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->speak(Ljava/lang/CharSequence;IILjava/lang/String;IIII)I

    move-result p1

    return p1
.end method

.method public speak(Ljava/lang/CharSequence;IILjava/lang/String;IIII)I
    .locals 6

    invoke-virtual {p0}, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->isReady()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-le p5, v1, :cond_0

    const-string v2, "echoVoiceName"

    invoke-virtual {v0, v2, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const/16 p5, 0x258

    const/4 v2, 0x0

    if-le p6, v1, :cond_1

    const-string v3, "echoRate"

    invoke-static {p6, v2, p5}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->clamp(III)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const/16 v3, 0x64

    if-le p7, v1, :cond_2

    const-string v4, "echoVolume"

    invoke-static {p7, v2, v3}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->clamp(III)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    if-le p8, v1, :cond_3

    const-string v4, "echoPitch"

    invoke-static {p8, v2, v3}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->clamp(III)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const/4 v4, 0x2

    if-ne p3, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :goto_0
    const-string v5, "is_screen_reader"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-le p6, v1, :cond_5

    invoke-static {p6, v2, p5}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->clamp(III)I

    move-result p5

    const-string p6, "rate"

    invoke-virtual {v0, p6, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    if-le p7, v1, :cond_6

    invoke-static {p7, v2, v3}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->clamp(III)I

    move-result p5

    const-string p6, "volume"

    invoke-virtual {v0, p6, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    if-le p8, v1, :cond_7

    invoke-static {p8, v2, v3}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->clamp(III)I

    move-result p5

    const-string p6, "pitch"

    invoke-virtual {v0, p6, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    invoke-static {v0, p3}, Lcom/iltgcl/echovoice/client/IEchoVoice;->addUsage(Landroid/os/Bundle;I)V

    const-string p3, "utteranceId"

    invoke-virtual {v0, p3, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p3, p1, p2, v0, p4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_8
    return v1
.end method

.method public stop(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->stopAll()I

    move-result p1

    return p1
.end method

.method public stopAll()I
    .locals 1

    invoke-virtual {p0}, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method
