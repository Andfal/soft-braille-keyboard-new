.class Lcom/iflytek/sparkchain/core/AiHelper$Holder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/AiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final instance:Lcom/iflytek/sparkchain/core/AiHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/core/AiHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/core/AiHelper;-><init>(Lcom/iflytek/sparkchain/core/AiHelper$1;)V

    sput-object v0, Lcom/iflytek/sparkchain/core/AiHelper$Holder;->instance:Lcom/iflytek/sparkchain/core/AiHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Lcom/iflytek/sparkchain/core/AiHelper;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/AiHelper$Holder;->instance:Lcom/iflytek/sparkchain/core/AiHelper;

    return-object v0
.end method
