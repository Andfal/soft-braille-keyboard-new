.class public Lcom/iflytek/sparkchain/core/asr/ASR;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/asr/ASR$ASRError;,
        Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AEE_ASR"


# instance fields
.field private cbs:Lcom/iflytek/sparkchain/core/asr/AsrCallbacks;

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

.field private final index:I

.field private usrTagId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->usrTagId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->contextMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->cbs:Lcom/iflytek/sparkchain/core/asr/AsrCallbacks;

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/asr/ASR;->asrCreate()I

    move-result v0

    iput v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->usrTagId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->contextMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->cbs:Lcom/iflytek/sparkchain/core/asr/AsrCallbacks;

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/asr/ASR;->asrCreate()I

    move-result v0

    iput v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->language(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/iflytek/sparkchain/core/asr/ASR;->domain(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/iflytek/sparkchain/core/asr/ASR;->accent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/sparkchain/core/asr/ASR;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    return p0
.end method

.method static synthetic access$100(Lcom/iflytek/sparkchain/core/asr/ASR;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->asrDestroy(I)V

    return-void
.end method

.method private native asrCreate()I
.end method

.method private native asrDestroy(I)V
.end method

.method private native asrStart(II)I
.end method

.method private native asrStartWithAudioAttributes(IIILjava/lang/String;III)I
.end method

.method private native asrStop(IZ)I
.end method

.method private native asrWrite(I[B)I
.end method

.method private parseJson(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;
    .locals 14

    const-string v0, "end"

    const-string v1, "begin"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;

    invoke-direct {p1, p0}, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;-><init>(Lcom/iflytek/sparkchain/core/asr/ASR;)V

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->setBegin(I)V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->setEnd(I)V

    const-string v3, "sid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->setSid(Ljava/lang/String;)V

    const-string v3, "bestMatchText"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->setBestMatchText(Ljava/lang/String;)V

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->setStatus(I)V

    const-string v3, "transcriptions"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v8, Lcom/iflytek/sparkchain/core/asr/Transcription;

    invoke-direct {v8}, Lcom/iflytek/sparkchain/core/asr/Transcription;-><init>()V

    const-string v9, "index"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/iflytek/sparkchain/core/asr/Transcription;->setIndex(I)V

    const-string v9, "segments"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-eqz v7, :cond_0

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_0

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v12, Lcom/iflytek/sparkchain/core/asr/Segment;

    invoke-direct {v12}, Lcom/iflytek/sparkchain/core/asr/Segment;-><init>()V

    const-string v13, "score"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/iflytek/sparkchain/core/asr/Segment;->setScore(I)V

    const-string v13, "text"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/iflytek/sparkchain/core/asr/Segment;->setText(Ljava/lang/String;)V

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v8, v9}, Lcom/iflytek/sparkchain/core/asr/Transcription;->setSegments(Ljava/util/List;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->setTranscriptions(Ljava/util/List;)V

    const-string v3, "vads"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_2

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v6, Lcom/iflytek/sparkchain/core/asr/Vad;

    invoke-direct {v6}, Lcom/iflytek/sparkchain/core/asr/Vad;-><init>()V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/iflytek/sparkchain/core/asr/Vad;->setBegin(I)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/iflytek/sparkchain/core/asr/Vad;->setEnd(I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v3}, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->setVads(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Java tts parseJson:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AEE_ASR"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private native setAsrAccent(ILjava/lang/String;)V
.end method

.method private native setAsrDomain(ILjava/lang/String;)V
.end method

.method private native setAsrDwa(ILjava/lang/String;)V
.end method

.method private native setAsrLanguage(ILjava/lang/String;)V
.end method

.method private native setAsrNbest(II)V
.end method

.method private native setAsrNunum(IZ)V
.end method

.method private native setAsrPd(ILjava/lang/String;)V
.end method

.method private native setAsrPtt(IZ)V
.end method

.method private native setAsrRlang(ILjava/lang/String;)V
.end method

.method private native setAsrSpeexSize(II)V
.end method

.method private native setAsrVadEos(II)V
.end method

.method private native setAsrVinfo(IZ)V
.end method

.method private native setAsrWbest(II)V
.end method

.method private native setLn(ILjava/lang/String;)V
.end method

.method private native setProc(IZ)V
.end method

.method private native setSmth(IZ)V
.end method

.method private native setVgap(II)V
.end method


# virtual methods
.method public accent(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrAccent(ILjava/lang/String;)V

    return-void
.end method

.method protected asrErrorCallback(Lcom/iflytek/sparkchain/core/asr/ASR$ASRError;I)V
    .locals 3

    const-string v0, "AEE_ASR"

    const-string v1, "Java ttsErrorCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->cbs:Lcom/iflytek/sparkchain/core/asr/AsrCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iflytek/sparkchain/core/asr/AsrCallbacks;->onError(Lcom/iflytek/sparkchain/core/asr/ASR$ASRError;Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected asrResultCallback(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "AEE_ASR"

    const-string v1, "Java ttsResultCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->parseJson(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->cbs:Lcom/iflytek/sparkchain/core/asr/AsrCallbacks;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/iflytek/sparkchain/core/asr/AsrCallbacks;->onResult(Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/asr/ASR$ASRResult;->getStatus()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->contextMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public domain(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrDomain(ILjava/lang/String;)V

    return-void
.end method

.method public dwa(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrDwa(ILjava/lang/String;)V

    return-void
.end method

.method protected finalize()V
    .locals 5

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/core/AiHelper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/iflytek/sparkchain/core/asr/ASR$1;

    invoke-direct {v2, p0, v0}, Lcom/iflytek/sparkchain/core/asr/ASR$1;-><init>(Lcom/iflytek/sparkchain/core/asr/ASR;I)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public language(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrLanguage(ILjava/lang/String;)V

    return-void
.end method

.method public ln(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setLn(ILjava/lang/String;)V

    return-void
.end method

.method public nbest(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrNbest(II)V

    return-void
.end method

.method public nunum(Z)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrNunum(IZ)V

    return-void
.end method

.method public pd(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrPd(ILjava/lang/String;)V

    return-void
.end method

.method public proc(Z)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setProc(IZ)V

    return-void
.end method

.method public ptt(Z)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrPtt(IZ)V

    return-void
.end method

.method public registerCallbacks(Lcom/iflytek/sparkchain/core/asr/AsrCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->cbs:Lcom/iflytek/sparkchain/core/asr/AsrCallbacks;

    return-void
.end method

.method public rlang(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrRlang(ILjava/lang/String;)V

    return-void
.end method

.method public smth(Z)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setSmth(IZ)V

    return-void
.end method

.method public speexSize(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrSpeexSize(II)V

    return-void
.end method

.method public start(Lcom/iflytek/sparkchain/core/asr/AudioAttributes;Ljava/lang/Object;)I
    .locals 9

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/iflytek/sparkchain/core/asr/ASR;->start(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->usrTagId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->contextMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->getSampleRate()I

    move-result v4

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->getChannels()I

    move-result v6

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->getBitdepth()I

    move-result v7

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/asr/AudioAttributes;->getFrameSize()I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/iflytek/sparkchain/core/asr/ASR;->asrStartWithAudioAttributes(IIILjava/lang/String;III)I

    move-result p1

    return p1
.end method

.method public start(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->usrTagId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->contextMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, p1, v0}, Lcom/iflytek/sparkchain/core/asr/ASR;->asrStart(II)I

    move-result p1

    return p1
.end method

.method public stop(Z)I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->asrStop(IZ)I

    move-result p1

    return p1
.end method

.method public vadEos(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrVadEos(II)V

    return-void
.end method

.method public vgap(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setVgap(II)V

    return-void
.end method

.method public vinfo(Z)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrVinfo(IZ)V

    return-void
.end method

.method public wbest(I)V
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->setAsrWbest(II)V

    return-void
.end method

.method public write([B)I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR;->index:I

    invoke-direct {p0, v0, p1}, Lcom/iflytek/sparkchain/core/asr/ASR;->asrWrite(I[B)I

    move-result p1

    return p1
.end method
