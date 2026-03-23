.class public final enum Lde/lighti/clipper/Clipper$PolyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/Clipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PolyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/lighti/clipper/Clipper$PolyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/lighti/clipper/Clipper$PolyType;

.field public static final enum CLIP:Lde/lighti/clipper/Clipper$PolyType;

.field public static final enum SUBJECT:Lde/lighti/clipper/Clipper$PolyType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lde/lighti/clipper/Clipper$PolyType;

    const-string v1, "SUBJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/lighti/clipper/Clipper$PolyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/lighti/clipper/Clipper$PolyType;->SUBJECT:Lde/lighti/clipper/Clipper$PolyType;

    new-instance v1, Lde/lighti/clipper/Clipper$PolyType;

    const-string v3, "CLIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lde/lighti/clipper/Clipper$PolyType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lde/lighti/clipper/Clipper$PolyType;->CLIP:Lde/lighti/clipper/Clipper$PolyType;

    const/4 v3, 0x2

    new-array v3, v3, [Lde/lighti/clipper/Clipper$PolyType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lde/lighti/clipper/Clipper$PolyType;->$VALUES:[Lde/lighti/clipper/Clipper$PolyType;

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

.method public static valueOf(Ljava/lang/String;)Lde/lighti/clipper/Clipper$PolyType;
    .locals 1

    const-class v0, Lde/lighti/clipper/Clipper$PolyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/lighti/clipper/Clipper$PolyType;

    return-object p0
.end method

.method public static values()[Lde/lighti/clipper/Clipper$PolyType;
    .locals 1

    sget-object v0, Lde/lighti/clipper/Clipper$PolyType;->$VALUES:[Lde/lighti/clipper/Clipper$PolyType;

    invoke-virtual {v0}, [Lde/lighti/clipper/Clipper$PolyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/lighti/clipper/Clipper$PolyType;

    return-object v0
.end method
