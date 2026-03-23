.class public final enum Lcom/iflytek/sparkchain/core/CodeType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/Const;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/core/CodeType;",
        ">;",
        "Lcom/iflytek/sparkchain/core/Const;"
    }
.end annotation


# static fields
.field public static final enum CODEC_DECODE:Lcom/iflytek/sparkchain/core/CodeType;

.field public static final enum CODEC_ENCODE:Lcom/iflytek/sparkchain/core/CodeType;

.field private static final synthetic b:[Lcom/iflytek/sparkchain/core/CodeType;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/iflytek/sparkchain/core/CodeType;

    const-string v1, "CODEC_ENCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/iflytek/sparkchain/core/CodeType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/sparkchain/core/CodeType;->CODEC_ENCODE:Lcom/iflytek/sparkchain/core/CodeType;

    new-instance v1, Lcom/iflytek/sparkchain/core/CodeType;

    const-string v3, "CODEC_DECODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/iflytek/sparkchain/core/CodeType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iflytek/sparkchain/core/CodeType;->CODEC_DECODE:Lcom/iflytek/sparkchain/core/CodeType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/iflytek/sparkchain/core/CodeType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/iflytek/sparkchain/core/CodeType;->b:[Lcom/iflytek/sparkchain/core/CodeType;

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

    iput p3, p0, Lcom/iflytek/sparkchain/core/CodeType;->a:I

    return-void
.end method

.method public static valueOf(I)Lcom/iflytek/sparkchain/core/CodeType;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/iflytek/sparkchain/core/CodeType;->CODEC_ENCODE:Lcom/iflytek/sparkchain/core/CodeType;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/iflytek/sparkchain/core/CodeType;->CODEC_DECODE:Lcom/iflytek/sparkchain/core/CodeType;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/CodeType;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/core/CodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/CodeType;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/core/CodeType;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/CodeType;->b:[Lcom/iflytek/sparkchain/core/CodeType;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/core/CodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/core/CodeType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/CodeType;->a:I

    return v0
.end method
