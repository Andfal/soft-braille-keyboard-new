.class Lcom/vivo/speechsdk/asr/service/RecognizerService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(ZLandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/vivo/speechsdk/asr/service/RecognizerService;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/asr/service/RecognizerService;ZLandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$c;->c:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    iput-boolean p2, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$c;->a:Z

    iput-object p3, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$c;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v0

    const-string v1, "keep_user_data_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/SpUtil;->save(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$c;->b:Landroid/os/Bundle;

    iget-boolean v1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$c;->a:Z

    const-string v2, "key_allow_use_user_data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$c;->b:Landroid/os/Bundle;

    const-string v2, "keep_user_data_bundle"

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/SpUtil;->saveBean2Sp(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server request allowUseUserData failed ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecognizerService"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$c;->a:Z

    const-string v2, "keep_user_data"

    invoke-virtual {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/SpUtil;->save(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v0

    const-string v1, "keep_user_data_result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/SpUtil;->save(Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server request allowUseUserData success ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$c;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecognizerService"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
