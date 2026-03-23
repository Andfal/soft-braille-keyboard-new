.class public final Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/api/SpeechSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SdkParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    }
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->access$1300(Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->access$1400(Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;)Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mLooper:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public getAnVer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_android_version"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_client_version"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getConnPoolKeepTime()I
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_pool_keeptime"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getConnTimeOut()I
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_connect_time_out"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_did"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogLevel()I
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_log_level"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_model"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParam(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getParam(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getPkg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_package"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_product"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRom()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_rom"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSysVer()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_system_version"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_user_id"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVaid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_vaid"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDebugEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_debug_enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isExternal()Z
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_external"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isLite()Z
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_sdk_init_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isNetEnable()Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_net_enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOverSea()Z
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_over_sea"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;->mBundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
