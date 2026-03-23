.class public interface abstract Lcom/iflytek/sparkchain/core/AiListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onError(IILjava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onEvent(IILjava/util/List;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/AiResponse;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onResult(ILjava/util/List;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/AiResponse;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
