.class public interface abstract Lcom/vivo/speechsdk/module/api/ym/YmFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/b;


# virtual methods
.method public abstract createASRService(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/asr/IASRService;
.end method

.method public abstract createTTSService(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/tts/ITTSService;
.end method

.method public abstract getParser()Lcom/vivo/speechsdk/module/api/IParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vivo/speechsdk/module/api/IParser<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
