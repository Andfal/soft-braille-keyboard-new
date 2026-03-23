.class Lcom/iflytek/sparkchain/core/Embedding$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/sparkchain/core/Embedding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static final a:Lcom/iflytek/sparkchain/core/Embedding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/core/Embedding;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/core/Embedding;-><init>(Lcom/iflytek/sparkchain/core/Embedding$a;)V

    sput-object v0, Lcom/iflytek/sparkchain/core/Embedding$c;->a:Lcom/iflytek/sparkchain/core/Embedding;

    return-void
.end method

.method static synthetic a()Lcom/iflytek/sparkchain/core/Embedding;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/Embedding$c;->a:Lcom/iflytek/sparkchain/core/Embedding;

    return-object v0
.end method
