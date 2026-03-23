.class public Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
.super Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/BaseLibrary$Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;-><init>()V

    return-void
.end method


# virtual methods
.method public ability(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->ability:Ljava/lang/String;

    return-object p0
.end method

.method public apiKey(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public apiSecret(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->apiSecret:Ljava/lang/String;

    return-object p0
.end method

.method public appId(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public authInterval(I)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->authInterval:I

    return-object p0
.end method

.method public authType(Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;->getValue()I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->authType:I

    return-object p0
.end method

.method public batchID(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->batchID:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/iflytek/sparkchain/core/BaseLibrary$Params;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/sparkchain/core/BaseLibrary$Params;-><init>(Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;Lcom/iflytek/sparkchain/core/BaseLibrary$1;)V

    return-object v0
.end method

.method public cfgFile(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->cfgFile:Ljava/lang/String;

    return-object p0
.end method

.method public customDeviceId(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->customDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public iLogMaxCount(I)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogMaxCount:I

    return-object p0
.end method

.method public iLogMaxSize(I)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogMaxSize:I

    return-object p0
.end method

.method public iLogOpen(Z)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogOpen:Z

    return-object p0
.end method

.method public licenseFile(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->licenseFile:Ljava/lang/String;

    return-object p0
.end method

.method public logOpen(Z)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->logOpen:Z

    return-object p0
.end method

.method public recordOpen(Z)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->recordOpen:Z

    return-object p0
.end method

.method public resDir(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->resDir:Ljava/lang/String;

    return-object p0
.end method

.method public workDir(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/BaseLibrary$Params$Builder;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->workDir:Ljava/lang/String;

    return-object p0
.end method
