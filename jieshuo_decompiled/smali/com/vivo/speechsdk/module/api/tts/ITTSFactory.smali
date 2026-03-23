.class public interface abstract Lcom/vivo/speechsdk/module/api/tts/ITTSFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/b/a<",
        "Lcom/vivo/speechsdk/module/api/tts/ITTSService;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getParser()Lcom/vivo/speechsdk/module/api/IParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vivo/speechsdk/module/api/IParser<",
            "Lcom/vivo/speechsdk/module/api/tts/TtsResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method
