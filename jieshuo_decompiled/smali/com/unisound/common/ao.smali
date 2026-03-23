.class public final enum Lcom/unisound/common/ao;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unisound/common/ao;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unisound/common/ao;

.field public static final enum b:Lcom/unisound/common/ao;

.field public static final enum c:Lcom/unisound/common/ao;

.field private static final synthetic d:[Lcom/unisound/common/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/unisound/common/ao;

    const-string v1, "MAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unisound/common/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/common/ao;->a:Lcom/unisound/common/ao;

    new-instance v1, Lcom/unisound/common/ao;

    const-string v3, "FEMALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unisound/common/ao;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unisound/common/ao;->b:Lcom/unisound/common/ao;

    new-instance v3, Lcom/unisound/common/ao;

    const-string v5, "UNKOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unisound/common/ao;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unisound/common/ao;->c:Lcom/unisound/common/ao;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/unisound/common/ao;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/unisound/common/ao;->d:[Lcom/unisound/common/ao;

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

.method public static a(Ljava/lang/String;)Lcom/unisound/common/ao;
    .locals 1

    const-class v0, Lcom/unisound/common/ao;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unisound/common/ao;

    return-object p0
.end method

.method public static a()[Lcom/unisound/common/ao;
    .locals 1

    sget-object v0, Lcom/unisound/common/ao;->d:[Lcom/unisound/common/ao;

    invoke-virtual {v0}, [Lcom/unisound/common/ao;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/common/ao;

    return-object v0
.end method
