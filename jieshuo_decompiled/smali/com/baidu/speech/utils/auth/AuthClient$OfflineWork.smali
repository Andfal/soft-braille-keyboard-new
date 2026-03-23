.class Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/utils/auth/AuthClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OfflineWork"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mParams:Lcom/baidu/speech/utils/auth/OfflineParams;

.field final synthetic this$0:Lcom/baidu/speech/utils/auth/AuthClient;


# direct methods
.method public constructor <init>(Lcom/baidu/speech/utils/auth/AuthClient;Lcom/baidu/speech/utils/auth/OfflineParams;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;->this$0:Lcom/baidu/speech/utils/auth/AuthClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;->mParams:Lcom/baidu/speech/utils/auth/OfflineParams;

    return-void
.end method


# virtual methods
.method public call()Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;
    .locals 8

    new-instance v0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;

    invoke-direct {v0}, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;-><init>()V

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;->mParams:Lcom/baidu/speech/utils/auth/OfflineParams;

    invoke-virtual {v0}, Lcom/baidu/speech/utils/auth/OfflineParams;->getAppCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;->mParams:Lcom/baidu/speech/utils/auth/OfflineParams;

    invoke-virtual {v1}, Lcom/baidu/speech/utils/auth/OfflineParams;->getAuthSN()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;->mParams:Lcom/baidu/speech/utils/auth/OfflineParams;

    invoke-virtual {v2}, Lcom/baidu/speech/utils/auth/OfflineParams;->getLicenseFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/speech/utils/auth/StringTool;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;->this$0:Lcom/baidu/speech/utils/auth/AuthClient;

    invoke-static {v2}, Lcom/baidu/speech/utils/auth/AuthClient;->access$000(Lcom/baidu/speech/utils/auth/AuthClient;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " SN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "AuthClient"

    invoke-static {v5, v4}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "licenseFilePath="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v5, v3}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v3, Lcom/baidu/speech/utils/auth/OfflineAuth;

    invoke-direct {v3}, Lcom/baidu/speech/utils/auth/OfflineAuth;-><init>()V

    iget-object v4, p0, Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;->this$0:Lcom/baidu/speech/utils/auth/AuthClient;

    invoke-static {v4}, Lcom/baidu/speech/utils/auth/AuthClient;->access$100(Lcom/baidu/speech/utils/auth/AuthClient;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/speech/utils/auth/OfflineAuth;->setContext(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/baidu/speech/utils/auth/OfflineAuth;->setAuthSN(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/baidu/speech/utils/auth/OfflineAuth;->setAppCode(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/baidu/speech/utils/auth/OfflineAuth;->setLicenseFilePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;->this$0:Lcom/baidu/speech/utils/auth/AuthClient;

    invoke-static {v0}, Lcom/baidu/speech/utils/auth/AuthClient;->access$200(Lcom/baidu/speech/utils/auth/AuthClient;)Lcom/baidu/speech/utils/auth/Memorizer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/baidu/speech/utils/auth/Memorizer;->memory(Lcom/baidu/speech/utils/auth/IMemorizable;)Lcom/baidu/speech/utils/auth/IMResult;

    move-result-object v0

    check-cast v0, Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/speech/utils/auth/AuthClient$OfflineWork;->call()Lcom/baidu/speech/utils/auth/OfflineAuth$OfflineResult;

    move-result-object v0

    return-object v0
.end method
