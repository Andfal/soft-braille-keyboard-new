.class public final enum Lcom/iflytek/sparkchain/core/DataStatus;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/Const;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/core/DataStatus;",
        ">;",
        "Lcom/iflytek/sparkchain/core/Const;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final enum BEGIN:Lcom/iflytek/sparkchain/core/DataStatus;

.field public static final enum CONTINUE:Lcom/iflytek/sparkchain/core/DataStatus;

.field public static final enum END:Lcom/iflytek/sparkchain/core/DataStatus;

.field public static final enum ONCE:Lcom/iflytek/sparkchain/core/DataStatus;

.field private static final synthetic b:[Lcom/iflytek/sparkchain/core/DataStatus;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/iflytek/sparkchain/core/DataStatus;

    const-string v1, "BEGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/iflytek/sparkchain/core/DataStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/sparkchain/core/DataStatus;->BEGIN:Lcom/iflytek/sparkchain/core/DataStatus;

    new-instance v1, Lcom/iflytek/sparkchain/core/DataStatus;

    const-string v3, "CONTINUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/iflytek/sparkchain/core/DataStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iflytek/sparkchain/core/DataStatus;->CONTINUE:Lcom/iflytek/sparkchain/core/DataStatus;

    new-instance v3, Lcom/iflytek/sparkchain/core/DataStatus;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/iflytek/sparkchain/core/DataStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/iflytek/sparkchain/core/DataStatus;->END:Lcom/iflytek/sparkchain/core/DataStatus;

    new-instance v5, Lcom/iflytek/sparkchain/core/DataStatus;

    const-string v7, "ONCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/iflytek/sparkchain/core/DataStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/iflytek/sparkchain/core/DataStatus;->ONCE:Lcom/iflytek/sparkchain/core/DataStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/iflytek/sparkchain/core/DataStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/iflytek/sparkchain/core/DataStatus;->b:[Lcom/iflytek/sparkchain/core/DataStatus;

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

    iput p3, p0, Lcom/iflytek/sparkchain/core/DataStatus;->a:I

    return-void
.end method

.method public static valueOf(I)Lcom/iflytek/sparkchain/core/DataStatus;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/iflytek/sparkchain/core/DataStatus;->BEGIN:Lcom/iflytek/sparkchain/core/DataStatus;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/iflytek/sparkchain/core/DataStatus;->CONTINUE:Lcom/iflytek/sparkchain/core/DataStatus;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/iflytek/sparkchain/core/DataStatus;->END:Lcom/iflytek/sparkchain/core/DataStatus;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/iflytek/sparkchain/core/DataStatus;->ONCE:Lcom/iflytek/sparkchain/core/DataStatus;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "type not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/DataStatus;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/core/DataStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/DataStatus;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/core/DataStatus;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/DataStatus;->b:[Lcom/iflytek/sparkchain/core/DataStatus;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/core/DataStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/core/DataStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/DataStatus;->a:I

    return v0
.end method

.method public next()Lcom/iflytek/sparkchain/core/AiStatus;
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/DataStatus;->a:I

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiStatus;->valueOf(I)Lcom/iflytek/sparkchain/core/AiStatus;

    move-result-object v0

    return-object v0
.end method
