.class public final enum Lb1/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb1/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb1/j;

.field public static final enum b:Lb1/j;

.field public static final enum c:Lb1/j;

.field public static final enum d:Lb1/j;

.field private static final synthetic e:[Lb1/j;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lb1/j;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb1/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb1/j;->a:Lb1/j;

    new-instance v1, Lb1/j;

    const-string v3, "HIGH_SPEED_NETWORK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb1/j;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb1/j;->b:Lb1/j;

    new-instance v3, Lb1/j;

    const-string v5, "HIGH_SPEED_SYNTHESIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb1/j;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb1/j;->c:Lb1/j;

    new-instance v5, Lb1/j;

    const-string v7, "HIGH_SPEED_SYNTHESIZE_WIFI"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lb1/j;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lb1/j;->d:Lb1/j;

    const/4 v7, 0x4

    new-array v7, v7, [Lb1/j;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lb1/j;->e:[Lb1/j;

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

.method public static valueOf(Ljava/lang/String;)Lb1/j;
    .locals 1

    const-class v0, Lb1/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb1/j;

    return-object p0
.end method

.method public static values()[Lb1/j;
    .locals 1

    sget-object v0, Lb1/j;->e:[Lb1/j;

    invoke-virtual {v0}, [Lb1/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb1/j;

    return-object v0
.end method
