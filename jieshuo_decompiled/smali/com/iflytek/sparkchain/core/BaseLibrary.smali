.class public abstract Lcom/iflytek/sparkchain/core/BaseLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/BaseLibrary$Params;,
        Lcom/iflytek/sparkchain/core/BaseLibrary$BaseParams;,
        Lcom/iflytek/sparkchain/core/BaseLibrary$AuthType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/Auth;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/Auth;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Activity;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/BaseLibrary;->init(Landroid/content/Context;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V
    .locals 2

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/Auth;->a(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/core/Auth;->b(Landroid/content/Context;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/core/Auth;->a(Landroid/content/Context;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V

    :goto_0
    return-void
.end method

.method public initEntry(Landroid/app/Activity;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/core/Auth;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/sparkchain/core/Auth;->a(Landroid/content/Context;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V

    return-void
.end method

.method public initEntry(Landroid/content/Context;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/core/BaseLibrary;->init(Landroid/content/Context;Lcom/iflytek/sparkchain/core/BaseLibrary$Params;)V

    return-void
.end method

.method public abstract registerListener(Lcom/iflytek/sparkchain/core/AiResponseListener;)V
.end method

.method public unInit()V
    .locals 2

    invoke-static {}, Lcom/iflytek/sparkchain/media/RecorderHelper;->getInst()Lcom/iflytek/sparkchain/media/RecorderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/RecorderHelper;->stop()V

    invoke-static {}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;->release()V

    invoke-static {}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->getInst()Lcom/iflytek/sparkchain/media/SimplePlayerHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->release()V

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/Auth;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iflytek/sparkchain/core/Auth;->d()Lcom/iflytek/sparkchain/core/Auth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/core/Auth;->release()I

    return-void
.end method
