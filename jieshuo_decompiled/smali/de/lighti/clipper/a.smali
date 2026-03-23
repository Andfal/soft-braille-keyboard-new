.class public final synthetic Lde/lighti/clipper/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lde/lighti/clipper/DefaultClipper$IntersectNode;

    check-cast p2, Lde/lighti/clipper/DefaultClipper$IntersectNode;

    invoke-static {p1, p2}, Lde/lighti/clipper/DefaultClipper;->a(Lde/lighti/clipper/DefaultClipper$IntersectNode;Lde/lighti/clipper/DefaultClipper$IntersectNode;)I

    move-result p1

    return p1
.end method
