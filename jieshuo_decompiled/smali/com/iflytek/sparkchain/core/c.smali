.class public final enum Lcom/iflytek/sparkchain/core/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/Const;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/core/c;",
        ">;",
        "Lcom/iflytek/sparkchain/core/Const;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/iflytek/sparkchain/core/c;

.field public static final enum c:Lcom/iflytek/sparkchain/core/c;

.field public static final enum d:Lcom/iflytek/sparkchain/core/c;

.field public static final enum e:Lcom/iflytek/sparkchain/core/c;

.field public static final enum f:Lcom/iflytek/sparkchain/core/c;

.field public static final enum g:Lcom/iflytek/sparkchain/core/c;

.field private static final synthetic h:[Lcom/iflytek/sparkchain/core/c;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/iflytek/sparkchain/core/c;

    const-string v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/iflytek/sparkchain/core/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/sparkchain/core/c;->b:Lcom/iflytek/sparkchain/core/c;

    new-instance v1, Lcom/iflytek/sparkchain/core/c;

    const-string v3, "AUDIO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/iflytek/sparkchain/core/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iflytek/sparkchain/core/c;->c:Lcom/iflytek/sparkchain/core/c;

    new-instance v3, Lcom/iflytek/sparkchain/core/c;

    const-string v5, "IMAGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/iflytek/sparkchain/core/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/iflytek/sparkchain/core/c;->d:Lcom/iflytek/sparkchain/core/c;

    new-instance v5, Lcom/iflytek/sparkchain/core/c;

    const-string v7, "VIDEO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/iflytek/sparkchain/core/c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/iflytek/sparkchain/core/c;->e:Lcom/iflytek/sparkchain/core/c;

    new-instance v7, Lcom/iflytek/sparkchain/core/c;

    const-string v9, "PER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/iflytek/sparkchain/core/c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/iflytek/sparkchain/core/c;->f:Lcom/iflytek/sparkchain/core/c;

    new-instance v9, Lcom/iflytek/sparkchain/core/c;

    const/4 v11, -0x1

    const-string v12, "OTHER"

    const/4 v13, 0x5

    invoke-direct {v9, v12, v13, v11}, Lcom/iflytek/sparkchain/core/c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/iflytek/sparkchain/core/c;->g:Lcom/iflytek/sparkchain/core/c;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/iflytek/sparkchain/core/c;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v13

    sput-object v11, Lcom/iflytek/sparkchain/core/c;->h:[Lcom/iflytek/sparkchain/core/c;

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

    iput p3, p0, Lcom/iflytek/sparkchain/core/c;->a:I

    return-void
.end method

.method public static a(I)Lcom/iflytek/sparkchain/core/c;
    .locals 2

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->b:Lcom/iflytek/sparkchain/core/c;

    iget v1, v0, Lcom/iflytek/sparkchain/core/c;->a:I

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/iflytek/sparkchain/core/c;->c:Lcom/iflytek/sparkchain/core/c;

    iget v1, v0, Lcom/iflytek/sparkchain/core/c;->a:I

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/iflytek/sparkchain/core/c;->d:Lcom/iflytek/sparkchain/core/c;

    iget v1, v0, Lcom/iflytek/sparkchain/core/c;->a:I

    if-ne p0, v1, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lcom/iflytek/sparkchain/core/c;->e:Lcom/iflytek/sparkchain/core/c;

    iget v1, v0, Lcom/iflytek/sparkchain/core/c;->a:I

    if-ne p0, v1, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lcom/iflytek/sparkchain/core/c;->f:Lcom/iflytek/sparkchain/core/c;

    iget v1, v0, Lcom/iflytek/sparkchain/core/c;->a:I

    if-ne p0, v1, :cond_4

    return-object v0

    :cond_4
    sget-object v0, Lcom/iflytek/sparkchain/core/c;->g:Lcom/iflytek/sparkchain/core/c;

    iget v1, v0, Lcom/iflytek/sparkchain/core/c;->a:I

    if-ne p0, v1, :cond_5

    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "type not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/c;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/core/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/c;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/core/c;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/c;->h:[Lcom/iflytek/sparkchain/core/c;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/core/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/core/c;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/c;->a:I

    return v0
.end method
