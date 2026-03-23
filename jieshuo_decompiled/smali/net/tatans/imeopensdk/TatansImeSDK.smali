.class public Lnet/tatans/imeopensdk/TatansImeSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static connector:Lnet/tatans/imeopensdk/TatansImeConnector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitText(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lnet/tatans/imeopensdk/TatansImeSDK;->connector:Lnet/tatans/imeopensdk/TatansImeConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->commitText(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static delete()Z
    .locals 1

    sget-object v0, Lnet/tatans/imeopensdk/TatansImeSDK;->connector:Lnet/tatans/imeopensdk/TatansImeConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/tatans/imeopensdk/TatansImeConnector;->delete()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static deleteAll()Z
    .locals 1

    sget-object v0, Lnet/tatans/imeopensdk/TatansImeSDK;->connector:Lnet/tatans/imeopensdk/TatansImeConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/tatans/imeopensdk/TatansImeConnector;->deleteAll()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lnet/tatans/imeopensdk/TatansImeSDK;->connector:Lnet/tatans/imeopensdk/TatansImeConnector;

    if-nez v0, :cond_0

    new-instance v0, Lnet/tatans/imeopensdk/TatansImeConnector;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/tatans/imeopensdk/TatansImeConnector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lnet/tatans/imeopensdk/TatansImeSDK;->connector:Lnet/tatans/imeopensdk/TatansImeConnector;

    :cond_0
    return-void
.end method

.method public static isInputViewShow()Z
    .locals 1

    sget-object v0, Lnet/tatans/imeopensdk/TatansImeSDK;->connector:Lnet/tatans/imeopensdk/TatansImeConnector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lnet/tatans/imeopensdk/TatansImeConnector;->isInputViewShow()Z

    move-result v0

    return v0
.end method

.method public static selectPreviousOrNextCandidates(Z)Z
    .locals 1

    sget-object v0, Lnet/tatans/imeopensdk/TatansImeSDK;->connector:Lnet/tatans/imeopensdk/TatansImeConnector;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->selectPreviousOrNextCandidates(Z)Z

    move-result p0

    return p0
.end method

.method public static setScreeReadActor(Lnet/tatans/imeopensdk/ScreenReaderActor;)V
    .locals 1

    sget-object v0, Lnet/tatans/imeopensdk/TatansImeSDK;->connector:Lnet/tatans/imeopensdk/TatansImeConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lnet/tatans/imeopensdk/TatansImeConnector;->setScreenReaderActor(Lnet/tatans/imeopensdk/ScreenReaderActor;)V

    :cond_0
    return-void
.end method

.method public static shutdown()V
    .locals 1

    sget-object v0, Lnet/tatans/imeopensdk/TatansImeSDK;->connector:Lnet/tatans/imeopensdk/TatansImeConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/tatans/imeopensdk/TatansImeConnector;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lnet/tatans/imeopensdk/TatansImeSDK;->connector:Lnet/tatans/imeopensdk/TatansImeConnector;

    return-void
.end method
