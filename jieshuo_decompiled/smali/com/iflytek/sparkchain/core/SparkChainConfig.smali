.class public Lcom/iflytek/sparkchain/core/SparkChainConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private apiKey:Ljava/lang/String;

.field private apiSecret:Ljava/lang/String;

.field private appID:Ljava/lang/String;

.field private logLevel:I

.field private logPath:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private workDir:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->appID:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->apiKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->apiSecret:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->workDir:Ljava/lang/String;

    const/16 v1, 0x64

    iput v1, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->logLevel:I

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->logPath:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/iflytek/sparkchain/core/SparkChainConfig;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/SparkChainConfig;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/SparkChainConfig;-><init>()V

    return-object v0
.end method


# virtual methods
.method public apiKey(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public apiSecret(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->apiSecret:Ljava/lang/String;

    return-object p0
.end method

.method public appID(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->appID:Ljava/lang/String;

    return-object p0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getApiSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->apiSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->logLevel:I

    return v0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->logPath:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->workDir:Ljava/lang/String;

    return-object v0
.end method

.method public logLevel(I)Lcom/iflytek/sparkchain/core/SparkChainConfig;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->logLevel:I

    return-object p0
.end method

.method public logPath(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->logPath:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SparkChainConfig{appID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apiKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", apiSecret=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->apiSecret:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", uid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->uid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", workDir=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->workDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", logLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->logLevel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", logPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->logPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uid(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->uid:Ljava/lang/String;

    return-object p0
.end method

.method public workDir(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/SparkChainConfig;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/SparkChainConfig;->workDir:Ljava/lang/String;

    return-object p0
.end method
