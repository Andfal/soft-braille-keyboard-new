.class public Lcom/reecedunn/espeak/eSpeakActivity;
.super Landroid/app/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reecedunn/espeak/eSpeakActivity$EspeakHandler;,
        Lcom/reecedunn/espeak/eSpeakActivity$State;
    }
.end annotation


# static fields
.field private static final ACTION_TTS_SETTINGS:Ljava/lang/String; = "com.android.settings.TTS_SETTINGS"

.field private static final REQUEST_CHECK:I = 0x1

.field private static final REQUEST_DEFAULT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "eSpeakActivity"

.field private static final TTS_INITIALIZED:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInformation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final mOnEspeakInitialized:Landroid/content/BroadcastReceiver;

.field private mPrefsEspeakFragment:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;

.field private mState:Lcom/reecedunn/espeak/eSpeakActivity$State;

.field private mText:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    new-instance v0, Lcom/reecedunn/espeak/eSpeakActivity$1;

    invoke-direct {v0, p0}, Lcom/reecedunn/espeak/eSpeakActivity$1;-><init>(Lcom/reecedunn/espeak/eSpeakActivity;)V

    iput-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mOnEspeakInitialized:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/reecedunn/espeak/eSpeakActivity$2;

    invoke-direct {v0, p0}, Lcom/reecedunn/espeak/eSpeakActivity$2;-><init>(Lcom/reecedunn/espeak/eSpeakActivity;)V

    iput-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    new-instance v0, Lcom/reecedunn/espeak/eSpeakActivity$EspeakHandler;

    invoke-direct {v0, p0}, Lcom/reecedunn/espeak/eSpeakActivity$EspeakHandler;-><init>(Lcom/reecedunn/espeak/eSpeakActivity;)V

    iput-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic a(Lcom/reecedunn/espeak/eSpeakActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/reecedunn/espeak/eSpeakActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/reecedunn/espeak/eSpeakActivity;->onInitialized(I)V

    return-void
.end method

.method static bridge synthetic c(Lcom/reecedunn/espeak/eSpeakActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/reecedunn/espeak/eSpeakActivity;->populateInformationView()V

    return-void
.end method

.method private checkVoiceData()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/reecedunn/espeak/CheckVoiceData;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private getTtsLanguage()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getVoice()Landroid/speech/tts/Voice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/Voice;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private initializeEngine()V
    .locals 3

    iget-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    const-string v0, "eSpeakActivity"

    const-string v1, "initializeEngine: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private launchGeneralTtsSettings()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.TTS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private onDataChecked(ILandroid/content/Intent;)V
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Voice data check failed (error code: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "eSpeakActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/reecedunn/espeak/eSpeakActivity$State;->ERROR:Lcom/reecedunn/espeak/eSpeakActivity$State;

    invoke-direct {p0, p1}, Lcom/reecedunn/espeak/eSpeakActivity;->setState(Lcom/reecedunn/espeak/eSpeakActivity$State;)V

    :cond_0
    invoke-direct {p0}, Lcom/reecedunn/espeak/eSpeakActivity;->initializeEngine()V

    return-void
.end method

.method private onInitialized(I)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initialization failed (status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "eSpeakActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/reecedunn/espeak/eSpeakActivity$State;->ERROR:Lcom/reecedunn/espeak/eSpeakActivity$State;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/reecedunn/espeak/eSpeakActivity$State;->SUCCESS:Lcom/reecedunn/espeak/eSpeakActivity$State;

    :goto_0
    invoke-direct {p0, p1}, Lcom/reecedunn/espeak/eSpeakActivity;->setState(Lcom/reecedunn/espeak/eSpeakActivity$State;)V

    invoke-direct {p0}, Lcom/reecedunn/espeak/eSpeakActivity;->populateInformationView()V

    return-void
.end method

.method private populateInformationView()V
    .locals 5

    iget-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/reecedunn/espeak/eSpeakActivity;->getTtsLanguage()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0701b9

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mInformation:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v0}, Lcom/reecedunn/espeak/SpeechSynthesis;->getSampleText(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mText:Ljava/lang/String;

    :cond_0
    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mInformation:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Lcom/reecedunn/espeak/SpeechSynthesis;->getVoiceCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0706c0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mInformation:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-static {}, Lcom/reecedunn/espeak/SpeechSynthesis;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/reecedunn/espeak/eSpeakActivity$3;->$SwitchMap$com$reecedunn$espeak$eSpeakActivity$State:[I

    iget-object v1, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mState:Lcom/reecedunn/espeak/eSpeakActivity$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const v0, 0x7f07093a

    goto :goto_0

    :cond_2
    const v0, 0x7f070262

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    const v1, 0x7f070635

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mInformation:Ljava/util/List;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mPrefsEspeakFragment:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;

    iget-object v1, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mInformation:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;->setStates(Ljava/util/List;)V

    return-void
.end method

.method private setState(Lcom/reecedunn/espeak/eSpeakActivity$State;)V
    .locals 2

    iput-object p1, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mState:Lcom/reecedunn/espeak/eSpeakActivity$State;

    sget-object v0, Lcom/reecedunn/espeak/eSpeakActivity$3;->$SwitchMap$com$reecedunn$espeak$eSpeakActivity$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const v1, 0x7f040026

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/reecedunn/espeak/eSpeakActivity;->initializeEngine()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/reecedunn/espeak/eSpeakActivity;->onDataChecked(ILandroid/content/Intent;)V

    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f050005

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mInformation:Ljava/util/List;

    const-string p1, ""

    iput-object p1, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mText:Ljava/lang/String;

    sget-object p1, Lcom/reecedunn/espeak/eSpeakActivity$State;->LOADING:Lcom/reecedunn/espeak/eSpeakActivity$State;

    invoke-direct {p0, p1}, Lcom/reecedunn/espeak/eSpeakActivity;->setState(Lcom/reecedunn/espeak/eSpeakActivity$State;)V

    new-instance p1, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;

    invoke-direct {p1}, Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;-><init>()V

    iput-object p1, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mPrefsEspeakFragment:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x7f040029

    iget-object v1, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mPrefsEspeakFragment:Lcom/reecedunn/espeak/TtsSettingsActivity$PrefsEspeakFragment;

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "eSpeakActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-direct {p0}, Lcom/reecedunn/espeak/eSpeakActivity;->checkVoiceData()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.reecedunn.espeak.ESPEAK_INITIALIZED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mOnEspeakInitialized:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mOnEspeakInitialized:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    return-void
.end method

.method public speak()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "espeak"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/reecedunn/espeak/eSpeakActivity;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    return-void
.end method
