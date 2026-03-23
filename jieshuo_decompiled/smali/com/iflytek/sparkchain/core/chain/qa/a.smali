.class public final enum Lcom/iflytek/sparkchain/core/chain/qa/a;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/Const;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/core/chain/qa/a;",
        ">;",
        "Lcom/iflytek/sparkchain/core/Const;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/iflytek/sparkchain/core/chain/qa/a;

.field public static final enum c:Lcom/iflytek/sparkchain/core/chain/qa/a;

.field private static final synthetic d:[Lcom/iflytek/sparkchain/core/chain/qa/a;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/iflytek/sparkchain/core/chain/qa/a;

    const/4 v1, -0x1

    const-string v2, "UNKNOWN_TYPE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iflytek/sparkchain/core/chain/qa/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/sparkchain/core/chain/qa/a;->b:Lcom/iflytek/sparkchain/core/chain/qa/a;

    new-instance v1, Lcom/iflytek/sparkchain/core/chain/qa/a;

    const-string v2, "REFINE"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v2, v4, v5}, Lcom/iflytek/sparkchain/core/chain/qa/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iflytek/sparkchain/core/chain/qa/a;->c:Lcom/iflytek/sparkchain/core/chain/qa/a;

    new-array v2, v5, [Lcom/iflytek/sparkchain/core/chain/qa/a;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    sput-object v2, Lcom/iflytek/sparkchain/core/chain/qa/a;->d:[Lcom/iflytek/sparkchain/core/chain/qa/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iflytek/sparkchain/core/chain/qa/a;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/chain/qa/a;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/core/chain/qa/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/chain/qa/a;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/core/chain/qa/a;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/chain/qa/a;->d:[Lcom/iflytek/sparkchain/core/chain/qa/a;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/core/chain/qa/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/core/chain/qa/a;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/chain/qa/a;->a:I

    return v0
.end method
