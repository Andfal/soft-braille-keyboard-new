.class public final enum Lde/lighti/clipper/Clipper$ClipType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/Clipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClipType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/lighti/clipper/Clipper$ClipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/lighti/clipper/Clipper$ClipType;

.field public static final enum DIFFERENCE:Lde/lighti/clipper/Clipper$ClipType;

.field public static final enum INTERSECTION:Lde/lighti/clipper/Clipper$ClipType;

.field public static final enum UNION:Lde/lighti/clipper/Clipper$ClipType;

.field public static final enum XOR:Lde/lighti/clipper/Clipper$ClipType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lde/lighti/clipper/Clipper$ClipType;

    const-string v1, "INTERSECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/lighti/clipper/Clipper$ClipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/lighti/clipper/Clipper$ClipType;->INTERSECTION:Lde/lighti/clipper/Clipper$ClipType;

    new-instance v1, Lde/lighti/clipper/Clipper$ClipType;

    const-string v3, "UNION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lde/lighti/clipper/Clipper$ClipType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lde/lighti/clipper/Clipper$ClipType;->UNION:Lde/lighti/clipper/Clipper$ClipType;

    new-instance v3, Lde/lighti/clipper/Clipper$ClipType;

    const-string v5, "DIFFERENCE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lde/lighti/clipper/Clipper$ClipType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lde/lighti/clipper/Clipper$ClipType;->DIFFERENCE:Lde/lighti/clipper/Clipper$ClipType;

    new-instance v5, Lde/lighti/clipper/Clipper$ClipType;

    const-string v7, "XOR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lde/lighti/clipper/Clipper$ClipType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lde/lighti/clipper/Clipper$ClipType;->XOR:Lde/lighti/clipper/Clipper$ClipType;

    const/4 v7, 0x4

    new-array v7, v7, [Lde/lighti/clipper/Clipper$ClipType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lde/lighti/clipper/Clipper$ClipType;->$VALUES:[Lde/lighti/clipper/Clipper$ClipType;

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

.method public static valueOf(Ljava/lang/String;)Lde/lighti/clipper/Clipper$ClipType;
    .locals 1

    const-class v0, Lde/lighti/clipper/Clipper$ClipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/lighti/clipper/Clipper$ClipType;

    return-object p0
.end method

.method public static values()[Lde/lighti/clipper/Clipper$ClipType;
    .locals 1

    sget-object v0, Lde/lighti/clipper/Clipper$ClipType;->$VALUES:[Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v0}, [Lde/lighti/clipper/Clipper$ClipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/lighti/clipper/Clipper$ClipType;

    return-object v0
.end method
