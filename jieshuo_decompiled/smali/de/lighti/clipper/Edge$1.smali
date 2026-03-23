.class synthetic Lde/lighti/clipper/Edge$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/Edge;
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
    .locals 6

    invoke-static {}, Lde/lighti/clipper/Clipper$ClipType;->values()[Lde/lighti/clipper/Clipper$ClipType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lde/lighti/clipper/Edge$1;->$SwitchMap$de$lighti$clipper$Clipper$ClipType:[I

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
    sget-object v2, Lde/lighti/clipper/Edge$1;->$SwitchMap$de$lighti$clipper$Clipper$ClipType:[I

    sget-object v3, Lde/lighti/clipper/Clipper$ClipType;->UNION:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lde/lighti/clipper/Edge$1;->$SwitchMap$de$lighti$clipper$Clipper$ClipType:[I

    sget-object v4, Lde/lighti/clipper/Clipper$ClipType;->DIFFERENCE:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lde/lighti/clipper/Edge$1;->$SwitchMap$de$lighti$clipper$Clipper$ClipType:[I

    sget-object v4, Lde/lighti/clipper/Clipper$ClipType;->XOR:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lde/lighti/clipper/Clipper$PolyFillType;->values()[Lde/lighti/clipper/Clipper$PolyFillType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lde/lighti/clipper/Edge$1;->$SwitchMap$de$lighti$clipper$Clipper$PolyFillType:[I

    :try_start_4
    sget-object v4, Lde/lighti/clipper/Clipper$PolyFillType;->EVEN_ODD:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lde/lighti/clipper/Edge$1;->$SwitchMap$de$lighti$clipper$Clipper$PolyFillType:[I

    sget-object v3, Lde/lighti/clipper/Clipper$PolyFillType;->NON_ZERO:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lde/lighti/clipper/Edge$1;->$SwitchMap$de$lighti$clipper$Clipper$PolyFillType:[I

    sget-object v1, Lde/lighti/clipper/Clipper$PolyFillType;->POSITIVE:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
