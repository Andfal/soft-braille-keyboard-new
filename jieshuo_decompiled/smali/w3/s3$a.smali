.class public final enum Lw3/s3$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/s3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lw3/s3$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lw3/s3$a;

.field public static final enum b:Lw3/s3$a;

.field public static final enum c:Lw3/s3$a;

.field public static final enum d:Lw3/s3$a;

.field private static final synthetic e:[Lw3/s3$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lw3/s3$a;

    const-string v1, "LINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lw3/s3$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lw3/s3$a;->a:Lw3/s3$a;

    new-instance v1, Lw3/s3$a;

    const-string v3, "BLOCK_COMMENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lw3/s3$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lw3/s3$a;->b:Lw3/s3$a;

    new-instance v3, Lw3/s3$a;

    const-string v5, "JSDOC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lw3/s3$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lw3/s3$a;->c:Lw3/s3$a;

    new-instance v5, Lw3/s3$a;

    const-string v7, "HTML"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lw3/s3$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lw3/s3$a;->d:Lw3/s3$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lw3/s3$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lw3/s3$a;->e:[Lw3/s3$a;

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

.method public static valueOf(Ljava/lang/String;)Lw3/s3$a;
    .locals 1

    const-class v0, Lw3/s3$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lw3/s3$a;

    return-object p0
.end method

.method public static values()[Lw3/s3$a;
    .locals 1

    sget-object v0, Lw3/s3$a;->e:[Lw3/s3$a;

    invoke-virtual {v0}, [Lw3/s3$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lw3/s3$a;

    return-object v0
.end method
