.class public final enum Lde/lighti/clipper/Clipper$EndType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/Clipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/lighti/clipper/Clipper$EndType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/lighti/clipper/Clipper$EndType;

.field public static final enum CLOSED_LINE:Lde/lighti/clipper/Clipper$EndType;

.field public static final enum CLOSED_POLYGON:Lde/lighti/clipper/Clipper$EndType;

.field public static final enum OPEN_BUTT:Lde/lighti/clipper/Clipper$EndType;

.field public static final enum OPEN_ROUND:Lde/lighti/clipper/Clipper$EndType;

.field public static final enum OPEN_SQUARE:Lde/lighti/clipper/Clipper$EndType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lde/lighti/clipper/Clipper$EndType;

    const-string v1, "CLOSED_POLYGON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/lighti/clipper/Clipper$EndType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/lighti/clipper/Clipper$EndType;->CLOSED_POLYGON:Lde/lighti/clipper/Clipper$EndType;

    new-instance v1, Lde/lighti/clipper/Clipper$EndType;

    const-string v3, "CLOSED_LINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lde/lighti/clipper/Clipper$EndType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lde/lighti/clipper/Clipper$EndType;->CLOSED_LINE:Lde/lighti/clipper/Clipper$EndType;

    new-instance v3, Lde/lighti/clipper/Clipper$EndType;

    const-string v5, "OPEN_BUTT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lde/lighti/clipper/Clipper$EndType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lde/lighti/clipper/Clipper$EndType;->OPEN_BUTT:Lde/lighti/clipper/Clipper$EndType;

    new-instance v5, Lde/lighti/clipper/Clipper$EndType;

    const-string v7, "OPEN_SQUARE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lde/lighti/clipper/Clipper$EndType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lde/lighti/clipper/Clipper$EndType;->OPEN_SQUARE:Lde/lighti/clipper/Clipper$EndType;

    new-instance v7, Lde/lighti/clipper/Clipper$EndType;

    const-string v9, "OPEN_ROUND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lde/lighti/clipper/Clipper$EndType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lde/lighti/clipper/Clipper$EndType;->OPEN_ROUND:Lde/lighti/clipper/Clipper$EndType;

    const/4 v9, 0x5

    new-array v9, v9, [Lde/lighti/clipper/Clipper$EndType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lde/lighti/clipper/Clipper$EndType;->$VALUES:[Lde/lighti/clipper/Clipper$EndType;

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

.method public static valueOf(Ljava/lang/String;)Lde/lighti/clipper/Clipper$EndType;
    .locals 1

    const-class v0, Lde/lighti/clipper/Clipper$EndType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/lighti/clipper/Clipper$EndType;

    return-object p0
.end method

.method public static values()[Lde/lighti/clipper/Clipper$EndType;
    .locals 1

    sget-object v0, Lde/lighti/clipper/Clipper$EndType;->$VALUES:[Lde/lighti/clipper/Clipper$EndType;

    invoke-virtual {v0}, [Lde/lighti/clipper/Clipper$EndType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/lighti/clipper/Clipper$EndType;

    return-object v0
.end method
