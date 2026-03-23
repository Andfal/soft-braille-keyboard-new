.class public Lcom/iflytek/sparkchain/core/BaseLibrary$Params;
.super Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/BaseLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;-><init>()V

    iget-object v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->appId:Ljava/lang/String;

    iget-object v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->apiKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->apiKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->apiSecret:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->apiSecret:Ljava/lang/String;

    iget v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->authType:I

    iput v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->authType:I

    iget-object v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->licenseFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->licenseFile:Ljava/lang/String;

    iget-object v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->workDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->workDir:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->logOpen:Z

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->logOpen:Z

    iget-boolean v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogOpen:Z

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogOpen:Z

    iget v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogMaxCount:I

    iput v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogMaxCount:I

    iget v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogMaxSize:I

    iput v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogMaxSize:I

    iget-object v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->customDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->customDeviceId:Ljava/lang/String;

    iget-object v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->batchID:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->batchID:Ljava/lang/String;

    iget-object v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->resDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->resDir:Ljava/lang/String;

    iget-object v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->cfgFile:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->cfgFile:Ljava/lang/String;

    iget v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->authInterval:I

    iput v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->authInterval:I

    iget-boolean v0, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->recordOpen:Z

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->recordOpen:Z

    iget-object p1, p1, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->ability:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->ability:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;Lcom/iflytek/sparkchain/core/BaseLibrary$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;-><init>(Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;)V

    return-void
.end method

.method public static builder()Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAbility()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->ability:Ljava/lang/String;

    return-object v0
.end method

.method getApiKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method getApiSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->apiSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->appId:Ljava/lang/String;

    return-object v0
.end method

.method getAuthInterval()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->authInterval:I

    return v0
.end method

.method getAuthType()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->authType:I

    return v0
.end method

.method public getBatchID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->batchID:Ljava/lang/String;

    return-object v0
.end method

.method public getCfgFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->cfgFile:Ljava/lang/String;

    return-object v0
.end method

.method getCustomDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->customDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method getLicenseFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->licenseFile:Ljava/lang/String;

    return-object v0
.end method

.method public getResDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->resDir:Ljava/lang/String;

    return-object v0
.end method

.method getWorkDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->workDir:Ljava/lang/String;

    return-object v0
.end method

.method getiLogMaxCount()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogMaxCount:I

    return v0
.end method

.method getiLogMaxSize()J
    .locals 2

    iget v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogMaxSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method isLogOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->logOpen:Z

    return v0
.end method

.method isRecordOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->recordOpen:Z

    return v0
.end method

.method isiLogOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogOpen:Z

    return v0
.end method
