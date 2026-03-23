.class public Lcom/iflytek/sparkchain/core/AIChatHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field abilityId:Ljava/lang/String;

.field handleId:I

.field usrContext:Ljava/lang/Object;

.field private usrContextIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/core/AIChatHandle;->usrContextIndex:I

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AIChatHandle;->usrContext:Ljava/lang/Object;

    iput-object p2, p0, Lcom/iflytek/sparkchain/core/AIChatHandle;->abilityId:Ljava/lang/String;

    iput p3, p0, Lcom/iflytek/sparkchain/core/AIChatHandle;->handleId:I

    return-void
.end method


# virtual methods
.method public getAbilityId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AIChatHandle;->abilityId:Ljava/lang/String;

    return-object v0
.end method

.method public getHandleId()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AIChatHandle;->handleId:I

    return v0
.end method

.method public getUsrContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AIChatHandle;->usrContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getUsrContextIndex()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AIChatHandle;->usrContextIndex:I

    return v0
.end method

.method public setUsrContextIndex(I)Lcom/iflytek/sparkchain/core/AIChatHandle;
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/core/AIChatHandle;->usrContextIndex:I

    return-object p0
.end method
