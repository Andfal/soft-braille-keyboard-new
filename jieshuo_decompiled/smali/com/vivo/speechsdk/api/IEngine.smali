.class public interface abstract Lcom/vivo/speechsdk/api/IEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vivo/speechsdk/api/InitListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract init(Landroid/os/Bundle;Lcom/vivo/speechsdk/api/InitListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract isDestroy()Z
.end method

.method public abstract isInit()Z
.end method
