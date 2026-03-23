.class public final enum Lcom/iflytek/sparkchain/core/LogLvl;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/core/Const;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iflytek/sparkchain/core/LogLvl;",
        ">;",
        "Lcom/iflytek/sparkchain/core/Const;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/iflytek/sparkchain/core/LogLvl;

.field public static final enum ERROR:Lcom/iflytek/sparkchain/core/LogLvl;

.field public static final enum FATAL:Lcom/iflytek/sparkchain/core/LogLvl;

.field public static final enum INFO:Lcom/iflytek/sparkchain/core/LogLvl;

.field public static final enum OFF:Lcom/iflytek/sparkchain/core/LogLvl;

.field public static final enum VERBOSE:Lcom/iflytek/sparkchain/core/LogLvl;

.field public static final enum WARN:Lcom/iflytek/sparkchain/core/LogLvl;

.field private static final synthetic b:[Lcom/iflytek/sparkchain/core/LogLvl;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/iflytek/sparkchain/core/LogLvl;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/iflytek/sparkchain/core/LogLvl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/sparkchain/core/LogLvl;->VERBOSE:Lcom/iflytek/sparkchain/core/LogLvl;

    new-instance v1, Lcom/iflytek/sparkchain/core/LogLvl;

    const-string v3, "DEBUG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/iflytek/sparkchain/core/LogLvl;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/iflytek/sparkchain/core/LogLvl;->DEBUG:Lcom/iflytek/sparkchain/core/LogLvl;

    new-instance v3, Lcom/iflytek/sparkchain/core/LogLvl;

    const-string v5, "INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/iflytek/sparkchain/core/LogLvl;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/iflytek/sparkchain/core/LogLvl;->INFO:Lcom/iflytek/sparkchain/core/LogLvl;

    new-instance v5, Lcom/iflytek/sparkchain/core/LogLvl;

    const-string v7, "WARN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/iflytek/sparkchain/core/LogLvl;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/iflytek/sparkchain/core/LogLvl;->WARN:Lcom/iflytek/sparkchain/core/LogLvl;

    new-instance v7, Lcom/iflytek/sparkchain/core/LogLvl;

    const-string v9, "ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/iflytek/sparkchain/core/LogLvl;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/iflytek/sparkchain/core/LogLvl;->ERROR:Lcom/iflytek/sparkchain/core/LogLvl;

    new-instance v9, Lcom/iflytek/sparkchain/core/LogLvl;

    const-string v11, "FATAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/iflytek/sparkchain/core/LogLvl;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/iflytek/sparkchain/core/LogLvl;->FATAL:Lcom/iflytek/sparkchain/core/LogLvl;

    new-instance v11, Lcom/iflytek/sparkchain/core/LogLvl;

    const/16 v13, 0x64

    const-string v14, "OFF"

    const/4 v15, 0x6

    invoke-direct {v11, v14, v15, v13}, Lcom/iflytek/sparkchain/core/LogLvl;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/iflytek/sparkchain/core/LogLvl;->OFF:Lcom/iflytek/sparkchain/core/LogLvl;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/iflytek/sparkchain/core/LogLvl;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v15

    sput-object v13, Lcom/iflytek/sparkchain/core/LogLvl;->b:[Lcom/iflytek/sparkchain/core/LogLvl;

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

    iput p3, p0, Lcom/iflytek/sparkchain/core/LogLvl;->a:I

    return-void
.end method

.method public static valueOf(I)Lcom/iflytek/sparkchain/core/LogLvl;
    .locals 1

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/iflytek/sparkchain/core/LogLvl;->OFF:Lcom/iflytek/sparkchain/core/LogLvl;

    return-object p0

    :cond_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/iflytek/sparkchain/core/LogLvl;->VERBOSE:Lcom/iflytek/sparkchain/core/LogLvl;

    return-object p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/iflytek/sparkchain/core/LogLvl;->DEBUG:Lcom/iflytek/sparkchain/core/LogLvl;

    return-object p0

    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/iflytek/sparkchain/core/LogLvl;->INFO:Lcom/iflytek/sparkchain/core/LogLvl;

    return-object p0

    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/iflytek/sparkchain/core/LogLvl;->WARN:Lcom/iflytek/sparkchain/core/LogLvl;

    return-object p0

    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/iflytek/sparkchain/core/LogLvl;->ERROR:Lcom/iflytek/sparkchain/core/LogLvl;

    return-object p0

    :cond_5
    const/4 v0, 0x5

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/iflytek/sparkchain/core/LogLvl;->FATAL:Lcom/iflytek/sparkchain/core/LogLvl;

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/sparkchain/core/LogLvl;
    .locals 1

    const-class v0, Lcom/iflytek/sparkchain/core/LogLvl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iflytek/sparkchain/core/LogLvl;

    return-object p0
.end method

.method public static values()[Lcom/iflytek/sparkchain/core/LogLvl;
    .locals 1

    sget-object v0, Lcom/iflytek/sparkchain/core/LogLvl;->b:[Lcom/iflytek/sparkchain/core/LogLvl;

    invoke-virtual {v0}, [Lcom/iflytek/sparkchain/core/LogLvl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/sparkchain/core/LogLvl;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/core/LogLvl;->a:I

    return v0
.end method
