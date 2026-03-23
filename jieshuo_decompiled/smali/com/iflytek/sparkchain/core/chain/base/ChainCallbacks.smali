.class public interface abstract Lcom/iflytek/sparkchain/core/chain/base/ChainCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/iflytek/sparkchain/core/chain/base/ChainResult;",
        "E::",
        "Lcom/iflytek/sparkchain/core/chain/base/ChainEvent;",
        "T::",
        "Lcom/iflytek/sparkchain/core/chain/base/ChainError;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/iflytek/sparkchain/core/chain/base/ChainError;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onEvent(Lcom/iflytek/sparkchain/core/chain/base/ChainEvent;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onOutput(Lcom/iflytek/sparkchain/core/chain/base/ChainResult;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
