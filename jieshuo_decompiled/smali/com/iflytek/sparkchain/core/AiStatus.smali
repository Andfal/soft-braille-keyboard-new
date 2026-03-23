.class public final enum Lcom/iflytek/sparkchain/core/AiStatus;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/Const;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/core/AiStatus;",
        ">;",
        "Lcom/iflytek/sparkchain/core/Const;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/sparkchain/core/AiStatus;

.field public static final enum BEGIN:Lcom/iflytek/sparkchain/core/AiStatus;

.field public static final enum CONTINUE:Lcom/iflytek/sparkchain/core/AiStatus;

.field public static final enum END:Lcom/iflytek/sparkchain/core/AiStatus;

.field public static final enum ONCE:Lcom/iflytek/sparkchain/core/AiStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/iflytek/sparkchain/core/AiStatus;

    const-string v1, "BEGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/iflytek/sparkchain/core/AiStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/sparkchain/core/AiStatus;->BEGIN:Lcom/iflytek/sparkchain/core/AiStatus;

    new-instance v1, Lcom/iflytek/sparkchain/core/AiStatus;

    const-string v3, "CONTINUE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/iflytek/sparkchain/core/AiStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iflytek/sparkchain/core/AiStatus;->CONTINUE:Lcom/iflytek/sparkchain/core/AiStatus;

    new-instance v3, Lcom/iflytek/sparkchain/core/AiStatus;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/iflytek/sparkchain/core/AiStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/iflytek/sparkchain/core/AiStatus;->END:Lcom/iflytek/sparkchain/core/AiStatus;

    new-instance v5, Lcom/iflytek/sparkchain/core/AiStatus;

    const-string v7, "ONCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/iflytek/sparkchain/core/AiStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/iflytek/sparkchain/core/AiStatus;->ONCE:Lcom/iflytek/sparkchain/core/AiStatus;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/iflytek/sparkchain/core/AiStatus;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/iflytek/sparkchain/core/AiStatus;->$VALUES:[Lcom/iflytek/sparkchain/core/AiStatus;

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

    iput p3, p0, Lcom/iflytek/sparkchain/core/AiStatus;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/iflytek/sparkchain/core/AiStatus;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/iflytek/sparkchain/core/AiStatus;->BEGIN:Lcom/iflytek/sparkchain/core/AiStatus;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/iflytek/sparkchain/core/AiStatus;->CONTINUE:Lcom/iflytek/sparkchain/core/AiStatus;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/iflytek/sparkchain/core/AiStatus;->END:Lcom/iflytek/sparkchain/core/AiStatus;

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/iflytek/sparkchain/core/AiStatus;->ONCE:Lcom/iflytek/sparkchain/core/AiStatus;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "type not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/AiStatus;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/AiStatus;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/core/AiStatus;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/AiStatus;->$VALUES:[Lcom/iflytek/sparkchain/core/AiStatus;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/core/AiStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/core/AiStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/AiStatus;->value:I

    return v0
.end method
