.class public Lcom/iflytek/msc/iFlyTekTts;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/msc/ISynthesizerCallback;


# static fields
.field private static TAG:Ljava/lang/String; = "iFlyTekTts"

.field private static mFlyTekTts:Lcom/iflytek/msc/iFlyTekTts; = null

.field private static mUseFlyTTS:Z = false

.field private static selectedNumCloud:I = 0x0

.field private static selectedNumLocal:I = 0x0

.field public static voicerLocal:Ljava/lang/String; = "xiaoyan"


# instance fields
.field private mAudio:La/f;

.field private mIdx:I

.field private mPitch:I

.field private mReady:Z

.field private mService:Landroid/content/Context;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSpeakBuf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeaking:Z

.field private mSpeed:I

.field private mTts:Lcom/iflytek/msc/MscSynthesizer;

.field private mType:I

.field private mVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mType:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeed:I

    const/16 v1, 0x32

    iput v1, p0, Lcom/iflytek/msc/iFlyTekTts;->mPitch:I

    iput v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mVolume:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeakBuf:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/iflytek/msc/iFlyTekTts;->mService:Landroid/content/Context;

    invoke-direct {p0}, Lcom/iflytek/msc/iFlyTekTts;->init()V

    sput-object p0, Lcom/iflytek/msc/iFlyTekTts;->mFlyTekTts:Lcom/iflytek/msc/iFlyTekTts;

    return-void
.end method

.method private batchSpeak(Ljava/lang/String;)V
    .locals 8

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_0

    add-int/lit16 v6, v5, 0x1f4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/iflytek/msc/iFlyTekTts;->appendSpeak(Ljava/lang/String;)I

    move v5, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/iflytek/msc/iFlyTekTts;
    .locals 1

    sget-object v0, Lcom/iflytek/msc/iFlyTekTts;->mFlyTekTts:Lcom/iflytek/msc/iFlyTekTts;

    return-object v0
.end method

.method private getResourcePath()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/iflytek/msc/iFlyTekTts;->mService:Landroid/content/Context;

    sget-object v2, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->assets:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    const-string v3, "common.jet"

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/iflytek/msc/iFlyTekTts;->mService:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/iflytek/msc/iFlyTekTts;->voicerLocal:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s;%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    new-instance v0, Lcom/iflytek/msc/Speaker;

    invoke-direct {v0}, Lcom/iflytek/msc/Speaker;-><init>()V

    sget-object v1, Lcom/iflytek/msc/iFlyTekTts;->voicerLocal:Ljava/lang/String;

    iput-object v1, v0, Lcom/iflytek/msc/Speaker;->code:Ljava/lang/String;

    const-string v2, "5ef02a7c,77070006"

    iput-object v2, v0, Lcom/iflytek/msc/Speaker;->param:Ljava/lang/String;

    const/4 v2, 0x1

    iput-short v2, v0, Lcom/iflytek/msc/Speaker;->type:S

    const/high16 v2, 0x42c80000    # 100.0f

    iput v2, v0, Lcom/iflytek/msc/Speaker;->volume:F

    iput v2, v0, Lcom/iflytek/msc/Speaker;->speed:F

    iput-object v1, v0, Lcom/iflytek/msc/Speaker;->id:Ljava/lang/String;

    new-instance v1, Lcom/iflytek/msc/MscSynthesizer;

    iget-object v2, p0, Lcom/iflytek/msc/iFlyTekTts;->mService:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/iflytek/msc/MscSynthesizer;-><init>(Landroid/content/Context;Lcom/iflytek/msc/Speaker;)V

    iput-object v1, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    new-instance v0, La/f;

    invoke-direct {v0}, La/f;-><init>()V

    iput-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mAudio:La/f;

    return-void
.end method

.method public static isUseFlyTTS()Z
    .locals 1

    sget-boolean v0, Lcom/iflytek/msc/iFlyTekTts;->mUseFlyTTS:Z

    return v0
.end method


