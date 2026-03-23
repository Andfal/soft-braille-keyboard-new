.class Lcom/vivo/speechsdk/module/asronline/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/asronline/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/asronline/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/asronline/g;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/asronline/g;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_close_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 v1, 0x2713

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 v1, 0x2714

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;Z)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_error_msg"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "key_error_code"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 p2, 0x2714

    invoke-interface {p1, p2, v0}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 v0, 0x271b

    invoke-interface {p1, v0, p2}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/g;->g(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/asronline/i/g;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/g;->g(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/asronline/i/g;

    move-result-object p1

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/asronline/g;->h(Lcom/vivo/speechsdk/module/asronline/g;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Landroid/os/Bundle;)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x6b

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 v0, 0x271e

    invoke-interface {p1, v0, p2}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLowQuality(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_net_quality"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 v1, 0x2718

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onOpen(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_net_reuse"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 v1, 0x271a

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "TCServiceImpl"

    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, ""

    invoke-static {v3, v5, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v5, "type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "request_id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "asr"

    if-nez v7, :cond_1

    iget-object v7, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v7}, Lcom/vivo/speechsdk/module/asronline/g;->b(Lcom/vivo/speechsdk/module/asronline/g;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "local reqId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/asronline/g;->b(Lcom/vivo/speechsdk/module/asronline/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cloud reqId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v6, "action"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "code"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v9, "desc"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "sid"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "is_finish"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    const-string v11, "started"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v12, "key_sid"

    invoke-virtual {v11, v12, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v10}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v10

    const/16 v12, 0x2712

    invoke-interface {v10, v12, v11}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_2
    const-string v10, "error"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/16 v11, 0x64

    const/4 v12, 0x2

    if-eqz v10, :cond_4

    const-string v0, "session_id is not found"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remote error : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3b00

    invoke-interface {v2, v3, v0}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onError(ILjava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_error_from"

    invoke-virtual {v0, v2, v12}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_error_code"

    invoke-virtual {v0, v2, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_error_msg"

    invoke-virtual {v0, v2, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v2

    const/16 v3, 0x2711

    invoke-interface {v2, v3, v0}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v0, v11}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;I)V

    goto :goto_1

    :cond_3
    invoke-static {v3, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v0, v7}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;I)V

    :goto_1
    iget-object v0, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/g;->d(Lcom/vivo/speechsdk/module/asronline/g;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string v3, "result"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "vad_code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v6, "data"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v0

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->obtain()Lcom/vivo/speechsdk/module/api/asr/ResultInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onResult(Lcom/vivo/speechsdk/module/api/asr/ResultInfo;)V

    return-void

    :cond_5
    const-string v6, "is_last"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v9, "text"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->obtain()Lcom/vivo/speechsdk/module/api/asr/ResultInfo;

    move-result-object v10

    iput v3, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mVadCode:I

    iput-boolean v6, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    iput v7, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mCode:I

    const/4 v13, 0x1

    iput v13, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mFrom:I

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v15, 0x9

    const/4 v14, 0x0

    if-nez v8, :cond_a

    const-string v8, "ast"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_3

    :cond_6
    const-string v6, "tts"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-ne v7, v15, :cond_7

    iput-boolean v13, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    iget-object v4, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v4, v3}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;I)V

    goto :goto_2

    :cond_7
    iput-boolean v14, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    :goto_2
    const/4 v4, 0x3

    iput v4, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    iget-object v4, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v4, v0}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;Lorg/json/JSONObject;)Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-boolean v6, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    if-eqz v6, :cond_8

    const/4 v13, 0x2

    :cond_8
    iput v13, v4, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    :cond_9
    invoke-virtual {v10, v4}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->setAudioInfo(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V

    goto :goto_4

    :cond_a
    :goto_3
    iget-object v4, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/asronline/g;->e(Lcom/vivo/speechsdk/module/asronline/g;)I

    move-result v4

    if-nez v4, :cond_c

    iput v14, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    if-eq v7, v15, :cond_b

    iget-boolean v4, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    if-eqz v4, :cond_e

    :cond_b
    iput-boolean v13, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    iget-object v4, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v4, v11}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;I)V

    goto :goto_4

    :cond_c
    iput v13, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    if-eqz v6, :cond_e

    iget-object v4, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/asronline/g;->e(Lcom/vivo/speechsdk/module/asronline/g;)I

    move-result v4

    if-ne v4, v12, :cond_d

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/asronline/g;->d(Lcom/vivo/speechsdk/module/asronline/g;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v6}, Lcom/vivo/speechsdk/module/asronline/g;->f(Lcom/vivo/speechsdk/module/asronline/g;)I

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x65

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_d
    iget-object v4, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v4, v3}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;I)V

    :cond_e
    :goto_4
    invoke-static {}, Lcom/vivo/speechsdk/module/asronline/h;->a()Lcom/vivo/speechsdk/module/asronline/h;

    move-result-object v4

    invoke-virtual {v10}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->getAudioInfo()Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    move-result-object v6

    iget-boolean v7, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    invoke-virtual {v4, v6, v7}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;Z)V

    const-string v4, "nlu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iput v12, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    iget-object v4, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/asronline/g;->d(Lcom/vivo/speechsdk/module/asronline/g;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v4, v3}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;I)V

    :cond_f
    iget-object v3, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v3}, Lcom/vivo/speechsdk/module/asronline/g;->e(Lcom/vivo/speechsdk/module/asronline/g;)I

    move-result v3

    if-nez v3, :cond_10

    iput-object v2, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    goto :goto_5

    :cond_10
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    :goto_5
    iget-object v0, v1, Lcom/vivo/speechsdk/module/asronline/g$a;->a:Lcom/vivo/speechsdk/module/asronline/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v0

    invoke-interface {v0, v10}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onResult(Lcom/vivo/speechsdk/module/api/asr/ResultInfo;)V

    invoke-virtual {v10}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->recycle()V

    :cond_11
    return-void
.end method
