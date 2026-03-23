.class public interface abstract Lcom/vivo/speechsdk/api/ISpeechEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/IEngine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vivo/speechsdk/api/InitListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/api/IEngine<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract doAction(I)V
.end method

.method public abstract doAction(ILandroid/os/Bundle;)V
.end method

.method public abstract getId()I
.end method
