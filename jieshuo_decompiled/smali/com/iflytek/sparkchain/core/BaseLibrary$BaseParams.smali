.class public Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/BaseLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseParams"
.end annotation


# instance fields
.field protected ability:Ljava/lang/String;

.field protected apiKey:Ljava/lang/String;

.field protected apiSecret:Ljava/lang/String;

.field protected appId:Ljava/lang/String;

.field protected authInterval:I

.field protected authType:I

.field protected batchID:Ljava/lang/String;

.field protected cfgFile:Ljava/lang/String;

.field protected customDeviceId:Ljava/lang/String;

.field protected iLogMaxCount:I

.field protected iLogMaxSize:I

.field protected iLogOpen:Z

.field protected licenseFile:Ljava/lang/String;

.field protected logOpen:Z

.field protected recordOpen:Z

.field protected resDir:Ljava/lang/String;

.field protected workDir:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;->DEVICE:Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->authType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->logOpen:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogOpen:Z

    const/16 v1, 0x14

    iput v1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogMaxCount:I

    const/high16 v1, 0x100000

    iput v1, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->iLogMaxSize:I

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->recordOpen:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->customDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->batchID:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->resDir:Ljava/lang/String;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;->authInterval:I

    return-void
.end method
