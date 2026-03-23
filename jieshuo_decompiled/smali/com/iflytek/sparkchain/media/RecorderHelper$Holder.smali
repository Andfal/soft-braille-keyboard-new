.class Lcom/iflytek/sparkchain/media/RecorderHelper$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/media/RecorderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static instance:Lcom/iflytek/sparkchain/media/RecorderHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/media/RecorderHelper;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/media/RecorderHelper;-><init>()V

    sput-object v0, Lcom/iflytek/sparkchain/media/RecorderHelper$Holder;->instance:Lcom/iflytek/sparkchain/media/RecorderHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/iflytek/sparkchain/media/RecorderHelper;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/media/RecorderHelper$Holder;->instance:Lcom/iflytek/sparkchain/media/RecorderHelper;

    return-object v0
.end method
