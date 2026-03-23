.class public Lcom/baidu/speech/asr/WakeUpControl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/speech/core/BDSSDKLoader$BDSCoreEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/speech/asr/WakeUpControl$DebugLogLevel;
    }
.end annotation


# static fields
.field private static ASR_PARAM_KEY_OFFLINE_APP_CODE:Ljava/lang/String; = "offline_param_key_app_code.string"

.field private static ASR_PARAM_KEY_PLATFORM:Ljava/lang/String; = "asr_param_key_platform.string"

.field private static ASR_PARAM_KEY_SDK_VERSION:Ljava/lang/String; = "asr_param_key_sdk_version.string"

.field private static COMMON_PARAM_KEY_DEBUG_LOG_LEVEL:Ljava/lang/String; = "common_param_key_debug_log_level.int"

.field private static final EWakeupEngineWorkStatusError:I = 0x6

.field private static final EWakeupEngineWorkStatusLoaded:I = 0x3

.field private static final EWakeupEngineWorkStatusNewData:I = 0x7

.field private static final EWakeupEngineWorkStatusReadyed:I = 0x1

.field private static final EWakeupEngineWorkStatusStarted:I = 0x0

.field private static final EWakeupEngineWorkStatusStopped:I = 0x2

.field private static final EWakeupEngineWorkStatusTriggered:I = 0x5

.field private static final EWakeupEngineWorkStatusUnLoaded:I = 0x4

.field private static MIC_PARAM_KEY_AUDIO_FILE_PATH:Ljava/lang/String; = "mic_audio_file_path.string"

.field private static MIC_PARAM_KEY_SOCKET_PORT:Ljava/lang/String; = "mic_param_key_socket_port.int"

.field private static OFFLINE_PARAM_KEY_LICENSE_FILE_PATH:Ljava/lang/String; = "offline_param_key_license_filepath.string"

.field private static final TAG:Ljava/lang/String; = "WakeUpControl"

.field private static WAK_CMD_CONFIG:Ljava/lang/String; = "wak.config"

.field private static WAK_CMD_DATA:Ljava/lang/String; = "wak.data"

.field private static WAK_CMD_LOAD_ENGINE:Ljava/lang/String; = "wak.load"

.field private static WAK_CMD_START:Ljava/lang/String; = "wak.start"

.field private static WAK_CMD_STOP:Ljava/lang/String; = "wak.stop"

.field private static WAK_CMD_UNLOAD_ENGINE:Ljava/lang/String; = "wak.unload"

.field private static WP_PARAM_KEY_ENABLE_MODEL_VAD:Ljava/lang/String; = "wakeup_param_key_mode.int"

.field private static WP_PARAM_KEY_ENABLE_VAD:Ljava/lang/String; = "wakeup_param_key_enable_vad.bool"

.field private static WP_PARAM_KEY_VAD_DAT_FILE_PATH:Ljava/lang/String; = "wakeup_param_key_vad_dat_file_path.string"

.field private static WP_PARAM_KEY_WAKEUP_ACCEPT_AUDIO_DATA:Ljava/lang/String; = "wakeup_param_key_accept_audio_data.bool"

.field private static WP_PARAM_KEY_WAKEUP_DAT_FILE_PATH:Ljava/lang/String; = "wakeup_param_key_dat_filepath.string"

.field private static WP_PARAM_KEY_WAKEUP_KWD:Ljava/lang/String; = "wakeup_param_key_kwd.bool"

.field private static WP_PARAM_KEY_WAKEUP_MODE:Ljava/lang/String; = "wakeup_param_key_mode.int"

.field private static WP_PARAM_KEY_WAKEUP_WORDS:Ljava/lang/String; = "wakeup_param_key_words.vector<string>"

.field private static WP_PARAM_KEY_WAKEUP_WORDS_FILE_PATH:Ljava/lang/String; = "wakeup_param_key_words_filepath.string"


