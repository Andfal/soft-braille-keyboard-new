.class public Lcom/iflytek/sparkchain/core/tts/TTS;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/tts/TTS$TTSError;,
        Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TTS"


# instance fields
.field private cbs:Lcom/iflytek/sparkchain/core/tts/TTSCallbacks;

.field private contextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected sid:I

.field private usrTagId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->usrTagId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->contextMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->create(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    return-void
.end method

.method private native setTTSBgs(II)V
.end method

.method private native setTTSBitDepth(II)V
.end method

.method private native setTTSChannels(II)V
.end method

.method private native setTTSEncoding(ILjava/lang/String;)V
.end method

.method private native setTTSFrameSize(II)V
.end method

.method private native setTTSL5SilLen(II)V
.end method

.method private native setTTSParagraphSilLen(II)V
.end method

.method private native setTTSPitch(II)V
.end method

.method private native setTTSRdn(II)V
.end method

.method private native setTTSReg(II)V
.end method

.method private native setTTSRhy(IZ)V
.end method

.method private native setTTSSampleRate(II)V
.end method

.method private native setTTSScn(II)V
.end method

.method private native setTTSSpeed(II)V
.end method

.method private native setTTSVcn(ILjava/lang/String;)V
.end method

.method private native setTTSVersion(IZ)V
.end method

.method private native setTTSVolume(II)V
.end method

.method private native ttsArun(ILjava/lang/String;I)I
.end method

.method private native ttsCreate(Ljava/lang/String;)I
.end method

.method private native ttsStop(I)V
.end method


# virtual methods
.method public aRun(Ljava/lang/String;)I
    .locals 2

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/iflytek/sparkchain/core/tts/TTS;->ttsArun(ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public aRun(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->usrTagId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->contextMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, p2, p1, v0}, Lcom/iflytek/sparkchain/core/tts/TTS;->ttsArun(ILjava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public bgs(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSBgs(II)V

    return-void
.end method

.method public bitDepth(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSBitDepth(II)V

    return-void
.end method

.method public channels(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSChannels(II)V

    return-void
.end method

.method protected create(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->ttsCreate(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public encoding(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSEncoding(ILjava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/AiHelper;->ttsObjDestroy(I)V

    return-void
.end method

.method public frameSize(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSFrameSize(II)V

    return-void
.end method

.method public l5SilLen(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSL5SilLen(II)V

    return-void
.end method

.method public paragraphSilLen(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSParagraphSilLen(II)V

    return-void
.end method

.method public pitch(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSPitch(II)V

    return-void
.end method

.method public rdn(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSRdn(II)V

    return-void
.end method

.method public reg(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSReg(II)V

    return-void
.end method

.method public registerCallbacks(Lcom/iflytek/sparkchain/core/tts/TTSCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->cbs:Lcom/iflytek/sparkchain/core/tts/TTSCallbacks;

    return-void
.end method

.method public rhy(Z)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSRhy(IZ)V

    return-void
.end method

.method public sampleRate(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSSampleRate(II)V

    return-void
.end method

.method public scn(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSScn(II)V

    return-void
.end method

.method public speed(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSSpeed(II)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0}, Lcom/iflytek/sparkchain/core/tts/TTS;->ttsStop(I)V

    return-void
.end method

.method public ttsErrorCallback(Lcom/iflytek/sparkchain/core/tts/TTS$TTSError;I)V
    .locals 3

    const-string v0, "TTS"

    const-string v1, "Java ttsErrorCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->cbs:Lcom/iflytek/sparkchain/core/tts/TTSCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iflytek/sparkchain/core/tts/TTSCallbacks;->onError(Lcom/iflytek/sparkchain/core/tts/TTS$TTSError;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public ttsEventCallback(I)V
    .locals 1

    const-string p1, "TTS"

    const-string v0, "Java ttsEventCallback"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ttsResultCallback(Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;I)V
    .locals 3

    const-string v0, "TTS"

    const-string v1, "Java ttsResultCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->cbs:Lcom/iflytek/sparkchain/core/tts/TTSCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iflytek/sparkchain/core/tts/TTSCallbacks;->onResult(Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/tts/TTS$TTSResult;->getStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public vcn(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSVcn(ILjava/lang/String;)V

    return-void
.end method

.method public version(Z)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSVersion(IZ)V

    return-void
.end method

.method public volume(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/tts/TTS;->sid:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/tts/TTS;->setTTSVolume(II)V

    return-void
.end method
