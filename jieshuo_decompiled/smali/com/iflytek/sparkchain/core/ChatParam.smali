.class public Lcom/iflytek/sparkchain/core/ChatParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAuditing:Ljava/lang/String;

.field private mChatID:Ljava/lang/String;

.field private mDomain:Ljava/lang/String;

.field private mMaxToken:I

.field private mTemperature:F

.field private mTopK:I

.field private mUid:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mTemperature:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mTopK:I

    iput v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mMaxToken:I

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiRequest;->builder()Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    return-void
.end method

.method public static builder()Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/ChatParam;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/ChatParam;-><init>()V

    return-object v0
.end method


# virtual methods
.method public auditing(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mAuditing:Ljava/lang/String;

    return-object p0
.end method

.method public chatID(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mChatID:Ljava/lang/String;

    return-object p0
.end method

.method public domain(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getAuditing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mAuditing:Ljava/lang/String;

    return-object v0
.end method

.method public getChatID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mChatID:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxToken()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mMaxToken:I

    return v0
.end method

.method public getParamListHandle()J
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->build()Lcom/iflytek/sparkchain/core/AiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTemperature()F
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mTemperature:F

    return v0
.end method

.method public getTopK()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mTopK:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public maxToken(I)Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mMaxToken:I

    return-object p0
.end method

.method public param(Ljava/lang/String;D)Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;D)Ljava/lang/Object;

    return-object p0
.end method

.method public param(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;I)Ljava/lang/Object;

    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public param(Ljava/lang/String;Z)Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/ChatParam;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;Z)Ljava/lang/Object;

    return-object p0
.end method

.method public temperature(F)Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mTemperature:F

    return-object p0
.end method

.method public topK(I)Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mTopK:I

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mUid:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/ChatParam;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/ChatParam;->mUrl:Ljava/lang/String;

    return-object p0
.end method
