.class public Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager;
.super Lcom/iflytek/sparkchain/media/PcmPlayerHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager$Holder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager;-><init>()V

    return-void
.end method

.method public static getInst()Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager$Holder;->access$100()Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager;

    move-result-object v0

    return-object v0
.end method
