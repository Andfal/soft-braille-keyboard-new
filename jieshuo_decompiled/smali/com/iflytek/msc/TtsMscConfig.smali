.class public Lcom/iflytek/msc/TtsMscConfig;
.super Lcom/iflytek/msc/MscConfig;
.source "SourceFile"


# static fields
.field private static final KEY_AUDIO_FORMAT:Ljava/lang/String; = "auf"

.field private static final KEY_AUE:Ljava/lang/String; = "aue"

.field private static final KEY_AUTH_ID:Ljava/lang/String; = "auth_id"

.field private static final KEY_ENGINE:Ljava/lang/String; = "ent"

.field private static final KEY_ENGINE_TYPE:Ljava/lang/String; = "engine_type"

.field private static final KEY_METHOD_OF_READ_NUMBER:Ljava/lang/String; = "rdn"

.field private static final KEY_ROLE:Ljava/lang/String; = "vcn"

.field private static final KEY_SERVER_URL:Ljava/lang/String; = "server_url"

.field private static final KEY_SPEED:Ljava/lang/String; = "speed"

.field private static final KEY_TTP:Ljava/lang/String; = "ttp"

.field private static final KEY_TTS_RES_PATH:Ljava/lang/String; = "tts_res_path"

.field private static final KEY_VOLUME:Ljava/lang/String; = "volume"

.field public static final MSC_AUDIO_FORMAT:Ljava/lang/String; = "audio/L16;rate="

.field public static final MSC_TTS_TIMEOUT:I = 0x2710


# instance fields
.field private mServerUrl:Ljava/lang/String;

.field private mTTSParams:Lcom/iflytek/msc/TtsParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/msc/MscConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "SPEECH"

    if-nez v0, :cond_0

    const-string p1, "appendParams empty KEY"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "appendParams empty Value key="

    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v0, 0x2c

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "erroe value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " key="

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    return-void
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/TtsMscConfig;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionParam(Ljava/lang/String;III)Ljava/lang/String;
    .locals 8

    const-string p1, "xzhd"

    invoke-virtual {p0}, Lcom/iflytek/msc/MscConfig;->getDownloadFromID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/iflytek/msc/TtsMscConfig;->getSessionParamForXZ(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {p3}, Lcom/iflytek/msc/TtsParams;->getCloudTTSRole()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {p4}, Lcom/iflytek/msc/TtsParams;->getCloudTTSEngineType()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {v0}, Lcom/iflytek/msc/TtsParams;->getTTSEngineType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "purextts"

    const-string v3, "local"

    const-string v4, "cloud"

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "ptts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    const-string v1, "tts_res_path"

    const-string v6, "ent"

    const-string v7, "engine_type"

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, p1, v7, v2}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object p4, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {p4}, Lcom/iflytek/msc/TtsParams;->getTtsResPath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, v1, p4}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {p0, p1, v7, v3}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, v6, p4}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v7, v4}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {p4}, Lcom/iflytek/msc/TtsParams;->getCloudTTSEngineType()Ljava/lang/String;

    move-result-object p4

    const-string v0, "intp65"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    const/16 p2, 0x5dc0

    goto :goto_2

    :pswitch_3
    invoke-virtual {p0, p1, v6, v0}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {p4}, Lcom/iflytek/msc/TtsParams;->getAuthId()Ljava/lang/String;

    move-result-object p4

    const-string v0, "auth_id"

    invoke-virtual {p0, p1, v0, p4}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    const-string p4, "vcn"

    invoke-virtual {p0, p1, p4, p3}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {v0}, Lcom/iflytek/msc/TtsParams;->getSpeed()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "speed"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, v0, p3}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {v0}, Lcom/iflytek/msc/TtsParams;->getVolume()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "volume"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, v0, p3}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {p4}, Lcom/iflytek/msc/TtsParams;->getPitch()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "pitch"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p4, p3}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "audio/L16;rate="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "auf"

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {p2}, Lcom/iflytek/msc/TtsParams;->getCloudTTSMethodOfReadNumber()Ljava/lang/String;

    move-result-object p2

    const-string p3, "rdn"

    invoke-virtual {p0, p1, p3, p2}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {p2}, Lcom/iflytek/msc/TtsParams;->getCloudTTSttp()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ttp"

    invoke-virtual {p0, p1, p3, p2}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {p2}, Lcom/iflytek/msc/TtsParams;->getServerUrl()Ljava/lang/String;

    move-result-object p2

    const-string p3, "server_url"

    invoke-virtual {p0, p1, p3, p2}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "aue"

    const-string p3, "raw"

    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x34ab83 -> :sswitch_3
        0x5a5de35 -> :sswitch_2
        0x625df6b -> :sswitch_1
        0x680cc173 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSessionParamForXZ(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {v1}, Lcom/iflytek/msc/TtsParams;->getCloudTTSRole()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vcn"

    invoke-virtual {p0, v0, v2, v1}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {v3}, Lcom/iflytek/msc/TtsParams;->getSpeed()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "speed"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {v2}, Lcom/iflytek/msc/TtsParams;->getVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "volume"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pitch"

    const-string v2, "50"

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "net_type"

    const-string v2, "wifi"

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "net_subtype"

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3e80

    if-ne p1, v1, :cond_0

    const-string v1, "speex-wb"

    goto :goto_0

    :cond_0
    const-string v1, "speex"

    :goto_0
    const-string v2, "aue"

    invoke-virtual {p0, v0, v2, v1}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "engine_type"

    const-string v2, "local"

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "speed_increase"

    const-string v2, "1"

    invoke-virtual {p0, v0, v1, v2}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio/L16;rate="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "auf"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "stream_type"

    const-string v1, "3"

    invoke-virtual {p0, v0, p1, v1}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "tts_data_notify"

    invoke-virtual {p0, v0, p1, v2}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "request_audio_focus"

    const-string v1, "false"

    invoke-virtual {p0, v0, p1, v1}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {p1}, Lcom/iflytek/msc/TtsParams;->getTtsResPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tts_res_path"

    invoke-virtual {p0, v0, v1, p1}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ssm"

    invoke-virtual {p0, v0, p1, v2}, Lcom/iflytek/msc/TtsMscConfig;->appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setTTSParam(Lcom/iflytek/msc/TtsParams;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/TtsMscConfig;->mTTSParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {p1}, Lcom/iflytek/msc/TtsParams;->getServerUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/msc/TtsMscConfig;->mServerUrl:Ljava/lang/String;

    return-void
.end method
