.class Lcom/vivo/speechsdk/api/CommMethod$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/api/CommMethod;->req(Landroid/os/Bundle;Lcom/vivo/speechsdk/api/ResultListener;Lcom/vivo/speechsdk/module/api/net/IHttp;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mResultListener:Lcom/vivo/speechsdk/api/ResultListener;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/api/ResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/api/CommMethod$1;->val$mResultListener:Lcom/vivo/speechsdk/api/ResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vivo/speechsdk/module/api/net/Req;ILjava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UserDataListener onFailure errorCode="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " message="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CommMethod"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/api/CommMethod$1;->val$mResultListener:Lcom/vivo/speechsdk/api/ResultListener;

    new-instance p2, Lcom/vivo/speechsdk/api/SpeechError;

    const v0, 0xea68

    invoke-direct {p2, v0, p3}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/vivo/speechsdk/api/ResultListener;->onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V

    return-void
.end method

.method public onResponse(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/Resp;)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResponse code "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/vivo/speechsdk/module/api/net/Resp;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommMethod"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/vivo/speechsdk/module/api/net/Resp;->body()Lcom/vivo/speechsdk/module/api/net/RespBody;

    move-result-object p1

    invoke-virtual {p2}, Lcom/vivo/speechsdk/module/api/net/Resp;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/RespBody;->string()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "desc"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/api/CommMethod$1;->val$mResultListener:Lcom/vivo/speechsdk/api/ResultListener;

    invoke-interface {p1}, Lcom/vivo/speechsdk/api/ResultListener;->onSuccess()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/vivo/speechsdk/api/CommMethod$1;->val$mResultListener:Lcom/vivo/speechsdk/api/ResultListener;

    new-instance v2, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v2, p1, p2}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/vivo/speechsdk/api/ResultListener;->onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "UserDataListener onResponse"

    invoke-static {v0, p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/api/CommMethod$1;->val$mResultListener:Lcom/vivo/speechsdk/api/ResultListener;

    new-instance p2, Lcom/vivo/speechsdk/api/SpeechError;

    const v0, 0xea67

    invoke-direct {p2, v0}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-interface {p1, p2}, Lcom/vivo/speechsdk/api/ResultListener;->onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/RespBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/api/CommMethod$1;->val$mResultListener:Lcom/vivo/speechsdk/api/ResultListener;

    new-instance v1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-virtual {p2}, Lcom/vivo/speechsdk/module/api/net/Resp;->code()I

    move-result p2

    invoke-direct {v1, p2, p1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/api/ResultListener;->onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V

    :goto_1
    return-void
.end method
