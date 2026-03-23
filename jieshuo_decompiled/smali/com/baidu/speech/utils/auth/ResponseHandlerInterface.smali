.class public interface abstract Lcom/baidu/speech/utils/auth/ResponseHandlerInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract sendErrorMessage(ILjava/util/Map;Ljava/lang/String;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method

.method public abstract sendResponseMessage(Lcom/baidu/speech/utils/auth/HttpResponseEntity;)V
.end method

.method public abstract setRequestURI(Ljava/net/URI;)V
.end method
