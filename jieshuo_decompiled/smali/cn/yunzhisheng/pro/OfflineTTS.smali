.class public Lcn/yunzhisheng/pro/OfflineTTS;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/yunzhisheng/pro/OfflineTTS;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Z

.field private c:Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;

.field private d:Landroid/speech/tts/TextToSpeech;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Lcn/yunzhisheng/pro/OfflineTTS;

.field private g:La/g;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private u:F

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:F

.field private y:Landroid/os/Handler;

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/yunzhisheng/pro/OfflineTTS;->A:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->j:Z

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->k:Z

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->m:Z

    const/4 v0, 0x1

    iput v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->r:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->u:F

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->y:Landroid/os/Handler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->z:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->w:Z

    iput-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-boolean p3, p0, Lcn/yunzhisheng/pro/OfflineTTS;->b:Z

    sget-boolean p3, Lcom/reecedunn/espeak/TtsService;->initializeTtsing:Z

    if-nez p3, :cond_2

    invoke-static {p1}, Lcom/reecedunn/espeak/CheckVoiceData;->hasBaseResources(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/reecedunn/espeak/CheckVoiceData;->canUpgradeResources(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_0
    iget-object p3, p0, Lcn/yunzhisheng/pro/OfflineTTS;->e:Landroid/content/BroadcastReceiver;

    if-nez p3, :cond_1

    new-instance p3, Lcn/yunzhisheng/pro/OfflineTTS$b;

    invoke-direct {p3, p0, p2}, Lcn/yunzhisheng/pro/OfflineTTS$b;-><init>(Lcn/yunzhisheng/pro/OfflineTTS;Ljava/lang/String;)V

    iput-object p3, p0, Lcn/yunzhisheng/pro/OfflineTTS;->e:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "com.reecedunn.espeak.LANGUAGES_UPDATED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcn/yunzhisheng/pro/OfflineTTS;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p3, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/reecedunn/espeak/DownloadVoiceData;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/pro/OfflineTTS;->i(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->j:Z

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->k:Z

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->m:Z

    const/4 v0, 0x1

    iput v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->r:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->u:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->y:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->z:Ljava/util/ArrayList;

    iput-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-boolean p2, p0, Lcn/yunzhisheng/pro/OfflineTTS;->b:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.iflytek.speechsuite"

    invoke-direct {p0, v0}, Lcn/yunzhisheng/pro/OfflineTTS;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    move-object p2, v0

    goto :goto_1

    :cond_0
    const-string v0, "com.google.android.tts"

    invoke-direct {p0, v0}, Lcn/yunzhisheng/pro/OfflineTTS;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.nirenr.talkman.iflytek"

    invoke-direct {p0, v0}, Lcn/yunzhisheng/pro/OfflineTTS;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "tts_default_synth"

    invoke-static {p2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/reecedunn/espeak/TtsService;->initializeTtsing:Z

    if-nez v0, :cond_6

    invoke-static {p1}, Lcom/reecedunn/espeak/CheckVoiceData;->hasBaseResources(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/reecedunn/espeak/CheckVoiceData;->canUpgradeResources(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object p2, p0, Lcn/yunzhisheng/pro/OfflineTTS;->e:Landroid/content/BroadcastReceiver;

    if-nez p2, :cond_5

    new-instance p2, Lcn/yunzhisheng/pro/OfflineTTS$a;

    invoke-direct {p2, p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS$a;-><init>(Lcn/yunzhisheng/pro/OfflineTTS;Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    iput-object p2, p0, Lcn/yunzhisheng/pro/OfflineTTS;->e:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "com.reecedunn.espeak.LANGUAGES_UPDATED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/reecedunn/espeak/DownloadVoiceData;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_6
    :goto_1
    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/pro/OfflineTTS;->i(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    return-void
.end method

.method private E(Ljava/lang/String;I)Z
    .locals 8

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onSpeak2(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onAsyncSpeak2(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_2

    invoke-direct {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->g(Ljava/lang/String;)V

    return v3

    :cond_2
    iget v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->s:I

    const v2, 0xf4240

    if-le v0, v2, :cond_3

    iput v1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->s:I

    :cond_3
    iget v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->s:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcn/yunzhisheng/pro/OfflineTTS;->s:I

    int-to-long v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->t:Ljava/lang/String;

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getMode()I

    move-result v0

    iget-boolean v6, p0, Lcn/yunzhisheng/pro/OfflineTTS;->b:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcn/yunzhisheng/pro/OfflineTTS;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onSpeak2(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcn/yunzhisheng/pro/OfflineTTS;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onAsyncSpeak2(Ljava/lang/String;)V

    :goto_1
    iget-object v6, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    iget v7, p0, Lcn/yunzhisheng/pro/OfflineTTS;->x:F

    invoke-virtual {v6, v7}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "utteranceId"

    invoke-virtual {v6, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "volume"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v6, v2, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v2, "streamType"

    invoke-virtual {v6, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "espeak"

    iget-boolean v2, p0, Lcn/yunzhisheng/pro/OfflineTTS;->w:Z

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcn/yunzhisheng/pro/OfflineTTS;->t:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v6, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method static bridge synthetic a(Lcn/yunzhisheng/pro/OfflineTTS;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->e:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic b(Lcn/yunzhisheng/pro/OfflineTTS;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic c(Lcn/yunzhisheng/pro/OfflineTTS;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->z:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic d(Lcn/yunzhisheng/pro/OfflineTTS;Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/pro/OfflineTTS;->i(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic e(Lcn/yunzhisheng/pro/OfflineTTS;Ljava/lang/String;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/yunzhisheng/pro/OfflineTTS;->E(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private g(Ljava/lang/String;)V
    .locals 8

    const-string v0, "start"

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lk2/t;->b(ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "start2"

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

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

    add-int/lit16 v6, v5, 0x80

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcn/yunzhisheng/pro/OfflineTTS;->f(Ljava/lang/String;)I

    move v5, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "end"

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

    return-void
.end method

.method private h(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method private i(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->y:Landroid/os/Handler;

    iput-object p2, p0, Lcn/yunzhisheng/pro/OfflineTTS;->v:Ljava/lang/String;

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Lcn/yunzhisheng/pro/OfflineTTS$c;

    invoke-direct {v2, p0}, Lcn/yunzhisheng/pro/OfflineTTS$c;-><init>(Lcn/yunzhisheng/pro/OfflineTTS;)V

    invoke-direct {v0, v1, v2, p2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    new-instance p2, Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;

    invoke-direct {p2, p0}, Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;-><init>(Lcn/yunzhisheng/pro/OfflineTTS;)V

    iput-object p2, p0, Lcn/yunzhisheng/pro/OfflineTTS;->c:Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;

    :try_start_0
    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfflineTTS unregisterReceiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

    :goto_0
    :try_start_1
    iget-object p2, p0, Lcn/yunzhisheng/pro/OfflineTTS;->c:Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;

    invoke-virtual {p2}, Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;->a()Landroid/content/IntentFilter;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OfflineTTS  registerReceiver "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private l(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playText "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->h:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speak "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcn/yunzhisheng/pro/OfflineTTS;->E(Ljava/lang/String;I)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

    return v1
.end method

.method public static n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nirenr.talkman.ACTION_UNI_PITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.EXTRA_TEXT_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nirenr.talkman.ACTION_UNI_SCALE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.EXTRA_TEXT_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f0706b1

    invoke-static {p0, v0, p1}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nirenr.talkman.ACTION_UNI_SPEED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.EXTRA_TEXT_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nirenr.talkman.ACTION_UNI_VOLUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.EXTRA_TEXT_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speak "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    invoke-virtual {p0}, Lcn/yunzhisheng/pro/OfflineTTS;->D()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->h:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x100

    if-ge v1, v2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->h:Z

    invoke-direct {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->l(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    invoke-direct {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->g(Ljava/lang/String;)V

    return v0

    :cond_3
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public B(Ljava/lang/String;Z)I
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->A(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->g(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcn/yunzhisheng/pro/OfflineTTS;->p:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "speak "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->l(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

    return-void
.end method

.method public D()V
    .locals 1

    const-string v0, "stop"

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->h:Z

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->j:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->h:Z

    invoke-direct {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->l(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->j:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->h:Z

    return v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->m:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unitts "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->c:Lcn/yunzhisheng/pro/OfflineTTS$UniReceiver;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcn/yunzhisheng/pro/OfflineTTS;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->f:Lcn/yunzhisheng/pro/OfflineTTS;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->j:Z

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 1

    const-string v0, "onDone"

    invoke-virtual {p0, v0}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->t:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->y:Landroid/os/Handler;

    new-instance v0, Lcn/yunzhisheng/pro/OfflineTTS$d;

    invoke-direct {v0, p0}, Lcn/yunzhisheng/pro/OfflineTTS$d;-><init>(Lcn/yunzhisheng/pro/OfflineTTS;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->h:Z

    iget-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->g:La/g;

    if-eqz p1, :cond_2

    invoke-interface {p1}, La/g;->onEnd()V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    const-string p1, "onError"

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->z:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->y:Landroid/os/Handler;

    new-instance v0, Lcn/yunzhisheng/pro/OfflineTTS$e;

    invoke-direct {v0, p0}, Lcn/yunzhisheng/pro/OfflineTTS$e;-><init>(Lcn/yunzhisheng/pro/OfflineTTS;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->h:Z

    iget-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->g:La/g;

    if-eqz p1, :cond_1

    invoke-interface {p1}, La/g;->a()V

    :cond_1
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0

    const-string p1, "onStart"

    invoke-virtual {p0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->k(Ljava/lang/String;)V

    iget-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->g:La/g;

    if-eqz p1, :cond_0

    invoke-interface {p1}, La/g;->onStart()V

    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 2

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x42480000    # 50.0f

    div-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    :cond_0
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->p:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->l:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->k:Z

    if-eqz v0, :cond_2

    div-int/lit8 p1, p1, 0x5

    :cond_2
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->p:Z

    iput-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->q:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->r:I

    return-void
.end method

.method public u(I)V
    .locals 7

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    const/16 v0, 0x32

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    int-to-double v5, p1

    mul-double v5, v5, v3

    div-double/2addr v5, v1

    if-ge p1, v0, :cond_0

    double-to-float p1, v5

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    :goto_0
    iput p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->x:F

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    :cond_1
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->o:Ljava/lang/String;

    return-void
.end method

.method public w(I)V
    .locals 1

    iget v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->i:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->i:I

    return-void
.end method

.method public x(La/g;)V
    .locals 0

    iput-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->g:La/g;

    return-void
.end method

.method public y(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUseAccessibilityVolume "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yunzhisheng"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcn/yunzhisheng/pro/OfflineTTS;->n:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->n:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v2, 0xb

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->d:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcn/yunzhisheng/pro/OfflineTTS;->u:F

    return-void
.end method
