.class Lcom/vivo/speechsdk/module/ttsonline/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/ttsonline/SocketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/ttsonline/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/ttsonline/c;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/ttsonline/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClosed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Online_TTSService"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->g(Lcom/vivo/speechsdk/module/ttsonline/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_close_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/ttsonline/c;->h(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object p1

    const/16 v1, 0x2714

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/ttsonline/c;->h(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object p1

    const/16 v1, 0x2717

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->g(Lcom/vivo/speechsdk/module/ttsonline/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Online_TTSService"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->h(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Lcom/vivo/speechsdk/module/ttsonline/c;Z)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_error_msg"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "key_error_code"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/ttsonline/c;->h(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object p1

    const/16 p2, 0x2717

    invoke-interface {p1, p2, v0}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x6b

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/ttsonline/c;->h(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object p1

    const/16 v0, 0x271e

    invoke-interface {p1, v0, p2}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onLowQuality(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_net_quality"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/ttsonline/c;->h(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object p1

    const/16 v1, 0x271d

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onOpen(I)V
    .locals 4

    const-string v0, "Online_TTSService"

    const-string v1, "onOpen"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->getStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->b(Lcom/vivo/speechsdk/module/ttsonline/c;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->g(Lcom/vivo/speechsdk/module/ttsonline/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->g(Lcom/vivo/speechsdk/module/ttsonline/c;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/ttsonline/c;->b(Lcom/vivo/speechsdk/module/ttsonline/c;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_net_reuse"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/ttsonline/c;->h(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object p1

    const/16 v1, 0x271b

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/ttsonline/c;->i(Lcom/vivo/speechsdk/module/ttsonline/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->b(Lcom/vivo/speechsdk/module/ttsonline/c;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "error_code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "error_msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "req_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const-string v6, "Online_TTSService"

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " remote error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " message : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/c;->h(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x3b00

    invoke-interface {v4, v6, v2}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_error_code"

    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_error_msg"

    invoke-virtual {v2, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->h(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    const/16 v3, 0x271a

    invoke-interface {v0, v3, v2}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->g(Lcom/vivo/speechsdk/module/ttsonline/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    const/16 v2, 0x64

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/module/ttsonline/c;->b(Lcom/vivo/speechsdk/module/ttsonline/c;I)V

    return-void

    :cond_1
    const-string v0, "data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/16 v9, 0xc9

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/ttsonline/c;->j(Lcom/vivo/speechsdk/module/ttsonline/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/ttsonline/c;->j(Lcom/vivo/speechsdk/module/ttsonline/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    new-array v0, v7, [Ljava/lang/Object;

    const-string v2, "mCurrentRequestId="

    aput-object v2, v0, v12

    iget-object v2, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/ttsonline/c;->j(Lcom/vivo/speechsdk/module/ttsonline/c;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    const-string v2, " req_id="

    aput-object v2, v0, v10

    aput-object v4, v0, v8

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->g(Lcom/vivo/speechsdk/module/ttsonline/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->b(Lcom/vivo/speechsdk/module/ttsonline/c;)I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    double-to-int v0, v2

    iget-object v2, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/ttsonline/c;->g(Lcom/vivo/speechsdk/module/ttsonline/c;)Landroid/os/Handler;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v2, v9, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void

    :cond_4
    iget-object v3, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/ttsonline/c;->g(Lcom/vivo/speechsdk/module/ttsonline/c;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    const-string v3, "sid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ver"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "pcm_bytes"

    :try_start_2
    invoke-static {v9}, Lcom/vivo/speechsdk/module/ttsonline/c;->k(Lcom/vivo/speechsdk/module/ttsonline/c;)I

    move-result v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v9, v2}, Lcom/vivo/speechsdk/module/ttsonline/c;->c(Lcom/vivo/speechsdk/module/ttsonline/c;I)I

    iget-object v2, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v2, v3, v4}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Lcom/vivo/speechsdk/module/ttsonline/c;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/ttsonline/c;->g(Lcom/vivo/speechsdk/module/ttsonline/c;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/ttsonline/c;->g(Lcom/vivo/speechsdk/module/ttsonline/c;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/c;->b(Lcom/vivo/speechsdk/module/ttsonline/c;)I

    move-result v4

    int-to-long v13, v4

    invoke-virtual {v2, v3, v13, v14}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "progress"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "slice"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    const-string v14, "hit"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "is_ms"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v11, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    if-ne v0, v10, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v15, :cond_6

    if-ne v13, v11, :cond_6

    const-string v0, "language not support"

    :try_start_3
    invoke-static {v6, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/ttsonline/c;->h(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v2

    const v3, 0x9c70

    invoke-interface {v2, v3, v0}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V

    return-void

    :cond_6
    invoke-static {}, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->obtion()Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    move-result-object v15

    iput v0, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    iput-object v5, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    iput v12, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    goto :goto_1

    :cond_7
    const-string v5, "\\"

    const-string v3, ""

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v12}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    iput-object v3, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    array-length v3, v3

    iput v3, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    :goto_1
    const/4 v3, 0x5

    if-eqz v2, :cond_8

    const/4 v2, 0x5

    goto :goto_2

    :cond_8
    iget-object v2, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/ttsonline/c;->c(Lcom/vivo/speechsdk/module/ttsonline/c;)I

    move-result v2

    :goto_2
    iput v2, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEncodeType:I

    iput v13, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mSlice:I

    iget-object v2, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v2, v9}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Lcom/vivo/speechsdk/module/ttsonline/c;Ljava/lang/String;)[I

    move-result-object v2

    iget-object v4, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/c;->d(Lcom/vivo/speechsdk/module/ttsonline/c;)I

    move-result v4

    iput v4, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mBeginPos:I

    aget v4, v2, v12

    iput v4, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEndPos:I

    aget v4, v2, v11

    iput v4, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalTextLength:I

    iget-object v4, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/ttsonline/c;->k(Lcom/vivo/speechsdk/module/ttsonline/c;)I

    move-result v4

    iput v4, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    iget-object v4, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    aget v5, v2, v12

    invoke-static {v4, v5}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Lcom/vivo/speechsdk/module/ttsonline/c;I)I

    iget-object v4, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    aget v5, v2, v12

    aget v2, v2, v11

    invoke-static {v4, v5, v2, v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Lcom/vivo/speechsdk/module/ttsonline/c;III)I

    move-result v2

    iput v2, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mProgress:I

    iget v2, v15, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    if-eq v2, v10, :cond_9

    if-ne v2, v8, :cond_a

    :cond_9
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "slice="

    aput-object v4, v2, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v11

    const-string v4, " hit="

    aput-object v4, v2, v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    const-string v4, " status="

    aput-object v4, v2, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    const/16 v2, 0x66

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/module/ttsonline/c;->b(Lcom/vivo/speechsdk/module/ttsonline/c;I)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->g(Lcom/vivo/speechsdk/module/ttsonline/c;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    iget-object v0, v1, Lcom/vivo/speechsdk/module/ttsonline/c$a;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->h(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    invoke-interface {v0, v15}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onAudioInfo(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method
