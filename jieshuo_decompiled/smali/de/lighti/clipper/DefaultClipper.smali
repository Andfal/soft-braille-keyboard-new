.class public Lde/lighti/clipper/DefaultClipper;
.super Lde/lighti/clipper/ClipperBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/lighti/clipper/DefaultClipper$IntersectNode;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

.field private clipType:Lde/lighti/clipper/Clipper$ClipType;

.field private final ghostJoins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/lighti/clipper/Path$Join;",
            ">;"
        }
    .end annotation
.end field

.field private final intersectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/lighti/clipper/DefaultClipper$IntersectNode;",
            ">;"
        }
    .end annotation
.end field

.field private final intersectNodeComparer:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lde/lighti/clipper/DefaultClipper$IntersectNode;",
            ">;"
        }
    .end annotation
.end field

.field private final joins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/lighti/clipper/Path$Join;",
            ">;"
        }
    .end annotation
.end field

.field private maxima:Lde/lighti/clipper/ClipperBase$Maxima;

.field private final reverseSolution:Z

.field private sortedEdges:Lde/lighti/clipper/Edge;

.field private final strictlySimple:Z

.field private subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

.field private usingPolyTree:Z

.field private zFillFunction:Lde/lighti/clipper/Clipper$ZFillCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lde/lighti/clipper/DefaultClipper;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lde/lighti/clipper/ClipperBase;-><init>(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/lighti/clipper/ClipperBase;->scanbeam:Lde/lighti/clipper/ClipperBase$Scanbeam;

    iput-object v0, p0, Lde/lighti/clipper/DefaultClipper;->maxima:Lde/lighti/clipper/ClipperBase$Maxima;

    iput-object v0, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    iput-object v0, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    new-instance v3, Lde/lighti/clipper/a;

    invoke-direct {v3}, Lde/lighti/clipper/a;-><init>()V

    iput-object v3, p0, Lde/lighti/clipper/DefaultClipper;->intersectNodeComparer:Ljava/util/Comparator;

    iput-boolean v2, p0, Lde/lighti/clipper/DefaultClipper;->usingPolyTree:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lde/lighti/clipper/DefaultClipper;->joins:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lde/lighti/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Lde/lighti/clipper/DefaultClipper;->reverseSolution:Z

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lde/lighti/clipper/DefaultClipper;->strictlySimple:Z

    iput-object v0, p0, Lde/lighti/clipper/DefaultClipper;->zFillFunction:Lde/lighti/clipper/Clipper$ZFillCallback;

    return-void
.end method

.method private EdgesAdjacent(Lde/lighti/clipper/DefaultClipper$IntersectNode;)Z
    .locals 2

    iget-object v0, p1, Lde/lighti/clipper/DefaultClipper$IntersectNode;->edge1:Lde/lighti/clipper/Edge;

    iget-object v1, v0, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    iget-object p1, p1, Lde/lighti/clipper/DefaultClipper$IntersectNode;->Edge2:Lde/lighti/clipper/Edge;

    if-eq v1, p1, :cond_1

    iget-object v0, v0, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static synthetic a(Lde/lighti/clipper/DefaultClipper$IntersectNode;Lde/lighti/clipper/DefaultClipper$IntersectNode;)I
    .locals 0

    invoke-static {p0, p1}, Lde/lighti/clipper/DefaultClipper;->lambda$new$0(Lde/lighti/clipper/DefaultClipper$IntersectNode;Lde/lighti/clipper/DefaultClipper$IntersectNode;)I

    move-result p0

    return p0
.end method

.method private addEdgeToSEL(Lde/lighti/clipper/Edge;)V
    .locals 3

    sget-object v0, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addEdgeToSEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object p1, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    iput-object v1, p1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    iput-object v1, p1, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_0
    iput-object v0, p1, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    iput-object v1, p1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    iput-object p1, v0, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    iput-object p1, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    :goto_0
    return-void
.end method

.method private addGhostJoin(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)V
    .locals 1

    new-instance v0, Lde/lighti/clipper/Path$Join;

    invoke-direct {v0}, Lde/lighti/clipper/Path$Join;-><init>()V

    iput-object p1, v0, Lde/lighti/clipper/Path$Join;->outPt1:Lde/lighti/clipper/Path$OutPt;

    new-instance p1, Lde/lighti/clipper/Point$LongPoint;

    invoke-direct {p1, p2}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v0, p1}, Lde/lighti/clipper/Path$Join;->setOffPt(Lde/lighti/clipper/Point$LongPoint;)V

    iget-object p1, p0, Lde/lighti/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addJoin(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)V
    .locals 3

    sget-object v0, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addJoin"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lde/lighti/clipper/Path$Join;

    invoke-direct {v0}, Lde/lighti/clipper/Path$Join;-><init>()V

    iput-object p1, v0, Lde/lighti/clipper/Path$Join;->outPt1:Lde/lighti/clipper/Path$OutPt;

    iput-object p2, v0, Lde/lighti/clipper/Path$Join;->outPt2:Lde/lighti/clipper/Path$OutPt;

    new-instance p1, Lde/lighti/clipper/Point$LongPoint;

    invoke-direct {p1, p3}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v0, p1}, Lde/lighti/clipper/Path$Join;->setOffPt(Lde/lighti/clipper/Point$LongPoint;)V

    iget-object p1, p0, Lde/lighti/clipper/DefaultClipper;->joins:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLocalMaxPoly(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    iget v0, p2, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    :cond_0
    iget p3, p1, Lde/lighti/clipper/Edge;->outIdx:I

    iget v0, p2, Lde/lighti/clipper/Edge;->outIdx:I

    if-ne p3, v0, :cond_1

    const/4 p3, -0x1

    iput p3, p1, Lde/lighti/clipper/Edge;->outIdx:I

    iput p3, p2, Lde/lighti/clipper/Edge;->outIdx:I

    goto :goto_0

    :cond_1
    if-ge p3, v0, :cond_2

    invoke-direct {p0, p1, p2}, Lde/lighti/clipper/DefaultClipper;->appendPolygon(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p1}, Lde/lighti/clipper/DefaultClipper;->appendPolygon(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    :goto_0
    return-void
.end method

.method private addLocalMinPoly(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;
    .locals 8

    sget-object v0, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addLocalMinPoly"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->isHorizontal()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p1, Lde/lighti/clipper/Edge;->deltaX:D

    iget-wide v2, p2, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v0

    iget v1, p2, Lde/lighti/clipper/Edge;->outIdx:I

    iput v1, p1, Lde/lighti/clipper/Edge;->outIdx:I

    sget-object v1, Lde/lighti/clipper/Edge$Side;->RIGHT:Lde/lighti/clipper/Edge$Side;

    iput-object v1, p1, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    sget-object v1, Lde/lighti/clipper/Edge$Side;->LEFT:Lde/lighti/clipper/Edge$Side;

    iput-object v1, p2, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    iget-object v1, p2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    if-ne v1, p1, :cond_1

    iget-object v1, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    :cond_1
    move-object p1, p2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, p1, p3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v0

    iget v1, p1, Lde/lighti/clipper/Edge;->outIdx:I

    iput v1, p2, Lde/lighti/clipper/Edge;->outIdx:I

    sget-object v1, Lde/lighti/clipper/Edge$Side;->LEFT:Lde/lighti/clipper/Edge$Side;

    iput-object v1, p1, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    sget-object v1, Lde/lighti/clipper/Edge$Side;->RIGHT:Lde/lighti/clipper/Edge$Side;

    iput-object v1, p2, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    iget-object v1, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    if-ne v1, p2, :cond_3

    iget-object v1, p2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    iget p2, v1, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz p2, :cond_4

    invoke-virtual {v1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p2

    invoke-virtual {p2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-gez p2, :cond_4

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p2

    invoke-virtual {p2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-gez p2, :cond_4

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lde/lighti/clipper/Edge;->topX(Lde/lighti/clipper/Edge;J)J

    move-result-wide v2

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lde/lighti/clipper/Edge;->topX(Lde/lighti/clipper/Edge;J)J

    move-result-wide v4

    cmp-long p2, v2, v4

    if-nez p2, :cond_4

    iget p2, p1, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz p2, :cond_4

    iget p2, v1, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz p2, :cond_4

    new-instance p2, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    invoke-direct {p2, v2, v3, v6, v7}, Lde/lighti/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    new-instance v3, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lde/lighti/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-static {p2, v2, v3, v4}, Lde/lighti/clipper/Point;->slopesEqual(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, v1, p3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object p2

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lde/lighti/clipper/DefaultClipper;->addJoin(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)V

    :cond_4
    return-object v0
.end method

.method private addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;
    .locals 6

    sget-object v0, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "addOutPt"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lde/lighti/clipper/Edge;->outIdx:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lde/lighti/clipper/ClipperBase;->createOutRec()Lde/lighti/clipper/Path$OutRec;

    move-result-object v0

    iget v1, p1, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lde/lighti/clipper/Path$OutRec;->isOpen:Z

    new-instance v1, Lde/lighti/clipper/Path$OutPt;

    invoke-direct {v1}, Lde/lighti/clipper/Path$OutPt;-><init>()V

    invoke-virtual {v0, v1}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    iget v2, v0, Lde/lighti/clipper/Path$OutRec;->Idx:I

    iput v2, v1, Lde/lighti/clipper/Path$OutPt;->idx:I

    new-instance v2, Lde/lighti/clipper/Point$LongPoint;

    invoke-direct {v2, p2}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v1, v2}, Lde/lighti/clipper/Path$OutPt;->setPt(Lde/lighti/clipper/Point$LongPoint;)V

    iput-object v1, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v1, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iget-boolean p2, v0, Lde/lighti/clipper/Path$OutRec;->isOpen:Z

    if-nez p2, :cond_1

    invoke-direct {p0, p1, v0}, Lde/lighti/clipper/DefaultClipper;->setHoleState(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Path$OutRec;)V

    :cond_1
    iget p2, v0, Lde/lighti/clipper/Path$OutRec;->Idx:I

    iput p2, p1, Lde/lighti/clipper/Edge;->outIdx:I

    return-object v1

    :cond_2
    iget-object v4, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/lighti/clipper/Path$OutRec;

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v4

    iget-object p1, p1, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    sget-object v5, Lde/lighti/clipper/Edge$Side;->LEFT:Lde/lighti/clipper/Edge$Side;

    if-ne p1, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    sget-object p1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "op="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lde/lighti/clipper/Path$OutPt;->getPointCount(Lde/lighti/clipper/Path$OutPt;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p2, p1}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v4

    :cond_5
    if-nez v2, :cond_6

    iget-object p1, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {p1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p2, p1}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    return-object p1

    :cond_6
    new-instance p1, Lde/lighti/clipper/Path$OutPt;

    invoke-direct {p1}, Lde/lighti/clipper/Path$OutPt;-><init>()V

    iget v0, v1, Lde/lighti/clipper/Path$OutRec;->Idx:I

    iput v0, p1, Lde/lighti/clipper/Path$OutPt;->idx:I

    new-instance v0, Lde/lighti/clipper/Point$LongPoint;

    invoke-direct {v0, p2}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p1, v0}, Lde/lighti/clipper/Path$OutPt;->setPt(Lde/lighti/clipper/Point$LongPoint;)V

    iput-object v4, p1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iget-object p2, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object p2, p1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object p1, p2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object p1, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    if-eqz v2, :cond_7

    invoke-virtual {v1, p1}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    :cond_7
    return-object p1
.end method

.method private appendPolygon(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V
    .locals 10

    sget-object v0, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appendPolygon"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    iget v2, p1, Lde/lighti/clipper/Edge;->outIdx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/lighti/clipper/Path$OutRec;

    iget-object v2, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    iget v3, p2, Lde/lighti/clipper/Edge;->outIdx:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/lighti/clipper/Path$OutRec;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lde/lighti/clipper/Edge;->outIdx:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lde/lighti/clipper/Edge;->outIdx:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lde/lighti/clipper/DefaultClipper;->isOutRec1RightOfOutRec2(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-static {v2, v1}, Lde/lighti/clipper/DefaultClipper;->isOutRec1RightOfOutRec2(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Lde/lighti/clipper/Path$OutPt;->getLowerMostRec(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)Lde/lighti/clipper/Path$OutRec;

    move-result-object v3

    :goto_0
    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v4

    iget-object v5, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v6

    iget-object v7, v6, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "p1_lft.getPointCount() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lde/lighti/clipper/Path$OutPt;->getPointCount(Lde/lighti/clipper/Path$OutPt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "p1_rt.getPointCount() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lde/lighti/clipper/Path$OutPt;->getPointCount(Lde/lighti/clipper/Path$OutPt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "p2_lft.getPointCount() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lde/lighti/clipper/Path$OutPt;->getPointCount(Lde/lighti/clipper/Path$OutPt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "p2_rt.getPointCount() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lde/lighti/clipper/Path$OutPt;->getPointCount(Lde/lighti/clipper/Path$OutPt;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iget-object v0, p1, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    sget-object v8, Lde/lighti/clipper/Edge$Side;->LEFT:Lde/lighti/clipper/Edge$Side;

    if-ne v0, v8, :cond_3

    iget-object v0, p2, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    if-ne v0, v8, :cond_2

    invoke-virtual {v6}, Lde/lighti/clipper/Path$OutPt;->reversePolyPtLinks()V

    iput-object v4, v6, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v6, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v7, v5, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v5, v7, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v1, v7}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    goto :goto_1

    :cond_2
    iput-object v4, v7, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v7, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v5, v6, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v6, v5, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v1, v6}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    goto :goto_1

    :cond_3
    iget-object v0, p2, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    sget-object v8, Lde/lighti/clipper/Edge$Side;->RIGHT:Lde/lighti/clipper/Edge$Side;

    if-ne v0, v8, :cond_4

    invoke-virtual {v6}, Lde/lighti/clipper/Path$OutPt;->reversePolyPtLinks()V

    iput-object v7, v5, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v5, v7, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v4, v6, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v6, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    goto :goto_1

    :cond_4
    iput-object v6, v5, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v5, v6, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v7, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v4, v7, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    :goto_1
    const/4 v0, 0x0

    iput-object v0, v1, Lde/lighti/clipper/Path$OutRec;->bottomPt:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v2, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    if-eq v3, v1, :cond_5

    iput-object v3, v1, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    :cond_5
    iget-boolean v3, v2, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iput-boolean v3, v1, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    :cond_6
    invoke-virtual {v2, v0}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    iput-object v0, v2, Lde/lighti/clipper/Path$OutRec;->bottomPt:Lde/lighti/clipper/Path$OutPt;

    iput-object v1, v2, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iget v0, p1, Lde/lighti/clipper/Edge;->outIdx:I

    iget v3, p2, Lde/lighti/clipper/Edge;->outIdx:I

    const/4 v4, -0x1

    iput v4, p1, Lde/lighti/clipper/Edge;->outIdx:I

    iput v4, p2, Lde/lighti/clipper/Edge;->outIdx:I

    iget-object p2, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    :goto_2
    if-eqz p2, :cond_8

    iget v4, p2, Lde/lighti/clipper/Edge;->outIdx:I

    if-ne v4, v3, :cond_7

    iput v0, p2, Lde/lighti/clipper/Edge;->outIdx:I

    iget-object p1, p1, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    iput-object p1, p2, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    goto :goto_3

    :cond_7
    iget-object p2, p2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_2

    :cond_8
    :goto_3
    iget p1, v1, Lde/lighti/clipper/Path$OutRec;->Idx:I

    iput p1, v2, Lde/lighti/clipper/Path$OutRec;->Idx:I

    return-void
.end method

.method private buildIntersectList(J)V
    .locals 12

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iput-object v1, v0, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    iget-object v1, v0, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    iput-object v1, v0, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-static {v0, p1, p2}, Lde/lighti/clipper/Edge;->topX(Lde/lighti/clipper/Edge;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/lighti/clipper/Point;->setX(Ljava/lang/Number;)V

    iget-object v0, v0, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    if-eqz v1, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    iget-object v5, v1, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    if-eqz v5, :cond_4

    new-array v6, v0, [Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v1}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v9

    invoke-virtual {v9}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-lez v11, :cond_3

    invoke-direct {p0, v1, v5, v6}, Lde/lighti/clipper/DefaultClipper;->intersectPoint(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;[Lde/lighti/clipper/Point$LongPoint;)V

    aget-object v4, v6, v3

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    cmp-long v4, v7, p1

    if-gez v4, :cond_2

    new-instance v4, Lde/lighti/clipper/Point$LongPoint;

    invoke-static {v1, p1, p2}, Lde/lighti/clipper/Edge;->topX(Lde/lighti/clipper/Edge;J)J

    move-result-wide v7

    invoke-direct {v4, v7, v8, p1, p2}, Lde/lighti/clipper/Point$LongPoint;-><init>(JJ)V

    aput-object v4, v6, v3

    :cond_2
    new-instance v4, Lde/lighti/clipper/DefaultClipper$IntersectNode;

    invoke-direct {v4, p0, v2}, Lde/lighti/clipper/DefaultClipper$IntersectNode;-><init>(Lde/lighti/clipper/DefaultClipper;Lde/lighti/clipper/DefaultClipper$1;)V

    iput-object v1, v4, Lde/lighti/clipper/DefaultClipper$IntersectNode;->edge1:Lde/lighti/clipper/Edge;

    iput-object v5, v4, Lde/lighti/clipper/DefaultClipper$IntersectNode;->Edge2:Lde/lighti/clipper/Edge;

    new-instance v7, Lde/lighti/clipper/Point$LongPoint;

    aget-object v6, v6, v3

    invoke-direct {v7, v6}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v4, v7}, Lde/lighti/clipper/DefaultClipper$IntersectNode;->setPt(Lde/lighti/clipper/Point$LongPoint;)V

    iget-object v6, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1, v5}, Lde/lighti/clipper/DefaultClipper;->swapPositionsInSEL(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    move-object v1, v5

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    if-eqz v1, :cond_5

    iput-object v2, v1, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    move v1, v4

    goto :goto_1

    :cond_5
    iput-object v2, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    return-void
.end method

.method private buildResult(Lde/lighti/clipper/Paths;)V
    .locals 8

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/lighti/clipper/Path$OutRec;

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v2

    iget-object v2, v2, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-static {v2}, Lde/lighti/clipper/Path$OutPt;->getPointCount(Lde/lighti/clipper/Path$OutPt;)I

    move-result v3

    sget-object v4, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v4, Lde/lighti/clipper/Path;

    invoke-direct {v4, v3}, Lde/lighti/clipper/Path;-><init>(I)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    new-instance v6, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-direct {v6, v7}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private buildResult2(Lde/lighti/clipper/PolyTree;)V
    .locals 8

    invoke-virtual {p1}, Lde/lighti/clipper/PolyTree;->Clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/lighti/clipper/Path$OutRec;

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    invoke-static {v3}, Lde/lighti/clipper/Path$OutPt;->getPointCount(Lde/lighti/clipper/Path$OutPt;)I

    move-result v3

    iget-boolean v4, v2, Lde/lighti/clipper/Path$OutRec;->isOpen:Z

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    if-lt v3, v5, :cond_2

    :cond_0
    if-nez v4, :cond_1

    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->fixHoleLinkage()V

    new-instance v4, Lde/lighti/clipper/PolyNode;

    invoke-direct {v4}, Lde/lighti/clipper/PolyNode;-><init>()V

    invoke-virtual {p1}, Lde/lighti/clipper/PolyTree;->getAllPolys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v4, v2, Lde/lighti/clipper/Path$OutRec;->polyNode:Lde/lighti/clipper/PolyNode;

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v2

    iget-object v2, v2, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    invoke-virtual {v4}, Lde/lighti/clipper/PolyNode;->getPolygon()Lde/lighti/clipper/Path;

    move-result-object v6

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    iget-object v1, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/lighti/clipper/Path$OutRec;

    iget-object v2, v1, Lde/lighti/clipper/Path$OutRec;->polyNode:Lde/lighti/clipper/PolyNode;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    iget-boolean v3, v1, Lde/lighti/clipper/Path$OutRec;->isOpen:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lde/lighti/clipper/PolyNode;->setOpen(Z)V

    iget-object v1, v1, Lde/lighti/clipper/Path$OutRec;->polyNode:Lde/lighti/clipper/PolyNode;

    invoke-virtual {p1, v1}, Lde/lighti/clipper/PolyNode;->addChild(Lde/lighti/clipper/PolyNode;)V

    goto :goto_4

    :cond_5
    iget-object v1, v1, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    if-eqz v1, :cond_6

    iget-object v1, v1, Lde/lighti/clipper/Path$OutRec;->polyNode:Lde/lighti/clipper/PolyNode;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Lde/lighti/clipper/PolyNode;->addChild(Lde/lighti/clipper/PolyNode;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v2}, Lde/lighti/clipper/PolyNode;->addChild(Lde/lighti/clipper/PolyNode;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method private copyAELToSEL()V
    .locals 2

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    iput-object v0, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iput-object v1, v0, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    iget-object v1, v0, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    iput-object v1, v0, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deleteFromSEL([Lde/lighti/clipper/Edge;)Z
    .locals 3

    sget-object v0, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteFromSEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p1, v0, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    iput-object p1, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iput-object v1, p1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    :cond_1
    iput-object v1, v0, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    iput-object v1, v0, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    const/4 p1, 0x1

    return p1
.end method

.method private doHorzSegmentsOverlap(JJJJ)Z
    .locals 3

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    move-wide v1, p1

    move-wide p1, p3

    move-wide p3, v1

    :cond_0
    cmp-long v0, p5, p7

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, p5

    move-wide p5, p7

    move-wide p7, v1

    :goto_0
    cmp-long v0, p1, p5

    if-gez v0, :cond_2

    cmp-long p1, p7, p3

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private doMaxima(Lde/lighti/clipper/Edge;)V
    .locals 4

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getMaximaPairEx()Lde/lighti/clipper/Edge;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p1, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    :cond_0
    invoke-virtual {p0, p1}, Lde/lighti/clipper/ClipperBase;->deleteFromAEL(Lde/lighti/clipper/Edge;)V

    return-void

    :cond_1
    :goto_0
    iget-object v1, p1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    if-eqz v1, :cond_2

    if-eq v1, v0, :cond_2

    new-instance v2, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-direct {p0, p1, v1, v2}, Lde/lighti/clipper/DefaultClipper;->intersectEdges(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V

    new-instance v3, Lde/lighti/clipper/Point$LongPoint;

    invoke-direct {v3, v2}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p1, v3}, Lde/lighti/clipper/Edge;->setTop(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p0, p1, v1}, Lde/lighti/clipper/ClipperBase;->swapPositionsInAEL(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    goto :goto_0

    :cond_2
    iget v1, p1, Lde/lighti/clipper/Edge;->outIdx:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    iget v3, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-ne v3, v2, :cond_5

    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lde/lighti/clipper/ClipperBase;->deleteFromAEL(Lde/lighti/clipper/Edge;)V

    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lde/lighti/clipper/ClipperBase;->deleteFromAEL(Lde/lighti/clipper/Edge;)V

    goto :goto_3

    :cond_5
    if-ltz v1, :cond_6

    iget v3, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v3, :cond_6

    if-ltz v1, :cond_3

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lde/lighti/clipper/DefaultClipper;->addLocalMaxPoly(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V

    goto :goto_1

    :cond_6
    iget v3, p1, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v3, :cond_8

    if-ltz v1, :cond_7

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    iput v2, p1, Lde/lighti/clipper/Edge;->outIdx:I

    :cond_7
    invoke-virtual {p0, p1}, Lde/lighti/clipper/ClipperBase;->deleteFromAEL(Lde/lighti/clipper/Edge;)V

    iget v1, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_4

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    iput v2, v0, Lde/lighti/clipper/Edge;->outIdx:I

    goto :goto_2

    :goto_3
    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DoMaxima error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private doSimplePolygons()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/lighti/clipper/Path$OutRec;

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-boolean v3, v0, Lde/lighti/clipper/Path$OutRec;->isOpen:Z

    if-eqz v3, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v3, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    :goto_1
    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v4

    if-eq v3, v4, :cond_5

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v3, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iget-object v5, v3, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v5, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v1, v5, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v4, v3, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v3, v4, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v0, v1}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    invoke-virtual {p0}, Lde/lighti/clipper/ClipperBase;->createOutRec()Lde/lighti/clipper/Path$OutRec;

    move-result-object v4

    invoke-virtual {v4, v3}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    invoke-direct {p0, v4}, Lde/lighti/clipper/DefaultClipper;->updateOutPtIdxs(Lde/lighti/clipper/Path$OutRec;)V

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v5

    invoke-static {v3, v5}, Lde/lighti/clipper/DefaultClipper;->poly2ContainsPoly1(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v4, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iput-object v0, v4, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iget-boolean v3, p0, Lde/lighti/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v4, v0}, Lde/lighti/clipper/DefaultClipper;->fixupFirstLefts2(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v5

    invoke-static {v3, v5}, Lde/lighti/clipper/DefaultClipper;->poly2ContainsPoly1(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iput-boolean v3, v4, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v0, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iget-object v3, v0, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iput-object v3, v4, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iput-object v4, v0, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iget-boolean v3, p0, Lde/lighti/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v0, v4}, Lde/lighti/clipper/DefaultClipper;->fixupFirstLefts2(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)V

    goto :goto_2

    :cond_2
    iget-boolean v3, v0, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iput-boolean v3, v4, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iget-object v3, v0, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iput-object v3, v4, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iget-boolean v3, p0, Lde/lighti/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v0, v4}, Lde/lighti/clipper/DefaultClipper;->fixupFirstLefts1(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)V

    :cond_3
    :goto_2
    move-object v3, v1

    :cond_4
    iget-object v3, v3, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto/16 :goto_1

    :cond_5
    iget-object v1, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    if-ne v1, v3, :cond_0

    :cond_6
    :goto_3
    move v0, v2

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private executeInternal()Z
    .locals 10

    :try_start_0
    invoke-virtual {p0}, Lde/lighti/clipper/ClipperBase;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    iput-object v0, p0, Lde/lighti/clipper/DefaultClipper;->maxima:Lde/lighti/clipper/ClipperBase$Maxima;

    const/4 v0, 0x1

    new-array v1, v0, [J

    new-array v2, v0, [J

    invoke-virtual {p0, v1}, Lde/lighti/clipper/ClipperBase;->popScanbeam([J)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    if-nez v3, :cond_0

    :goto_0
    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->joins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return v4

    :cond_0
    :try_start_1
    aget-wide v5, v1, v4

    :goto_1
    invoke-direct {p0, v5, v6}, Lde/lighti/clipper/DefaultClipper;->insertLocalMinimaIntoAEL(J)V

    invoke-virtual {p0, v2}, Lde/lighti/clipper/ClipperBase;->popScanbeam([J)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p0}, Lde/lighti/clipper/ClipperBase;->localMinimaPending()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v1, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/lighti/clipper/Path$OutRec;

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lde/lighti/clipper/Path$OutRec;->isOpen:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-boolean v3, v2, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iget-boolean v5, p0, Lde/lighti/clipper/DefaultClipper;->reverseSolution:Z

    xor-int/2addr v3, v5

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->area()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-ne v3, v5, :cond_2

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->reversePolyPtLinks()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lde/lighti/clipper/DefaultClipper;->joinCommonEdges()V

    iget-object v1, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/lighti/clipper/Path$OutRec;

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    iget-boolean v3, v2, Lde/lighti/clipper/Path$OutRec;->isOpen:Z

    invoke-direct {p0, v2}, Lde/lighti/clipper/DefaultClipper;->fixupOutPolygon(Lde/lighti/clipper/Path$OutRec;)V

    goto :goto_4

    :cond_7
    iget-boolean v1, p0, Lde/lighti/clipper/DefaultClipper;->strictlySimple:Z

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lde/lighti/clipper/DefaultClipper;->doSimplePolygons()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->joins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return v0

    :cond_9
    :goto_5
    :try_start_2
    invoke-direct {p0}, Lde/lighti/clipper/DefaultClipper;->processHorizontals()V

    iget-object v3, p0, Lde/lighti/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    aget-wide v5, v2, v4

    invoke-direct {p0, v5, v6}, Lde/lighti/clipper/DefaultClipper;->processIntersections(J)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_0

    :cond_a
    aget-wide v5, v2, v4

    invoke-direct {p0, v5, v6}, Lde/lighti/clipper/DefaultClipper;->processEdgesAtTopOfScanbeam(J)V

    aget-wide v5, v2, v4

    aput-wide v5, v1, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->joins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    throw v0
.end method

.method private fixupFirstLefts1(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)V
    .locals 4

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/lighti/clipper/Path$OutRec;

    iget-object v2, v1, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    invoke-static {v2}, Lde/lighti/clipper/Path$OutRec;->parseFirstLeft(Lde/lighti/clipper/Path$OutRec;)Lde/lighti/clipper/Path$OutRec;

    move-result-object v2

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    if-eqz v3, :cond_0

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v2

    invoke-virtual {p2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    invoke-static {v2, v3}, Lde/lighti/clipper/DefaultClipper;->poly2ContainsPoly1(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p2, v1, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fixupFirstLefts2(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)V
    .locals 5

    iget-object v0, p2, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iget-object v1, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/lighti/clipper/Path$OutRec;

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eq v2, p2, :cond_0

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    invoke-static {v3}, Lde/lighti/clipper/Path$OutRec;->parseFirstLeft(Lde/lighti/clipper/Path$OutRec;)Lde/lighti/clipper/Path$OutRec;

    move-result-object v3

    if-eq v3, v0, :cond_2

    if-eq v3, p1, :cond_2

    if-eq v3, p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    invoke-virtual {p1}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v4

    invoke-static {v3, v4}, Lde/lighti/clipper/DefaultClipper;->poly2ContainsPoly1(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object p1, v2, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    invoke-virtual {p2}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v4

    invoke-static {v3, v4}, Lde/lighti/clipper/DefaultClipper;->poly2ContainsPoly1(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object p2, v2, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    if-eq v3, p1, :cond_5

    if-ne v3, p2, :cond_0

    :cond_5
    iput-object v0, v2, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    goto :goto_0

    :cond_6
    return-void
.end method

.method private fixupFirstLefts3(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)V
    .locals 4

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/lighti/clipper/Path$OutRec;

    iget-object v2, v1, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    invoke-static {v2}, Lde/lighti/clipper/Path$OutRec;->parseFirstLeft(Lde/lighti/clipper/Path$OutRec;)Lde/lighti/clipper/Path$OutRec;

    move-result-object v2

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v3

    if-eqz v3, :cond_0

    if-ne v2, p1, :cond_0

    iput-object p2, v1, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private fixupIntersectionOrder()Z
    .locals 7

    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->intersectNodeComparer:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lde/lighti/clipper/DefaultClipper;->copyAELToSEL()V

    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/lighti/clipper/DefaultClipper$IntersectNode;

    invoke-direct {p0, v3}, Lde/lighti/clipper/DefaultClipper;->EdgesAdjacent(Lde/lighti/clipper/DefaultClipper$IntersectNode;)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    :goto_1
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/lighti/clipper/DefaultClipper$IntersectNode;

    invoke-direct {p0, v4}, Lde/lighti/clipper/DefaultClipper;->EdgesAdjacent(Lde/lighti/clipper/DefaultClipper$IntersectNode;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-ne v3, v0, :cond_1

    return v1

    :cond_1
    iget-object v4, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/lighti/clipper/DefaultClipper$IntersectNode;

    iget-object v5, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v5, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v3, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/lighti/clipper/DefaultClipper$IntersectNode;

    iget-object v3, v3, Lde/lighti/clipper/DefaultClipper$IntersectNode;->edge1:Lde/lighti/clipper/Edge;

    iget-object v4, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/lighti/clipper/DefaultClipper$IntersectNode;

    iget-object v4, v4, Lde/lighti/clipper/DefaultClipper$IntersectNode;->Edge2:Lde/lighti/clipper/Edge;

    invoke-direct {p0, v3, v4}, Lde/lighti/clipper/DefaultClipper;->swapPositionsInSEL(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private fixupOutPolygon(Lde/lighti/clipper/Path$OutRec;)V
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p1, Lde/lighti/clipper/Path$OutRec;->bottomPt:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {p1}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    iget-boolean v2, p0, Lde/lighti/clipper/ClipperBase;->preserveCollinear:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lde/lighti/clipper/DefaultClipper;->strictlySimple:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    move-object v3, v0

    :goto_2
    iget-object v4, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    if-eq v4, v1, :cond_7

    iget-object v5, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-ne v4, v5, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    iget-object v5, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v5}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    iget-object v5, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v5}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    iget-object v6, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v6}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lde/lighti/clipper/Point;->slopesEqual(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_6

    iget-object v4, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    iget-object v6, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v6}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lde/lighti/clipper/Point;->isPt2BetweenPt1AndPt3(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    if-ne v1, v3, :cond_4

    invoke-virtual {p1, v1}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    return-void

    :cond_4
    if-nez v3, :cond_5

    move-object v3, v1

    :cond_5
    iget-object v1, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v3, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iget-object v4, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v4, v3, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iget-object v4, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v3, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iget-object v1, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    goto :goto_1

    :cond_7
    :goto_4
    invoke-virtual {p1, v0}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    return-void
.end method

.method private fixupOutPolyline(Lde/lighti/clipper/Path$OutRec;)V
    .locals 4

    invoke-virtual {p1}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v0

    iget-object v1, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    :cond_0
    :goto_0
    if-eq v0, v1, :cond_2

    iget-object v0, v0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    iget-object v3, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    if-ne v2, v3, :cond_0

    if-ne v0, v1, :cond_1

    iget-object v1, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    :cond_1
    iget-object v2, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iget-object v3, v0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v3, v2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iget-object v0, v0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v2, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    :cond_3
    return-void
.end method

.method private static getHorzDirection(Lde/lighti/clipper/Edge;[Lde/lighti/clipper/Clipper$Direction;[J[J)V
    .locals 6

    invoke-virtual {p0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual {p0}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    aput-wide v0, p2, v4

    invoke-virtual {p0}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p0

    invoke-virtual {p0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    aput-wide v0, p3, v4

    sget-object p0, Lde/lighti/clipper/Clipper$Direction;->LEFT_TO_RIGHT:Lde/lighti/clipper/Clipper$Direction;

    aput-object p0, p1, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    aput-wide v0, p2, v4

    invoke-virtual {p0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p0

    invoke-virtual {p0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    aput-wide v0, p3, v4

    sget-object p0, Lde/lighti/clipper/Clipper$Direction;->RIGHT_TO_LEFT:Lde/lighti/clipper/Clipper$Direction;

    aput-object p0, p1, v4

    :goto_0
    return-void
.end method

.method private getLastOutPt(Lde/lighti/clipper/Edge;)Lde/lighti/clipper/Path$OutPt;
    .locals 2

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    iget v1, p1, Lde/lighti/clipper/Edge;->outIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/lighti/clipper/Path$OutRec;

    iget-object p1, p1, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    sget-object v1, Lde/lighti/clipper/Edge$Side;->LEFT:Lde/lighti/clipper/Edge$Side;

    if-ne p1, v1, :cond_0

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object p1

    iget-object p1, p1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    return-object p1
.end method

.method private getOutRec(I)Lde/lighti/clipper/Path$OutRec;
    .locals 2

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/lighti/clipper/Path$OutRec;

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    iget v1, p1, Lde/lighti/clipper/Path$OutRec;->Idx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    iget p1, p1, Lde/lighti/clipper/Path$OutRec;->Idx:I

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static getOverlap(JJJJ[J[J)Z
    .locals 2

    const/4 v0, 0x0

    cmp-long v1, p0, p2

    if-gez v1, :cond_1

    cmp-long v1, p4, p6

    if-gez v1, :cond_0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    aput-wide p0, p8, v0

    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    aput-wide p0, p9, v0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    aput-wide p0, p8, v0

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    aput-wide p0, p9, v0

    goto :goto_0

    :cond_1
    cmp-long v1, p4, p6

    if-gez v1, :cond_2

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, p8, v0

    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    aput-wide p0, p9, v0

    goto :goto_0

    :cond_2
    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, p8, v0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    aput-wide p0, p9, v0

    :goto_0
    aget-wide p0, p8, v0

    aget-wide p2, p9, v0

    cmp-long p4, p0, p2

    if-gez p4, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private insertEdgeIntoAEL(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V
    .locals 5

    sget-object v0, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "insertEdgeIntoAEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    const-string v2, " -> "

    const-string v3, "Edge "

    const/4 v4, 0x0

    if-nez v1, :cond_0

    iput-object v4, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iput-object v4, p1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lde/lighti/clipper/Edge;->outIdx:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    invoke-static {v1, p1}, Lde/lighti/clipper/Edge;->doesE2InsertBeforeE1(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object v4, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iget-object p2, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    iput-object p2, p1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lde/lighti/clipper/Edge;->outIdx:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    iget v1, v1, Lde/lighti/clipper/Edge;->outIdx:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    iget-object p2, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    iput-object p1, p2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_1
    const-string v1, "activeEdges unchanged"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    if-nez p2, :cond_2

    iget-object p2, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    :cond_2
    :goto_1
    iget-object v0, p2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    if-eqz v0, :cond_3

    invoke-static {v0, p1}, Lde/lighti/clipper/Edge;->doesE2InsertBeforeE1(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p2, p2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_1

    :cond_3
    iget-object v0, p2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    iput-object v0, p1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    iget-object v0, p2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    if-eqz v0, :cond_4

    iput-object p1, v0, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    :cond_4
    iput-object p2, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iput-object p1, p2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    :goto_2
    return-void
.end method

.method private insertLocalMinimaIntoAEL(J)V
    .locals 20

    move-object/from16 v9, p0

    sget-object v0, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "insertLocalMinimaIntoAEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v10, v0, [Lde/lighti/clipper/ClipperBase$LocalMinima;

    move-wide/from16 v11, p1

    :cond_0
    :goto_0
    invoke-virtual {v9, v11, v12, v10}, Lde/lighti/clipper/ClipperBase;->popLocalMinima(J[Lde/lighti/clipper/ClipperBase$LocalMinima;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    aget-object v1, v10, v0

    iget-object v13, v1, Lde/lighti/clipper/ClipperBase$LocalMinima;->leftBound:Lde/lighti/clipper/Edge;

    iget-object v14, v1, Lde/lighti/clipper/ClipperBase$LocalMinima;->rightBound:Lde/lighti/clipper/Edge;

    const/4 v1, 0x0

    if-nez v13, :cond_2

    invoke-direct {v9, v14, v1}, Lde/lighti/clipper/DefaultClipper;->insertEdgeIntoAEL(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    invoke-direct {v9, v14}, Lde/lighti/clipper/DefaultClipper;->updateWindingCount(Lde/lighti/clipper/Edge;)V

    iget-object v2, v9, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v3, v9, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v4, v9, Lde/lighti/clipper/DefaultClipper;->clipType:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v14, v2, v3, v4}, Lde/lighti/clipper/Edge;->isContributing(Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$ClipType;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v14}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v14, v1}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    :cond_1
    :goto_1
    move-object v15, v1

    goto :goto_3

    :cond_2
    invoke-direct {v9, v13, v1}, Lde/lighti/clipper/DefaultClipper;->insertEdgeIntoAEL(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    if-nez v14, :cond_3

    invoke-direct {v9, v13}, Lde/lighti/clipper/DefaultClipper;->updateWindingCount(Lde/lighti/clipper/Edge;)V

    iget-object v2, v9, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v3, v9, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v4, v9, Lde/lighti/clipper/DefaultClipper;->clipType:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v13, v2, v3, v4}, Lde/lighti/clipper/Edge;->isContributing(Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$ClipType;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v13}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v13, v1}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-direct {v9, v14, v13}, Lde/lighti/clipper/DefaultClipper;->insertEdgeIntoAEL(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    invoke-direct {v9, v13}, Lde/lighti/clipper/DefaultClipper;->updateWindingCount(Lde/lighti/clipper/Edge;)V

    iget v2, v13, Lde/lighti/clipper/Edge;->windCnt:I

    iput v2, v14, Lde/lighti/clipper/Edge;->windCnt:I

    iget v2, v13, Lde/lighti/clipper/Edge;->windCnt2:I

    iput v2, v14, Lde/lighti/clipper/Edge;->windCnt2:I

    iget-object v2, v9, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v3, v9, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v4, v9, Lde/lighti/clipper/DefaultClipper;->clipType:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v13, v2, v3, v4}, Lde/lighti/clipper/Edge;->isContributing(Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$ClipType;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v13}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v13, v14, v1}, Lde/lighti/clipper/DefaultClipper;->addLocalMinPoly(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-virtual {v13}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Lde/lighti/clipper/ClipperBase;->insertScanbeam(J)V

    goto :goto_1

    :goto_3
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Lde/lighti/clipper/Edge;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v14, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lde/lighti/clipper/ClipperBase;->insertScanbeam(J)V

    :cond_5
    invoke-direct {v9, v14}, Lde/lighti/clipper/DefaultClipper;->addEdgeToSEL(Lde/lighti/clipper/Edge;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v14}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {v9, v1, v2}, Lde/lighti/clipper/ClipperBase;->insertScanbeam(J)V

    :cond_7
    :goto_4
    if-eqz v13, :cond_0

    if-nez v14, :cond_8

    goto/16 :goto_0

    :cond_8
    if-eqz v15, :cond_a

    invoke-virtual {v14}, Lde/lighti/clipper/Edge;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v9, Lde/lighti/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a

    iget v1, v14, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v1, :cond_a

    const/4 v7, 0x0

    :goto_5
    iget-object v0, v9, Lde/lighti/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_a

    iget-object v0, v9, Lde/lighti/clipper/DefaultClipper;->ghostJoins:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lde/lighti/clipper/Path$Join;

    iget-object v0, v8, Lde/lighti/clipper/Path$Join;->outPt1:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {v8}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v14}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    invoke-virtual {v14}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v16

    move-object/from16 v0, p0

    move/from16 v18, v7

    move-object/from16 v19, v10

    move-object v10, v8

    move-wide/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Lde/lighti/clipper/DefaultClipper;->doHorzSegmentsOverlap(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v10, Lde/lighti/clipper/Path$Join;->outPt1:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v10}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v0, v15, v1}, Lde/lighti/clipper/DefaultClipper;->addJoin(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)V

    :cond_9
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v10, v19

    goto :goto_5

    :cond_a
    move-object/from16 v19, v10

    iget v0, v13, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_b

    iget-object v0, v13, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual {v13}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    iget-object v0, v13, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iget v1, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_b

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    iget-object v1, v13, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    invoke-virtual {v1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v13}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v13}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lde/lighti/clipper/Point;->slopesEqual(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, v13, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v0, :cond_b

    iget-object v0, v13, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iget v1, v0, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v1, :cond_b

    invoke-virtual {v13}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v0

    invoke-virtual {v13}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v15, v0, v1}, Lde/lighti/clipper/DefaultClipper;->addJoin(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)V

    :cond_b
    iget-object v0, v13, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    if-eq v0, v14, :cond_d

    iget v0, v14, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_c

    iget-object v0, v14, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iget v1, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_c

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    iget-object v1, v14, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    invoke-virtual {v1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v14}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v14}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lde/lighti/clipper/Point;->slopesEqual(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, v14, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v0, :cond_c

    iget-object v0, v14, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iget v1, v0, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v1, :cond_c

    invoke-virtual {v14}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v0

    invoke-virtual {v14}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v15, v0, v1}, Lde/lighti/clipper/DefaultClipper;->addJoin(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)V

    :cond_c
    iget-object v0, v13, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    if-eqz v0, :cond_d

    :goto_6
    if-eq v0, v14, :cond_d

    invoke-virtual {v13}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v14, v0, v1}, Lde/lighti/clipper/DefaultClipper;->intersectEdges(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V

    iget-object v0, v0, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_6

    :cond_d
    move-object/from16 v10, v19

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method private insertMaxima(J)V
    .locals 6

    new-instance v0, Lde/lighti/clipper/ClipperBase$Maxima;

    invoke-direct {v0, p0}, Lde/lighti/clipper/ClipperBase$Maxima;-><init>(Lde/lighti/clipper/ClipperBase;)V

    iput-wide p1, v0, Lde/lighti/clipper/ClipperBase$Maxima;->x:J

    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->maxima:Lde/lighti/clipper/ClipperBase$Maxima;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iput-object v0, p0, Lde/lighti/clipper/DefaultClipper;->maxima:Lde/lighti/clipper/ClipperBase$Maxima;

    iput-object v2, v0, Lde/lighti/clipper/ClipperBase$Maxima;->next:Lde/lighti/clipper/ClipperBase$Maxima;

    iput-object v2, v0, Lde/lighti/clipper/ClipperBase$Maxima;->prev:Lde/lighti/clipper/ClipperBase$Maxima;

    goto :goto_1

    :cond_0
    iget-wide v3, v1, Lde/lighti/clipper/ClipperBase$Maxima;->x:J

    cmp-long v5, p1, v3

    if-gez v5, :cond_1

    iput-object v1, v0, Lde/lighti/clipper/ClipperBase$Maxima;->next:Lde/lighti/clipper/ClipperBase$Maxima;

    iput-object v2, v0, Lde/lighti/clipper/ClipperBase$Maxima;->prev:Lde/lighti/clipper/ClipperBase$Maxima;

    iput-object v0, p0, Lde/lighti/clipper/DefaultClipper;->maxima:Lde/lighti/clipper/ClipperBase$Maxima;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, v1, Lde/lighti/clipper/ClipperBase$Maxima;->next:Lde/lighti/clipper/ClipperBase$Maxima;

    if-eqz v2, :cond_2

    iget-wide v3, v2, Lde/lighti/clipper/ClipperBase$Maxima;->x:J

    cmp-long v5, p1, v3

    if-ltz v5, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-wide v3, v1, Lde/lighti/clipper/ClipperBase$Maxima;->x:J

    cmp-long v5, p1, v3

    if-nez v5, :cond_3

    return-void

    :cond_3
    iput-object v2, v0, Lde/lighti/clipper/ClipperBase$Maxima;->next:Lde/lighti/clipper/ClipperBase$Maxima;

    iput-object v1, v0, Lde/lighti/clipper/ClipperBase$Maxima;->prev:Lde/lighti/clipper/ClipperBase$Maxima;

    iget-object p1, v1, Lde/lighti/clipper/ClipperBase$Maxima;->next:Lde/lighti/clipper/ClipperBase$Maxima;

    if-eqz p1, :cond_4

    iput-object v0, p1, Lde/lighti/clipper/ClipperBase$Maxima;->prev:Lde/lighti/clipper/ClipperBase$Maxima;

    :cond_4
    iput-object v0, v1, Lde/lighti/clipper/ClipperBase$Maxima;->next:Lde/lighti/clipper/ClipperBase$Maxima;

    :goto_1
    return-void
.end method

.method private intersectEdges(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V
    .locals 10

    sget-object v0, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "insersectEdges"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Lde/lighti/clipper/Edge;->outIdx:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v3, p2, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, p3, p1, p2}, Lde/lighti/clipper/DefaultClipper;->setZ(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    iget v4, p1, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v4, :cond_28

    iget v5, p2, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v5, :cond_2

    goto/16 :goto_12

    :cond_2
    iget-object v4, p1, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    iget-object v5, p2, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    if-ne v4, v5, :cond_6

    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v4, p0, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {p1, v1, v4}, Lde/lighti/clipper/Edge;->isEvenOddFillType(Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p1, Lde/lighti/clipper/Edge;->windCnt:I

    iget v4, p2, Lde/lighti/clipper/Edge;->windCnt:I

    iput v4, p1, Lde/lighti/clipper/Edge;->windCnt:I

    :goto_2
    iput v1, p2, Lde/lighti/clipper/Edge;->windCnt:I

    goto :goto_7

    :cond_3
    iget v1, p1, Lde/lighti/clipper/Edge;->windCnt:I

    iget v4, p2, Lde/lighti/clipper/Edge;->windDelta:I

    add-int v5, v1, v4

    if-nez v5, :cond_4

    neg-int v1, v1

    goto :goto_3

    :cond_4
    add-int/2addr v1, v4

    :goto_3
    iput v1, p1, Lde/lighti/clipper/Edge;->windCnt:I

    iget v1, p2, Lde/lighti/clipper/Edge;->windCnt:I

    iget v4, p1, Lde/lighti/clipper/Edge;->windDelta:I

    sub-int v5, v1, v4

    if-nez v5, :cond_5

    neg-int v1, v1

    goto :goto_2

    :cond_5
    sub-int/2addr v1, v4

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v5, p0, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {p2, v4, v5}, Lde/lighti/clipper/Edge;->isEvenOddFillType(Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    iget v5, p2, Lde/lighti/clipper/Edge;->windDelta:I

    add-int/2addr v4, v5

    :goto_4
    iput v4, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    goto :goto_5

    :cond_7
    iget v4, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    if-nez v4, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    :goto_5
    iget-object v4, p0, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v5, p0, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {p1, v4, v5}, Lde/lighti/clipper/Edge;->isEvenOddFillType(Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z

    move-result v4

    if-nez v4, :cond_a

    iget v1, p2, Lde/lighti/clipper/Edge;->windCnt2:I

    iget v4, p1, Lde/lighti/clipper/Edge;->windDelta:I

    sub-int/2addr v1, v4

    :cond_9
    :goto_6
    iput v1, p2, Lde/lighti/clipper/Edge;->windCnt2:I

    goto :goto_7

    :cond_a
    iget v4, p2, Lde/lighti/clipper/Edge;->windCnt2:I

    if-nez v4, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :goto_7
    iget-object v1, p1, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    sget-object v4, Lde/lighti/clipper/Clipper$PolyType;->SUBJECT:Lde/lighti/clipper/Clipper$PolyType;

    if-ne v1, v4, :cond_b

    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v5, p0, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    goto :goto_8

    :cond_b
    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v5, p0, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    :goto_8
    iget-object v6, p2, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    if-ne v6, v4, :cond_c

    iget-object v6, p0, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v7, p0, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    goto :goto_9

    :cond_c
    iget-object v6, p0, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v7, p0, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    :goto_9
    sget-object v8, Lde/lighti/clipper/DefaultClipper$1;->$SwitchMap$de$lighti$clipper$Clipper$PolyFillType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v8, v1

    const/4 v9, 0x2

    if-eq v1, v2, :cond_e

    if-eq v1, v9, :cond_d

    iget v1, p1, Lde/lighti/clipper/Edge;->windCnt:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    goto :goto_a

    :cond_d
    iget v1, p1, Lde/lighti/clipper/Edge;->windCnt:I

    neg-int v1, v1

    goto :goto_a

    :cond_e
    iget v1, p1, Lde/lighti/clipper/Edge;->windCnt:I

    :goto_a
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v8, v6

    if-eq v6, v2, :cond_10

    if-eq v6, v9, :cond_f

    iget v6, p2, Lde/lighti/clipper/Edge;->windCnt:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    goto :goto_b

    :cond_f
    iget v6, p2, Lde/lighti/clipper/Edge;->windCnt:I

    neg-int v6, v6

    goto :goto_b

    :cond_10
    iget v6, p2, Lde/lighti/clipper/Edge;->windCnt:I

    :goto_b
    if-eqz v0, :cond_15

    if-eqz v3, :cond_15

    if-eqz v1, :cond_11

    if-ne v1, v2, :cond_13

    :cond_11
    if-eqz v6, :cond_12

    if-ne v6, v2, :cond_13

    :cond_12
    iget-object v0, p1, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    iget-object v1, p2, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->clipType:Lde/lighti/clipper/Clipper$ClipType;

    sget-object v1, Lde/lighti/clipper/Clipper$ClipType;->XOR:Lde/lighti/clipper/Clipper$ClipType;

    if-eq v0, v1, :cond_14

    :cond_13
    invoke-direct {p0, p1, p2, p3}, Lde/lighti/clipper/DefaultClipper;->addLocalMaxPoly(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V

    goto/16 :goto_11

    :cond_14
    invoke-direct {p0, p1, p3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    goto :goto_d

    :cond_15
    if-eqz v0, :cond_17

    if-eqz v6, :cond_16

    if-ne v6, v2, :cond_27

    :cond_16
    invoke-direct {p0, p1, p3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    :goto_c
    invoke-static {p1, p2}, Lde/lighti/clipper/Edge;->swapSides(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    invoke-static {p1, p2}, Lde/lighti/clipper/Edge;->swapPolyIndexes(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    goto/16 :goto_11

    :cond_17
    if-eqz v3, :cond_19

    if-eqz v1, :cond_18

    if-ne v1, v2, :cond_27

    :cond_18
    :goto_d
    invoke-direct {p0, p2, p3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    goto :goto_c

    :cond_19
    if-eqz v1, :cond_1a

    if-ne v1, v2, :cond_27

    :cond_1a
    if-eqz v6, :cond_1b

    if-ne v6, v2, :cond_27

    :cond_1b
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v8, v0

    if-eq v0, v2, :cond_1d

    if-eq v0, v9, :cond_1c

    iget v0, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_e

    :cond_1c
    iget v0, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    neg-int v0, v0

    goto :goto_e

    :cond_1d
    iget v0, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    :goto_e
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v8, v3

    if-eq v3, v2, :cond_1f

    if-eq v3, v9, :cond_1e

    iget v3, p2, Lde/lighti/clipper/Edge;->windCnt2:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    goto :goto_f

    :cond_1e
    iget v3, p2, Lde/lighti/clipper/Edge;->windCnt2:I

    neg-int v3, v3

    goto :goto_f

    :cond_1f
    iget v3, p2, Lde/lighti/clipper/Edge;->windCnt2:I

    :goto_f
    iget-object v5, p1, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    iget-object v7, p2, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    if-eq v5, v7, :cond_21

    :cond_20
    :goto_10
    invoke-direct {p0, p1, p2, p3}, Lde/lighti/clipper/DefaultClipper;->addLocalMinPoly(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    goto :goto_11

    :cond_21
    if-ne v1, v2, :cond_26

    if-ne v6, v2, :cond_26

    sget-object v1, Lde/lighti/clipper/DefaultClipper$1;->$SwitchMap$de$lighti$clipper$Clipper$ClipType:[I

    iget-object v5, p0, Lde/lighti/clipper/DefaultClipper;->clipType:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v2, :cond_25

    if-eq v1, v9, :cond_24

    const/4 v2, 0x3

    if-eq v1, v2, :cond_22

    const/4 v0, 0x4

    if-eq v1, v0, :cond_20

    goto :goto_11

    :cond_22
    iget-object v1, p1, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    sget-object v2, Lde/lighti/clipper/Clipper$PolyType;->CLIP:Lde/lighti/clipper/Clipper$PolyType;

    if-ne v1, v2, :cond_23

    if-lez v0, :cond_23

    if-gtz v3, :cond_20

    :cond_23
    if-ne v1, v4, :cond_27

    if-gtz v0, :cond_27

    if-gtz v3, :cond_27

    goto :goto_10

    :cond_24
    if-gtz v0, :cond_27

    if-gtz v3, :cond_27

    goto :goto_10

    :cond_25
    if-lez v0, :cond_27

    if-lez v3, :cond_27

    goto :goto_10

    :cond_26
    invoke-static {p1, p2}, Lde/lighti/clipper/Edge;->swapSides(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    :cond_27
    :goto_11
    return-void

    :cond_28
    :goto_12
    if-nez v4, :cond_29

    iget v1, p2, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v1, :cond_29

    return-void

    :cond_29
    iget-object v1, p1, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    iget-object v5, p2, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    const/4 v6, -0x1

    if-ne v1, v5, :cond_2b

    iget v7, p2, Lde/lighti/clipper/Edge;->windDelta:I

    if-eq v4, v7, :cond_2b

    iget-object v7, p0, Lde/lighti/clipper/DefaultClipper;->clipType:Lde/lighti/clipper/Clipper$ClipType;

    sget-object v8, Lde/lighti/clipper/Clipper$ClipType;->UNION:Lde/lighti/clipper/Clipper$ClipType;

    if-ne v7, v8, :cond_2b

    if-nez v4, :cond_2a

    if-eqz v3, :cond_2f

    invoke-direct {p0, p1, p3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    if-eqz v0, :cond_2f

    goto :goto_14

    :cond_2a
    if-eqz v0, :cond_2f

    invoke-direct {p0, p2, p3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    if-eqz v3, :cond_2f

    :goto_13
    iput v6, p2, Lde/lighti/clipper/Edge;->outIdx:I

    goto :goto_15

    :cond_2b
    if-eq v1, v5, :cond_2f

    if-nez v4, :cond_2d

    iget v1, p2, Lde/lighti/clipper/Edge;->windCnt:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->clipType:Lde/lighti/clipper/Clipper$ClipType;

    sget-object v4, Lde/lighti/clipper/Clipper$ClipType;->UNION:Lde/lighti/clipper/Clipper$ClipType;

    if-ne v1, v4, :cond_2c

    iget v1, p2, Lde/lighti/clipper/Edge;->windCnt2:I

    if-nez v1, :cond_2d

    :cond_2c
    invoke-direct {p0, p1, p3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    if-eqz v0, :cond_2f

    :goto_14
    iput v6, p1, Lde/lighti/clipper/Edge;->outIdx:I

    goto :goto_15

    :cond_2d
    iget v0, p2, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v0, :cond_2f

    iget v0, p1, Lde/lighti/clipper/Edge;->windCnt:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v2, :cond_2f

    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->clipType:Lde/lighti/clipper/Clipper$ClipType;

    sget-object v1, Lde/lighti/clipper/Clipper$ClipType;->UNION:Lde/lighti/clipper/Clipper$ClipType;

    if-ne v0, v1, :cond_2e

    iget p1, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    if-nez p1, :cond_2f

    :cond_2e
    invoke-direct {p0, p2, p3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    if-eqz v3, :cond_2f

    goto :goto_13

    :cond_2f
    :goto_15
    return-void
.end method

.method private intersectPoint(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;[Lde/lighti/clipper/Point$LongPoint;)V
    .locals 11

    new-instance v0, Lde/lighti/clipper/Point$LongPoint;

    invoke-direct {v0}, Lde/lighti/clipper/Point$LongPoint;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p3, v1

    iget-wide v1, p1, Lde/lighti/clipper/Edge;->deltaX:D

    iget-wide v3, p2, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double p3, v1, v3

    if-nez p3, :cond_0

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p2

    invoke-virtual {p2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lde/lighti/clipper/Point;->setY(Ljava/lang/Number;)V

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lde/lighti/clipper/Edge;->topX(Lde/lighti/clipper/Edge;J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lde/lighti/clipper/Point;->setX(Ljava/lang/Number;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getDelta()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p3, v1, v3

    if-nez p3, :cond_2

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lde/lighti/clipper/Point;->setX(Ljava/lang/Number;)V

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->isHorizontal()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    :goto_0
    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p2, Lde/lighti/clipper/Edge;->deltaX:D

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p2, Lde/lighti/clipper/Edge;->deltaX:D

    :goto_1
    div-double/2addr v3, v5

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lde/lighti/clipper/Point;->setY(Ljava/lang/Number;)V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getDelta()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    cmp-long p3, v1, v3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lde/lighti/clipper/Point;->setX(Ljava/lang/Number;)V

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->isHorizontal()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p1, Lde/lighti/clipper/Edge;->deltaX:D

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p1, Lde/lighti/clipper/Edge;->deltaX:D

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    long-to-double v3, v3

    iget-wide v5, p1, Lde/lighti/clipper/Edge;->deltaX:D

    mul-double v3, v3, v5

    sub-double/2addr v1, v3

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    long-to-double v3, v3

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    long-to-double v5, v5

    iget-wide v7, p2, Lde/lighti/clipper/Edge;->deltaX:D

    mul-double v5, v5, v7

    sub-double/2addr v3, v5

    sub-double v5, v3, v1

    iget-wide v9, p1, Lde/lighti/clipper/Edge;->deltaX:D

    sub-double/2addr v9, v7

    div-double/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lde/lighti/clipper/Point;->setY(Ljava/lang/Number;)V

    iget-wide v7, p1, Lde/lighti/clipper/Edge;->deltaX:D

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    iget-wide v9, p2, Lde/lighti/clipper/Edge;->deltaX:D

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double p3, v7, v9

    if-gez p3, :cond_5

    iget-wide v3, p1, Lde/lighti/clipper/Edge;->deltaX:D

    mul-double v3, v3, v5

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    goto :goto_3

    :cond_5
    iget-wide v1, p2, Lde/lighti/clipper/Edge;->deltaX:D

    mul-double v1, v1, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    :goto_3
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lde/lighti/clipper/Point;->setX(Ljava/lang/Number;)V

    :goto_4
    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-ltz p3, :cond_6

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-gez p3, :cond_9

    :cond_6
    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-lez p3, :cond_7

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    goto :goto_5

    :cond_7
    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    :goto_5
    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lde/lighti/clipper/Point;->setY(Ljava/lang/Number;)V

    iget-wide v1, p1, Lde/lighti/clipper/Edge;->deltaX:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v3, p2, Lde/lighti/clipper/Edge;->deltaX:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double p3, v1, v3

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    if-gez p3, :cond_8

    invoke-static {p1, v1, v2}, Lde/lighti/clipper/Edge;->topX(Lde/lighti/clipper/Edge;J)J

    move-result-wide v1

    goto :goto_6

    :cond_8
    invoke-static {p2, v1, v2}, Lde/lighti/clipper/Edge;->topX(Lde/lighti/clipper/Edge;J)J

    move-result-wide v1

    :goto_6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lde/lighti/clipper/Point;->setX(Ljava/lang/Number;)V

    :cond_9
    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    cmp-long p3, v1, v3

    if-lez p3, :cond_b

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lde/lighti/clipper/Point;->setY(Ljava/lang/Number;)V

    iget-wide v1, p1, Lde/lighti/clipper/Edge;->deltaX:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-wide v3, p2, Lde/lighti/clipper/Edge;->deltaX:D

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double p3, v1, v3

    if-lez p3, :cond_a

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-static {p2, v1, v2}, Lde/lighti/clipper/Edge;->topX(Lde/lighti/clipper/Edge;J)J

    move-result-wide p1

    goto :goto_7

    :cond_a
    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lde/lighti/clipper/Edge;->topX(Lde/lighti/clipper/Edge;J)J

    move-result-wide p1

    :goto_7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lde/lighti/clipper/Point;->setX(Ljava/lang/Number;)V

    :cond_b
    return-void
.end method

.method private static isOutRec1RightOfOutRec2(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)Z
    .locals 0

    :cond_0
    iget-object p0, p0, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0
.end method

.method private static isPointInPolygon(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Path$OutPt;)I
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    move-object/from16 v9, p1

    const/4 v10, 0x0

    :goto_0
    iget-object v9, v9, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v9}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v11}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v11

    invoke-virtual {v9}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v13

    invoke-virtual {v13}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v13

    const/16 v16, 0x1

    cmp-long v17, v13, v2

    if-nez v17, :cond_3

    cmp-long v18, v11, v0

    if-eqz v18, :cond_2

    cmp-long v19, v6, v2

    if-nez v19, :cond_3

    if-lez v18, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    cmp-long v18, v4, v0

    if-gez v18, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    :goto_2
    if-ne v8, v15, :cond_3

    :cond_2
    const/4 v0, -0x1

    return v0

    :cond_3
    cmp-long v8, v6, v2

    if-gez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-gez v17, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    if-eq v8, v15, :cond_e

    const-wide/16 v19, 0x0

    cmp-long v8, v4, v0

    if-ltz v8, :cond_a

    cmp-long v8, v11, v0

    if-lez v8, :cond_6

    rsub-int/lit8 v10, v10, 0x1

    move-wide/from16 v21, v0

    move-object v1, v9

    move-object/from16 v0, p1

    goto/16 :goto_a

    :cond_6
    sub-long/2addr v4, v0

    long-to-double v4, v4

    move-object v15, v9

    sub-long v8, v13, v2

    long-to-double v8, v8

    mul-double v4, v4, v8

    sub-long v8, v11, v0

    long-to-double v8, v8

    move-wide/from16 v21, v0

    sub-long v0, v6, v2

    long-to-double v0, v0

    mul-double v8, v8, v0

    sub-double/2addr v4, v8

    cmpl-double v0, v4, v19

    if-nez v0, :cond_7

    const/4 v1, -0x1

    return v1

    :cond_7
    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    cmp-long v1, v13, v6

    if-lez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    :goto_6
    if-ne v0, v1, :cond_f

    rsub-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_9

    :cond_a
    move-wide/from16 v21, v0

    move-object v15, v9

    cmp-long v0, v11, v21

    if-lez v0, :cond_f

    sub-long v4, v4, v21

    long-to-double v0, v4

    sub-long v4, v13, v2

    long-to-double v4, v4

    mul-double v0, v0, v4

    sub-long v4, v11, v21

    long-to-double v4, v4

    sub-long v8, v6, v2

    long-to-double v8, v8

    mul-double v4, v4, v8

    sub-double/2addr v0, v4

    cmpl-double v4, v0, v19

    if-nez v4, :cond_b

    const/4 v0, -0x1

    return v0

    :cond_b
    if-lez v4, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    cmp-long v1, v13, v6

    if-lez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_8

    :cond_d
    const/4 v1, 0x0

    :goto_8
    if-ne v0, v1, :cond_f

    rsub-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    move-wide/from16 v21, v0

    move-object v15, v9

    :cond_f
    :goto_9
    move-object/from16 v0, p1

    move-object v1, v15

    :goto_a
    if-ne v0, v1, :cond_10

    return v10

    :cond_10
    move-object v9, v1

    move-wide v4, v11

    move-wide v6, v13

    move-wide/from16 v0, v21

    goto/16 :goto_0
.end method

.method private joinCommonEdges()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lde/lighti/clipper/DefaultClipper;->joins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    iget-object v2, p0, Lde/lighti/clipper/DefaultClipper;->joins:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/lighti/clipper/Path$Join;

    iget-object v3, v2, Lde/lighti/clipper/Path$Join;->outPt1:Lde/lighti/clipper/Path$OutPt;

    iget v3, v3, Lde/lighti/clipper/Path$OutPt;->idx:I

    invoke-direct {p0, v3}, Lde/lighti/clipper/DefaultClipper;->getOutRec(I)Lde/lighti/clipper/Path$OutRec;

    move-result-object v3

    iget-object v4, v2, Lde/lighti/clipper/Path$Join;->outPt2:Lde/lighti/clipper/Path$OutPt;

    iget v4, v4, Lde/lighti/clipper/Path$OutPt;->idx:I

    invoke-direct {p0, v4}, Lde/lighti/clipper/DefaultClipper;->getOutRec(I)Lde/lighti/clipper/Path$OutRec;

    move-result-object v4

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-boolean v5, v3, Lde/lighti/clipper/Path$OutRec;->isOpen:Z

    if-nez v5, :cond_e

    iget-boolean v5, v4, Lde/lighti/clipper/Path$OutRec;->isOpen:Z

    if-eqz v5, :cond_1

    goto/16 :goto_6

    :cond_1
    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v3, v4}, Lde/lighti/clipper/DefaultClipper;->isOutRec1RightOfOutRec2(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v4

    goto :goto_2

    :cond_3
    invoke-static {v4, v3}, Lde/lighti/clipper/DefaultClipper;->isOutRec1RightOfOutRec2(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_1
    move-object v5, v3

    goto :goto_2

    :cond_4
    invoke-static {v3, v4}, Lde/lighti/clipper/Path$OutPt;->getLowerMostRec(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)Lde/lighti/clipper/Path$OutRec;

    move-result-object v5

    :goto_2
    invoke-static {v2, v3, v4}, Lde/lighti/clipper/DefaultClipper;->joinPoints(Lde/lighti/clipper/Path$Join;Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_6

    :cond_5
    const/4 v6, 0x0

    if-ne v3, v4, :cond_c

    iget-object v4, v2, Lde/lighti/clipper/Path$Join;->outPt1:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v3, v4}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    iput-object v6, v3, Lde/lighti/clipper/Path$OutRec;->bottomPt:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {p0}, Lde/lighti/clipper/ClipperBase;->createOutRec()Lde/lighti/clipper/Path$OutRec;

    move-result-object v4

    iget-object v2, v2, Lde/lighti/clipper/Path$Join;->outPt2:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v4, v2}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    invoke-direct {p0, v4}, Lde/lighti/clipper/DefaultClipper;->updateOutPtIdxs(Lde/lighti/clipper/Path$OutRec;)V

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v2

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v5

    invoke-static {v2, v5}, Lde/lighti/clipper/DefaultClipper;->poly2ContainsPoly1(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;)Z

    move-result v2

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_8

    iget-boolean v2, v3, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    xor-int/2addr v2, v7

    iput-boolean v2, v4, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iput-object v3, v4, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iget-boolean v2, p0, Lde/lighti/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v2, :cond_6

    invoke-direct {p0, v4, v3}, Lde/lighti/clipper/DefaultClipper;->fixupFirstLefts2(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)V

    :cond_6
    iget-boolean v2, v4, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iget-boolean v3, p0, Lde/lighti/clipper/DefaultClipper;->reverseSolution:Z

    xor-int/2addr v2, v3

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutRec;->area()D

    move-result-wide v8

    cmpl-double v3, v8, v5

    if-lez v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    if-ne v2, v7, :cond_e

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v2

    :goto_4
    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->reversePolyPtLinks()V

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v2

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v8

    invoke-static {v2, v8}, Lde/lighti/clipper/DefaultClipper;->poly2ContainsPoly1(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, v3, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iput-boolean v2, v4, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v3, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iget-object v2, v3, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iput-object v2, v4, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iput-object v4, v3, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iget-boolean v2, p0, Lde/lighti/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v2, :cond_9

    invoke-direct {p0, v3, v4}, Lde/lighti/clipper/DefaultClipper;->fixupFirstLefts2(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)V

    :cond_9
    iget-boolean v2, v3, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iget-boolean v4, p0, Lde/lighti/clipper/DefaultClipper;->reverseSolution:Z

    xor-int/2addr v2, v4

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutRec;->area()D

    move-result-wide v8

    cmpl-double v4, v8, v5

    if-lez v4, :cond_a

    goto :goto_5

    :cond_a
    const/4 v7, 0x0

    :goto_5
    if-ne v2, v7, :cond_e

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v2

    goto :goto_4

    :cond_b
    iget-boolean v2, v3, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iput-boolean v2, v4, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iget-object v2, v3, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iput-object v2, v4, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iget-boolean v2, p0, Lde/lighti/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v2, :cond_e

    invoke-direct {p0, v3, v4}, Lde/lighti/clipper/DefaultClipper;->fixupFirstLefts1(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v4, v6}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    iput-object v6, v4, Lde/lighti/clipper/Path$OutRec;->bottomPt:Lde/lighti/clipper/Path$OutPt;

    iget v2, v3, Lde/lighti/clipper/Path$OutRec;->Idx:I

    iput v2, v4, Lde/lighti/clipper/Path$OutRec;->Idx:I

    iget-boolean v2, v5, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iput-boolean v2, v3, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    if-ne v5, v4, :cond_d

    iget-object v2, v4, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iput-object v2, v3, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    :cond_d
    iput-object v3, v4, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iget-boolean v2, p0, Lde/lighti/clipper/DefaultClipper;->usingPolyTree:Z

    if-eqz v2, :cond_e

    invoke-direct {p0, v4, v3}, Lde/lighti/clipper/DefaultClipper;->fixupFirstLefts3(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)V

    :cond_e
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method private static joinHorz(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;Z)Z
    .locals 7

    invoke-virtual {p0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual {p1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    sget-object p1, Lde/lighti/clipper/Clipper$Direction;->RIGHT_TO_LEFT:Lde/lighti/clipper/Clipper$Direction;

    goto :goto_0

    :cond_0
    sget-object p1, Lde/lighti/clipper/Clipper$Direction;->LEFT_TO_RIGHT:Lde/lighti/clipper/Clipper$Direction;

    :goto_0
    invoke-virtual {p2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    invoke-virtual {p3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    sget-object p3, Lde/lighti/clipper/Clipper$Direction;->RIGHT_TO_LEFT:Lde/lighti/clipper/Clipper$Direction;

    goto :goto_1

    :cond_1
    sget-object p3, Lde/lighti/clipper/Clipper$Direction;->LEFT_TO_RIGHT:Lde/lighti/clipper/Clipper$Direction;

    :goto_1
    const/4 v0, 0x0

    if-ne p1, p3, :cond_2

    return v0

    :cond_2
    sget-object v1, Lde/lighti/clipper/Clipper$Direction;->LEFT_TO_RIGHT:Lde/lighti/clipper/Clipper$Direction;

    if-ne p1, v1, :cond_5

    :goto_2
    iget-object v1, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {p4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    iget-object v1, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {p0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    iget-object v1, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {p4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_3

    iget-object p0, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_2

    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {p0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {p4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    iget-object p0, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    :cond_4
    xor-int/lit8 v1, p5, 0x1

    invoke-virtual {p0, v1}, Lde/lighti/clipper/Path$OutPt;->duplicate(Z)Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2, p4}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance p0, Lde/lighti/clipper/Point$LongPoint;

    invoke-direct {p0, p4}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v1, p0}, Lde/lighti/clipper/Path$OutPt;->setPt(Lde/lighti/clipper/Point$LongPoint;)V

    xor-int/lit8 p0, p5, 0x1

    invoke-virtual {v1, p0}, Lde/lighti/clipper/Path$OutPt;->duplicate(Z)Lde/lighti/clipper/Path$OutPt;

    move-result-object p0

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v1, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {p4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-ltz v5, :cond_6

    iget-object v1, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {p0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_6

    iget-object v1, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual {p4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-nez v5, :cond_6

    iget-object p0, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_3

    :cond_6
    if-nez p5, :cond_7

    invoke-virtual {p0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {p4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_7

    iget-object p0, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    :cond_7
    invoke-virtual {p0, p5}, Lde/lighti/clipper/Path$OutPt;->duplicate(Z)Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2, p4}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    new-instance p0, Lde/lighti/clipper/Point$LongPoint;

    invoke-direct {p0, p4}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v1, p0}, Lde/lighti/clipper/Path$OutPt;->setPt(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v1, p5}, Lde/lighti/clipper/Path$OutPt;->duplicate(Z)Lde/lighti/clipper/Path$OutPt;

    move-result-object p0

    :goto_4
    move-object v6, v1

    move-object v1, p0

    move-object p0, v6

    :cond_8
    sget-object v2, Lde/lighti/clipper/Clipper$Direction;->LEFT_TO_RIGHT:Lde/lighti/clipper/Clipper$Direction;

    if-ne p3, v2, :cond_b

    :goto_5
    iget-object p3, p2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {p3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-gtz p3, :cond_9

    iget-object p3, p2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {p3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-ltz p3, :cond_9

    iget-object p3, p2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {p3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual {p4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-nez p3, :cond_9

    iget-object p2, p2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_5

    :cond_9
    if-eqz p5, :cond_a

    invoke-virtual {p2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-eqz p3, :cond_a

    iget-object p2, p2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    :cond_a
    xor-int/lit8 p3, p5, 0x1

    invoke-virtual {p2, p3}, Lde/lighti/clipper/Path$OutPt;->duplicate(Z)Lde/lighti/clipper/Path$OutPt;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2, p4}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance p2, Lde/lighti/clipper/Point$LongPoint;

    invoke-direct {p2, p4}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p3, p2}, Lde/lighti/clipper/Path$OutPt;->setPt(Lde/lighti/clipper/Point$LongPoint;)V

    xor-int/lit8 p2, p5, 0x1

    invoke-virtual {p3, p2}, Lde/lighti/clipper/Path$OutPt;->duplicate(Z)Lde/lighti/clipper/Path$OutPt;

    move-result-object p2

    goto :goto_7

    :cond_b
    :goto_6
    iget-object p3, p2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {p3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-ltz p3, :cond_c

    iget-object p3, p2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {p3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-gtz p3, :cond_c

    iget-object p3, p2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {p3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual {p4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-nez p3, :cond_c

    iget-object p2, p2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_6

    :cond_c
    if-nez p5, :cond_d

    invoke-virtual {p2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {p4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-eqz p3, :cond_d

    iget-object p2, p2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    :cond_d
    invoke-virtual {p2, p5}, Lde/lighti/clipper/Path$OutPt;->duplicate(Z)Lde/lighti/clipper/Path$OutPt;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2, p4}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance p2, Lde/lighti/clipper/Point$LongPoint;

    invoke-direct {p2, p4}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p3, p2}, Lde/lighti/clipper/Path$OutPt;->setPt(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p3, p5}, Lde/lighti/clipper/Path$OutPt;->duplicate(Z)Lde/lighti/clipper/Path$OutPt;

    move-result-object p2

    :goto_7
    move-object v6, p3

    move-object p3, p2

    move-object p2, v6

    :cond_e
    sget-object p4, Lde/lighti/clipper/Clipper$Direction;->LEFT_TO_RIGHT:Lde/lighti/clipper/Clipper$Direction;

    const/4 v2, 0x1

    if-ne p1, p4, :cond_f

    const/4 v0, 0x1

    :cond_f
    if-ne v0, p5, :cond_10

    iput-object p2, p0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object p0, p2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object p3, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v1, p3, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    goto :goto_8

    :cond_10
    iput-object p2, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object p0, p2, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object p3, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v1, p3, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    :goto_8
    return v2
.end method

.method private static joinPoints(Lde/lighti/clipper/Path$Join;Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lde/lighti/clipper/Path$Join;->outPt1:Lde/lighti/clipper/Path$OutPt;

    iget-object v4, v0, Lde/lighti/clipper/Path$Join;->outPt2:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    cmp-long v11, v5, v7

    if-nez v11, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_8

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    iget-object v7, v0, Lde/lighti/clipper/Path$Join;->outPt1:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v7}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    iget-object v7, v0, Lde/lighti/clipper/Path$Join;->outPt2:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v7}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eq v1, v2, :cond_1

    return v10

    :cond_1
    iget-object v1, v0, Lde/lighti/clipper/Path$Join;->outPt1:Lde/lighti/clipper/Path$OutPt;

    :goto_1
    iget-object v1, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-eq v1, v3, :cond_2

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v2, v5}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-lez v7, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    iget-object v2, v0, Lde/lighti/clipper/Path$Join;->outPt2:Lde/lighti/clipper/Path$OutPt;

    :goto_3
    iget-object v2, v2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-eq v2, v4, :cond_4

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-lez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    if-ne v1, v2, :cond_6

    return v10

    :cond_6
    if-eqz v1, :cond_7

    :goto_5
    invoke-virtual {v3, v10}, Lde/lighti/clipper/Path$OutPt;->duplicate(Z)Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    invoke-virtual {v4, v9}, Lde/lighti/clipper/Path$OutPt;->duplicate(Z)Lde/lighti/clipper/Path$OutPt;

    move-result-object v2

    iput-object v4, v3, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v3, v4, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v2, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v1, v2, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    :goto_6
    iput-object v3, v0, Lde/lighti/clipper/Path$Join;->outPt1:Lde/lighti/clipper/Path$OutPt;

    iput-object v1, v0, Lde/lighti/clipper/Path$Join;->outPt2:Lde/lighti/clipper/Path$OutPt;

    return v9

    :cond_7
    invoke-virtual {v3, v9}, Lde/lighti/clipper/Path$OutPt;->duplicate(Z)Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    invoke-virtual {v4, v10}, Lde/lighti/clipper/Path$OutPt;->duplicate(Z)Lde/lighti/clipper/Path$OutPt;

    move-result-object v2

    iput-object v4, v3, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v3, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v2, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v1, v2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_6

    :cond_8
    if-eqz v5, :cond_15

    move-object v1, v3

    :goto_7
    iget-object v2, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_9

    iget-object v2, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    if-eq v2, v3, :cond_9

    if-eq v2, v4, :cond_9

    move-object v1, v2

    goto :goto_7

    :cond_9
    :goto_8
    move-object v11, v3

    iget-object v2, v11, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual {v11}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-nez v7, :cond_a

    iget-object v3, v11, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-eq v3, v1, :cond_a

    if-eq v3, v4, :cond_a

    goto :goto_8

    :cond_a
    iget-object v2, v11, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-eq v2, v1, :cond_14

    if-ne v2, v4, :cond_b

    goto/16 :goto_d

    :cond_b
    move-object v12, v4

    :goto_9
    iget-object v2, v12, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual {v12}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-nez v7, :cond_c

    iget-object v2, v12, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    if-eq v2, v4, :cond_c

    if-eq v2, v11, :cond_c

    move-object v12, v2

    goto :goto_9

    :cond_c
    :goto_a
    move-object v13, v4

    iget-object v2, v13, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual {v13}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_d

    iget-object v4, v13, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-eq v4, v12, :cond_d

    if-eq v4, v1, :cond_d

    goto :goto_a

    :cond_d
    iget-object v2, v13, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-eq v2, v12, :cond_14

    if-ne v2, v1, :cond_e

    goto/16 :goto_d

    :cond_e
    new-array v2, v9, [J

    new-array v3, v9, [J

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    invoke-virtual {v11}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v16

    invoke-virtual {v12}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v18

    invoke-virtual {v13}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v20

    move-object/from16 v22, v2

    move-object/from16 v23, v3

    invoke-static/range {v14 .. v23}, Lde/lighti/clipper/DefaultClipper;->getOverlap(JJJJ[J[J)Z

    move-result v4

    if-nez v4, :cond_f

    return v10

    :cond_f
    aget-wide v4, v2, v10

    aget-wide v2, v3, v10

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-ltz v8, :cond_11

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gtz v8, :cond_11

    new-instance v2, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v11}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_10

    goto :goto_b

    :cond_10
    const/4 v9, 0x0

    :goto_b
    move-object v14, v2

    move v15, v9

    goto/16 :goto_c

    :cond_11
    invoke-virtual {v12}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-ltz v8, :cond_12

    invoke-virtual {v12}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-gtz v8, :cond_12

    new-instance v2, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v12}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v12}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v13}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_10

    goto :goto_b

    :cond_12
    invoke-virtual {v11}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-ltz v8, :cond_13

    invoke-virtual {v11}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-gtz v6, :cond_13

    new-instance v2, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v11}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v11}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_10

    goto :goto_b

    :cond_13
    new-instance v2, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v13}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v13}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v12}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_10

    goto/16 :goto_b

    :goto_c
    iput-object v1, v0, Lde/lighti/clipper/Path$Join;->outPt1:Lde/lighti/clipper/Path$OutPt;

    iput-object v12, v0, Lde/lighti/clipper/Path$Join;->outPt2:Lde/lighti/clipper/Path$OutPt;

    move-object v10, v1

    invoke-static/range {v10 .. v15}, Lde/lighti/clipper/DefaultClipper;->joinHorz(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;Z)Z

    move-result v0

    return v0

    :cond_14
    :goto_d
    return v10

    :cond_15
    iget-object v5, v3, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    :goto_e
    invoke-virtual {v5}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    if-eq v5, v3, :cond_16

    iget-object v5, v5, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_e

    :cond_16
    invoke-virtual {v5}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v8

    invoke-virtual {v8}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    cmp-long v8, v6, v11

    if-gtz v8, :cond_18

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v5}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lde/lighti/clipper/Point;->slopesEqual(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_f

    :cond_17
    const/4 v6, 0x0

    goto :goto_10

    :cond_18
    :goto_f
    const/4 v6, 0x1

    :goto_10
    if-eqz v6, :cond_1b

    iget-object v5, v3, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    :goto_11
    invoke-virtual {v5}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v8

    invoke-virtual {v7, v8}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    if-eq v5, v3, :cond_19

    iget-object v5, v5, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    goto :goto_11

    :cond_19
    invoke-virtual {v5}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v11}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    cmp-long v13, v7, v11

    if-gtz v13, :cond_1a

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v5}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v11

    invoke-static {v7, v8, v11}, Lde/lighti/clipper/Point;->slopesEqual(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result v7

    if-nez v7, :cond_1b

    :cond_1a
    return v10

    :cond_1b
    iget-object v7, v4, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    :goto_12
    invoke-virtual {v7}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v8

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v8, v11}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    if-eq v7, v4, :cond_1c

    iget-object v7, v7, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_12

    :cond_1c
    invoke-virtual {v7}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v8

    invoke-virtual {v8}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v8

    invoke-virtual {v8}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v13

    cmp-long v8, v11, v13

    if-gtz v8, :cond_1e

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v8

    invoke-virtual {v7}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v12

    invoke-static {v8, v11, v12}, Lde/lighti/clipper/Point;->slopesEqual(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result v8

    if-nez v8, :cond_1d

    goto :goto_13

    :cond_1d
    const/4 v8, 0x0

    goto :goto_14

    :cond_1e
    :goto_13
    const/4 v8, 0x1

    :goto_14
    if-eqz v8, :cond_21

    iget-object v7, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    :goto_15
    invoke-virtual {v7}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v11, v12}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    if-eq v7, v4, :cond_1f

    iget-object v7, v7, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    goto :goto_15

    :cond_1f
    invoke-virtual {v7}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v11}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v11

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v13

    invoke-virtual {v13}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v13

    cmp-long v15, v11, v13

    if-gtz v15, :cond_20

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v11

    invoke-virtual {v7}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lde/lighti/clipper/Path$Join;->getOffPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lde/lighti/clipper/Point;->slopesEqual(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result v11

    if-nez v11, :cond_21

    :cond_20
    return v10

    :cond_21
    if-eq v5, v3, :cond_23

    if-eq v7, v4, :cond_23

    if-eq v5, v7, :cond_23

    if-ne v1, v2, :cond_22

    if-ne v6, v8, :cond_22

    goto :goto_16

    :cond_22
    if-eqz v6, :cond_7

    goto/16 :goto_5

    :cond_23
    :goto_16
    return v10
.end method

.method private static synthetic lambda$new$0(Lde/lighti/clipper/DefaultClipper$IntersectNode;Lde/lighti/clipper/DefaultClipper$IntersectNode;)I
    .locals 3

    invoke-virtual {p1}, Lde/lighti/clipper/DefaultClipper$IntersectNode;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    invoke-virtual {p0}, Lde/lighti/clipper/DefaultClipper$IntersectNode;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p0

    invoke-virtual {p0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide p0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x0

    cmp-long v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-gez v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static minkowski(Lde/lighti/clipper/Path;Lde/lighti/clipper/Path;ZZ)Lde/lighti/clipper/Paths;
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    new-instance v3, Lde/lighti/clipper/Paths;

    invoke-direct {v3, v2}, Lde/lighti/clipper/Paths;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p2, :cond_1

    :goto_0
    if-ge v5, v2, :cond_3

    new-instance v6, Lde/lighti/clipper/Path;

    invoke-direct {v6, v1}, Lde/lighti/clipper/Path;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lde/lighti/clipper/Point$LongPoint;

    new-instance v14, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v9}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v9

    invoke-virtual {v8}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v11

    add-long v10, v9, v11

    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v9}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    invoke-virtual {v8}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    add-long/2addr v12, v8

    const-wide/16 v15, 0x0

    move-object v9, v14

    move-object v8, v14

    move-wide v14, v15

    invoke-direct/range {v9 .. v15}, Lde/lighti/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v6, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v5, v2, :cond_3

    new-instance v6, Lde/lighti/clipper/Path;

    invoke-direct {v6, v1}, Lde/lighti/clipper/Path;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lde/lighti/clipper/Point$LongPoint;

    new-instance v14, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v9}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v9

    invoke-virtual {v8}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v11

    sub-long v10, v9, v11

    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v9}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    invoke-virtual {v8}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    sub-long/2addr v12, v8

    const-wide/16 v15, 0x0

    move-object v9, v14

    move-object v8, v14

    move-wide v14, v15

    invoke-direct/range {v9 .. v15}, Lde/lighti/clipper/Point$LongPoint;-><init>(JJJ)V

    invoke-virtual {v6, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Lde/lighti/clipper/Paths;

    add-int v5, v2, p3

    add-int/lit8 v6, v1, 0x1

    mul-int v5, v5, v6

    invoke-direct {v0, v5}, Lde/lighti/clipper/Paths;-><init>(I)V

    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v6, v2, -0x1

    add-int v6, v6, p3

    if-ge v5, v6, :cond_6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v1, :cond_5

    new-instance v7, Lde/lighti/clipper/Path;

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Lde/lighti/clipper/Path;-><init>(I)V

    rem-int v8, v5, v2

    invoke-virtual {v3, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lde/lighti/clipper/Path;

    rem-int v10, v6, v1

    invoke-virtual {v9, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v5, 0x1

    rem-int/2addr v9, v2

    invoke-virtual {v3, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lde/lighti/clipper/Path;

    invoke-virtual {v11, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v9}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lde/lighti/clipper/Path;

    add-int/lit8 v6, v6, 0x1

    rem-int v10, v6, v1

    invoke-virtual {v9, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lde/lighti/clipper/Path;

    invoke-virtual {v8, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lde/lighti/clipper/Path;->orientation()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_4
    invoke-virtual {v0, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    return-object v0
.end method

.method public static minkowskiDiff(Lde/lighti/clipper/Path;Lde/lighti/clipper/Path;)Lde/lighti/clipper/Paths;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lde/lighti/clipper/DefaultClipper;->minkowski(Lde/lighti/clipper/Path;Lde/lighti/clipper/Path;ZZ)Lde/lighti/clipper/Paths;

    move-result-object p0

    new-instance p1, Lde/lighti/clipper/DefaultClipper;

    invoke-direct {p1}, Lde/lighti/clipper/DefaultClipper;-><init>()V

    sget-object v0, Lde/lighti/clipper/Clipper$PolyType;->SUBJECT:Lde/lighti/clipper/Clipper$PolyType;

    invoke-virtual {p1, p0, v0, v1}, Lde/lighti/clipper/ClipperBase;->addPaths(Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyType;Z)Z

    sget-object v0, Lde/lighti/clipper/Clipper$ClipType;->UNION:Lde/lighti/clipper/Clipper$ClipType;

    sget-object v1, Lde/lighti/clipper/Clipper$PolyFillType;->NON_ZERO:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {p1, v0, p0, v1, v1}, Lde/lighti/clipper/DefaultClipper;->execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z

    return-object p0
.end method

.method public static minkowskiSum(Lde/lighti/clipper/Path;Lde/lighti/clipper/Path;Z)Lde/lighti/clipper/Paths;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lde/lighti/clipper/DefaultClipper;->minkowski(Lde/lighti/clipper/Path;Lde/lighti/clipper/Path;ZZ)Lde/lighti/clipper/Paths;

    move-result-object p0

    new-instance p1, Lde/lighti/clipper/DefaultClipper;

    invoke-direct {p1}, Lde/lighti/clipper/DefaultClipper;-><init>()V

    sget-object p2, Lde/lighti/clipper/Clipper$PolyType;->SUBJECT:Lde/lighti/clipper/Clipper$PolyType;

    invoke-virtual {p1, p0, p2, v0}, Lde/lighti/clipper/ClipperBase;->addPaths(Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyType;Z)Z

    sget-object p2, Lde/lighti/clipper/Clipper$ClipType;->UNION:Lde/lighti/clipper/Clipper$ClipType;

    sget-object v0, Lde/lighti/clipper/Clipper$PolyFillType;->NON_ZERO:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {p1, p2, p0, v0, v0}, Lde/lighti/clipper/DefaultClipper;->execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z

    return-object p0
.end method

.method public static minkowskiSum(Lde/lighti/clipper/Path;Lde/lighti/clipper/Paths;Z)Lde/lighti/clipper/Paths;
    .locals 7

    new-instance v0, Lde/lighti/clipper/Paths;

    invoke-direct {v0}, Lde/lighti/clipper/Paths;-><init>()V

    new-instance v1, Lde/lighti/clipper/DefaultClipper;

    invoke-direct {v1}, Lde/lighti/clipper/DefaultClipper;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/lighti/clipper/Path;

    const/4 v5, 0x1

    invoke-static {p0, v4, v5, p2}, Lde/lighti/clipper/DefaultClipper;->minkowski(Lde/lighti/clipper/Path;Lde/lighti/clipper/Path;ZZ)Lde/lighti/clipper/Paths;

    move-result-object v4

    sget-object v6, Lde/lighti/clipper/Clipper$PolyType;->SUBJECT:Lde/lighti/clipper/Clipper$PolyType;

    invoke-virtual {v1, v4, v6, v5}, Lde/lighti/clipper/ClipperBase;->addPaths(Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyType;Z)Z

    if-eqz p2, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/lighti/clipper/Path;

    invoke-virtual {p0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v4, v6}, Lde/lighti/clipper/Path;->TranslatePath(Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path;

    move-result-object v4

    sget-object v6, Lde/lighti/clipper/Clipper$PolyType;->CLIP:Lde/lighti/clipper/Clipper$PolyType;

    invoke-virtual {v1, v4, v6, v5}, Lde/lighti/clipper/ClipperBase;->addPath(Lde/lighti/clipper/Path;Lde/lighti/clipper/Clipper$PolyType;Z)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lde/lighti/clipper/Clipper$ClipType;->UNION:Lde/lighti/clipper/Clipper$ClipType;

    sget-object p1, Lde/lighti/clipper/Clipper$PolyFillType;->NON_ZERO:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {v1, p0, v0, p1, p1}, Lde/lighti/clipper/DefaultClipper;->execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z

    return-object v0
.end method

.method private static poly2ContainsPoly1(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;)Z
    .locals 3

    move-object v0, p0

    :cond_0
    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-static {v1, p1}, Lde/lighti/clipper/DefaultClipper;->isPointInPolygon(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Path$OutPt;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_2

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    iget-object v0, v0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-ne v0, p0, :cond_0

    return v2
.end method

.method private processEdgesAtTopOfScanbeam(J)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    sget-object v3, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v4, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "processEdgesAtTopOfScanbeam"

    invoke-virtual {v3, v5, v6}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v3, v0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    :goto_1
    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_b

    long-to-double v8, v1

    invoke-virtual {v3, v8, v9}, Lde/lighti/clipper/Edge;->isMaxima(D)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getMaximaPairEx()Lde/lighti/clipper/Edge;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lde/lighti/clipper/Edge;->isHorizontal()Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_2

    :cond_0
    const/4 v10, 0x0

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v10, 0x1

    :cond_2
    :goto_3
    if-eqz v10, :cond_5

    iget-boolean v5, v0, Lde/lighti/clipper/DefaultClipper;->strictlySimple:Z

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    invoke-direct {v0, v7, v8}, Lde/lighti/clipper/DefaultClipper;->insertMaxima(J)V

    :cond_3
    iget-object v5, v3, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    invoke-direct {v0, v3}, Lde/lighti/clipper/DefaultClipper;->doMaxima(Lde/lighti/clipper/Edge;)V

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    iget-object v3, v5, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v8, v9}, Lde/lighti/clipper/Edge;->isIntermediate(D)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v3, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->isHorizontal()Z

    move-result v8

    if-eqz v8, :cond_7

    new-array v5, v5, [Lde/lighti/clipper/Edge;

    aput-object v3, v5, v7

    invoke-direct {v0, v5}, Lde/lighti/clipper/DefaultClipper;->updateEdgeIntoAEL([Lde/lighti/clipper/Edge;)V

    aget-object v3, v5, v7

    iget v5, v3, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v5, :cond_6

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-direct {v0, v3, v5}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    :cond_6
    invoke-direct {v0, v3}, Lde/lighti/clipper/DefaultClipper;->addEdgeToSEL(Lde/lighti/clipper/Edge;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-static {v3, v1, v2}, Lde/lighti/clipper/Edge;->topX(Lde/lighti/clipper/Edge;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Lde/lighti/clipper/Point;->setX(Ljava/lang/Number;)V

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Lde/lighti/clipper/Point;->setY(Ljava/lang/Number;)V

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    cmp-long v5, v7, v1

    if-nez v5, :cond_8

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    :goto_4
    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getZ()J

    move-result-wide v7

    :goto_5
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Lde/lighti/clipper/Point;->setZ(Ljava/lang/Number;)V

    goto :goto_6

    :cond_8
    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    cmp-long v5, v7, v1

    if-nez v5, :cond_9

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    goto :goto_4

    :cond_9
    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    const-wide/16 v7, 0x0

    goto :goto_5

    :goto_6
    iget-boolean v5, v0, Lde/lighti/clipper/DefaultClipper;->strictlySimple:Z

    if-eqz v5, :cond_a

    iget-object v5, v3, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iget v7, v3, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v7, :cond_a

    iget v7, v3, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v7, :cond_a

    if-eqz v5, :cond_a

    iget v7, v5, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v7, :cond_a

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v9

    invoke-virtual {v9}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v9

    cmp-long v11, v7, v9

    if-nez v11, :cond_a

    iget v7, v5, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v7, :cond_a

    new-instance v7, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v8

    invoke-direct {v7, v8}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-direct {v0, v7, v5, v3}, Lde/lighti/clipper/DefaultClipper;->setZ(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    invoke-direct {v0, v5, v7}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v5

    invoke-direct {v0, v3, v7}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v8

    invoke-direct {v0, v5, v8, v7}, Lde/lighti/clipper/DefaultClipper;->addJoin(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)V

    :cond_a
    iget-object v3, v3, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto/16 :goto_1

    :cond_b
    invoke-direct/range {p0 .. p0}, Lde/lighti/clipper/DefaultClipper;->processHorizontals()V

    const/4 v3, 0x0

    iput-object v3, v0, Lde/lighti/clipper/DefaultClipper;->maxima:Lde/lighti/clipper/ClipperBase$Maxima;

    iget-object v8, v0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    :goto_7
    if-eqz v8, :cond_f

    long-to-double v9, v1

    invoke-virtual {v8, v9, v10}, Lde/lighti/clipper/Edge;->isIntermediate(D)Z

    move-result v9

    if-eqz v9, :cond_e

    iget v9, v8, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v9, :cond_c

    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v9

    goto :goto_8

    :cond_c
    move-object v9, v3

    :goto_8
    new-array v10, v5, [Lde/lighti/clipper/Edge;

    aput-object v8, v10, v7

    invoke-direct {v0, v10}, Lde/lighti/clipper/DefaultClipper;->updateEdgeIntoAEL([Lde/lighti/clipper/Edge;)V

    aget-object v8, v10, v7

    iget-object v10, v8, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iget-object v11, v8, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v12}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v14

    invoke-virtual {v14}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-nez v16, :cond_d

    invoke-virtual {v10}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v12}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v14

    invoke-virtual {v14}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-nez v16, :cond_d

    if-eqz v9, :cond_d

    iget v12, v10, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v12, :cond_d

    invoke-virtual {v10}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v12}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    invoke-virtual {v10}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v14

    invoke-virtual {v14}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-lez v16, :cond_d

    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v13

    invoke-virtual {v10}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v14

    invoke-virtual {v10}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v15

    invoke-static {v12, v13, v14, v15}, Lde/lighti/clipper/Point;->slopesEqual(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result v12

    if-eqz v12, :cond_d

    iget v12, v8, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v12, :cond_d

    iget v12, v10, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v12, :cond_d

    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v10

    :goto_9
    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v11

    invoke-direct {v0, v9, v10, v11}, Lde/lighti/clipper/DefaultClipper;->addJoin(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)V

    goto :goto_a

    :cond_d
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v10}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v12

    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v10}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v14

    cmp-long v10, v12, v14

    if-nez v10, :cond_e

    invoke-virtual {v11}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v10}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v10}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    cmp-long v10, v12, v14

    if-nez v10, :cond_e

    if-eqz v9, :cond_e

    iget v10, v11, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v10, :cond_e

    invoke-virtual {v11}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v10}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v12

    invoke-virtual {v11}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v10}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v14

    cmp-long v10, v12, v14

    if-lez v10, :cond_e

    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v10

    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v12

    invoke-virtual {v11}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v13

    invoke-virtual {v11}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v14

    invoke-static {v10, v12, v13, v14}, Lde/lighti/clipper/Point;->slopesEqual(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result v10

    if-eqz v10, :cond_e

    iget v10, v8, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v10, :cond_e

    iget v10, v11, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v10, :cond_e

    invoke-virtual {v8}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v10

    invoke-direct {v0, v11, v10}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v10

    goto :goto_9

    :cond_e
    :goto_a
    iget-object v8, v8, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto/16 :goto_7

    :cond_f
    sget-object v1, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Ljava/util/logging/Logger;->exiting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processHorizontal(Lde/lighti/clipper/Edge;)V
    .locals 24

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    sget-object v1, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v2, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "isHorizontal"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    new-array v11, v10, [Lde/lighti/clipper/Clipper$Direction;

    new-array v12, v10, [J

    new-array v13, v10, [J

    iget v1, v0, Lde/lighti/clipper/Edge;->windDelta:I

    const/4 v14, 0x0

    if-nez v1, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    :goto_0
    invoke-static {v0, v11, v12, v13}, Lde/lighti/clipper/DefaultClipper;->getHorzDirection(Lde/lighti/clipper/Edge;[Lde/lighti/clipper/Clipper$Direction;[J[J)V

    move-object v7, v0

    :goto_1
    iget-object v1, v7, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lde/lighti/clipper/Edge;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v7, v7, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    goto :goto_1

    :cond_1
    iget-object v1, v7, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v7}, Lde/lighti/clipper/Edge;->getMaximaPair()Lde/lighti/clipper/Edge;

    move-result-object v1

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object v8, v2

    :goto_2
    iget-object v1, v9, Lde/lighti/clipper/DefaultClipper;->maxima:Lde/lighti/clipper/ClipperBase$Maxima;

    if-eqz v1, :cond_6

    aget-object v3, v11, v14

    sget-object v4, Lde/lighti/clipper/Clipper$Direction;->LEFT_TO_RIGHT:Lde/lighti/clipper/Clipper$Direction;

    if-ne v3, v4, :cond_4

    :goto_3
    if-eqz v1, :cond_3

    iget-wide v3, v1, Lde/lighti/clipper/ClipperBase$Maxima;->x:J

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v16, v3, v5

    if-gtz v16, :cond_3

    iget-object v1, v1, Lde/lighti/clipper/ClipperBase$Maxima;->next:Lde/lighti/clipper/ClipperBase$Maxima;

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_6

    iget-wide v3, v1, Lde/lighti/clipper/ClipperBase$Maxima;->x:J

    invoke-virtual {v7}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v16, v3, v5

    if-ltz v16, :cond_6

    goto :goto_5

    :cond_4
    :goto_4
    iget-object v3, v1, Lde/lighti/clipper/ClipperBase$Maxima;->next:Lde/lighti/clipper/ClipperBase$Maxima;

    if-eqz v3, :cond_5

    iget-wide v3, v3, Lde/lighti/clipper/ClipperBase$Maxima;->x:J

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v16, v3, v5

    if-gez v16, :cond_5

    iget-object v1, v1, Lde/lighti/clipper/ClipperBase$Maxima;->next:Lde/lighti/clipper/ClipperBase$Maxima;

    goto :goto_4

    :cond_5
    iget-wide v3, v1, Lde/lighti/clipper/ClipperBase$Maxima;->x:J

    invoke-virtual {v7}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v16, v3, v5

    if-gtz v16, :cond_6

    :goto_5
    move-object v5, v0

    goto :goto_6

    :cond_6
    move-object v5, v0

    move-object v2, v1

    :goto_6
    if-ne v5, v7, :cond_7

    const/16 v16, 0x1

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    :goto_7
    aget-object v0, v11, v14

    invoke-virtual {v5, v0}, Lde/lighti/clipper/Edge;->getNextInAEL(Lde/lighti/clipper/Clipper$Direction;)Lde/lighti/clipper/Edge;

    move-result-object v0

    move-object v6, v0

    :goto_8
    if-eqz v6, :cond_1a

    if-eqz v2, :cond_b

    aget-object v0, v11, v14

    sget-object v1, Lde/lighti/clipper/Clipper$Direction;->LEFT_TO_RIGHT:Lde/lighti/clipper/Clipper$Direction;

    if-ne v0, v1, :cond_9

    :goto_9
    if-eqz v2, :cond_b

    iget-wide v0, v2, Lde/lighti/clipper/ClipperBase$Maxima;->x:J

    invoke-virtual {v6}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v17, v0, v3

    if-gez v17, :cond_b

    iget v0, v5, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_8

    if-nez v15, :cond_8

    new-instance v0, Lde/lighti/clipper/Point$LongPoint;

    iget-wide v3, v2, Lde/lighti/clipper/ClipperBase$Maxima;->x:J

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    move-object/from16 v18, v11

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-direct {v0, v3, v4, v10, v11}, Lde/lighti/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-direct {v9, v5, v0}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    goto :goto_a

    :cond_8
    move-object/from16 v18, v11

    :goto_a
    iget-object v2, v2, Lde/lighti/clipper/ClipperBase$Maxima;->next:Lde/lighti/clipper/ClipperBase$Maxima;

    move-object/from16 v11, v18

    const/4 v10, 0x1

    goto :goto_9

    :cond_9
    move-object/from16 v18, v11

    :goto_b
    if-eqz v2, :cond_c

    iget-wide v0, v2, Lde/lighti/clipper/ClipperBase$Maxima;->x:J

    invoke-virtual {v6}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long v10, v0, v3

    if-lez v10, :cond_c

    iget v0, v5, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_a

    if-nez v15, :cond_a

    new-instance v0, Lde/lighti/clipper/Point$LongPoint;

    iget-wide v3, v2, Lde/lighti/clipper/ClipperBase$Maxima;->x:J

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-direct {v0, v3, v4, v10, v11}, Lde/lighti/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-direct {v9, v5, v0}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    :cond_a
    iget-object v2, v2, Lde/lighti/clipper/ClipperBase$Maxima;->prev:Lde/lighti/clipper/ClipperBase$Maxima;

    goto :goto_b

    :cond_b
    move-object/from16 v18, v11

    :cond_c
    move-object v10, v2

    aget-object v0, v18, v14

    sget-object v1, Lde/lighti/clipper/Clipper$Direction;->LEFT_TO_RIGHT:Lde/lighti/clipper/Clipper$Direction;

    if-ne v0, v1, :cond_e

    invoke-virtual {v6}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    aget-wide v19, v13, v14

    cmp-long v0, v2, v19

    if-gtz v0, :cond_d

    goto :goto_d

    :cond_d
    :goto_c
    move/from16 v19, v15

    goto :goto_e

    :cond_e
    :goto_d
    aget-object v0, v18, v14

    sget-object v2, Lde/lighti/clipper/Clipper$Direction;->RIGHT_TO_LEFT:Lde/lighti/clipper/Clipper$Direction;

    if-ne v0, v2, :cond_f

    invoke-virtual {v6}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    aget-wide v19, v12, v14

    cmp-long v0, v2, v19

    if-gez v0, :cond_f

    goto :goto_c

    :cond_f
    invoke-virtual {v6}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v19

    cmp-long v0, v2, v19

    if-nez v0, :cond_10

    iget-object v0, v5, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    if-eqz v0, :cond_10

    iget-wide v2, v6, Lde/lighti/clipper/Edge;->deltaX:D

    move/from16 v19, v15

    iget-wide v14, v0, Lde/lighti/clipper/Edge;->deltaX:D

    cmpg-double v0, v2, v14

    if-gez v0, :cond_11

    :goto_e
    move-object v0, v5

    move-object/from16 v20, v7

    move-object v2, v10

    const/4 v1, 0x0

    move-object v10, v8

    goto/16 :goto_14

    :cond_10
    move/from16 v19, v15

    :cond_11
    iget v0, v5, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_16

    if-nez v19, :cond_16

    const/4 v0, 0x0

    aget-object v2, v18, v0

    invoke-virtual {v6}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    if-ne v2, v1, :cond_12

    invoke-direct {v9, v0, v5, v6}, Lde/lighti/clipper/DefaultClipper;->setZ(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    goto :goto_f

    :cond_12
    invoke-direct {v9, v0, v6, v5}, Lde/lighti/clipper/DefaultClipper;->setZ(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    :goto_f
    invoke-virtual {v6}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {v9, v5, v0}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v14

    iget-object v0, v9, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    move-object v15, v0

    :goto_10
    if-eqz v15, :cond_15

    iget v0, v15, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_13

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v15}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v20

    invoke-virtual {v15}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v22

    move-object/from16 v0, p0

    move-object/from16 p1, v5

    move-object v11, v6

    move-wide/from16 v5, v20

    move-object/from16 v20, v7

    move-object/from16 v21, v10

    move-object v10, v8

    move-wide/from16 v7, v22

    invoke-direct/range {v0 .. v8}, Lde/lighti/clipper/DefaultClipper;->doHorzSegmentsOverlap(JJJJ)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {v9, v15}, Lde/lighti/clipper/DefaultClipper;->getLastOutPt(Lde/lighti/clipper/Edge;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v0

    invoke-virtual {v15}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v0, v14, v1}, Lde/lighti/clipper/DefaultClipper;->addJoin(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)V

    goto :goto_11

    :cond_13
    move-object/from16 p1, v5

    move-object v11, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v10

    move-object v10, v8

    :cond_14
    :goto_11
    iget-object v15, v15, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    move-object/from16 v5, p1

    move-object v8, v10

    move-object v6, v11

    move-object/from16 v7, v20

    move-object/from16 v10, v21

    goto :goto_10

    :cond_15
    move-object/from16 p1, v5

    move-object v11, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v10

    move-object v10, v8

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {v9, v14, v0}, Lde/lighti/clipper/DefaultClipper;->addGhostJoin(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)V

    goto :goto_12

    :cond_16
    move-object/from16 p1, v5

    move-object v11, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v10

    move-object v10, v8

    :goto_12
    if-ne v11, v10, :cond_18

    if-eqz v16, :cond_18

    move-object/from16 v0, p1

    iget v1, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_17

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v0, v10, v1}, Lde/lighti/clipper/DefaultClipper;->addLocalMaxPoly(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V

    :cond_17
    invoke-virtual {v9, v0}, Lde/lighti/clipper/ClipperBase;->deleteFromAEL(Lde/lighti/clipper/Edge;)V

    invoke-virtual {v9, v10}, Lde/lighti/clipper/ClipperBase;->deleteFromAEL(Lde/lighti/clipper/Edge;)V

    return-void

    :cond_18
    move-object/from16 v0, p1

    const/4 v1, 0x0

    aget-object v2, v18, v1

    sget-object v3, Lde/lighti/clipper/Clipper$Direction;->LEFT_TO_RIGHT:Lde/lighti/clipper/Clipper$Direction;

    if-ne v2, v3, :cond_19

    new-instance v2, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v11}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lde/lighti/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-direct {v9, v0, v11, v2}, Lde/lighti/clipper/DefaultClipper;->intersectEdges(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V

    goto :goto_13

    :cond_19
    new-instance v2, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v11}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lde/lighti/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-direct {v9, v11, v0, v2}, Lde/lighti/clipper/DefaultClipper;->intersectEdges(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V

    :goto_13
    const/4 v1, 0x0

    aget-object v2, v18, v1

    invoke-virtual {v11, v2}, Lde/lighti/clipper/Edge;->getNextInAEL(Lde/lighti/clipper/Clipper$Direction;)Lde/lighti/clipper/Edge;

    move-result-object v6

    invoke-virtual {v9, v0, v11}, Lde/lighti/clipper/ClipperBase;->swapPositionsInAEL(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    move-object v5, v0

    move-object v8, v10

    move-object/from16 v11, v18

    move/from16 v15, v19

    move-object/from16 v7, v20

    move-object/from16 v2, v21

    const/4 v10, 0x1

    const/4 v14, 0x0

    goto/16 :goto_8

    :cond_1a
    move-object v0, v5

    move-object/from16 v20, v7

    move-object v10, v8

    move-object/from16 v18, v11

    move/from16 v19, v15

    const/4 v1, 0x0

    :goto_14
    iget-object v3, v0, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->isHorizontal()Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_15

    :cond_1b
    const/4 v3, 0x1

    new-array v4, v3, [Lde/lighti/clipper/Edge;

    aput-object v0, v4, v1

    invoke-direct {v9, v4}, Lde/lighti/clipper/DefaultClipper;->updateEdgeIntoAEL([Lde/lighti/clipper/Edge;)V

    aget-object v5, v4, v1

    iget v0, v5, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v0, :cond_1c

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {v9, v5, v0}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    :cond_1c
    move-object/from16 v1, v18

    invoke-static {v5, v1, v12, v13}, Lde/lighti/clipper/DefaultClipper;->getHorzDirection(Lde/lighti/clipper/Edge;[Lde/lighti/clipper/Clipper$Direction;[J[J)V

    move-object v11, v1

    move-object v8, v10

    move/from16 v15, v19

    move-object/from16 v7, v20

    const/4 v10, 0x1

    const/4 v14, 0x0

    goto/16 :goto_6

    :cond_1d
    :goto_15
    iget-object v1, v0, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    if-eqz v1, :cond_21

    iget v1, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_20

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lde/lighti/clipper/Edge;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {v9, v2}, Lde/lighti/clipper/DefaultClipper;->updateEdgeIntoAEL([Lde/lighti/clipper/Edge;)V

    aget-object v0, v2, v3

    iget v2, v0, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v2, :cond_1e

    return-void

    :cond_1e
    iget-object v2, v0, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iget-object v3, v0, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1f

    invoke-virtual {v2}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_1f

    iget v4, v2, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v4, :cond_1f

    iget v4, v2, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v4, :cond_1f

    invoke-virtual {v2}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    invoke-virtual {v2}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_1f

    invoke-static {v0, v2}, Lde/lighti/clipper/Edge;->slopesEqual(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-direct {v9, v2, v3}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v2

    :goto_16
    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {v9, v1, v2, v0}, Lde/lighti/clipper/DefaultClipper;->addJoin(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)V

    goto :goto_17

    :cond_1f
    if-eqz v3, :cond_23

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_23

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_23

    iget v2, v3, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v2, :cond_23

    iget v2, v3, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v2, :cond_23

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_23

    invoke-static {v0, v3}, Lde/lighti/clipper/Edge;->slopesEqual(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-direct {v9, v3, v2}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v2

    goto :goto_16

    :cond_20
    const/4 v1, 0x1

    new-array v1, v1, [Lde/lighti/clipper/Edge;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {v9, v1}, Lde/lighti/clipper/DefaultClipper;->updateEdgeIntoAEL([Lde/lighti/clipper/Edge;)V

    goto :goto_17

    :cond_21
    iget v1, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v1, :cond_22

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Lde/lighti/clipper/DefaultClipper;->addOutPt(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path$OutPt;

    :cond_22
    invoke-virtual {v9, v0}, Lde/lighti/clipper/ClipperBase;->deleteFromAEL(Lde/lighti/clipper/Edge;)V

    :cond_23
    :goto_17
    return-void
.end method

.method private processHorizontals()V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lde/lighti/clipper/Edge;

    :goto_0
    invoke-direct {p0, v0}, Lde/lighti/clipper/DefaultClipper;->deleteFromSEL([Lde/lighti/clipper/Edge;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lde/lighti/clipper/DefaultClipper;->processHorizontal(Lde/lighti/clipper/Edge;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processIntersectList()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/lighti/clipper/DefaultClipper$IntersectNode;

    iget-object v2, v1, Lde/lighti/clipper/DefaultClipper$IntersectNode;->edge1:Lde/lighti/clipper/Edge;

    iget-object v3, v1, Lde/lighti/clipper/DefaultClipper$IntersectNode;->Edge2:Lde/lighti/clipper/Edge;

    invoke-virtual {v1}, Lde/lighti/clipper/DefaultClipper$IntersectNode;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lde/lighti/clipper/DefaultClipper;->intersectEdges(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V

    iget-object v2, v1, Lde/lighti/clipper/DefaultClipper$IntersectNode;->edge1:Lde/lighti/clipper/Edge;

    iget-object v1, v1, Lde/lighti/clipper/DefaultClipper$IntersectNode;->Edge2:Lde/lighti/clipper/Edge;

    invoke-virtual {p0, v2, v1}, Lde/lighti/clipper/ClipperBase;->swapPositionsInAEL(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private processIntersections(J)Z
    .locals 3

    sget-object v0, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "processIntersections"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lde/lighti/clipper/DefaultClipper;->buildIntersectList(J)V

    iget-object p1, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq p1, v1, :cond_3

    invoke-direct {p0}, Lde/lighti/clipper/DefaultClipper;->fixupIntersectionOrder()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    invoke-direct {p0}, Lde/lighti/clipper/DefaultClipper;->processIntersectList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v0, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    return v1

    :catch_0
    move-exception p1

    iput-object v0, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    iget-object p2, p0, Lde/lighti/clipper/DefaultClipper;->intersectList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "ProcessIntersections error"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private setHoleState(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Path$OutRec;)V
    .locals 4

    iget-object p1, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p1, :cond_2

    iget v2, p1, Lde/lighti/clipper/Edge;->outIdx:I

    if-ltz v2, :cond_1

    iget v3, p1, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    move-object v1, p1

    goto :goto_1

    :cond_0
    iget v3, v1, Lde/lighti/clipper/Edge;->outIdx:I

    if-ne v3, v2, :cond_1

    move-object v1, v0

    :cond_1
    :goto_1
    iget-object p1, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    iput-object v0, p2, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p2, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    iget v0, v1, Lde/lighti/clipper/Edge;->outIdx:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/lighti/clipper/Path$OutRec;

    iput-object p1, p2, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    iget-boolean p1, p1, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    xor-int/lit8 p1, p1, 0x1

    goto :goto_2

    :goto_3
    return-void
.end method

.method private setZ(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V
    .locals 6

    invoke-virtual {p1}, Lde/lighti/clipper/Point$LongPoint;->getZ()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->zFillFunction:Lde/lighti/clipper/Clipper$ZFillCallback;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Lde/lighti/clipper/Point$LongPoint;->getZ()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lde/lighti/clipper/Point;->setZ(Ljava/lang/Number;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->zFillFunction:Lde/lighti/clipper/Clipper$ZFillCallback;

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {p3}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {p3}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lde/lighti/clipper/Clipper$ZFillCallback;->zFill(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static simplifyPolygon(Lde/lighti/clipper/Path;)Lde/lighti/clipper/Paths;
    .locals 1

    sget-object v0, Lde/lighti/clipper/Clipper$PolyFillType;->EVEN_ODD:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-static {p0, v0}, Lde/lighti/clipper/DefaultClipper;->simplifyPolygon(Lde/lighti/clipper/Path;Lde/lighti/clipper/Clipper$PolyFillType;)Lde/lighti/clipper/Paths;

    move-result-object p0

    return-object p0
.end method

.method public static simplifyPolygon(Lde/lighti/clipper/Path;Lde/lighti/clipper/Clipper$PolyFillType;)Lde/lighti/clipper/Paths;
    .locals 4

    new-instance v0, Lde/lighti/clipper/Paths;

    invoke-direct {v0}, Lde/lighti/clipper/Paths;-><init>()V

    new-instance v1, Lde/lighti/clipper/DefaultClipper;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lde/lighti/clipper/DefaultClipper;-><init>(I)V

    sget-object v2, Lde/lighti/clipper/Clipper$PolyType;->SUBJECT:Lde/lighti/clipper/Clipper$PolyType;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lde/lighti/clipper/ClipperBase;->addPath(Lde/lighti/clipper/Path;Lde/lighti/clipper/Clipper$PolyType;Z)Z

    sget-object p0, Lde/lighti/clipper/Clipper$ClipType;->UNION:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v1, p0, v0, p1, p1}, Lde/lighti/clipper/DefaultClipper;->execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z

    return-object v0
.end method

.method public static simplifyPolygons(Lde/lighti/clipper/Paths;)Lde/lighti/clipper/Paths;
    .locals 1

    sget-object v0, Lde/lighti/clipper/Clipper$PolyFillType;->EVEN_ODD:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-static {p0, v0}, Lde/lighti/clipper/DefaultClipper;->simplifyPolygons(Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyFillType;)Lde/lighti/clipper/Paths;

    move-result-object p0

    return-object p0
.end method

.method public static simplifyPolygons(Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyFillType;)Lde/lighti/clipper/Paths;
    .locals 4

    new-instance v0, Lde/lighti/clipper/Paths;

    invoke-direct {v0}, Lde/lighti/clipper/Paths;-><init>()V

    new-instance v1, Lde/lighti/clipper/DefaultClipper;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lde/lighti/clipper/DefaultClipper;-><init>(I)V

    sget-object v2, Lde/lighti/clipper/Clipper$PolyType;->SUBJECT:Lde/lighti/clipper/Clipper$PolyType;

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v2, v3}, Lde/lighti/clipper/ClipperBase;->addPaths(Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyType;Z)Z

    sget-object p0, Lde/lighti/clipper/Clipper$ClipType;->UNION:Lde/lighti/clipper/Clipper$ClipType;

    invoke-virtual {v1, p0, v0, p1, p1}, Lde/lighti/clipper/DefaultClipper;->execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z

    return-object v0
.end method

.method private swapPositionsInSEL(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V
    .locals 3

    iget-object v0, p1, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    if-nez v0, :cond_0

    iget-object v1, p1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p2, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    if-nez v1, :cond_1

    iget-object v2, p2, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-ne v0, p2, :cond_4

    if-eqz v1, :cond_2

    iput-object p1, v1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    :cond_2
    iget-object v0, p1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    if-eqz v0, :cond_3

    iput-object p2, v0, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    :cond_3
    iput-object v0, p2, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    iput-object p1, p2, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    iput-object p2, p1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    iput-object v1, p1, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_4
    if-ne v1, p1, :cond_7

    if-eqz v0, :cond_5

    iput-object p2, v0, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    :cond_5
    iget-object v1, p2, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    if-eqz v1, :cond_6

    iput-object p1, v1, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    :cond_6
    iput-object v1, p1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    iput-object p2, p1, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    iput-object p1, p2, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    iput-object v0, p2, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    iput-object v1, p1, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    if-eqz v1, :cond_8

    iput-object p1, v1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    :cond_8
    iget-object v1, p2, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    iput-object v1, p1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    if-eqz v1, :cond_9

    iput-object p1, v1, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    :cond_9
    iput-object v0, p2, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    if-eqz v0, :cond_a

    iput-object p2, v0, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    :cond_a
    iput-object v2, p2, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    if-eqz v2, :cond_b

    iput-object p2, v2, Lde/lighti/clipper/Edge;->nextInSEL:Lde/lighti/clipper/Edge;

    :cond_b
    :goto_0
    iget-object v0, p1, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    if-nez v0, :cond_c

    iput-object p1, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    goto :goto_1

    :cond_c
    iget-object p1, p2, Lde/lighti/clipper/Edge;->prevInSEL:Lde/lighti/clipper/Edge;

    if-nez p1, :cond_d

    iput-object p2, p0, Lde/lighti/clipper/DefaultClipper;->sortedEdges:Lde/lighti/clipper/Edge;

    :cond_d
    :goto_1
    return-void
.end method

.method private updateEdgeIntoAEL([Lde/lighti/clipper/Edge;)V
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget-object v2, v1, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    if-eqz v2, :cond_3

    iget-object v3, v1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iget-object v4, v1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    iget v5, v1, Lde/lighti/clipper/Edge;->outIdx:I

    iput v5, v2, Lde/lighti/clipper/Edge;->outIdx:I

    if-eqz v3, :cond_0

    iput-object v2, v3, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    :goto_0
    if-eqz v4, :cond_1

    iput-object v2, v4, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    :cond_1
    iget-object v5, v1, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    iput-object v5, v2, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    iget v5, v1, Lde/lighti/clipper/Edge;->windDelta:I

    iput v5, v2, Lde/lighti/clipper/Edge;->windDelta:I

    iget v5, v1, Lde/lighti/clipper/Edge;->windCnt:I

    iput v5, v2, Lde/lighti/clipper/Edge;->windCnt:I

    iget v1, v1, Lde/lighti/clipper/Edge;->windCnt2:I

    iput v1, v2, Lde/lighti/clipper/Edge;->windCnt2:I

    aput-object v2, p1, v0

    new-instance p1, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-direct {p1, v0}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v2, p1}, Lde/lighti/clipper/Edge;->setCurrent(Lde/lighti/clipper/Point$LongPoint;)V

    iput-object v3, v2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iput-object v4, v2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    invoke-virtual {v2}, Lde/lighti/clipper/Edge;->isHorizontal()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lde/lighti/clipper/ClipperBase;->insertScanbeam(J)V

    :cond_2
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "UpdateEdgeIntoAEL: invalid call"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateOutPtIdxs(Lde/lighti/clipper/Path$OutRec;)V
    .locals 2

    invoke-virtual {p1}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v0

    :cond_0
    iget v1, p1, Lde/lighti/clipper/Path$OutRec;->Idx:I

    iput v1, v0, Lde/lighti/clipper/Path$OutPt;->idx:I

    iget-object v0, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {p1}, Lde/lighti/clipper/Path$OutRec;->getPoints()Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void
.end method

.method private updateWindingCount(Lde/lighti/clipper/Edge;)V
    .locals 7

    sget-object v0, Lde/lighti/clipper/DefaultClipper;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/DefaultClipper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateWindingCount"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    iget-object v2, p1, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    if-ne v1, v2, :cond_0

    iget v1, v0, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, v0, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    iget-object v0, p1, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    sget-object v3, Lde/lighti/clipper/Clipper$PolyType;->SUBJECT:Lde/lighti/clipper/Clipper$PolyType;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    :goto_1
    iget v3, p1, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v3, :cond_4

    sget-object v3, Lde/lighti/clipper/Clipper$PolyFillType;->NEGATIVE:Lde/lighti/clipper/Clipper$PolyFillType;

    if-ne v0, v3, :cond_3

    const/4 v0, -0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    :goto_2
    iput v0, p1, Lde/lighti/clipper/Edge;->windCnt:I

    goto :goto_3

    :cond_4
    iput v3, p1, Lde/lighti/clipper/Edge;->windCnt:I

    :goto_3
    iput v1, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    goto/16 :goto_7

    :cond_5
    iget v3, p1, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v3, :cond_6

    iget-object v3, p0, Lde/lighti/clipper/DefaultClipper;->clipType:Lde/lighti/clipper/Clipper$ClipType;

    sget-object v4, Lde/lighti/clipper/Clipper$ClipType;->UNION:Lde/lighti/clipper/Clipper$ClipType;

    if-eq v3, v4, :cond_6

    iput v2, p1, Lde/lighti/clipper/Edge;->windCnt:I

    :goto_4
    iget v3, v0, Lde/lighti/clipper/Edge;->windCnt2:I

    iput v3, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    iget-object v0, v0, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_7

    :cond_6
    iget-object v3, p0, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v4, p0, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {p1, v3, v4}, Lde/lighti/clipper/Edge;->isEvenOddFillType(Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget v3, p1, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v3, :cond_9

    iget-object v3, v0, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    const/4 v4, 0x1

    :goto_5
    if-eqz v3, :cond_8

    iget-object v5, v3, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    iget-object v6, v0, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    if-ne v5, v6, :cond_7

    iget v5, v3, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v5, :cond_7

    xor-int/lit8 v4, v4, 0x1

    :cond_7
    iget-object v3, v3, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    goto :goto_5

    :cond_8
    xor-int/lit8 v3, v4, 0x1

    :cond_9
    :goto_6
    iput v3, p1, Lde/lighti/clipper/Edge;->windCnt:I

    goto :goto_4

    :cond_a
    iget v3, v0, Lde/lighti/clipper/Edge;->windCnt:I

    iget v4, v0, Lde/lighti/clipper/Edge;->windDelta:I

    mul-int v5, v3, v4

    if-gez v5, :cond_d

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_c

    iget v3, v0, Lde/lighti/clipper/Edge;->windDelta:I

    iget v4, p1, Lde/lighti/clipper/Edge;->windDelta:I

    mul-int v3, v3, v4

    if-gez v3, :cond_b

    iget v3, v0, Lde/lighti/clipper/Edge;->windCnt:I

    goto :goto_6

    :cond_b
    iget v3, v0, Lde/lighti/clipper/Edge;->windCnt:I

    add-int/2addr v3, v4

    goto :goto_6

    :cond_c
    iget v3, p1, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v3, :cond_9

    const/4 v3, 0x1

    goto :goto_6

    :cond_d
    iget v5, p1, Lde/lighti/clipper/Edge;->windDelta:I

    if-nez v5, :cond_f

    if-gez v3, :cond_e

    sub-int/2addr v3, v2

    goto :goto_6

    :cond_e
    add-int/2addr v3, v2

    goto :goto_6

    :cond_f
    mul-int v4, v4, v5

    if-gez v4, :cond_10

    goto :goto_6

    :cond_10
    add-int/2addr v3, v5

    goto :goto_6

    :goto_7
    iget-object v3, p0, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iget-object v4, p0, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {p1, v3, v4}, Lde/lighti/clipper/Edge;->isEvenOddAltFillType(Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z

    move-result v3

    if-eqz v3, :cond_13

    :goto_8
    if-eq v0, p1, :cond_14

    iget v3, v0, Lde/lighti/clipper/Edge;->windDelta:I

    if-eqz v3, :cond_12

    iget v3, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    if-nez v3, :cond_11

    const/4 v3, 0x1

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    :goto_9
    iput v3, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    :cond_12
    iget-object v0, v0, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_8

    :cond_13
    :goto_a
    if-eq v0, p1, :cond_14

    iget v1, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    iget v2, v0, Lde/lighti/clipper/Edge;->windDelta:I

    add-int/2addr v1, v2

    iput v1, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    iget-object v0, v0, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_a

    :cond_14
    return-void
.end method


# virtual methods
.method public execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/Paths;)Z
    .locals 1

    sget-object v0, Lde/lighti/clipper/Clipper$PolyFillType;->EVEN_ODD:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {p0, p1, p2, v0, v0}, Lde/lighti/clipper/DefaultClipper;->execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z

    move-result p1

    return p1
.end method

.method public execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lde/lighti/clipper/ClipperBase;->hasOpenPaths:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->clear()V

    iput-object p3, p0, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iput-object p4, p0, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iput-object p1, p0, Lde/lighti/clipper/DefaultClipper;->clipType:Lde/lighti/clipper/Clipper$ClipType;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lde/lighti/clipper/DefaultClipper;->usingPolyTree:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lde/lighti/clipper/DefaultClipper;->executeInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lde/lighti/clipper/DefaultClipper;->buildResult(Lde/lighti/clipper/Paths;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    iget-object p2, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error: PolyTree struct is needed for open path clipping."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/PolyTree;)Z
    .locals 1

    sget-object v0, Lde/lighti/clipper/Clipper$PolyFillType;->EVEN_ODD:Lde/lighti/clipper/Clipper$PolyFillType;

    invoke-virtual {p0, p1, p2, v0, v0}, Lde/lighti/clipper/DefaultClipper;->execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/PolyTree;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z

    move-result p1

    return p1
.end method

.method public execute(Lde/lighti/clipper/Clipper$ClipType;Lde/lighti/clipper/PolyTree;Lde/lighti/clipper/Clipper$PolyFillType;Lde/lighti/clipper/Clipper$PolyFillType;)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lde/lighti/clipper/DefaultClipper;->subjFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iput-object p4, p0, Lde/lighti/clipper/DefaultClipper;->clipFillType:Lde/lighti/clipper/Clipper$PolyFillType;

    iput-object p1, p0, Lde/lighti/clipper/DefaultClipper;->clipType:Lde/lighti/clipper/Clipper$ClipType;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lde/lighti/clipper/DefaultClipper;->usingPolyTree:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lde/lighti/clipper/DefaultClipper;->executeInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lde/lighti/clipper/DefaultClipper;->buildResult2(Lde/lighti/clipper/PolyTree;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    iget-object p2, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
