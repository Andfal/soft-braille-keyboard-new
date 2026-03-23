.class public interface abstract Lcom/vivo/speechsdk/module/api/asr/IASRFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/b/a<",
        "Lcom/vivo/speechsdk/module/api/asr/IASRService;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getParser(I)Lcom/vivo/speechsdk/module/api/IParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/vivo/speechsdk/module/api/IParser<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method
