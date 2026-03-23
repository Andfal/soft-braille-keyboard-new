.class synthetic Lde/lighti/clipper/ClipperOffset$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/ClipperOffset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$de$lighti$clipper$Clipper$JoinType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lde/lighti/clipper/Clipper$JoinType;->values()[Lde/lighti/clipper/Clipper$JoinType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lde/lighti/clipper/ClipperOffset$1;->$SwitchMap$de$lighti$clipper$Clipper$JoinType:[I

    :try_start_0
    sget-object v1, Lde/lighti/clipper/Clipper$JoinType;->MITER:Lde/lighti/clipper/Clipper$JoinType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lde/lighti/clipper/ClipperOffset$1;->$SwitchMap$de$lighti$clipper$Clipper$JoinType:[I

    sget-object v1, Lde/lighti/clipper/Clipper$JoinType;->SQUARE:Lde/lighti/clipper/Clipper$JoinType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lde/lighti/clipper/ClipperOffset$1;->$SwitchMap$de$lighti$clipper$Clipper$JoinType:[I

    sget-object v1, Lde/lighti/clipper/Clipper$JoinType;->ROUND:Lde/lighti/clipper/Clipper$JoinType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
