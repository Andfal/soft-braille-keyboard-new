.class public Lcom/iflytek/sparkchain/core/LLMConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAuditing:Ljava/lang/String;

.field private mChatID:Ljava/lang/String;

.field private mDomain:Ljava/lang/String;

.field private mHandleId:I

.field private mMaxToken:I

.field private mTemperature:F

.field private mTopK:I

.field private mUid:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mTemperature:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mTopK:I

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mMaxToken:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mHandleId:I

    return-void
.end method

.method public static builder()Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/core/LLMConfig;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/core/LLMConfig;-><init>()V

    return-object v0
.end method


# virtual methods
.method public auditing(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mAuditing:Ljava/lang/String;

    return-object p0
.end method

.method public chatID(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mChatID:Ljava/lang/String;

    return-object p0
.end method

.method public domain(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getAuditing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mAuditing:Ljava/lang/String;

    return-object v0
.end method

.method public getChatID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mChatID:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxToken()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mMaxToken:I

    return v0
.end method

.method public getTemperature()F
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mTemperature:F

    return v0
.end method

.method public getTopK()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mTopK:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public maxToken(I)Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mMaxToken:I

    return-object p0
.end method

.method public param(Ljava/lang/String;D)Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiRequest;->builder()Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->build()Lcom/iflytek/sparkchain/core/AiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result v0

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mHandleId:I

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;D)Ljava/lang/Object;

    return-object p0
.end method

.method public param(Ljava/lang/String;I)Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiRequest;->builder()Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->build()Lcom/iflytek/sparkchain/core/AiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result v0

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mHandleId:I

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;I)Ljava/lang/Object;

    return-object p0
.end method

.method public param(Ljava/lang/String;Ljava/lang/String;)Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiRequest;->builder()Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->build()Lcom/iflytek/sparkchain/core/AiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result v0

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mHandleId:I

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public param(Ljava/lang/String;Z)Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiRequest;->builder()Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->build()Lcom/iflytek/sparkchain/core/AiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/AiRequest;->getHandle()I

    move-result v0

    iput v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mHandleId:I

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->paramBuilder:Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/core/AiRequest$ParamBuilder;->param(Ljava/lang/String;Z)Ljava/lang/Object;

    return-object p0
.end method

.method public temperature(F)Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mTemperature:F

    return-object p0
.end method

.method public topK(I)Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mTopK:I

    return-object p0
.end method

.method public uid(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mUid:Ljava/lang/String;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/LLMConfig;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/LLMConfig;->mUrl:Ljava/lang/String;

    return-object p0
.end method
