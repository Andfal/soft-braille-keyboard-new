.class Lcom/vivo/speechsdk/api/SpeechSdk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/api/SpeechSdk;->setNetEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$netEnable:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/api/SpeechSdk$2;->val$netEnable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v1, "Tracker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/vivo/speechsdk/api/SpeechSdk$2;->val$netEnable:Z

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->setTrackerEnable(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$2;->val$netEnable:Z

    const-string v1, "Net"

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$300()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$300()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isLite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->register(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->unRegister(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
