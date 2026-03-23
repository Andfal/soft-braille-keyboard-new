.class public Lj2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/tts/TextToSpeak;


# static fields
.field private static k:Lcom/vivo/speechsdk/tts/api/TTSEngine;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

.field public c:Ljava/lang/String;

.field private final d:Z

.field private e:I

.field private f:I

.field private g:F

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;ZZLcom/nirenr/talkman/tts/TextToSpeakListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "x2_yige"

    iput-object v0, p0, Lj2/h;->c:Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, Lj2/h;->e:I

    const/4 v1, 0x3

    iput v1, p0, Lj2/h;->f:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lj2/h;->g:F

    iput v0, p0, Lj2/h;->h:I

    iput v0, p0, Lj2/h;->i:I

    iput-object p1, p0, Lj2/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p5, p0, Lj2/h;->b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    iput-boolean p3, p0, Lj2/h;->d:Z

    invoke-virtual {p0, p4}, Lj2/h;->setUseAccessibilityVolume(Z)V

    iput-object p2, p0, Lj2/h;->c:Ljava/lang/String;

    sget-object p1, Lj2/h;->k:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lj2/h;->e()V

    :cond_0
    return-void
.end method

.method static bridge synthetic a(Lj2/h;)Lcom/nirenr/talkman/tts/TextToSpeakListener;
    .locals 0

    iget-object p0, p0, Lj2/h;->b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    return-object p0
.end method

.method static bridge synthetic b(Lj2/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lj2/h;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic c(Lj2/h;)V
    .locals 0

    invoke-direct {p0}, Lj2/h;->e()V

    return-void
.end method

.method private e()V
    .locals 5

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->isInit()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-instance v0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    invoke-direct {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;-><init>()V

    invoke-static {}, Lcom/androlua/LuaUtil;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withVaid(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withModel(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v0

    const-string v3, "10.2.136"

    invoke-virtual {v0, v3}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withSysVer(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v0

    const-string v3, "1.0.0.1"

    invoke-virtual {v0, v3}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withAppVer(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withProduct(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v0

    const-string v3, "10"

    invoke-virtual {v0, v3}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withAnVer(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withNetEnable(Z)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withDebugEnable(Z)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withLogValue(I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->withPkg(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v0

    const-string v1, "key_save_audio_max_count"

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->add(Ljava/lang/String;I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    const-string v2, "\u65e5\u5fd7"

    invoke-virtual {v1, v2}, Lcom/androlua/LuaApplication;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_work_dir"

    invoke-virtual {v0, v2, v1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->build()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    move-result-object v0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    new-instance v2, Lj2/h$a;

    invoke-direct {v2, p0}, Lj2/h$a;-><init>(Lj2/h;)V

    invoke-static {v1, v0, v2}, Lcom/vivo/speechsdk/api/SpeechSdk;->init(Landroid/app/Application;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Lcom/vivo/speechsdk/api/InitListener;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->createEngine()Lcom/vivo/speechsdk/tts/api/TTSEngine;

    move-result-object v0

    sput-object v0, Lj2/h;->k:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key_appid"

    const-string v4, "6734879590"

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_appkey"

    const-string v4, "vnqFSHaCCrutXCvr"

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_engine_mode"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "key_preload_enable"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_connection_resue_enable"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_engine_type"

    const-string v2, "long_audio_synthesis_screen"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lj2/h;->k:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    new-instance v2, Lj2/h$b;

    invoke-direct {v2, p0}, Lj2/h$b;-><init>(Lj2/h;)V

    invoke-virtual {v1, v0, v2}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->init(Landroid/os/Bundle;Lcom/vivo/speechsdk/api/InitListener;)V

    return-void
.end method

.method public static f()V
    .locals 1

    sget-object v0, Lj2/h;->k:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->destroy()V

    const/4 v0, 0x0

    sput-object v0, Lj2/h;->k:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    return-void
.end method


# virtual methods
.method public appendSpeak(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lj2/h;->speak(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lj2/h;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj2/h;->j:I

    return v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public isSpeaking()Z
    .locals 1

    sget-object v0, Lj2/h;->k:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method public setStreamType(I)V
    .locals 0

    iput p1, p0, Lj2/h;->f:I

    return-void
.end method

.method public setTtsPitch(I)V
    .locals 0

    iput p1, p0, Lj2/h;->h:I

    return-void
.end method

.method public setTtsScale(F)V
    .locals 0

    iput p1, p0, Lj2/h;->g:F

    return-void
.end method

.method public setTtsSpeed(I)V
    .locals 0

    iput p1, p0, Lj2/h;->e:I

    return-void
.end method

.method public setTtsVolume(F)V
    .locals 2

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/high16 p1, 0x42c80000    # 100.0f

    :cond_0
    float-to-int p1, p1

    iput p1, p0, Lj2/h;->i:I

    return-void
.end method

.method public setUseAccessibilityVolume(Z)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x3

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    const/16 v2, 0xa

    :cond_0
    iput v2, p0, Lj2/h;->f:I

    return-void
.end method

.method public slowSpeak(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lj2/h;->speak(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public speak(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lj2/h;->k:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_sample_rate"

    const v3, 0xbb80

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_is_play_sound"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "key_text"

    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_speed"

    iget v4, p0, Lj2/h;->e:I

    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_pitch"

    iget v4, p0, Lj2/h;->h:I

    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_play_stream"

    iget v4, p0, Lj2/h;->f:I

    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_volume"

    iget v4, p0, Lj2/h;->i:I

    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_audio_focus"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_speaker"

    iget-object v2, p0, Lj2/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_tts_time_out"

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lj2/h;->d()I

    move-result v1

    sget-object v2, Lj2/h;->k:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    new-instance v4, Lj2/h$c;

    invoke-direct {v4, p0, v1, p1}, Lj2/h$c;-><init>(Lj2/h;ILjava/lang/String;)V

    invoke-virtual {v2, v0, v4}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->speak(Landroid/os/Bundle;Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;)I

    return v3
.end method

.method public stop()V
    .locals 1

    sget-object v0, Lj2/h;->k:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->stop()V

    return-void
.end method
