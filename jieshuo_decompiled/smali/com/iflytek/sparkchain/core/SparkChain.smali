.class public Lcom/iflytek/sparkchain/core/SparkChain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/SparkChain$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SparkChain"

.field private static authListener:Lcom/iflytek/sparkchain/core/AuthListener; = null

.field private static initCode:I = -0x1


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/SparkChain$a;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/SparkChain$a;-><init>()V

    sput-object v0, Lcom/iflytek/sparkchain/core/SparkChain;->authListener:Lcom/iflytek/sparkchain/core/AuthListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/core/SparkChain$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/SparkChain;-><init>()V

    return-void
.end method

.method static synthetic access$002(I)I
    .locals 0

    sput p0, Lcom/iflytek/sparkchain/core/SparkChain;->initCode:I

    return p0
.end method

.method public static getInst()Lcom/iflytek/sparkchain/core/SparkChain;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/SparkChain$b;->a()Lcom/iflytek/sparkchain/core/SparkChain;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createConfig(Landroid/content/Context;)Lcom/iflytek/sparkchain/core/SparkChainConfig;
    .locals 3

    invoke-static {}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->builder()Lcom/iflytek/sparkchain/core/SparkChainConfig;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "SPARKCHAIN_APPID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->appID(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;

    :cond_0
    const-string v1, "SPARKCHAIN_APIKEY"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->apiKey(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;

    :cond_1
    const-string v1, "SPARKCHAIN_APISECRET"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->apiSecret(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;

    :cond_2
    const-string v1, "SPARKCHAIN_WORKDIR"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->workDir(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;

    :cond_3
    const-string v1, "SPARKCHAIN_LOGPATH"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->logPath(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;

    :cond_4
    const-string v1, "SPARKCHAIN_UID"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->uid(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v1, "SparkChain: UID\u6dfb\u52a0\u5931\u8d25\uff0c\u5728\u4f7f\u7528\u65f6\u907f\u514d\u7eaf\u6570\u5b57\u683c\u5f0f\u6216\u5305\u542b\u5c0f\u6570\u70b9\u3002\u82e5\u9700\u4f7f\u7528,\u8bf7\u6362\u7528SparkChianConfig\u914d\u7f6e"

    invoke-direct {p1, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    const-string v1, "SPARKCHAIN_LOGLEVEL"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->logLevel(I)Lcom/iflytek/sparkchain/core/SparkChainConfig;

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v1, "SparkChain: logLevel\u6dfb\u52a0\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u4e2d\u5c5e\u6027\u662f\u5426\u8bbe\u7f6e\u6b63\u786e\uff01"

    invoke-direct {p1, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChain;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getInitCode()I
    .locals 1

    sget v0, Lcom/iflytek/sparkchain/core/SparkChain;->initCode:I

    return v0
.end method

.method public init(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/SparkChain;->createConfig(Landroid/content/Context;)Lcom/iflytek/sparkchain/core/SparkChainConfig;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/sparkchain/core/SparkChain;->init(Landroid/content/Context;Lcom/iflytek/sparkchain/core/SparkChainConfig;)I

    move-result p1

    return p1
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/sparkchain/core/SparkChainConfig;)I
    .locals 7

    sget v0, Lcom/iflytek/sparkchain/core/SparkChain;->initCode:I

    const-string v1, "SparkChain"

    if-nez v0, :cond_0

    const-string p1, "SparkChain sdk already init"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/iflytek/sparkchain/core/SparkChain;->initCode:I

    return p1

    :cond_0
    if-eqz p1, :cond_11

    if-nez p2, :cond_1

    goto/16 :goto_7

    :cond_1
    iput-object p1, p0, Lcom/iflytek/sparkchain/core/SparkChain;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getAppID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getAppID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getApiKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getApiKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getApiSecret()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getApiSecret()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getUid()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x4845

    if-nez p1, :cond_5

    return v0

    :cond_5
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getLogPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_6

    return v0

    :cond_6
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getWorkDir()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return v0

    :cond_7
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getWorkDir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/SparkChain;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getWorkDir()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getLogLevel()I

    move-result v2

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getLogPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getLogPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v0

    goto :goto_2

    :cond_a
    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getLogPath()Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string v5, "SparkChain init"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;->builder()Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getAppID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;->appId(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getApiKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;->apiKey(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/SparkChainConfig;->getApiSecret()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;->apiSecret(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;->workDir(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {v1, p1}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;->customDeviceId(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;

    :cond_b
    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object p1

    sget-object p2, Lcom/iflytek/sparkchain/core/SparkChain;->authListener:Lcom/iflytek/sparkchain/core/AuthListener;

    invoke-virtual {p1, p2}, Lcom/iflytek/sparkchain/core/AiHelper;->registerListener(Lcom/iflytek/sparkchain/core/AuthListener;)V

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object p1

    const/16 p2, 0x29a

    if-ne v2, p2, :cond_c

    const/4 v0, 0x0

    goto :goto_3

    :cond_c
    move v0, v2

    :goto_3
    invoke-static {v0}, Lcom/iflytek/sparkchain/core/LogLvl;->valueOf(I)Lcom/iflytek/sparkchain/core/LogLvl;

    move-result-object v0

    invoke-virtual {p1, v0, v3, v4}, Lcom/iflytek/sparkchain/core/AiHelper;->setLogInfo(Lcom/iflytek/sparkchain/core/LogLvl;ILjava/lang/String;)I

    if-ne v2, p2, :cond_d

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object p1

    const-string p2, "godLog"

    const-string v0, "on"

    invoke-virtual {p1, p2, v0}, Lcom/iflytek/sparkchain/core/AiHelper;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/SparkChain;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;->build()Lcom/iflytek/sparkchain/core/BaseLibrary$Params;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/iflytek/sparkchain/core/BaseLibrary;->init(Landroid/content/Context;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V

    sget p1, Lcom/iflytek/sparkchain/core/SparkChain;->initCode:I

    return p1

    :cond_e
    :goto_4
    const-string p1, "sparkchain err param null apisecret ptr 18505"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x4849

    return p1

    :cond_f
    :goto_5
    const-string p1, "sparkchain err param null apikey ptr 18504"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x4848

    return p1

    :cond_10
    :goto_6
    const-string p1, "sparkchain err param required missed 18503"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x4847

    return p1

    :cond_11
    :goto_7
    const/16 p1, 0x484d

    return p1
.end method

.method public unInit()I
    .locals 3

    sget v0, Lcom/iflytek/sparkchain/core/SparkChain;->initCode:I

    const/16 v1, 0x477d

    const-string v2, "SparkChain"

    if-eqz v0, :cond_0

    const-string v0, "SparkChain sdk not init"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/iflytek/sparkchain/core/AiHelper;->getInst()Lcom/iflytek/sparkchain/core/AiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/BaseLibrary;->unInit()V

    const-string v0, "SparkChain unInit"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput v1, Lcom/iflytek/sparkchain/core/SparkChain;->initCode:I

    const/4 v0, 0x0

    return v0
.end method
