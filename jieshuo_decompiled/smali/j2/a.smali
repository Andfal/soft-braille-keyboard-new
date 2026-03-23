.class public Lj2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/tts/TextToSpeak;
.implements Lcom/baidu/tts/client/SpeechSynthesizerListener;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

.field private c:Lcom/baidu/tts/client/SpeechSynthesizer;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lj2/a;->b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-direct {p0}, Lj2/a;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/baidu/tts/client/SpeechSynthesizer;->getInstance()Lcom/baidu/tts/client/SpeechSynthesizer;

    move-result-object v0

    iput-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    iget-object v1, p0, Lj2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    const-string v1, "LYv3vpUsbpnD7uHNbFKMRRY1ZA5To4xz"

    const-string v2, "8wKX9aA4iyXuvTGDdEYcDneplokUAbf6"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setApiKey(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    const-string v1, "9681975"

    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setAppId(Ljava/lang/String;)I

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-virtual {v0, p0}, Lcom/baidu/tts/client/SpeechSynthesizer;->setSpeechSynthesizerListener(Lcom/baidu/tts/client/SpeechSynthesizerListener;)V

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_ENCODE:Ljava/lang/String;

    sget-object v2, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_ENCODE_OPUS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_AUDIO_RATE:Ljava/lang/String;

    sget-object v2, Lcom/baidu/tts/client/SpeechSynthesizer;->AUDIO_BITRATE_OPUS_32K:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v1, Lcom/baidu/tts/client/TtsMode;->ONLINE:Lcom/baidu/tts/client/TtsMode;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->auth(Lcom/baidu/tts/client/TtsMode;)Ln0/a;

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v2, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEAKER:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-virtual {v0, v1}, Lcom/baidu/tts/client/SpeechSynthesizer;->initTts(Lcom/baidu/tts/client/TtsMode;)I

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEED:Ljava/lang/String;

    const-string v2, "12"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_VOLUME:Ljava/lang/String;

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public appendSpeak(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->release()I

    return-void
.end method

.method public isSpeaking()Z
    .locals 1

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lj2/a;->d:Z

    return v0
.end method

.method public onError(Ljava/lang/String;Lcom/baidu/tts/client/SpeechError;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj2/a;->d:Z

    iget-object v0, p0, Lj2/a;->b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onError(Ljava/lang/String;)V

    iget-object v0, p0, Lj2/a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p2}, Lcom/baidu/tts/client/SpeechError;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onSpeechFinish(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lj2/a;->d:Z

    iget-object p1, p0, Lj2/a;->b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {p1}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onEnd()V

    return-void
.end method

.method public onSpeechProgressChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onSpeechStart(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj2/a;->d:Z

    iget-object p1, p0, Lj2/a;->b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {p1}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onStart()V

    return-void
.end method

.method public onSynthesizeDataArrived(Ljava/lang/String;[BII)V
    .locals 0

    return-void
.end method

.method public onSynthesizeFinish(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSynthesizeStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setStreamType(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setAudioStreamType(I)I

    return-void
.end method

.method public setTtsPitch(I)V
    .locals 2

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_PITCH:Ljava/lang/String;

    div-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTtsScale(F)V
    .locals 0

    return-void
.end method

.method public setTtsSpeed(I)V
    .locals 6

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_SPEED:Ljava/lang/String;

    int-to-double v2, p1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double v2, v2, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    double-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setTtsVolume(F)V
    .locals 3

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    sget-object v1, Lcom/baidu/tts/client/SpeechSynthesizer;->PARAM_VOLUME:Ljava/lang/String;

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr p1, v2

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->setParam(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setUseAccessibilityVolume(Z)V
    .locals 0

    return-void
.end method

.method public slowSpeak(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lj2/a;->stop()V

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    invoke-virtual {v0, p1}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public speak(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lj2/a;->stop()V

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    const-string v2, "1"

    invoke-virtual {v0, p1, v2}, Lcom/baidu/tts/client/SpeechSynthesizer;->speak(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lj2/a;->c:Lcom/baidu/tts/client/SpeechSynthesizer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/baidu/tts/client/SpeechSynthesizer;->stop()I

    return-void
.end method
