.class public interface abstract Lcom/iflytek/sparkchain/core/chain/qa/KnowBotCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/chain/base/ChainCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iflytek/sparkchain/core/chain/base/ChainCallbacks<",
        "Lcom/iflytek/sparkchain/core/chain/qa/KnowBotResult;",
        "Lcom/iflytek/sparkchain/core/chain/qa/KnowBotEvent;",
        "Lcom/iflytek/sparkchain/core/chain/qa/KnowBotError;",
        ">;"
    }
.end annotation


# virtual methods
.method public bridge abstract synthetic onError(Lcom/iflytek/sparkchain/core/chain/base/ChainError;Ljava/lang/Object;)V
.end method

.method public abstract onError(Lcom/iflytek/sparkchain/core/chain/qa/KnowBotError;Ljava/lang/Object;)V
.end method

.method public bridge abstract synthetic onEvent(Lcom/iflytek/sparkchain/core/chain/base/ChainEvent;Ljava/lang/Object;)V
.end method

.method public abstract onEvent(Lcom/iflytek/sparkchain/core/chain/qa/KnowBotEvent;Ljava/lang/Object;)V
.end method

.method public bridge abstract synthetic onOutput(Lcom/iflytek/sparkchain/core/chain/base/ChainResult;Ljava/lang/Object;)V
.end method

.method public abstract onOutput(Lcom/iflytek/sparkchain/core/chain/qa/KnowBotResult;Ljava/lang/Object;)V
.end method
