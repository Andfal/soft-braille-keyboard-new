.class public interface abstract Lcom/vivo/speechsdk/module/api/tts/IOpusFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/b/a<",
        "Lcom/vivo/speechsdk/module/api/coder/IDecoder;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract createDecoder(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/coder/IDecoder;
.end method

.method public abstract createEncoder(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/coder/IEncoder;
.end method
