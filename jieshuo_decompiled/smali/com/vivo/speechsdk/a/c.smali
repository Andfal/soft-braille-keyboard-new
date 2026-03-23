.class public Lcom/vivo/speechsdk/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ParamCheck"

.field private static final b:I = 0x0

.field private static final c:I = 0x1388

.field private static final d:I = 0x3e8

.field private static final e:I = 0x1388

.field private static final f:I = 0x1388

.field private static final g:I = 0x1388

.field private static final h:I = 0x7fffffff

.field private static final i:I = 0xea60

.field private static final j:I = 0x1f4

.field private static final k:I = 0x1f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "engine init bundle | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParamCheck"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->p(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->k(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    const-string v1, "key_preload_enable"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->j(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    return v0
.end method

.method public static b(Landroid/os/Bundle;)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start bundle | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParamCheck"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_inner_record"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->o(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->j(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->c(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->p(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->d(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_3

    return v1

    :cond_3
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->m(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_4

    return v1

    :cond_4
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->q(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_5

    return v1

    :cond_5
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->e(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_6

    return v1

    :cond_6
    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->f(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_7

    return v0

    :cond_7
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->l(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_8

    return v0

    :cond_8
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->h(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_9

    return v0

    :cond_9
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->s(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_a

    return v0

    :cond_a
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->n(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_b

    return v0

    :cond_b
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->i(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_c

    return v0

    :cond_c
    invoke-static {p0}, Lcom/vivo/speechsdk/a/c;->g(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    :cond_d
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SessionUtils;->generateReqId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_request_id"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "key_request_mode"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key_denoise"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "key_vad_enable"

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static d(Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "key_request_mode"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key_asr_time_out"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    if-ne v0, v3, :cond_0

    const/16 v2, 0x1388

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v3, :cond_2

    const/16 v3, 0x1f4

    if-lt v2, v3, :cond_1

    const v3, 0xea60

    if-le v2, v3, :cond_2

    :cond_1
    const/16 p0, 0x759c

    return p0

    :cond_2
    if-nez v0, :cond_3

    const v0, 0x7fffffff

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "key_audio_format"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static f(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "key_audio_source_type"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key_audio_source"

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x7596

    if-eqz v0, :cond_2

    return v1

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public static g(Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "key_audio_stream_type"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "key_encode_enable"

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "opus"

    goto :goto_0

    :cond_0
    const-string v1, "pcm"

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    return v2
.end method

.method public static h(Landroid/os/Bundle;)I
    .locals 7

    const-string v0, "key_session_id"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key_denoise"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "key_channel_config"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0xc

    const/16 v6, 0x10

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 v3, 0x7598

    if-lez v0, :cond_1

    if-eq p0, v6, :cond_6

    return v3

    :cond_1
    if-eqz v1, :cond_2

    if-eq p0, v5, :cond_6

    return v3

    :cond_2
    if-eq p0, v6, :cond_6

    return v3

    :cond_3
    if-lez v0, :cond_5

    :cond_4
    invoke-virtual {p0, v3, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_4

    invoke-virtual {p0, v3, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    :goto_0
    return v2
.end method

.method public static i(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "key_chinese_to_digital"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Landroid/os/Bundle;)I
    .locals 5

    const-string v0, "key_new_authentication_enable"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "key_engine_mode"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "key_engine_type"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v3, :cond_2

    const/16 p0, 0x75a2

    return p0

    :cond_2
    return v2
.end method

.method public static k(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "key_engine_mode"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x75a1

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Landroid/os/Bundle;)I
    .locals 8

    const-string v0, "key_denoise"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "key_engine_mode"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    invoke-virtual {v4}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.BLUETOOTH"

    invoke-static {v6, v7}, Lcom/vivo/speechsdk/common/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-static {v6, v7}, Lcom/vivo/speechsdk/common/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1f

    if-ge v6, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v4

    const-string v6, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v4, v6}, Lcom/vivo/speechsdk/common/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v2, :cond_6

    const/4 v2, 0x4

    if-eq v3, v2, :cond_6

    invoke-virtual {v5}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v3, :cond_4

    const/16 v0, 0xc

    goto :goto_3

    :cond_4
    const/16 v0, 0x10

    :goto_3
    const-string v3, "key_channel_config"

    invoke-virtual {p0, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-nez v2, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "denoise not support , record audio by headset | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ParamCheck"

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, "key_bluetooth_sco_on"

    invoke-virtual {p0, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    return v1
.end method

.method public static m(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "key_nlu_time_out"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_2

    const v0, 0xea60

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x759b

    return p0
.end method

.method public static n(Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "key_punctuation"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static o(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "key_request_mode"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v2, :cond_2

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x759f

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p(Landroid/os/Bundle;)I
    .locals 4

    const-string v0, "key_sample_rate"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x3e80

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return v2

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v3, :cond_1

    const/16 v0, 0x1f40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5dc0

    if-eq p0, v0, :cond_1

    const v0, 0xbb80

    if-eq p0, v0, :cond_1

    const/16 p0, 0x7597

    return p0

    :cond_1
    return v2
.end method

.method public static q(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "key_tts_time_out"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_2

    const v0, 0xea60

    if-le p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x759a

    return p0
.end method

.method public static r(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "key_vad_mode"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "normal"

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static s(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "key_vad_front_time"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v1, "key_vad_end_time"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_5

    const v2, 0xea60

    if-le v0, v2, :cond_2

    goto :goto_1

    :cond_2
    if-lt p0, v1, :cond_4

    if-le p0, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    const/16 p0, 0x759e

    return p0

    :cond_5
    :goto_1
    const/16 p0, 0x759d

    return p0
.end method
