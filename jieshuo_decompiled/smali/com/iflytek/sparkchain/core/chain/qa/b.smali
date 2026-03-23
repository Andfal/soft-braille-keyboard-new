.class public final synthetic Lcom/iflytek/sparkchain/core/chain/qa/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/iflytek/sparkchain/core/chain/qa/KnowBotCallbacks;Lcom/iflytek/sparkchain/core/chain/base/ChainError;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/iflytek/sparkchain/core/chain/qa/KnowBotError;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBotCallbacks;->onError(Lcom/iflytek/sparkchain/core/chain/qa/KnowBotError;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/iflytek/sparkchain/core/chain/qa/KnowBotCallbacks;Lcom/iflytek/sparkchain/core/chain/base/ChainEvent;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/iflytek/sparkchain/core/chain/qa/KnowBotEvent;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBotCallbacks;->onEvent(Lcom/iflytek/sparkchain/core/chain/qa/KnowBotEvent;Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/iflytek/sparkchain/core/chain/qa/KnowBotCallbacks;Lcom/iflytek/sparkchain/core/chain/base/ChainResult;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/iflytek/sparkchain/core/chain/qa/KnowBotResult;

    invoke-interface {p0, p1, p2}, Lcom/iflytek/sparkchain/core/chain/qa/KnowBotCallbacks;->onOutput(Lcom/iflytek/sparkchain/core/chain/qa/KnowBotResult;Ljava/lang/Object;)V

    return-void
.end method
