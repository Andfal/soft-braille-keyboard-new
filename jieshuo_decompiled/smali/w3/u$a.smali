.class final enum Lw3/u$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw3/u$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lw3/u$a;

.field public static final enum b:Lw3/u$a;

.field public static final enum c:Lw3/u$a;

.field public static final enum d:Lw3/u$a;

.field private static final synthetic e:[Lw3/u$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lw3/u$a;

    const-string v1, "SUSPENDED_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw3/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw3/u$a;->a:Lw3/u$a;

    new-instance v1, Lw3/u$a;

    const-string v3, "SUSPENDED_YIELD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw3/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw3/u$a;->b:Lw3/u$a;

    new-instance v3, Lw3/u$a;

    const-string v5, "EXECUTING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lw3/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw3/u$a;->c:Lw3/u$a;

    new-instance v5, Lw3/u$a;

    const-string v7, "COMPLETED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lw3/u$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lw3/u$a;->d:Lw3/u$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lw3/u$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lw3/u$a;->e:[Lw3/u$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lw3/u$a;
    .locals 1

    const-class v0, Lw3/u$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw3/u$a;

    return-object p0
.end method

.method public static values()[Lw3/u$a;
    .locals 1

    sget-object v0, Lw3/u$a;->e:[Lw3/u$a;

    invoke-virtual {v0}, [Lw3/u$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw3/u$a;

    return-object v0
.end method
