.class Lde/lighti/clipper/Point$NumberComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ":",
        "Ljava/lang/Comparable<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/lighti/clipper/Point$1;)V
    .locals 0

    invoke-direct {p0}, Lde/lighti/clipper/Point$NumberComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Number;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lde/lighti/clipper/Point$NumberComparator;->compare(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result p1

    return p1
.end method
