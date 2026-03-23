.class final enum Lcom/unisound/sdk/az;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unisound/sdk/az;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unisound/sdk/az;

.field public static final enum b:Lcom/unisound/sdk/az;

.field private static final synthetic c:[Lcom/unisound/sdk/az;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/unisound/sdk/az;

    const-string v1, "synAndPlay"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unisound/sdk/az;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/az;->a:Lcom/unisound/sdk/az;

    new-instance v1, Lcom/unisound/sdk/az;

    const-string v3, "onlySyn"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unisound/sdk/az;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unisound/sdk/az;->b:Lcom/unisound/sdk/az;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/unisound/sdk/az;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/unisound/sdk/az;->c:[Lcom/unisound/sdk/az;

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

.method public static a(Ljava/lang/String;)Lcom/unisound/sdk/az;
    .locals 1

    const-class v0, Lcom/unisound/sdk/az;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unisound/sdk/az;

    return-object p0
.end method

.method public static a()[Lcom/unisound/sdk/az;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/az;->c:[Lcom/unisound/sdk/az;

    invoke-virtual {v0}, [Lcom/unisound/sdk/az;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/sdk/az;

    return-object v0
.end method
