.class public interface abstract Lcom/iflytek/sparkchain/core/AiResponseListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onError(Ljava/lang/String;IILjava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract onEvent(Ljava/lang/String;IILjava/util/List;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/AiResponse;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onResult(Ljava/lang/String;ILjava/util/List;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/iflytek/sparkchain/core/AiResponse;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method
