.class public final enum Lcom/iflytek/sparkchain/core/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/Const;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/core/d;",
        ">;",
        "Lcom/iflytek/sparkchain/core/Const;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/iflytek/sparkchain/core/d;

.field public static final enum c:Lcom/iflytek/sparkchain/core/d;

.field public static final enum d:Lcom/iflytek/sparkchain/core/d;

.field private static final synthetic e:[Lcom/iflytek/sparkchain/core/d;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/iflytek/sparkchain/core/d;

    const-string v1, "TEXT_GENERATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/iflytek/sparkchain/core/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/sparkchain/core/d;->b:Lcom/iflytek/sparkchain/core/d;

    new-instance v1, Lcom/iflytek/sparkchain/core/d;

    const-string v3, "IMAGE_GENERATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/iflytek/sparkchain/core/d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iflytek/sparkchain/core/d;->c:Lcom/iflytek/sparkchain/core/d;

    new-instance v3, Lcom/iflytek/sparkchain/core/d;

    const-string v5, "IMAGE_UNDERSTANDING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/iflytek/sparkchain/core/d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/iflytek/sparkchain/core/d;->d:Lcom/iflytek/sparkchain/core/d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/iflytek/sparkchain/core/d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/iflytek/sparkchain/core/d;->e:[Lcom/iflytek/sparkchain/core/d;

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

    iput p3, p0, Lcom/iflytek/sparkchain/core/d;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/d;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/core/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/d;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/core/d;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/d;->e:[Lcom/iflytek/sparkchain/core/d;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/core/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/core/d;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/d;->a:I

    return v0
.end method
