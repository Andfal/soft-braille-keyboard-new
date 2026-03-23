.class Lcom/vivo/speechsdk/module/asronline/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/asronline/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/asronline/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/asronline/b;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/asronline/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

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

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 v1, 0x2713

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 v1, 0x2714

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;Z)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_error_msg"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "key_error_code"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 p2, 0x2714

    invoke-interface {p1, p2, v0}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 v0, 0x271b

    invoke-interface {p1, v0, p2}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->f(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/asronline/i/g;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->f(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/asronline/i/g;

    move-result-object p1

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p2}, Lcom/vivo/speechsdk/module/asronline/b;->g(Lcom/vivo/speechsdk/module/asronline/b;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Landroid/os/Bundle;)Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x6b

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

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

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

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

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    const/16 v1, 0x271a

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 12

    const-string v0, "Online_ASRService"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, ""

    invoke-static {v0, v3, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "request_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "asr"

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v5}, Lcom/vivo/speechsdk/module/asronline/b;->b(Lcom/vivo/speechsdk/module/asronline/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "local reqId:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/asronline/b;->b(Lcom/vivo/speechsdk/module/asronline/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cloud reqId:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v4, "action"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    const-string v7, "desc"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "sid"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "is_finish"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    const-string v9, "started"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "key_sid"

    invoke-virtual {v9, v10, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v8}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v8

    const/16 v10, 0x2712

    invoke-interface {v8, v10, v9}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_2
    const-string v8, "error"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x64

    const/4 v10, 0x2

    if-eqz v8, :cond_4

    const-string p1, "session_id is not found"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " remote error : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x3b00

    invoke-interface {v0, v2, p1}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onError(ILjava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_error_from"

    invoke-virtual {p1, v0, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_error_code"

    invoke-virtual {p1, v0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "key_error_msg"

    invoke-virtual {p1, v0, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object v0

    const/16 v2, 0x2711

    invoke-interface {v0, v2, p1}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1, v9}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;I)V

    goto :goto_1

    :cond_3
    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1, v5}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;I)V

    :goto_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->c(Lcom/vivo/speechsdk/module/asronline/b;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    :cond_4
    const-string v0, "result"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "vad_code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "data"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "is_last"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "text"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->obtain()Lcom/vivo/speechsdk/module/api/asr/ResultInfo;

    move-result-object v7

    iput v0, v7, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mVadCode:I

    iput-boolean v2, v7, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    iput v5, v7, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mCode:I

    const/4 v8, 0x1

    iput v8, v7, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mFrom:I

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/16 v11, 0x65

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v6}, Lcom/vivo/speechsdk/module/asronline/b;->d(Lcom/vivo/speechsdk/module/asronline/b;)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v2, 0x0

    iput v2, v7, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    const/16 v2, 0x9

    if-eq v5, v2, :cond_5

    iget-boolean v2, v7, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    if-eqz v2, :cond_8

    :cond_5
    iput-boolean v8, v7, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mIsLast:Z

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v2, v9}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;I)V

    goto :goto_2

    :cond_6
    iput v8, v7, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/asronline/b;->d(Lcom/vivo/speechsdk/module/asronline/b;)I

    move-result v2

    if-ne v2, v10, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/asronline/b;->c(Lcom/vivo/speechsdk/module/asronline/b;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v4}, Lcom/vivo/speechsdk/module/asronline/b;->e(Lcom/vivo/speechsdk/module/asronline/b;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v11, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;I)V

    :cond_8
    :goto_2
    const-string v2, "nlu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iput v10, v7, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResType:I

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/asronline/b;->c(Lcom/vivo/speechsdk/module/asronline/b;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;I)V

    :cond_9
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/b;->d(Lcom/vivo/speechsdk/module/asronline/b;)I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    iput-object p1, v7, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->mResultJson:Ljava/lang/String;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/b$a;->a:Lcom/vivo/speechsdk/module/asronline/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/b;->a(Lcom/vivo/speechsdk/module/asronline/b;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    move-result-object p1

    invoke-interface {p1, v7}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onResult(Lcom/vivo/speechsdk/module/api/asr/ResultInfo;)V

    invoke-virtual {v7}, Lcom/vivo/speechsdk/module/api/asr/ResultInfo;->recycle()V

    :cond_b
    return-void
.end method
