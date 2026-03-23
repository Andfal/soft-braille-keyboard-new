.class public abstract Lcom/vivo/speechsdk/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/ISpeechEngine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vivo/speechsdk/api/InitListener;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vivo/speechsdk/api/ISpeechEngine<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/c/a;->mId:I

    new-instance v1, Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-direct {v1}, Lcom/vivo/speechsdk/common/utils/Logger;-><init>()V

    invoke-virtual {v1, v0}, Lcom/vivo/speechsdk/common/utils/Logger;->setId(I)V

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LoggerManager;->addLogger(ILcom/vivo/speechsdk/common/utils/ILog;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/c/a;->mId:I

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/LoggerManager;->removeLogger(I)V

    return-void
.end method

.method public doAction(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vivo/speechsdk/c/a;->doAction(ILandroid/os/Bundle;)V

    return-void
.end method

.method public doAction(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/c/a;->mId:I

    return v0
.end method
