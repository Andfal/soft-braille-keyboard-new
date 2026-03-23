.class Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static instance:Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager;-><init>(Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager$1;)V

    sput-object v0, Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager$Holder;->instance:Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager$Holder;->instance:Lcom/iflytek/sparkchain/core/media/player/IFlyPcmPlayerManager;

    return-object v0
.end method
