.class public final enum Ly3/w$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ly3/w$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ly3/w$a;

.field public static final enum b:Ly3/w$a;

.field public static final enum c:Ly3/w$a;

.field public static final enum d:Ly3/w$a;

.field private static final synthetic e:[Ly3/w$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ly3/w$a;

    const-string v1, "FUNCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ly3/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly3/w$a;->a:Ly3/w$a;

    new-instance v1, Ly3/w$a;

    const-string v3, "GETTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ly3/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly3/w$a;->b:Ly3/w$a;

    new-instance v3, Ly3/w$a;

    const-string v5, "SETTER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ly3/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ly3/w$a;->c:Ly3/w$a;

    new-instance v5, Ly3/w$a;

    const-string v7, "METHOD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Ly3/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Ly3/w$a;->d:Ly3/w$a;

    const/4 v7, 0x4

    new-array v7, v7, [Ly3/w$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Ly3/w$a;->e:[Ly3/w$a;

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

.method public static valueOf(Ljava/lang/String;)Ly3/w$a;
    .locals 1

    const-class v0, Ly3/w$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly3/w$a;

    return-object p0
.end method

.method public static values()[Ly3/w$a;
    .locals 1

    sget-object v0, Ly3/w$a;->e:[Ly3/w$a;

    invoke-virtual {v0}, [Ly3/w$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly3/w$a;

    return-object v0
.end method
