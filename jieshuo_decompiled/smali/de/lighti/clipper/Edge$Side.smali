.class final enum Lde/lighti/clipper/Edge$Side;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/Edge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Side"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/lighti/clipper/Edge$Side;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/lighti/clipper/Edge$Side;

.field public static final enum LEFT:Lde/lighti/clipper/Edge$Side;

.field public static final enum RIGHT:Lde/lighti/clipper/Edge$Side;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lde/lighti/clipper/Edge$Side;

    const-string v1, "LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/lighti/clipper/Edge$Side;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/lighti/clipper/Edge$Side;->LEFT:Lde/lighti/clipper/Edge$Side;

    new-instance v1, Lde/lighti/clipper/Edge$Side;

    const-string v3, "RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lde/lighti/clipper/Edge$Side;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lde/lighti/clipper/Edge$Side;->RIGHT:Lde/lighti/clipper/Edge$Side;

    const/4 v3, 0x2

    new-array v3, v3, [Lde/lighti/clipper/Edge$Side;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lde/lighti/clipper/Edge$Side;->$VALUES:[Lde/lighti/clipper/Edge$Side;

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

.method public static valueOf(Ljava/lang/String;)Lde/lighti/clipper/Edge$Side;
    .locals 1

    const-class v0, Lde/lighti/clipper/Edge$Side;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/lighti/clipper/Edge$Side;

    return-object p0
.end method

.method public static values()[Lde/lighti/clipper/Edge$Side;
    .locals 1

    sget-object v0, Lde/lighti/clipper/Edge$Side;->$VALUES:[Lde/lighti/clipper/Edge$Side;

    invoke-virtual {v0}, [Lde/lighti/clipper/Edge$Side;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/lighti/clipper/Edge$Side;

    return-object v0
.end method
