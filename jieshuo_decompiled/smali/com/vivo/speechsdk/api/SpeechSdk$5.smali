.class Lcom/vivo/speechsdk/api/SpeechSdk$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/api/SpeechSdk;->allowUseUserData(ZLandroid/os/Bundle;Lcom/vivo/speechsdk/api/ResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mUiResultListener:Lcom/vivo/speechsdk/api/UiResultListener;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/api/UiResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/api/SpeechSdk$5;->val$mUiResultListener:Lcom/vivo/speechsdk/api/UiResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$300()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isLite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v1, "Net"

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->unRegister(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$5;->val$mUiResultListener:Lcom/vivo/speechsdk/api/UiResultListener;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/api/UiResultListener;->onFailed(Lcom/vivo/speechsdk/api/SpeechError;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$300()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isLite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v1, "Net"

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->unRegister(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$5;->val$mUiResultListener:Lcom/vivo/speechsdk/api/UiResultListener;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/UiResultListener;->onSuccess()V

    return-void
.end method
