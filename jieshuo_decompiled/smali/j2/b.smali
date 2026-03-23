.class public Lj2/b;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/tts/TextToSpeak;


# static fields
.field private static j:I


# instance fields
.field private a:I

.field private b:F

.field private final c:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final d:Lcom/nirenr/talkman/tts/TextToSpeakListener;

.field private e:Z

.field private f:I

.field private g:Lcom/iltgcl/echovoice/client/IEchoVoice;

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZIFFI)V
    .locals 0

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    iput-object p1, p0, Lj2/b;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lj2/b;->d:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    const/4 p2, 0x0

    iput p2, p0, Lj2/b;->f:I

    invoke-static {p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Float;->intValue()I

    move-result p6

    iput p6, p0, Lj2/b;->h:I

    iput p4, p0, Lj2/b;->i:I

    iput p7, p0, Lj2/b;->a:I

    iput p5, p0, Lj2/b;->b:F

    const p4, 0x7f070241

    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "3"

    invoke-interface {p2, p1, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lj2/b;->j:I

    iput-boolean p3, p0, Lj2/b;->e:Z

    invoke-direct {p0}, Lj2/b;->d()V

    return-void
.end method

.method static bridge synthetic a(Lj2/b;)I
    .locals 0

    iget p0, p0, Lj2/b;->f:I

    return p0
.end method

.method static bridge synthetic b(Lj2/b;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lj2/b;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic c(Lj2/b;)V
    .locals 0

    invoke-direct {p0}, Lj2/b;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    iget v0, p0, Lj2/b;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj2/b;->f:I

    iget-object v0, p0, Lj2/b;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->isEchoVoiceInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj2/b;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v1, Lj2/b$a;

    invoke-direct {v1, p0}, Lj2/b$a;-><init>(Lj2/b;)V

    invoke-static {v0, v1, p0}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->createAIDLEchoVoice(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Landroid/speech/tts/UtteranceProgressListener;)Lcom/iltgcl/echovoice/client/IEchoVoice;

    move-result-object v0

    iput-object v0, p0, Lj2/b;->g:Lcom/iltgcl/echovoice/client/IEchoVoice;

    :cond_0
    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lj2/b;->j:I

    return-void
.end method


# virtual methods
.method public appendSpeak(Ljava/lang/String;)Z
    .locals 10

    iget-object v0, p0, Lj2/b;->g:Lcom/iltgcl/echovoice/client/IEchoVoice;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    iget-boolean v1, p0, Lj2/b;->e:Z

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const-string v4, ""

    sget v5, Lj2/b;->j:I

    iget v1, p0, Lj2/b;->i:I

    int-to-float v1, v1

    iget v6, p0, Lj2/b;->b:F

    mul-float v1, v1, v6

    float-to-int v6, v1

    iget v7, p0, Lj2/b;->h:I

    iget v8, p0, Lj2/b;->a:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/iltgcl/echovoice/client/IEchoVoice;->speak(Ljava/lang/CharSequence;IILjava/lang/String;IIII)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    return v9
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lj2/b;->g:Lcom/iltgcl/echovoice/client/IEchoVoice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iltgcl/echovoice/client/IEchoVoice;->shutdown()V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lj2/b;->a:I

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lj2/b;->b:F

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lj2/b;->i:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    iput p1, p0, Lj2/b;->h:I

    return-void
.end method

.method public isSpeaking()Z
    .locals 3

    iget-object v0, p0, Lj2/b;->g:Lcom/iltgcl/echovoice/client/IEchoVoice;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lj2/b;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/iltgcl/echovoice/client/IEchoVoice;->isSpeaking(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lj2/b;->d:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {p1}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onEnd()V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lj2/b;->d:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lj2/b;->d:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {p1}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onStart()V

    return-void
.end method

.method public setStreamType(I)V
    .locals 0

    return-void
.end method

.method public setTtsPitch(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj2/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setTtsScale(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj2/b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setTtsSpeed(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj2/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method public setTtsVolume(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj2/b;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setUseAccessibilityVolume(Z)V
    .locals 0

    iput-boolean p1, p0, Lj2/b;->e:Z

    return-void
.end method

.method public slowSpeak(Ljava/lang/String;)Z
    .locals 10

    iget-object v0, p0, Lj2/b;->g:Lcom/iltgcl/echovoice/client/IEchoVoice;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lj2/b;->e:Z

    const/4 v9, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    const-string v4, ""

    sget v5, Lj2/b;->j:I

    iget v1, p0, Lj2/b;->i:I

    int-to-float v1, v1

    iget v6, p0, Lj2/b;->b:F

    mul-float v1, v1, v6

    float-to-int v6, v1

    iget v7, p0, Lj2/b;->h:I

    iget v8, p0, Lj2/b;->a:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/iltgcl/echovoice/client/IEchoVoice;->speak(Ljava/lang/CharSequence;IILjava/lang/String;IIII)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    return v9
.end method

.method public speak(Ljava/lang/String;)Z
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speak: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj2/b;->i:I

    int-to-float v1, v1

    iget v2, p0, Lj2/b;->b:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj2/b;->h:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lj2/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "echo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lj2/b;->g:Lcom/iltgcl/echovoice/client/IEchoVoice;

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lj2/b;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const/4 v5, 0x2

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    const-string v6, ""

    sget v7, Lj2/b;->j:I

    iget v0, p0, Lj2/b;->i:I

    int-to-float v0, v0

    iget v3, p0, Lj2/b;->b:F

    mul-float v0, v0, v3

    float-to-int v8, v0

    iget v9, p0, Lj2/b;->h:I

    iget v10, p0, Lj2/b;->a:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/iltgcl/echovoice/client/IEchoVoice;->speak(Ljava/lang/CharSequence;IILjava/lang/String;IIII)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lj2/b;->g:Lcom/iltgcl/echovoice/client/IEchoVoice;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lj2/b;->e:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/iltgcl/echovoice/client/IEchoVoice;->stop(I)I

    :cond_1
    return-void
.end method
