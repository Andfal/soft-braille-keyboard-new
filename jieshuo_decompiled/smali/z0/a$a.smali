.class public final enum Lz0/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz0/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lz0/a$a;

.field public static final enum d:Lz0/a$a;

.field private static final synthetic e:[Lz0/a$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lz0/a$a;

    const-string v1, "absPath"

    const-string v2, "varchar primary key"

    const-string v3, "ABS_PATH"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lz0/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lz0/a$a;->c:Lz0/a$a;

    new-instance v1, Lz0/a$a;

    const-string v2, "state"

    const-string v3, "integer"

    const-string v5, "STATE"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lz0/a$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lz0/a$a;->d:Lz0/a$a;

    const/4 v2, 0x2

    new-array v2, v2, [Lz0/a$a;

    aput-object v0, v2, v4

    aput-object v1, v2, v6

    sput-object v2, Lz0/a$a;->e:[Lz0/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lz0/a$a;->a:Ljava/lang/String;

    iput-object p4, p0, Lz0/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz0/a$a;
    .locals 1

    const-class v0, Lz0/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz0/a$a;

    return-object p0
.end method

.method public static values()[Lz0/a$a;
    .locals 1

    sget-object v0, Lz0/a$a;->e:[Lz0/a$a;

    invoke-virtual {v0}, [Lz0/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz0/a$a;

    return-object v0
.end method
