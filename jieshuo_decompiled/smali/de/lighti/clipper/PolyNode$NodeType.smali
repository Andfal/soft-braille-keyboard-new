.class final enum Lde/lighti/clipper/PolyNode$NodeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/PolyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NodeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/lighti/clipper/PolyNode$NodeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/lighti/clipper/PolyNode$NodeType;

.field public static final enum ANY:Lde/lighti/clipper/PolyNode$NodeType;

.field public static final enum CLOSED:Lde/lighti/clipper/PolyNode$NodeType;

.field public static final enum OPEN:Lde/lighti/clipper/PolyNode$NodeType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lde/lighti/clipper/PolyNode$NodeType;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/lighti/clipper/PolyNode$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/lighti/clipper/PolyNode$NodeType;->ANY:Lde/lighti/clipper/PolyNode$NodeType;

    new-instance v1, Lde/lighti/clipper/PolyNode$NodeType;

    const-string v3, "OPEN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lde/lighti/clipper/PolyNode$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lde/lighti/clipper/PolyNode$NodeType;->OPEN:Lde/lighti/clipper/PolyNode$NodeType;

    new-instance v3, Lde/lighti/clipper/PolyNode$NodeType;

    const-string v5, "CLOSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lde/lighti/clipper/PolyNode$NodeType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lde/lighti/clipper/PolyNode$NodeType;->CLOSED:Lde/lighti/clipper/PolyNode$NodeType;

    const/4 v5, 0x3

    new-array v5, v5, [Lde/lighti/clipper/PolyNode$NodeType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lde/lighti/clipper/PolyNode$NodeType;->$VALUES:[Lde/lighti/clipper/PolyNode$NodeType;

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

.method public static valueOf(Ljava/lang/String;)Lde/lighti/clipper/PolyNode$NodeType;
    .locals 1

    const-class v0, Lde/lighti/clipper/PolyNode$NodeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/lighti/clipper/PolyNode$NodeType;

    return-object p0
.end method

.method public static values()[Lde/lighti/clipper/PolyNode$NodeType;
    .locals 1

    sget-object v0, Lde/lighti/clipper/PolyNode$NodeType;->$VALUES:[Lde/lighti/clipper/PolyNode$NodeType;

    invoke-virtual {v0}, [Lde/lighti/clipper/PolyNode$NodeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/lighti/clipper/PolyNode$NodeType;

    return-object v0
.end method
