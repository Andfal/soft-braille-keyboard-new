.class synthetic Lde/lighti/clipper/DefaultClipper$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/DefaultClipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$de$lighti$clipper$Clipper$ClipType:[I

.field static final synthetic $SwitchMap$de$lighti$clipper$Clipper$PolyFillType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lde/lighti/clipper/Clipper$ClipType;->values()[Lde/lighti/clipper/Clipper$ClipType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lde/lighti/clipper/DefaultClipper$1;->$SwitchMap$de$lighti$clipper$Clipper$ClipType:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lde/lighti/clipper/Clipper$ClipType;->INTERSECTION:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lde/lighti/clipper/DefaultClipper$1;->$SwitchMap$de$lighti$clipper$Clipper$ClipType:[I

    sget-object v3, Lde/lighti/clipper/Clipper$ClipType;->UNION:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lde/lighti/clipper/DefaultClipper$1;->$SwitchMap$de$lighti$clipper$Clipper$ClipType:[I

    sget-object v3, Lde/lighti/clipper/Clipper$ClipType;->DIFFERENCE:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lde/lighti/clipper/DefaultClipper$1;->$SwitchMap$de$lighti$clipper$Clipper$ClipType:[I

    sget-object v3, Lde/lighti/clipper/Clipper$ClipType;->XOR:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lde/lighti/clipper/Clipper$PolyFillType;->values()[Lde/lighti/clipper/Clipper$PolyFillType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lde/lighti/clipper/DefaultClipper$1;->$SwitchMap$de$lighti$clipper$Clipper$PolyFillType:[I

    :try_start_4
    sget-object v3, Lde/lighti/clipper/Clipper$PolyFillType;->POSITIVE:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lde/lighti/clipper/DefaultClipper$1;->$SwitchMap$de$lighti$clipper$Clipper$PolyFillType:[I

    sget-object v2, Lde/lighti/clipper/Clipper$PolyFillType;->NEGATIVE:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
