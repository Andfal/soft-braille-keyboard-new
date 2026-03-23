.class public final Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$1300(Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;)Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mLooper:Landroid/os/Looper;

    return-object p0
.end method


# virtual methods
.method public add(Landroid/os/Bundle;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public add(Ljava/lang/String;Z)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public build()Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;
    .locals 1

    new-instance v0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams;-><init>(Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;)V

    return-object v0
.end method

.method public withAnVer(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_android_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withAppVer(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_client_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withConnPoolKeepTime(I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_pool_keeptime"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public withConnTimeOut(I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_connect_time_out"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public withDebugEnable(Z)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_debug_enable"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public withDid(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_did"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withExternal(Z)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_external"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public withLogValue(I)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_log_level"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public withModel(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_model"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withNetEnable(Z)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_net_enable"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public withOverSea(Z)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_over_sea"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public withPkg(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_package"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withProduct(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_product"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withRom(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_rom"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withSysVer(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_system_version"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withUserId(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withVaid(Ljava/lang/String;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mBundle:Landroid/os/Bundle;

    const-string v1, "key_vaid"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public withWorkLooper(Landroid/os/Looper;)Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/api/SpeechSdk$SdkParams$Builder;->mLooper:Landroid/os/Looper;

    return-object p0
.end method
