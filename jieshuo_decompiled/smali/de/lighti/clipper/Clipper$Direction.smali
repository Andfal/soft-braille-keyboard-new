.class public final enum Lde/lighti/clipper/Clipper$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/Clipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/lighti/clipper/Clipper$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/lighti/clipper/Clipper$Direction;

.field public static final enum LEFT_TO_RIGHT:Lde/lighti/clipper/Clipper$Direction;

.field public static final enum RIGHT_TO_LEFT:Lde/lighti/clipper/Clipper$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lde/lighti/clipper/Clipper$Direction;

    const-string v1, "RIGHT_TO_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/lighti/clipper/Clipper$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/lighti/clipper/Clipper$Direction;->RIGHT_TO_LEFT:Lde/lighti/clipper/Clipper$Direction;

    new-instance v1, Lde/lighti/clipper/Clipper$Direction;

    const-string v3, "LEFT_TO_RIGHT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lde/lighti/clipper/Clipper$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lde/lighti/clipper/Clipper$Direction;->LEFT_TO_RIGHT:Lde/lighti/clipper/Clipper$Direction;

    const/4 v3, 0x2

    new-array v3, v3, [Lde/lighti/clipper/Clipper$Direction;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lde/lighti/clipper/Clipper$Direction;->$VALUES:[Lde/lighti/clipper/Clipper$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lde/lighti/clipper/Clipper$Direction;
    .locals 1

    const-class v0, Lde/lighti/clipper/Clipper$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/lighti/clipper/Clipper$Direction;

    return-object p0
.end method

.method public static values()[Lde/lighti/clipper/Clipper$Direction;
    .locals 1

    sget-object v0, Lde/lighti/clipper/Clipper$Direction;->$VALUES:[Lde/lighti/clipper/Clipper$Direction;

    invoke-virtual {v0}, [Lde/lighti/clipper/Clipper$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/lighti/clipper/Clipper$Direction;

    return-object v0
.end method
