.class Lcom/vivo/speechsdk/module/asronline/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/module/asronline/c;->a([Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/asronline/c;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/asronline/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c$b;->a:Lcom/vivo/speechsdk/module/asronline/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/vivo/speechsdk/module/api/net/Req;ILjava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFailure code : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " msg "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HotwordService"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c$b;->a:Lcom/vivo/speechsdk/module/asronline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/c;->b(Lcom/vivo/speechsdk/module/asronline/c;)V

    return-void
.end method

.method public onResponse(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/Resp;)V
    .locals 2

    invoke-virtual {p2}, Lcom/vivo/speechsdk/module/api/net/Resp;->isSuccessful()Z

    move-result p1

    const-string v0, "HotwordService"

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcom/vivo/speechsdk/module/api/net/Resp;->body()Lcom/vivo/speechsdk/module/api/net/RespBody;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/vivo/speechsdk/module/api/net/Resp;->body()Lcom/vivo/speechsdk/module/api/net/RespBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/RespBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "body is null 0"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c$b;->a:Lcom/vivo/speechsdk/module/asronline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/c;->b(Lcom/vivo/speechsdk/module/asronline/c;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "body | "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "json error msg::"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string p1, "code"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object p1

    const-string p2, "hot_word_result"

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/vivo/speechsdk/common/utils/SpUtil;->save(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c$b;->a:Lcom/vivo/speechsdk/module/asronline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/c;->a(Lcom/vivo/speechsdk/module/asronline/c;)Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c$b;->a:Lcom/vivo/speechsdk/module/asronline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/c;->a(Lcom/vivo/speechsdk/module/asronline/c;)Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onSuccess()V

    :cond_2
    const-string p1, "upload hot word success online"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "body is null"

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response code | "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/vivo/speechsdk/module/api/net/Resp;->code()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/c$b;->a:Lcom/vivo/speechsdk/module/asronline/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/c;->b(Lcom/vivo/speechsdk/module/asronline/c;)V

    :goto_2
    return-void
.end method
