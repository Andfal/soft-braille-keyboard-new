.class Lcom/vivo/speechsdk/api/SpeechSdk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/api/SpeechSdk;->_init(Landroid/content/Context;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Lcom/vivo/speechsdk/api/InitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    iput-object p2, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$000()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$100()Lcom/vivo/speechsdk/api/InitListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$100()Lcom/vivo/speechsdk/api/InitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/InitListener;->onSuccess()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isLite()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/vivo/speechsdk/b/f/a;->a()Lcom/vivo/speechsdk/b/f/a;

    move-result-object v0

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/speechsdk/b/f/a;->a(Landroid/content/Context;)Lcom/vivo/speechsdk/b/f/a;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {v2}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isDebugEnable()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/vivo/speechsdk/b/f/a;->a(Z)Lcom/vivo/speechsdk/b/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/f/a;->b()Lcom/vivo/speechsdk/b/f/a;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {v2}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sdk_init"

    invoke-virtual {v0, v2, v3}, Lcom/vivo/speechsdk/b/f/a;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-static {v0}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$302(Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$300()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isOverSea()Z

    move-result v0

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->setOverSea(Z)V

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->getPkg()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {v2}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->getLogLevel()I

    move-result v2

    iget-object v3, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {v3}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isDebugEnable()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$400(Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/LogUtil;->isPrivateLog()Z

    move-result v0

    const-string v2, "SpeechSdk"

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpeechSdk init begin params | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$300()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object v0

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$200()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$500()Lcom/vivo/speechsdk/b/i/d;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/vivo/speechsdk/b/i/b;->a(Landroid/content/Context;Lcom/vivo/speechsdk/b/i/d;)V

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$200()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    const/16 v0, 0x4e85

    invoke-static {v0}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$600(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isDebugEnable()Z

    move-result v0

    invoke-static {v0}, Lcom/vivo/speechsdk/b/g/a;->a(Z)V

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->isVivo()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$700()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v3, Lcom/vivo/speechsdk/api/SpeechSdk$1$1;

    invoke-direct {v3, p0}, Lcom/vivo/speechsdk/api/SpeechSdk$1$1;-><init>(Lcom/vivo/speechsdk/api/SpeechSdk$1;)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/vivo/speechsdk/common/utils/SpUtil;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-static {v0, v3}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$800(Landroid/content/Context;Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;)Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {v3}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isNetEnable()Z

    move-result v3

    iget-object v4, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {v4}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isLite()Z

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$900(Lcom/vivo/speechsdk/b/c;ZZ)V

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$1000(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->isDebugEnable()Z

    move-result v0

    iget-object v3, p0, Lcom/vivo/speechsdk/api/SpeechSdk$1;->val$params:Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    const-string v4, "key_save_audio_max_count"

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->getParam(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$1100(ZI)V

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$300()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->getRom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$300()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/CustomOSUtils;->getCustomOSVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_rom"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v1}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$002(I)I

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$100()Lcom/vivo/speechsdk/api/InitListener;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/vivo/speechsdk/api/SpeechSdk;->access$100()Lcom/vivo/speechsdk/api/InitListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/InitListener;->onSuccess()V

    :cond_7
    const-string v0, "init success"

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
