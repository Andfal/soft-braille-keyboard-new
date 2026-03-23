.class public Lcom/vivo/speechsdk/module/net/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/INetworkState;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetWorkClass()I
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->e()I

    move-result v0

    return v0
.end method

.method public isNetWorkConnected()Z
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->k()Z

    move-result v0

    return v0
.end method

.method public isNetworkAvailable()Z
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->l()Z

    move-result v0

    return v0
.end method

.method public isSignalStrengthGood()Z
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->m()Z

    move-result v0

    return v0
.end method

.method public isWifiConnected()Z
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->n()Z

    move-result v0

    return v0
.end method

.method public updateNetworkAvailable()V
    .locals 0

    return-void
.end method
