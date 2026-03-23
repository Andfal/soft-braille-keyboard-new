.class Lcom/iflytek/sparkchain/media/PcmPlayerHelper$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/media/PcmPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static instance:Lcom/iflytek/sparkchain/media/PcmPlayerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/media/PcmPlayerHelper;-><init>()V

    sput-object v0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper$Holder;->instance:Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/iflytek/sparkchain/media/PcmPlayerHelper;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/media/PcmPlayerHelper$Holder;->instance:Lcom/iflytek/sparkchain/media/PcmPlayerHelper;

    return-object v0
.end method
