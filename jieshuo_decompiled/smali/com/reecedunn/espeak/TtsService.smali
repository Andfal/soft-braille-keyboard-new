.class public Lcom/reecedunn/espeak/TtsService;
.super Landroid/speech/tts/TextToSpeechService;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field public static final ESPEAK_INITIALIZED:Ljava/lang/String; = "com.reecedunn.espeak.ESPEAK_INITIALIZED"

.field private static final TAG:Ljava/lang/String; = "TtsService"

.field public static initializeTtsing:Z


# instance fields
.field private isCN:Z

.field private final mAvailableVoices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/reecedunn/espeak/Voice;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Landroid/speech/tts/SynthesisCallback;

.field private mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

.field protected mMatchingVoice:Lcom/reecedunn/espeak/Voice;

.field private mOnLanguagesDownloaded:Landroid/content/BroadcastReceiver;

.field private final mSynthCallback:Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;

.field private mTTS:Lj2/d;

.field private ttsScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mAvailableVoices:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mMatchingVoice:Lcom/reecedunn/espeak/Voice;

    iput-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mOnLanguagesDownloaded:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/reecedunn/espeak/TtsService$3;

    invoke-direct {v0, p0}, Lcom/reecedunn/espeak/TtsService$3;-><init>(Lcom/reecedunn/espeak/TtsService;)V

    iput-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mSynthCallback:Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;

    return-void
.end method

.method static bridge synthetic a(Lcom/reecedunn/espeak/TtsService;)Landroid/speech/tts/SynthesisCallback;
    .locals 0

    iget-object p0, p0, Lcom/reecedunn/espeak/TtsService;->mCallback:Landroid/speech/tts/SynthesisCallback;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/reecedunn/espeak/TtsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/reecedunn/espeak/TtsService;->initializeTtsEngine()V

    return-void
.end method

