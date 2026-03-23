.class public final enum Lcom/unisound/common/al;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/unisound/common/al;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unisound/common/al;

.field public static final enum b:Lcom/unisound/common/al;

.field public static final enum c:Lcom/unisound/common/al;

.field private static final synthetic d:[Lcom/unisound/common/al;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/unisound/common/al;

    const-string v1, "idle"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unisound/common/al;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/common/al;->a:Lcom/unisound/common/al;

    new-instance v1, Lcom/unisound/common/al;

    const-string v3, "recording"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/unisound/common/al;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/unisound/common/al;->b:Lcom/unisound/common/al;

    new-instance v3, Lcom/unisound/common/al;

    const-string v5, "recognizing"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/unisound/common/al;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/unisound/common/al;->c:Lcom/unisound/common/al;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/unisound/common/al;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/unisound/common/al;->d:[Lcom/unisound/common/al;

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

.method public static a(Ljava/lang/String;)Lcom/unisound/common/al;
    .locals 1

    const-class v0, Lcom/unisound/common/al;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/unisound/common/al;

    return-object p0
.end method

.method public static a()[Lcom/unisound/common/al;
    .locals 1

    sget-object v0, Lcom/unisound/common/al;->d:[Lcom/unisound/common/al;

    invoke-virtual {v0}, [Lcom/unisound/common/al;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/common/al;

    return-object v0
.end method
