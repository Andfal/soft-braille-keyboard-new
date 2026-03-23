.class public final enum Lw3/h3;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw3/h3;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lw3/h3;

.field public static final enum b:Lw3/h3;

.field public static final enum c:Lw3/h3;

.field private static final synthetic d:[Lw3/h3;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lw3/h3;

    const-string v1, "RHINO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw3/h3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw3/h3;->a:Lw3/h3;

    new-instance v1, Lw3/h3;

    const-string v3, "MOZILLA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw3/h3;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw3/h3;->b:Lw3/h3;

    new-instance v3, Lw3/h3;

    const-string v5, "V8"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lw3/h3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw3/h3;->c:Lw3/h3;

    const/4 v5, 0x3

    new-array v5, v5, [Lw3/h3;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lw3/h3;->d:[Lw3/h3;

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

.method public static valueOf(Ljava/lang/String;)Lw3/h3;
    .locals 1

    const-class v0, Lw3/h3;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw3/h3;

    return-object p0
.end method

.method public static values()[Lw3/h3;
    .locals 1

    sget-object v0, Lw3/h3;->d:[Lw3/h3;

    invoke-virtual {v0}, [Lw3/h3;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw3/h3;

    return-object v0
.end method
