.class public final enum Lc0/e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc0/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc0/e;

.field public static final enum b:Lc0/e;

.field public static final enum c:Lc0/e;

.field public static final enum d:Lc0/e;

.field public static final enum e:Lc0/e;

.field private static final synthetic f:[Lc0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lc0/e;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc0/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc0/e;->a:Lc0/e;

    new-instance v1, Lc0/e;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc0/e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc0/e;->b:Lc0/e;

    new-instance v3, Lc0/e;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc0/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc0/e;->c:Lc0/e;

    new-instance v5, Lc0/e;

    const-string v7, "DELETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lc0/e;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lc0/e;->d:Lc0/e;

    new-instance v7, Lc0/e;

    const-string v9, "HEAD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lc0/e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lc0/e;->e:Lc0/e;

    const/4 v9, 0x5

    new-array v9, v9, [Lc0/e;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lc0/e;->f:[Lc0/e;

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

.method public static valueOf(Ljava/lang/String;)Lc0/e;
    .locals 1

    const-class v0, Lc0/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc0/e;

    return-object p0
.end method

.method public static values()[Lc0/e;
    .locals 1

    sget-object v0, Lc0/e;->f:[Lc0/e;

    invoke-virtual {v0}, [Lc0/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc0/e;

    return-object v0
.end method
