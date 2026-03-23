.class public Li2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/speech/Recognizer;
.implements Lcom/vivo/speechsdk/asr/api/IRecognizerListener;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Lcom/nirenr/talkman/speech/RecognizerListener;

.field private c:Lcom/vivo/speechsdk/asr/api/ASREngine;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/speech/RecognizerListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Li2/d;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-direct {p0}, Li2/d;->c()V

    return-void
.end method

.method static bridge synthetic a(Li2/d;)Lcom/nirenr/talkman/speech/RecognizerListener;
    .locals 0

    iget-object p0, p0, Li2/d;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    return-object p0
.end method

.method static bridge synthetic b(Li2/d;)V
    .locals 0

    invoke-direct {p0}, Li2/d;->c()V

    return-void
.end method

.method private c()V
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

    new-instance v2, Li2/d$a;

    invoke-direct {v2, p0}, Li2/d$a;-><init>(Li2/d;)V

    invoke-static {v1, v0, v2}, Lcom/vivo/speechsdk/api/SpeechSdk;->init(Landroid/app/Application;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Lcom/vivo/speechsdk/api/InitListener;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/asr/api/ASREngine;->createEngine()Lcom/vivo/speechsdk/asr/api/ASREngine;

    move-result-object v0

    iput-object v0, p0, Li2/d;->c:Lcom/vivo/speechsdk/asr/api/ASREngine;

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

    const-string v3, "key_engine_type"

    const-string v4, "shortasrjovi"

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_preload_enable"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_connection_resue_enable"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Li2/d;->c:Lcom/vivo/speechsdk/asr/api/ASREngine;

    new-instance v2, Li2/d$b;

    invoke-direct {v2, p0}, Li2/d$b;-><init>(Li2/d;)V

    invoke-virtual {v1, v0, v2}, Lcom/vivo/speechsdk/asr/api/ASREngine;->init(Landroid/os/Bundle;Lcom/vivo/speechsdk/api/InitListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Li2/d;->c:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->cancel()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Li2/d;->c:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->destroy()V

    return-void
.end method

.method public onEnd()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 1

    iget-object v0, p0, Li2/d;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/speech/RecognizerListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onRecordEnd()V
    .locals 0

    return-void
.end method

.method public onRecordStart()V
    .locals 1

    iget-object v0, p0, Li2/d;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/RecognizerListener;->onReady()V

    return-void
.end method

.method public onResult(ILjava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "is_last"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li2/d;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/RecognizerListener;->onEnd()V

    iget-object v0, p0, Li2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Li2/d$c;

    invoke-direct {v1, p0, p1}, Li2/d$c;-><init>(Li2/d;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Li2/d;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {p1, p2}, Lcom/nirenr/talkman/speech/RecognizerListener;->onResult(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSpeechEnd()V
    .locals 0

    return-void
.end method

.method public onSpeechStart()V
    .locals 1

    iget-object v0, p0, Li2/d;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/RecognizerListener;->onBegin()V

    return-void
.end method

.method public onVolumeChanged(I[B)V
    .locals 0

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startInputting()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_inner_record"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_request_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_business_info"

    const-string v3, "vivo"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_vad_mode"

    const-string v3, "normal"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_silence_count"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_audio_source"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_punctuation"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_vad_front_time"

    const/16 v3, 0x1388

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_vad_end_time"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_vad_enable"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_chinese_to_digital"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_asr_time_out"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_encode_enable"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Li2/d;->c:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v1, v0, p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IRecognizerListener;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Li2/d;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nirenr/talkman/speech/RecognizerListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_inner_record"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_request_mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_business_info"

    const-string v3, "vivo"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_vad_mode"

    const-string v3, "normal"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_silence_count"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_audio_source"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_punctuation"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_vad_front_time"

    const/16 v3, 0x1388

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_vad_end_time"

    const/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_vad_enable"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_chinese_to_digital"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "key_asr_time_out"

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_encode_enable"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Li2/d;->c:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v1, v0, p0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IRecognizerListener;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Li2/d;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nirenr/talkman/speech/RecognizerListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Li2/d;->c:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->stop()V

    return-void
.end method

.method public updateUserData()V
    .locals 4

    iget-object v0, p0, Li2/d;->c:Lcom/vivo/speechsdk/asr/api/ASREngine;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Li2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAllAppList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Li2/d;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f010008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v2, "\u8bfb\u5c4f"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "\u89e3\u8bf4\u8bfb\u5c4f"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "\u89e3\u8bf4\u8bfb\u5c4f\u56fd\u9645\u7248"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v1, "key_hotword_content"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "key_force_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