.method private findVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/reecedunn/espeak/Voice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/reecedunn/espeak/TtsService;->initializeTtsing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/reecedunn/espeak/CheckVoiceData;->hasBaseResources(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/reecedunn/espeak/CheckVoiceData;->canUpgradeResources(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/reecedunn/espeak/TtsService;->mOnLanguagesDownloaded:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    new-instance p1, Lcom/reecedunn/espeak/TtsService$2;

    invoke-direct {p1, p0}, Lcom/reecedunn/espeak/TtsService$2;-><init>(Lcom/reecedunn/espeak/TtsService;)V

    iput-object p1, p0, Lcom/reecedunn/espeak/TtsService;->mOnLanguagesDownloaded:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.reecedunn.espeak.LANGUAGES_UPDATED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/reecedunn/espeak/TtsService;->mOnLanguagesDownloaded:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/reecedunn/espeak/DownloadVoiceData;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance p1, Landroid/util/Pair;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/reecedunn/espeak/TtsService;->mAvailableVoices:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/reecedunn/espeak/TtsService;->mAvailableVoices:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object p3, v1

    move-object v2, p3

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/reecedunn/espeak/Voice;

    invoke-virtual {v3, v0}, Lcom/reecedunn/espeak/Voice;->match(Ljava/util/Locale;)I

    move-result v5

    if-eqz v5, :cond_5

    if-eq v5, v4, :cond_4

    const/4 v4, 0x2

    if-eq v5, v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Landroid/util/Pair;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, v3, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-exit p1

    return-object p2

    :cond_4
    move-object v2, v3

    goto :goto_0

    :cond_5
    move-object p3, v3

    goto :goto_0

    :cond_6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Landroid/util/Pair;

    if-nez p3, :cond_7

    const/4 p2, -0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_7
    if-nez v2, :cond_8

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method private getDefaultVoiceFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/reecedunn/espeak/Voice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/reecedunn/espeak/TtsService;->findVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p3

    iget-object v0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object p3

    :cond_0
    const-string v0, "vi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vie"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "VN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "VNM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/util/Pair;

    invoke-direct {p0, p1, p2, v1}, Lcom/reecedunn/espeak/TtsService;->findVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/reecedunn/espeak/Voice;

    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    :goto_0
    new-instance v0, Landroid/util/Pair;

    const-string v1, "hue"

    invoke-direct {p0, p1, p2, v1}, Lcom/reecedunn/espeak/TtsService;->findVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/reecedunn/espeak/Voice;

    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const-string p2, "fr"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "fra"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    const-string p2, "pt"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "por"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p0, p1, v1, v1}, Lcom/reecedunn/espeak/TtsService;->findVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/reecedunn/espeak/Voice;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_7
    :goto_1
    new-instance p2, Landroid/util/Pair;

    const-string v0, "PRT"

    invoke-direct {p0, p1, v0, v1}, Lcom/reecedunn/espeak/TtsService;->findVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/reecedunn/espeak/Voice;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_8
    :goto_2
    new-instance p2, Landroid/util/Pair;

    const-string v0, "FRA"

    invoke-direct {p0, p1, v0, v1}, Lcom/reecedunn/espeak/TtsService;->findVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/reecedunn/espeak/Voice;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private getRequestString(Landroid/speech/tts/SynthesisRequest;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getCharSequenceText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initializeTtsEngine()V
    .locals 4

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/reecedunn/espeak/SpeechSynthesis;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    :cond_0
    new-instance v0, Lcom/reecedunn/espeak/SpeechSynthesis;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/reecedunn/espeak/TtsService;->mSynthCallback:Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;

    invoke-direct {v0, v1, v2}, Lcom/reecedunn/espeak/SpeechSynthesis;-><init>(Landroid/content/Context;Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;)V

    iput-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mAvailableVoices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    invoke-virtual {v0}, Lcom/reecedunn/espeak/SpeechSynthesis;->getAvailableVoices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/reecedunn/espeak/Voice;

    iget-object v2, p0, Lcom/reecedunn/espeak/TtsService;->mAvailableVoices:Ljava/util/Map;

    iget-object v3, v1, Lcom/reecedunn/espeak/Voice;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.reecedunn.espeak.ESPEAK_INITIALIZED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private selectVoice(Landroid/speech/tts/SynthesisRequest;)I
    .locals 2

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getVoiceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/reecedunn/espeak/TtsService;->onLoadVoice(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/reecedunn/espeak/TtsService;->onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-direct {p0}, Lcom/reecedunn/espeak/TtsService;->initializeTtsEngine()V

    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService;->onCreate()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/reecedunn/espeak/TtsService;->isCN:Z

    :cond_0
    iget-boolean v0, p0, Lcom/reecedunn/espeak/TtsService;->isCN:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isVip()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lj2/c;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    new-instance v1, Lcom/reecedunn/espeak/TtsService$1;

    invoke-direct {v1, p0}, Lcom/reecedunn/espeak/TtsService$1;-><init>(Lcom/reecedunn/espeak/TtsService;)V

    invoke-static {v0, v1}, Lj2/d;->z(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)Lj2/d;

    move-result-object v0

    iput-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mTTS:Lj2/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f070652

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "iflytek"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {p0, v0, v1}, Lk2/b0;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lk2/i;->a(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/reecedunn/espeak/TtsService;->ttsScale:F

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/speech/tts/TextToSpeechService;->onDestroy()V

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mOnLanguagesDownloaded:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/reecedunn/espeak/TtsService;->getDefaultVoiceFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/reecedunn/espeak/Voice;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/reecedunn/espeak/Voice;->name:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method protected onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    return-object p1
.end method

.method protected onGetLanguage()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mMatchingVoice:Lcom/reecedunn/espeak/Voice;

    if-nez v0, :cond_0

    const-string v0, "GBR"

    const-string v1, ""

    const-string v2, "eng"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-object v0, v0, Lcom/reecedunn/espeak/Voice;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mMatchingVoice:Lcom/reecedunn/espeak/Voice;

    iget-object v0, v0, Lcom/reecedunn/espeak/Voice;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mMatchingVoice:Lcom/reecedunn/espeak/Voice;

    iget-object v0, v0, Lcom/reecedunn/espeak/Voice;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    return-object v1
.end method

.method public onGetVoices()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/reecedunn/espeak/TtsService;->mAvailableVoices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/reecedunn/espeak/Voice;

    const/16 v6, 0x12c

    const/16 v7, 0x64

    new-instance v3, Ljava/util/Locale;

    iget-object v4, v2, Lcom/reecedunn/espeak/Voice;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/reecedunn/espeak/Voice;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v5

    iget-object v8, v2, Lcom/reecedunn/espeak/Voice;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v5, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v5, v3}, Lcom/reecedunn/espeak/TtsService;->onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    new-instance v10, Landroid/speech/tts/Voice;

    iget-object v4, v2, Lcom/reecedunn/espeak/Voice;->name:Ljava/lang/String;

    iget-object v5, v2, Lcom/reecedunn/espeak/Voice;->locale:Ljava/util/Locale;

    const/4 v8, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/speech/tts/Voice;-><init>(Ljava/lang/String;Ljava/util/Locale;IIZLjava/util/Set;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lcom/reecedunn/espeak/TtsService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIsLanguageAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/reecedunn/espeak/TtsService;->findVoice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public onIsValidVoiceName(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mAvailableVoices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/reecedunn/espeak/Voice;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onLoadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/reecedunn/espeak/TtsService;->getDefaultVoiceFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Lcom/reecedunn/espeak/Voice;

    iput-object v1, p0, Lcom/reecedunn/espeak/TtsService;->mMatchingVoice:Lcom/reecedunn/espeak/Voice;

    :cond_0
    sget-object v1, Lcom/reecedunn/espeak/TtsService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadLanguage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/reecedunn/espeak/TtsService;->mMatchingVoice:Lcom/reecedunn/espeak/Voice;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public onLoadVoice(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mAvailableVoices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/reecedunn/espeak/Voice;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iput-object p1, p0, Lcom/reecedunn/espeak/TtsService;->mMatchingVoice:Lcom/reecedunn/espeak/Voice;

    const/4 p1, 0x0

    return p1
.end method

.method protected onStop()V
    .locals 2

    sget-object v0, Lcom/reecedunn/espeak/TtsService;->TAG:Ljava/lang/String;

    const-string v1, "Received stop request."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mTTS:Lj2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj2/d;->W()V

    :cond_0
    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/reecedunn/espeak/SpeechSynthesis;->stop()V

    :cond_1
    return-void
.end method

.method protected declared-synchronized onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mTTS:Lj2/d;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "espeak"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/reecedunn/espeak/TtsService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSynthesizeText:1 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSynthesizeText:2 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSynthesizeText:3 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/reecedunn/espeak/TtsService;->mCallback:Landroid/speech/tts/SynthesisCallback;

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mTTS:Lj2/d;

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lj2/d;->E(I)V

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mTTS:Lj2/d;

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lj2/d;->I(I)V

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getParams()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "jieshuo"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mTTS:Lj2/d;

    iget v1, p0, Lcom/reecedunn/espeak/TtsService;->ttsScale:F

    invoke-virtual {v0, v1}, Lj2/d;->M(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mTTS:Lj2/d;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lj2/d;->M(F)V

    :goto_0
    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mTTS:Lj2/d;

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lj2/d;->S(Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService;->mMatchingVoice:Lcom/reecedunn/espeak/Voice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-direct {p0, p1}, Lcom/reecedunn/espeak/TtsService;->getRequestString(Landroid/speech/tts/SynthesisRequest;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string v1, "<?xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "?>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_4
    iput-object p2, p0, Lcom/reecedunn/espeak/TtsService;->mCallback:Landroid/speech/tts/SynthesisCallback;

    iget-object v1, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    invoke-virtual {v1}, Lcom/reecedunn/espeak/SpeechSynthesis;->getSampleRate()I

    move-result v1

    iget-object v2, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    invoke-virtual {v2}, Lcom/reecedunn/espeak/SpeechSynthesis;->getAudioFormat()I

    move-result v2

    iget-object v3, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    invoke-virtual {v3}, Lcom/reecedunn/espeak/SpeechSynthesis;->getChannelCount()I

    move-result v3

    invoke-interface {p2, v1, v2, v3}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    new-instance p2, Lcom/reecedunn/espeak/VoiceSettings;

    invoke-static {p0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    invoke-direct {p2, v1, v2}, Lcom/reecedunn/espeak/VoiceSettings;-><init>(Landroid/content/SharedPreferences;Lcom/reecedunn/espeak/SpeechSynthesis;)V

    iget-object v1, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v2, p0, Lcom/reecedunn/espeak/TtsService;->mMatchingVoice:Lcom/reecedunn/espeak/Voice;

    invoke-virtual {p2}, Lcom/reecedunn/espeak/VoiceSettings;->getVoiceVariant()Lcom/reecedunn/espeak/VoiceVariant;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/reecedunn/espeak/SpeechSynthesis;->setVoice(Lcom/reecedunn/espeak/Voice;Lcom/reecedunn/espeak/VoiceVariant;)V

    iget-object v1, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v1, v1, Lcom/reecedunn/espeak/SpeechSynthesis;->Rate:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {p2}, Lcom/reecedunn/espeak/VoiceSettings;->getRate()I

    move-result v2

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->setValue(II)V

    iget-object v1, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object v1, v1, Lcom/reecedunn/espeak/SpeechSynthesis;->Pitch:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {p2}, Lcom/reecedunn/espeak/VoiceSettings;->getPitch()I

    move-result v2

    invoke-virtual {p1}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->setValue(II)V

    iget-object p1, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object p1, p1, Lcom/reecedunn/espeak/SpeechSynthesis;->PitchRange:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {p2}, Lcom/reecedunn/espeak/VoiceSettings;->getPitchRange()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->setValue(I)V

    iget-object p1, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object p1, p1, Lcom/reecedunn/espeak/SpeechSynthesis;->Volume:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {p2}, Lcom/reecedunn/espeak/VoiceSettings;->getVolume()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->setValue(I)V

    iget-object p1, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    iget-object p1, p1, Lcom/reecedunn/espeak/SpeechSynthesis;->Punctuation:Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;

    invoke-virtual {p2}, Lcom/reecedunn/espeak/VoiceSettings;->getPunctuationLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/reecedunn/espeak/SpeechSynthesis$Parameter;->setValue(I)V

    iget-object p1, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    invoke-virtual {p2}, Lcom/reecedunn/espeak/VoiceSettings;->getPunctuationCharacters()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/reecedunn/espeak/SpeechSynthesis;->setPunctuationCharacters(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/reecedunn/espeak/TtsService;->mEngine:Lcom/reecedunn/espeak/SpeechSynthesis;

    const-string p2, "<speak"

    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lcom/reecedunn/espeak/SpeechSynthesis;->synthesize(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