# virtual methods
.method public appendSpeak(Ljava/lang/String;)I
    .locals 7

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/msc/iFlyTekTts;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeakBuf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    iget v2, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeed:I

    iget v3, p0, Lcom/iflytek/msc/iFlyTekTts;->mVolume:I

    iget v4, p0, Lcom/iflytek/msc/iFlyTekTts;->mPitch:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[d]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/msc/MscSynthesizer;->synthesize(IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeakBuf:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/msc/MscSynthesizer;->stop()V

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    invoke-virtual {v0}, Lcom/iflytek/msc/MscSynthesizer;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    sput-object v0, Lcom/iflytek/msc/iFlyTekTts;->mFlyTekTts:Lcom/iflytek/msc/iFlyTekTts;

    return-void
.end method

.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSpeaking()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeaking:Z

    return v0
.end method

.method public onBusy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeaking:Z

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeaking:Z

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeaking:Z

    iget-object p1, p0, Lcom/iflytek/msc/iFlyTekTts;->mAudio:La/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, La/f;->closeAudioOut()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeaking:Z

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mAudio:La/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, La/f;->openAudioOut()I

    :cond_0
    return-void
.end method

.method public onSynthesize([BII)V
    .locals 0

    iget-object p2, p0, Lcom/iflytek/msc/iFlyTekTts;->mAudio:La/f;

    if-eqz p2, :cond_0

    array-length p3, p1

    invoke-virtual {p2, p1, p3}, La/f;->writeData([BI)I

    :cond_0
    return-void
.end method

.method public setPitch(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/msc/iFlyTekTts;->mPitch:I

    return-void
.end method

.method public setRequestFocus(Z)V
    .locals 0

    return-void
.end method

.method public setSpeaker(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/iflytek/msc/iFlyTekTts;->voicerLocal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sput-object p1, Lcom/iflytek/msc/iFlyTekTts;->voicerLocal:Ljava/lang/String;

    iget-object p1, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    invoke-virtual {p1}, Lcom/iflytek/msc/MscSynthesizer;->destroy()V

    new-instance p1, Lcom/iflytek/msc/Speaker;

    invoke-direct {p1}, Lcom/iflytek/msc/Speaker;-><init>()V

    sget-object v0, Lcom/iflytek/msc/iFlyTekTts;->voicerLocal:Ljava/lang/String;

    iput-object v0, p1, Lcom/iflytek/msc/Speaker;->code:Ljava/lang/String;

    const-string v1, "5ef02a7c,77070006"

    iput-object v1, p1, Lcom/iflytek/msc/Speaker;->param:Ljava/lang/String;

    const/4 v1, 0x1

    iput-short v1, p1, Lcom/iflytek/msc/Speaker;->type:S

    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p1, Lcom/iflytek/msc/Speaker;->volume:F

    iput v1, p1, Lcom/iflytek/msc/Speaker;->speed:F

    iput-object v0, p1, Lcom/iflytek/msc/Speaker;->id:Ljava/lang/String;

    new-instance v0, Lcom/iflytek/msc/MscSynthesizer;

    iget-object v1, p0, Lcom/iflytek/msc/iFlyTekTts;->mService:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/iflytek/msc/MscSynthesizer;-><init>(Landroid/content/Context;Lcom/iflytek/msc/Speaker;)V

    iput-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    return-void
.end method

.method public setSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeed:I

    return-void
.end method

.method public setSpeed(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeed:I

    return-void
.end method

.method public setStream(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 p1, 0x3

    :cond_1
    iget v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mType:I

    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    iput p1, p0, Lcom/iflytek/msc/iFlyTekTts;->mType:I

    return-void
.end method

.method public setUseAccessibilityVolume(Z)V
    .locals 0

    return-void
.end method

.method public setUseFlyTTS(Z)V
    .locals 0

    sput-boolean p1, Lcom/iflytek/msc/iFlyTekTts;->mUseFlyTTS:Z

    return-void
.end method

.method public setVolume(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/msc/iFlyTekTts;->mVolume:I

    return-void
.end method

.method public speak(Ljava/lang/String;)I
    .locals 6

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[d]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/msc/MscSynthesizer;->synthesize(IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)I

    const/4 p1, 0x0

    return p1
.end method

.method public speak(Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;)I
    .locals 7

    const-string v0, "speak"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeakBuf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    iget v2, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeed:I

    iget v3, p0, Lcom/iflytek/msc/iFlyTekTts;->mVolume:I

    iget v4, p0, Lcom/iflytek/msc/iFlyTekTts;->mPitch:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[d]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/iflytek/msc/iFlyTekTts$1;

    invoke-direct {v6, p0, p2}, Lcom/iflytek/msc/iFlyTekTts$1;-><init>(Lcom/iflytek/msc/iFlyTekTts;Landroid/speech/tts/SynthesisCallback;)V

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/msc/MscSynthesizer;->synthesize(IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)I

    const/4 p1, 0x0

    return p1
.end method

.method public speak(Ljava/lang/String;Z)I
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/iflytek/msc/iFlyTekTts;->speak(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/msc/iFlyTekTts;->batchSpeak(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mSpeakBuf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts;->mTts:Lcom/iflytek/msc/MscSynthesizer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/msc/MscSynthesizer;->stop()V

    :cond_0
    return-void
.end method
