.class final enum Lq/g0$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq/g0$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq/g0$c;

.field public static final enum b:Lq/g0$c;

.field public static final enum c:Lq/g0$c;

.field private static final synthetic d:[Lq/g0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lq/g0$c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq/g0$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq/g0$c;->a:Lq/g0$c;

    new-instance v1, Lq/g0$c;

    const-string v3, "TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lq/g0$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq/g0$c;->b:Lq/g0$c;

    new-instance v3, Lq/g0$c;

    const-string v5, "INSTANCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lq/g0$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lq/g0$c;->c:Lq/g0$c;

    const/4 v5, 0x3

    new-array v5, v5, [Lq/g0$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lq/g0$c;->d:[Lq/g0$c;

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

.method public static valueOf(Ljava/lang/String;)Lq/g0$c;
    .locals 1

    const-class v0, Lq/g0$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq/g0$c;

    return-object p0
.end method

.method public static values()[Lq/g0$c;
    .locals 1

    sget-object v0, Lq/g0$c;->d:[Lq/g0$c;

    invoke-virtual {v0}, [Lq/g0$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq/g0$c;

    return-object v0
.end method