# instance fields
.field private context:Landroid/content/Context;

.field private mFeedBackAudio:Z

.field private mIsWorking:Z

.field private mListener:Lcom/baidu/speech/EventListener;

.field private mParams:Lorg/json/JSONObject;

.field private m_Wakeupcore:Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;

.field private outFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/speech/asr/WakeUpControl;->outFile:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/speech/asr/WakeUpControl;->mIsWorking:Z

    iput-object p1, p0, Lcom/baidu/speech/asr/WakeUpControl;->context:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Lcom/baidu/speech/core/BDSSDKLoader;->loadLibraries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "WakeupCore"

    invoke-static {v0, p1}, Lcom/baidu/speech/core/BDSSDKLoader;->getSDKObjectForSDKType(Ljava/lang/String;Landroid/content/Context;)Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/speech/asr/WakeUpControl;->m_Wakeupcore:Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;->instanceInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/baidu/speech/asr/WakeUpControl;->m_Wakeupcore:Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;

    invoke-interface {p1, p0}, Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;->setListener(Lcom/baidu/speech/core/BDSSDKLoader$BDSCoreEventListener;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Failed initialize ASR Core native layer"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "ASR core support is not linked in package"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Can\'t found ASR Core native method"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    new-instance p1, Ljava/lang/Exception;

    const/16 v0, 0x1389

    invoke-direct {p0, v0}, Lcom/baidu/speech/asr/WakeUpControl;->generateErrorResult(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private asrCallBack(Lcom/baidu/speech/core/BDSMessage;Lcom/baidu/speech/EventListener;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/baidu/speech/core/BDSMessage;->m_messageName:Ljava/lang/String;

    const-string v3, "WAKEUP.callback"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    const-string v3, "cb.wak.status.int"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/speech/core/BDSParamBase$BDSIntParam;

    iget v2, v2, Lcom/baidu/speech/core/BDSParamBase$BDSIntParam;->iValue:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WPCallBack:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/speech/core/BDSMessage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "WakeUpControl"

    invoke-static {v5, v4}, Lcom/baidu/speech/utils/LogUtil;->v(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz v2, :cond_6

    if-eq v2, v3, :cond_5

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, v0, Lcom/baidu/speech/core/BDSMessage;->m_messageData:[B

    iget-boolean v2, v1, Lcom/baidu/speech/asr/WakeUpControl;->mFeedBackAudio:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    const-string v5, "wp.audio"

    const/4 v6, 0x0

    const/4 v8, 0x0

    array-length v9, v0

    move-object/from16 v4, p2

    move-object v7, v0

    invoke-interface/range {v4 .. v9}, Lcom/baidu/speech/EventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;[BII)V

    :cond_1
    invoke-direct {v1, v0}, Lcom/baidu/speech/asr/WakeUpControl;->saveOutFile([B)V

    goto/16 :goto_3

    :cond_2
    iput-boolean v6, v1, Lcom/baidu/speech/asr/WakeUpControl;->mIsWorking:Z

    iget-object v2, v0, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    const-string v3, "cb.error.domain.int16_t"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/speech/core/BDSParamBase$BDSIntParam;

    iget v2, v2, Lcom/baidu/speech/core/BDSParamBase$BDSIntParam;->iValue:I

    iget-object v3, v0, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    const-string v4, "cb.error.desc.string"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    iget-object v3, v3, Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;->iValue:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v0, v0, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    const-string v3, "cb.error.code.int16_t"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/speech/core/BDSParamBase$BDSIntParam;

    iget v0, v0, Lcom/baidu/speech/core/BDSParamBase$BDSIntParam;->iValue:I

    :try_start_0
    invoke-direct {v1, v2, v0}, Lcom/baidu/speech/asr/WakeUpControl;->generateErrorResult(II)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    goto :goto_0

    :goto_1
    const-string v3, "wp.error"

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    const-string v2, "cb.wak.result.string"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    iget-object v0, v0, Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;->iValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "word"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "errorCode"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "errorDesc"

    const-string v3, "wakup success"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "wp.data"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p2

    invoke-interface/range {v4 .. v9}, Lcom/baidu/speech/EventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_4
    iput-boolean v6, v1, Lcom/baidu/speech/asr/WakeUpControl;->mIsWorking:Z

    const-string v11, "wp.exit"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p2

    invoke-interface/range {v10 .. v15}, Lcom/baidu/speech/EventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_5
    const-string v3, "wp.ready"

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p2

    invoke-interface/range {v2 .. v7}, Lcom/baidu/speech/EventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_6
    const-string v9, "wp.enter"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p2

    invoke-interface/range {v8 .. v13}, Lcom/baidu/speech/EventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;[BII)V

    :cond_7
    :goto_3
    return-void
.end method

.method private clearOutFile()V
    .locals 4

    iget-object v0, p0, Lcom/baidu/speech/asr/WakeUpControl;->outFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/baidu/speech/asr/WakeUpControl;->outFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_2
    throw v0

    :cond_1
    :goto_3
    return-void
.end method

.method private generateErrorResult(I)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/baidu/speech/utils/AsrError;->getDescFromCode(I)Ljava/lang/String;

    move-result-object v0

    div-int/lit16 v1, p1, 0x3e8

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "error"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "desc"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sub_error"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateErrorResult(II)Ljava/lang/String;
    .locals 2

    invoke-static {p2}, Lcom/baidu/speech/utils/AsrError;->getDescFromCode(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x26

    const/4 v1, 0x1

    if-ne p1, v0, :cond_b

    if-ne v1, p2, :cond_1

    const/16 p2, 0x2af9

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p1, p2, :cond_2

    const/16 p2, 0x2afa

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne p1, p2, :cond_3

    const/16 p2, 0x2afb

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    if-ne p1, p2, :cond_4

    const/16 p2, 0x2afc

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    if-ne p1, p2, :cond_5

    const/16 p2, 0x2afd

    goto :goto_0

    :cond_5
    const/4 p1, 0x6

    if-ne p1, p2, :cond_6

    const/16 p2, 0x2afe

    goto :goto_0

    :cond_6
    const/4 p1, 0x7

    if-ne p1, p2, :cond_7

    const/16 p2, 0x2aff

    goto :goto_0

    :cond_7
    const/16 p1, 0x8

    if-ne p1, p2, :cond_8

    const/16 p2, 0x2b00

    goto :goto_0

    :cond_8
    const/16 p1, 0x9

    if-ne p1, p2, :cond_9

    const/16 p2, 0x2b01

    goto :goto_0

    :cond_9
    const/16 p1, 0xa

    if-ne p1, p2, :cond_a

    const/16 p2, 0x2b02

    goto :goto_0

    :cond_a
    const/16 p1, 0xb

    if-ne p1, p2, :cond_c

    const/16 p2, 0x2b03

    goto :goto_0

    :cond_b
    const/16 v0, 0x14

    if-ne p1, v0, :cond_c

    if-ne v1, p2, :cond_c

    const/16 p2, 0xc1c

    goto :goto_0

    :cond_c
    const/4 p2, -0x1

    :goto_0
    invoke-direct {p0, p2}, Lcom/baidu/speech/asr/WakeUpControl;->generateErrorResult(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDiskCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method private initWp(Lcom/baidu/speech/core/BDSErrorDescription;Lorg/json/JSONObject;)Lcom/baidu/speech/core/BDSErrorDescription;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/baidu/speech/asr/WakeUpControl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, v1, Lcom/baidu/speech/asr/WakeUpControl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "com.baidu.speech.APP_ID"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string v0, "appid"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "words"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_1

    :try_start_1
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/baidu/speech/asr/WakeUpControl;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    aput-object v7, v4, v6

    const-string v7, "libbd_easr_s1_merge_normal_20151216.dat.so"

    const/4 v8, 0x1

    aput-object v7, v4, v8

    const-string v7, "%s/%s"

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "res-file"

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "wp.res-file"

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "wakeup_dat_filepath"

    invoke-virtual {v2, v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "kws-file"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "wp.kws-file"

    invoke-virtual {v2, v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "infile"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "license"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "license-file-path"

    invoke-virtual {v2, v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "decoder-offline.license-file-path"

    invoke-virtual {v2, v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "log_level"

    const/4 v12, -0x1

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x3

    const-string v14, "BDSPEECH"

    invoke-static {v14, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v11, 0x5

    goto :goto_3

    :cond_2
    invoke-static {v14, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v11, 0x6

    :cond_3
    :goto_3
    const-string v13, "accept-audio-data"

    invoke-virtual {v2, v13, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v13

    iput-boolean v13, v1, Lcom/baidu/speech/asr/WakeUpControl;->mFeedBackAudio:Z

    const-string v13, "outfile"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/baidu/speech/asr/WakeUpControl;->outFile:Ljava/lang/String;

    new-instance v13, Lcom/baidu/speech/core/BDSMessage;

    invoke-direct {v13}, Lcom/baidu/speech/core/BDSMessage;-><init>()V

    sget-object v14, Lcom/baidu/speech/asr/WakeUpControl;->WAK_CMD_CONFIG:Ljava/lang/String;

    iput-object v14, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageName:Ljava/lang/String;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iput-object v14, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v15, Lcom/baidu/speech/asr/WakeUpControl;->ASR_PARAM_KEY_OFFLINE_APP_CODE:Ljava/lang/String;

    const-string v12, "java.lang.String"

    invoke-static {v3, v12}, Lcom/baidu/speech/core/BDSParamBase;->objectParam(Ljava/lang/Object;Ljava/lang/String;)Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    move-result-object v3

    invoke-virtual {v14, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v14, Lcom/baidu/speech/asr/WakeUpControl;->WP_PARAM_KEY_WAKEUP_DAT_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/baidu/speech/asr/WakeUpControl;->loadSourceFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v12}, Lcom/baidu/speech/core/BDSParamBase;->objectParam(Ljava/lang/Object;Ljava/lang/String;)Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v4, Lcom/baidu/speech/asr/WakeUpControl;->WP_PARAM_KEY_WAKEUP_WORDS:Ljava/lang/String;

    const-string v14, "java.util.Vector;"

    invoke-static {v5, v14}, Lcom/baidu/speech/core/BDSParamBase;->objectParam(Ljava/lang/Object;Ljava/lang/String;)Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v4, Lcom/baidu/speech/asr/WakeUpControl;->WP_PARAM_KEY_WAKEUP_WORDS_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v7}, Lcom/baidu/speech/asr/WakeUpControl;->loadSourceFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v12}, Lcom/baidu/speech/core/BDSParamBase;->objectParam(Ljava/lang/Object;Ljava/lang/String;)Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v4, Lcom/baidu/speech/asr/WakeUpControl;->OFFLINE_PARAM_KEY_LICENSE_FILE_PATH:Ljava/lang/String;

    invoke-direct {v1, v10}, Lcom/baidu/speech/asr/WakeUpControl;->loadSourceFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v12}, Lcom/baidu/speech/core/BDSParamBase;->objectParam(Ljava/lang/Object;Ljava/lang/String;)Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v4, Lcom/baidu/speech/asr/WakeUpControl;->MIC_PARAM_KEY_AUDIO_FILE_PATH:Ljava/lang/String;

    invoke-static {v9, v12}, Lcom/baidu/speech/core/BDSParamBase;->objectParam(Ljava/lang/Object;Ljava/lang/String;)Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "wp.vad_enable"

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v4, Lcom/baidu/speech/asr/WakeUpControl;->WP_PARAM_KEY_ENABLE_VAD:Ljava/lang/String;

    invoke-static {v8}, Lcom/baidu/speech/core/BDSParamBase;->boolParam(Z)Lcom/baidu/speech/core/BDSParamBase$BDSBooleanParam;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v4, Lcom/baidu/speech/asr/WakeUpControl;->WP_PARAM_KEY_ENABLE_MODEL_VAD:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/speech/core/BDSParamBase;->intParam(I)Lcom/baidu/speech/core/BDSParamBase$BDSIntParam;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v3, Lcom/baidu/speech/asr/WakeUpControl;->WP_PARAM_KEY_VAD_DAT_FILE_PATH:Ljava/lang/String;

    iget-object v4, v1, Lcom/baidu/speech/asr/WakeUpControl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-static {v4, v12}, Lcom/baidu/speech/core/BDSParamBase;->objectParam(Ljava/lang/Object;Ljava/lang/String;)Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    move-result-object v4

    goto :goto_4

    :cond_4
    iget-object v0, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v3, Lcom/baidu/speech/asr/WakeUpControl;->WP_PARAM_KEY_ENABLE_VAD:Ljava/lang/String;

    invoke-static {v6}, Lcom/baidu/speech/core/BDSParamBase;->boolParam(Z)Lcom/baidu/speech/core/BDSParamBase$BDSBooleanParam;

    move-result-object v4

    :goto_4
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "wp.kwd_enable"

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v3, Lcom/baidu/speech/asr/WakeUpControl;->WP_PARAM_KEY_WAKEUP_KWD:Ljava/lang/String;

    invoke-static {v8}, Lcom/baidu/speech/core/BDSParamBase;->boolParam(Z)Lcom/baidu/speech/core/BDSParamBase$BDSBooleanParam;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "audio.socketport"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v4, Lcom/baidu/speech/asr/WakeUpControl;->MIC_PARAM_KEY_SOCKET_PORT:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/speech/core/BDSParamBase;->intParam(I)Lcom/baidu/speech/core/BDSParamBase$BDSIntParam;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-eq v11, v0, :cond_6

    iget-object v0, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v3, Lcom/baidu/speech/asr/WakeUpControl;->COMMON_PARAM_KEY_DEBUG_LOG_LEVEL:Ljava/lang/String;

    invoke-static {v11}, Lcom/baidu/speech/core/BDSParamBase;->intParam(I)Lcom/baidu/speech/core/BDSParamBase$BDSIntParam;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object v0, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v3, Lcom/baidu/speech/asr/WakeUpControl;->WP_PARAM_KEY_WAKEUP_ACCEPT_AUDIO_DATA:Ljava/lang/String;

    iget-boolean v4, v1, Lcom/baidu/speech/asr/WakeUpControl;->mFeedBackAudio:Z

    invoke-static {v4}, Lcom/baidu/speech/core/BDSParamBase;->boolParam(Z)Lcom/baidu/speech/core/BDSParamBase$BDSBooleanParam;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "accept-audio-volume"

    invoke-virtual {v2, v0, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v3, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    const-string v4, "mic_accept_audio_volume.bool"

    invoke-static {v0}, Lcom/baidu/speech/core/BDSParamBase;->boolParam(Z)Lcom/baidu/speech/core/BDSParamBase$BDSBooleanParam;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const-string v0, "wp.mode"

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_8

    iget-object v2, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v3, Lcom/baidu/speech/asr/WakeUpControl;->WP_PARAM_KEY_WAKEUP_MODE:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/speech/core/BDSParamBase;->intParam(I)Lcom/baidu/speech/core/BDSParamBase$BDSIntParam;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object v0, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v2, Lcom/baidu/speech/asr/WakeUpControl;->ASR_PARAM_KEY_PLATFORM:Ljava/lang/String;

    const-string v3, "Android"

    invoke-static {v3, v12}, Lcom/baidu/speech/core/BDSParamBase;->objectParam(Ljava/lang/Object;Ljava/lang/String;)Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v13, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v2, Lcom/baidu/speech/asr/WakeUpControl;->ASR_PARAM_KEY_SDK_VERSION:Ljava/lang/String;

    const-string v3, "C++ ASR core"

    invoke-static {v3, v12}, Lcom/baidu/speech/core/BDSParamBase;->objectParam(Ljava/lang/Object;Ljava/lang/String;)Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x2

    :try_start_2
    iget-object v0, v1, Lcom/baidu/speech/asr/WakeUpControl;->m_Wakeupcore:Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;

    invoke-interface {v0, v13}, Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;->postMessage(Lcom/baidu/speech/core/BDSMessage;)I

    move-result v0

    if-eqz v0, :cond_9

    new-instance v3, Lcom/baidu/speech/core/BDSErrorDescription;

    invoke-direct {v3}, Lcom/baidu/speech/core/BDSErrorDescription;-><init>()V

    iput v2, v3, Lcom/baidu/speech/core/BDSErrorDescription;->errorCode:I

    iput v8, v3, Lcom/baidu/speech/core/BDSErrorDescription;->errorDomain:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JNI: readyParamsWpStart Call to Native layer returned error! err( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/baidu/speech/core/BDSErrorDescription;->errorDescription:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v3

    :cond_9
    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/baidu/speech/core/BDSErrorDescription;

    invoke-direct {v0}, Lcom/baidu/speech/core/BDSErrorDescription;-><init>()V

    iput v2, v0, Lcom/baidu/speech/core/BDSErrorDescription;->errorCode:I

    iput v8, v0, Lcom/baidu/speech/core/BDSErrorDescription;->errorDomain:I

    const-string v2, "JNI: readyParamsWpStart Call to Native layer returned error! err"

    iput-object v2, v0, Lcom/baidu/speech/core/BDSErrorDescription;->errorDescription:Ljava/lang/String;

    return-object v0
.end method

.method private loadSourceFromUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "/"

    const/4 v1, 0x0

    if-eqz p1, :cond_d

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_b

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object p1

    :cond_1
    :try_start_0
    const-string v3, "(.*?)://(.*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v4, "asset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "assets"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "res"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, v2

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/assets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_1
    if-eqz v0, :cond_8

    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/speech/asr/WakeUpControl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {p1, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_7

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-object v1

    :catchall_0
    move-exception v1

    move-object v6, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v6

    goto :goto_8

    :catch_2
    move-exception v2

    move-object v6, v0

    move-object v0, p1

    move-object p1, v2

    move-object v2, v6

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_8

    :catch_3
    move-exception p1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :cond_8
    :try_start_5
    new-instance p1, Ljava/io/IOException;

    const-string v2, "bad data source"

    invoke-direct {p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_2
    move-exception p1

    move-object v0, v1

    goto :goto_8

    :catch_4
    move-exception p1

    move-object v0, v1

    move-object v2, v0

    :goto_5
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_9

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_6
    if-eqz v0, :cond_a

    :try_start_8
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_7
    return-object v1

    :catchall_3
    move-exception p1

    move-object v1, v2

    :goto_8
    if-eqz v1, :cond_b

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_9

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_9
    if-eqz v0, :cond_c

    :try_start_a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_a
    throw p1

    :cond_d
    :goto_b
    return-object v1
.end method

.method private postEvent(Lcom/baidu/speech/core/BDSErrorDescription;Ljava/lang/String;)Lcom/baidu/speech/core/BDSErrorDescription;
    .locals 5

    new-instance v0, Lcom/baidu/speech/core/BDSMessage;

    invoke-direct {v0}, Lcom/baidu/speech/core/BDSMessage;-><init>()V

    const-string v1, "wp"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "wak"

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/speech/core/BDSMessage;->m_messageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, v0, Lcom/baidu/speech/core/BDSMessage;->m_messageName:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/speech/asr/WakeUpControl;->mParams:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/baidu/speech/asr/WakeUpControl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/speech/utils/Policy;->app(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "decoder-server.app"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, v0, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v2, Lcom/baidu/speech/asr/WakeUpControl;->ASR_PARAM_KEY_PLATFORM:Ljava/lang/String;

    const-string v3, "Android"

    const-string v4, "java.lang.String"

    invoke-static {v3, v4}, Lcom/baidu/speech/core/BDSParamBase;->objectParam(Ljava/lang/Object;Ljava/lang/String;)Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/baidu/speech/core/BDSMessage;->m_messageParams:Ljava/util/HashMap;

    sget-object v2, Lcom/baidu/speech/asr/WakeUpControl;->ASR_PARAM_KEY_SDK_VERSION:Ljava/lang/String;

    const-string v3, "C++ ASR core"

    invoke-static {v3, v4}, Lcom/baidu/speech/core/BDSParamBase;->objectParam(Ljava/lang/Object;Ljava/lang/String;)Lcom/baidu/speech/core/BDSParamBase$BDSObjectParam;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " wakeup postEvent to c++  cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Message:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/baidu/speech/core/BDSMessage;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "WakeUpControl"

    invoke-static {p2, v2}, Lcom/baidu/speech/utils/LogUtil;->v(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p2, -0x2

    :try_start_0
    iget-object v2, p0, Lcom/baidu/speech/asr/WakeUpControl;->m_Wakeupcore:Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;

    invoke-interface {v2, v0}, Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;->postMessage(Lcom/baidu/speech/core/BDSMessage;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/baidu/speech/core/BDSErrorDescription;

    invoke-direct {p1}, Lcom/baidu/speech/core/BDSErrorDescription;-><init>()V

    iput p2, p1, Lcom/baidu/speech/core/BDSErrorDescription;->errorCode:I

    iput v1, p1, Lcom/baidu/speech/core/BDSErrorDescription;->errorDomain:I

    const-string v0, "JNI: readyParamsAsrStart Call to Native layer returned error! err"

    iput-object v0, p1, Lcom/baidu/speech/core/BDSErrorDescription;->errorDescription:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/baidu/speech/core/BDSErrorDescription;

    invoke-direct {p1}, Lcom/baidu/speech/core/BDSErrorDescription;-><init>()V

    iput p2, p1, Lcom/baidu/speech/core/BDSErrorDescription;->errorCode:I

    iput v1, p1, Lcom/baidu/speech/core/BDSErrorDescription;->errorDomain:I

    const-string p2, "JNI: readyParamsWpStart Call to Native layer returned error! err"

    iput-object p2, p1, Lcom/baidu/speech/core/BDSErrorDescription;->errorDescription:Ljava/lang/String;

    return-object p1
.end method

.method private saveOutFile([B)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/speech/asr/WakeUpControl;->outFile:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/baidu/speech/asr/WakeUpControl;->outFile:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :goto_1
    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_2
    throw p1

    :cond_1
    :goto_3
    return-void
.end method


# virtual methods
.method public postEvent(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/speech/core/BDSErrorDescription;
    .locals 7

    const-string v0, "audio.source"

    const-string v1, "audio.socketport"

    const-string v2, "JNI: ASR Core native layer is not initialized!"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " wakeup postEvent  cmd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " params:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "WakeUpControl"

    invoke-static {v5, v4}, Lcom/baidu/speech/utils/LogUtil;->v(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, -0x1

    :try_start_0
    iget-object v5, p0, Lcom/baidu/speech/asr/WakeUpControl;->m_Wakeupcore:Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;

    invoke-interface {v5}, Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;->instanceInitialized()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    new-instance p1, Lcom/baidu/speech/core/BDSErrorDescription;

    invoke-direct {p1}, Lcom/baidu/speech/core/BDSErrorDescription;-><init>()V

    :goto_0
    iput v4, p1, Lcom/baidu/speech/core/BDSErrorDescription;->errorCode:I

    iput v3, p1, Lcom/baidu/speech/core/BDSErrorDescription;->errorDomain:I

    iput-object v2, p1, Lcom/baidu/speech/core/BDSErrorDescription;->errorDescription:Ljava/lang/String;

    return-object p1

    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/baidu/speech/asr/WakeUpControl;->mParams:Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/baidu/speech/asr/WakeUpControl;->mParams:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/baidu/speech/asr/WakeUpControl;->mParams:Lorg/json/JSONObject;

    :goto_2
    const-string p2, "wp.start"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/baidu/speech/asr/WakeUpControl;->mIsWorking:Z

    if-eqz p2, :cond_3

    return-object v2

    :cond_3
    iput-boolean v3, p0, Lcom/baidu/speech/asr/WakeUpControl;->mIsWorking:Z

    :try_start_2
    iget-object p2, p0, Lcom/baidu/speech/asr/WakeUpControl;->mParams:Lorg/json/JSONObject;

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/baidu/speech/asr/WakeUpControl;->mParams:Lorg/json/JSONObject;

    const-string v4, "infile"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v4, p0, Lcom/baidu/speech/asr/WakeUpControl;->mParams:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/baidu/speech/asr/WakeUpControl;->mParams:Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    :cond_4
    invoke-static {p2, v3}, Lcom/baidu/speech/audio/MicrophoneServer;->create(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/baidu/speech/asr/WakeUpControl;->mParams:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_3
    iget-object p2, p0, Lcom/baidu/speech/asr/WakeUpControl;->mParams:Lorg/json/JSONObject;

    invoke-direct {p0, v2, p2}, Lcom/baidu/speech/asr/WakeUpControl;->initWp(Lcom/baidu/speech/core/BDSErrorDescription;Lorg/json/JSONObject;)Lcom/baidu/speech/core/BDSErrorDescription;

    sget-object p2, Lcom/baidu/speech/asr/WakeUpControl;->WAK_CMD_LOAD_ENGINE:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/baidu/speech/asr/WakeUpControl;->postEvent(Lcom/baidu/speech/core/BDSErrorDescription;Ljava/lang/String;)Lcom/baidu/speech/core/BDSErrorDescription;

    invoke-direct {p0}, Lcom/baidu/speech/asr/WakeUpControl;->clearOutFile()V

    goto :goto_4

    :cond_6
    const-string p2, "wp.stop"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lcom/baidu/speech/asr/WakeUpControl;->WAK_CMD_UNLOAD_ENGINE:Ljava/lang/String;

    invoke-direct {p0, v2, p2}, Lcom/baidu/speech/asr/WakeUpControl;->postEvent(Lcom/baidu/speech/core/BDSErrorDescription;Ljava/lang/String;)Lcom/baidu/speech/core/BDSErrorDescription;

    :cond_7
    :goto_4
    invoke-direct {p0, v2, p1}, Lcom/baidu/speech/asr/WakeUpControl;->postEvent(Lcom/baidu/speech/core/BDSErrorDescription;Ljava/lang/String;)Lcom/baidu/speech/core/BDSErrorDescription;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Lcom/baidu/speech/core/BDSErrorDescription;

    invoke-direct {p1}, Lcom/baidu/speech/core/BDSErrorDescription;-><init>()V

    goto/16 :goto_0
.end method

.method public receiveCoreEvent(Lcom/baidu/speech/core/BDSMessage;Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;)V
    .locals 0

    iget-object p2, p0, Lcom/baidu/speech/asr/WakeUpControl;->mListener:Lcom/baidu/speech/EventListener;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/baidu/speech/asr/WakeUpControl;->asrCallBack(Lcom/baidu/speech/core/BDSMessage;Lcom/baidu/speech/EventListener;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/baidu/speech/EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/asr/WakeUpControl;->mListener:Lcom/baidu/speech/EventListener;

    return-void
.end method
