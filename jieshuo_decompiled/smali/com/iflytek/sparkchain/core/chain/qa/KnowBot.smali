.class public Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/chain/base/Chain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotErrorImpl;,
        Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotEventImpl;,
        Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iflytek/sparkchain/core/chain/base/Chain<",
        "Lcom/iflytek/sparkchain/core/chain/qa/KnowBotCallbacks;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SparkChain"


# instance fields
.field private callback:Lcom/iflytek/sparkchain/core/chain/base/ChainCallbacks;

.field private chainType:Lcom/iflytek/sparkchain/core/chain/qa/a;

.field private index:I

.field private prompt:Lcom/iflytek/sparkchain/core/chain/base/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/iflytek/sparkchain/core/chain/qa/a;->c:Lcom/iflytek/sparkchain/core/chain/qa/a;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->chainType:Lcom/iflytek/sparkchain/core/chain/qa/a;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->knowBotCreate(Ljava/lang/String;Lcom/iflytek/sparkchain/core/Memory;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/iflytek/sparkchain/core/Memory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/iflytek/sparkchain/core/chain/qa/a;->c:Lcom/iflytek/sparkchain/core/chain/qa/a;

    iput-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->chainType:Lcom/iflytek/sparkchain/core/chain/qa/a;

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->knowBotCreate(Ljava/lang/String;Lcom/iflytek/sparkchain/core/Memory;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->index:I

    return-void
.end method


# virtual methods
.method public arun(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->arun(Ljava/lang/String;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public arun(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$1;-><init>(Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    return p1
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->knowBotDestroy()I

    return-void
.end method

.method native knowBotArun(Ljava/lang/String;Ljava/lang/Object;)I
.end method

.method native knowBotCreate(Ljava/lang/String;Lcom/iflytek/sparkchain/core/Memory;)I
.end method

.method native knowBotDestroy()I
.end method

.method public knowBotErrorCallback(Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotErrorImpl;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "SparkChain"

    const-string v1, "Java klChainErrorCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->callback:Lcom/iflytek/sparkchain/core/chain/base/ChainCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/sparkchain/core/chain/base/ChainCallbacks;->onError(Lcom/iflytek/sparkchain/core/chain/base/ChainError;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public knowBotEventCallback(Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotEventImpl;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "SparkChain"

    const-string v1, "Java KnowBotChainEventCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->callback:Lcom/iflytek/sparkchain/core/chain/base/ChainCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/sparkchain/core/chain/base/ChainCallbacks;->onEvent(Lcom/iflytek/sparkchain/core/chain/base/ChainEvent;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public knowBotResultCallback(Lcom/iflytek/sparkchain/core/chain/qa/KnowBot$KnowBotResultImpl;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "SparkChain"

    const-string v1, "Java KnowBotChainResultCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->callback:Lcom/iflytek/sparkchain/core/chain/base/ChainCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/iflytek/sparkchain/core/chain/base/ChainCallbacks;->onOutput(Lcom/iflytek/sparkchain/core/chain/base/ChainResult;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public prompt(Lcom/iflytek/sparkchain/core/chain/base/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->prompt:Lcom/iflytek/sparkchain/core/chain/base/a;

    return-void
.end method

.method public bridge synthetic registerCallback(Lcom/iflytek/sparkchain/core/chain/base/ChainCallbacks;)V
    .locals 0

    check-cast p1, Lcom/iflytek/sparkchain/core/chain/qa/KnowBotCallbacks;

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->registerCallback(Lcom/iflytek/sparkchain/core/chain/qa/KnowBotCallbacks;)V

    return-void
.end method

.method public registerCallback(Lcom/iflytek/sparkchain/core/chain/qa/KnowBotCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->callback:Lcom/iflytek/sparkchain/core/chain/base/ChainCallbacks;

    return-void
.end method

.method public setBotId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "botId"

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->setKnowBotString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setChat_id(Ljava/lang/String;)V
    .locals 1

    const-string v0, "chat_id"

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->setKnowBotString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method native setKnowBotDouble(Ljava/lang/String;D)V
.end method

.method native setKnowBotInteger(Ljava/lang/String;I)V
.end method

.method native setKnowBotString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setMax_tokens(I)V
    .locals 1

    const-string v0, "max_tokens"

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->setKnowBotInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public setPrompt(Ljava/lang/String;)V
    .locals 1

    const-string v0, "prompt"

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->setKnowBotString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScore(D)V
    .locals 1

    const-string v0, "score"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->setKnowBotDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public setTemperature(D)V
    .locals 1

    const-string v0, "temperature"

    invoke-virtual {p0, v0, p1, p2}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->setKnowBotDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public setTop_k(I)V
    .locals 1

    const-string v0, "top_k"

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBot;->setKnowBotInteger(Ljava/lang/String;I)V

    return-void
.end method
