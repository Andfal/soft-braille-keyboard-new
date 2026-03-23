.class public abstract Lde/lighti/clipper/ClipperBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/lighti/clipper/Clipper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/lighti/clipper/ClipperBase$Maxima;,
        Lde/lighti/clipper/ClipperBase$Scanbeam;,
        Lde/lighti/clipper/ClipperBase$LocalMinima;
    }
.end annotation


# static fields
.field private static final HI_RANGE:J = 0x3fffffffffffffffL

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final LOW_RANGE:J = 0x3fffffffL


# instance fields
.field protected activeEdges:Lde/lighti/clipper/Edge;

.field protected currentLM:Lde/lighti/clipper/ClipperBase$LocalMinima;

.field protected hasOpenPaths:Z

.field protected minimaList:Lde/lighti/clipper/ClipperBase$LocalMinima;

.field protected final polyOuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lde/lighti/clipper/Path$OutRec;",
            ">;"
        }
    .end annotation
.end field

.field protected final preserveCollinear:Z

.field protected scanbeam:Lde/lighti/clipper/ClipperBase$Scanbeam;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lde/lighti/clipper/Clipper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lde/lighti/clipper/ClipperBase;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    iput-boolean p1, p0, Lde/lighti/clipper/ClipperBase;->preserveCollinear:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lde/lighti/clipper/ClipperBase;->minimaList:Lde/lighti/clipper/ClipperBase$LocalMinima;

    iput-object p1, p0, Lde/lighti/clipper/ClipperBase;->currentLM:Lde/lighti/clipper/ClipperBase$LocalMinima;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lde/lighti/clipper/ClipperBase;->hasOpenPaths:Z

    return-void
.end method

.method private disposeLocalMinimaList()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->minimaList:Lde/lighti/clipper/ClipperBase$LocalMinima;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->next:Lde/lighti/clipper/ClipperBase$LocalMinima;

    iput-object v0, p0, Lde/lighti/clipper/ClipperBase;->minimaList:Lde/lighti/clipper/ClipperBase$LocalMinima;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lde/lighti/clipper/ClipperBase;->currentLM:Lde/lighti/clipper/ClipperBase$LocalMinima;

    return-void
.end method

.method private static initEdge(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V
    .locals 0

    iput-object p1, p0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    iput-object p2, p0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    new-instance p1, Lde/lighti/clipper/Point$LongPoint;

    invoke-direct {p1, p3}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p0, p1}, Lde/lighti/clipper/Edge;->setCurrent(Lde/lighti/clipper/Point$LongPoint;)V

    const/4 p1, -0x1

    iput p1, p0, Lde/lighti/clipper/Edge;->outIdx:I

    return-void
.end method

.method private static initEdge2(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Clipper$PolyType;)V
    .locals 5

    invoke-virtual {p0}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    iget-object v2, p0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {v2}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    cmp-long v4, v0, v2

    new-instance v0, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {p0}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    if-ltz v4, :cond_0

    invoke-direct {v0, v1}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p0, v0}, Lde/lighti/clipper/Edge;->setBot(Lde/lighti/clipper/Point$LongPoint;)V

    new-instance v0, Lde/lighti/clipper/Point$LongPoint;

    iget-object v1, p0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {v1}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p0, v0}, Lde/lighti/clipper/Edge;->setTop(Lde/lighti/clipper/Point$LongPoint;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0, v1}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p0, v0}, Lde/lighti/clipper/Edge;->setTop(Lde/lighti/clipper/Point$LongPoint;)V

    new-instance v0, Lde/lighti/clipper/Point$LongPoint;

    iget-object v1, p0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {v1}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p0, v0}, Lde/lighti/clipper/Edge;->setBot(Lde/lighti/clipper/Point$LongPoint;)V

    :goto_0
    invoke-virtual {p0}, Lde/lighti/clipper/Edge;->updateDeltaX()V

    iput-object p1, p0, Lde/lighti/clipper/Edge;->polyTyp:Lde/lighti/clipper/Clipper$PolyType;

    return-void
.end method

.method private insertLocalMinima(Lde/lighti/clipper/ClipperBase$LocalMinima;)V
    .locals 7

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->minimaList:Lde/lighti/clipper/ClipperBase$LocalMinima;

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lde/lighti/clipper/ClipperBase;->minimaList:Lde/lighti/clipper/ClipperBase$LocalMinima;

    goto :goto_2

    :cond_0
    iget-wide v1, p1, Lde/lighti/clipper/ClipperBase$LocalMinima;->y:J

    iget-wide v3, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->y:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    iput-object v0, p1, Lde/lighti/clipper/ClipperBase$LocalMinima;->next:Lde/lighti/clipper/ClipperBase$LocalMinima;

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->next:Lde/lighti/clipper/ClipperBase$LocalMinima;

    if-eqz v1, :cond_2

    iget-wide v2, p1, Lde/lighti/clipper/ClipperBase$LocalMinima;->y:J

    iget-wide v4, v1, Lde/lighti/clipper/ClipperBase$LocalMinima;->y:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    iput-object v1, p1, Lde/lighti/clipper/ClipperBase$LocalMinima;->next:Lde/lighti/clipper/ClipperBase$LocalMinima;

    iput-object p1, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->next:Lde/lighti/clipper/ClipperBase$LocalMinima;

    :goto_2
    return-void
.end method

.method private isPreserveCollinear()Z
    .locals 1

    iget-boolean v0, p0, Lde/lighti/clipper/ClipperBase;->preserveCollinear:Z

    return v0
.end method

.method private processBound(Lde/lighti/clipper/Edge;Z)Lde/lighti/clipper/Edge;
    .locals 9

    iget v0, p1, Lde/lighti/clipper/Edge;->outIdx:I

    const-wide v1, -0x381006cc38732053L    # -3.4E38

    const/4 v3, -0x2

    if-ne v0, v3, :cond_7

    move-object v0, p1

    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    iget-object v5, v0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    iget-object v0, v0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_0
    :goto_1
    if-eq v0, p1, :cond_3

    iget-wide v3, v0, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v5, v3, v1

    if-nez v5, :cond_3

    iget-object v0, v0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v3

    iget-object v5, v0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    iget-object v0, v0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    goto :goto_2

    :cond_2
    :goto_3
    if-eq v0, p1, :cond_3

    iget-wide v3, v0, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v5, v3, v1

    if-nez v5, :cond_3

    iget-object v0, v0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    goto :goto_3

    :cond_3
    if-ne v0, p1, :cond_5

    if-eqz p2, :cond_4

    iget-object p1, v0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    goto :goto_5

    :cond_4
    iget-object p1, v0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    goto :goto_5

    :cond_5
    if-eqz p2, :cond_6

    iget-object p1, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    goto :goto_4

    :cond_6
    iget-object p1, p1, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    :goto_4
    new-instance v0, Lde/lighti/clipper/ClipperBase$LocalMinima;

    invoke-direct {v0, p0}, Lde/lighti/clipper/ClipperBase$LocalMinima;-><init>(Lde/lighti/clipper/ClipperBase;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->next:Lde/lighti/clipper/ClipperBase$LocalMinima;

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    iput-wide v2, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->y:J

    iput-object v1, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->leftBound:Lde/lighti/clipper/Edge;

    iput-object p1, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->rightBound:Lde/lighti/clipper/Edge;

    const/4 v1, 0x0

    iput v1, p1, Lde/lighti/clipper/Edge;->windDelta:I

    invoke-direct {p0, p1, p2}, Lde/lighti/clipper/ClipperBase;->processBound(Lde/lighti/clipper/Edge;Z)Lde/lighti/clipper/Edge;

    move-result-object p1

    invoke-direct {p0, v0}, Lde/lighti/clipper/ClipperBase;->insertLocalMinima(Lde/lighti/clipper/ClipperBase$LocalMinima;)V

    :goto_5
    return-object p1

    :cond_7
    iget-wide v4, p1, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v0, v4, v1

    if-nez v0, :cond_a

    if-eqz p2, :cond_8

    iget-object v0, p1, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    goto :goto_6

    :cond_8
    iget-object v0, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    :goto_6
    iget-wide v4, v0, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v6, v4, v1

    if-nez v6, :cond_9

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_a

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-eqz v0, :cond_a

    :goto_7
    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->reverseHorizontal()V

    :cond_a
    if-eqz p2, :cond_11

    move-object p2, p1

    :goto_8
    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    iget-object v0, p2, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_b

    iget-object v0, p2, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    iget v4, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-eq v4, v3, :cond_b

    move-object p2, v0

    goto :goto_8

    :cond_b
    iget-wide v4, p2, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v0, v4, v1

    if-nez v0, :cond_d

    iget-object v0, p2, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    iget v0, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-eq v0, v3, :cond_d

    move-object v0, p2

    :goto_9
    iget-object v3, v0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    iget-wide v4, v3, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v6, v4, v1

    if-nez v6, :cond_c

    move-object v0, v3

    goto :goto_9

    :cond_c
    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    iget-object v5, p2, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_d

    iget-object p2, v0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    :cond_d
    move-object v0, p1

    :goto_a
    if-eq v0, p2, :cond_f

    iget-object v3, v0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    iput-object v3, v0, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    iget-wide v3, v0, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v5, v3, v1

    if-nez v5, :cond_e

    if-eq v0, p1, :cond_e

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    iget-object v5, v0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_e

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->reverseHorizontal()V

    :cond_e
    iget-object v0, v0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    goto :goto_a

    :cond_f
    iget-wide v3, v0, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v5, v3, v1

    if-nez v5, :cond_10

    if-eq v0, p1, :cond_10

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    iget-object p1, v0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_10

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->reverseHorizontal()V

    :cond_10
    iget-object p1, p2, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    goto/16 :goto_e

    :cond_11
    move-object p2, p1

    :goto_b
    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    iget-object v0, p2, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_12

    iget-object v0, p2, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    iget v4, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-eq v4, v3, :cond_12

    move-object p2, v0

    goto :goto_b

    :cond_12
    iget-wide v4, p2, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v0, v4, v1

    if-nez v0, :cond_15

    iget-object v0, p2, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    iget v0, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-eq v0, v3, :cond_15

    move-object v0, p2

    :goto_c
    iget-object v3, v0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    iget-wide v4, v3, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v6, v4, v1

    if-nez v6, :cond_13

    move-object v0, v3

    goto :goto_c

    :cond_13
    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    iget-object v5, p2, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_14

    iget-object v3, v0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    iget-object v5, p2, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_15

    :cond_14
    iget-object p2, v0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    :cond_15
    move-object v0, p1

    :goto_d
    if-eq v0, p2, :cond_17

    iget-object v3, v0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    iput-object v3, v0, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    iget-wide v3, v0, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v5, v3, v1

    if-nez v5, :cond_16

    if-eq v0, p1, :cond_16

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    iget-object v5, v0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-eqz v7, :cond_16

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->reverseHorizontal()V

    :cond_16
    iget-object v0, v0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    goto :goto_d

    :cond_17
    iget-wide v3, v0, Lde/lighti/clipper/Edge;->deltaX:D

    cmpl-double v5, v3, v1

    if-nez v5, :cond_18

    if-eq v0, p1, :cond_18

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v1

    iget-object p1, v0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-eqz p1, :cond_18

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->reverseHorizontal()V

    :cond_18
    iget-object p1, p2, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    :goto_e
    return-object p1
.end method

.method private static rangeTest(Lde/lighti/clipper/Point$LongPoint;)V
    .locals 5

    invoke-virtual {p0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    const-wide/32 v2, 0x3fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    neg-long v0, v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    invoke-virtual {p0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    neg-long v0, v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    invoke-virtual {p0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    invoke-virtual {p0}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v0

    neg-long v0, v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    invoke-virtual {p0}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v0

    neg-long v0, v0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Coordinate outside allowed range"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static removeEdge(Lde/lighti/clipper/Edge;)Lde/lighti/clipper/Edge;
    .locals 2

    iget-object v0, p0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    iget-object v1, p0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    iput-object v1, v0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    iget-object v1, p0, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    iput-object v0, v1, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    const/4 v0, 0x0

    iput-object v0, p0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    return-object v1
.end method


# virtual methods
.method public addPath(Lde/lighti/clipper/Path;Lde/lighti/clipper/Clipper$PolyType;Z)Z
    .locals 11

    if-nez p3, :cond_1

    sget-object v0, Lde/lighti/clipper/Clipper$PolyType;->CLIP:Lde/lighti/clipper/Clipper$PolyType;

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "AddPath: Open paths must be subject."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    :goto_1
    if-lez v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-lez v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/lighti/clipper/Point$LongPoint;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_4

    const/4 v3, 0x2

    if-lt v0, v3, :cond_5

    :cond_4
    if-nez p3, :cond_6

    if-ge v0, v1, :cond_6

    :cond_5
    return v2

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_3
    if-gt v4, v0, :cond_7

    new-instance v5, Lde/lighti/clipper/Edge;

    invoke-direct {v5}, Lde/lighti/clipper/Edge;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/lighti/clipper/Edge;

    new-instance v5, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lde/lighti/clipper/Point$LongPoint;

    invoke-direct {v5, v6}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v4, v5}, Lde/lighti/clipper/Edge;->setCurrent(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/lighti/clipper/Point$LongPoint;

    invoke-static {v4}, Lde/lighti/clipper/ClipperBase;->rangeTest(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/lighti/clipper/Point$LongPoint;

    invoke-static {v4}, Lde/lighti/clipper/ClipperBase;->rangeTest(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/lighti/clipper/Edge;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/lighti/clipper/Edge;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lde/lighti/clipper/Edge;

    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lde/lighti/clipper/Point$LongPoint;

    invoke-static {v4, v5, v6, v7}, Lde/lighti/clipper/ClipperBase;->initEdge(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/lighti/clipper/Edge;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/lighti/clipper/Edge;

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lde/lighti/clipper/Edge;

    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/lighti/clipper/Point$LongPoint;

    invoke-static {v4, v5, v7, v0}, Lde/lighti/clipper/ClipperBase;->initEdge(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V

    :goto_4
    if-lt v6, v1, :cond_8

    invoke-virtual {p1, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/lighti/clipper/Point$LongPoint;

    invoke-static {v0}, Lde/lighti/clipper/ClipperBase;->rangeTest(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/lighti/clipper/Edge;

    add-int/lit8 v4, v6, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lde/lighti/clipper/Edge;

    add-int/lit8 v5, v6, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/lighti/clipper/Edge;

    invoke-virtual {p1, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lde/lighti/clipper/Point$LongPoint;

    invoke-static {v0, v4, v5, v7}, Lde/lighti/clipper/ClipperBase;->initEdge(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;Lde/lighti/clipper/Point$LongPoint;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_8
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lde/lighti/clipper/Edge;

    move-object v0, p1

    move-object v3, v0

    :cond_9
    :goto_5
    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    iget-object v5, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {v5}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    if-nez p3, :cond_a

    iget-object v4, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    :cond_a
    iget-object v3, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    if-ne p1, v3, :cond_b

    goto :goto_7

    :cond_b
    if-ne p1, v0, :cond_c

    move-object v0, v3

    :cond_c
    invoke-static {p1}, Lde/lighti/clipper/ClipperBase;->removeEdge(Lde/lighti/clipper/Edge;)Lde/lighti/clipper/Edge;

    move-result-object v3

    :goto_6
    move-object p1, v3

    goto :goto_5

    :cond_d
    iget-object v4, p1, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    iget-object v5, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    if-ne v4, v5, :cond_e

    goto :goto_7

    :cond_e
    if-eqz p3, :cond_11

    invoke-virtual {v4}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    iget-object v6, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {v6}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lde/lighti/clipper/Point;->slopesEqual(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-direct {p0}, Lde/lighti/clipper/ClipperBase;->isPreserveCollinear()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p1, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    invoke-virtual {v4}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {p1}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    iget-object v6, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    invoke-virtual {v6}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lde/lighti/clipper/Point;->isPt2BetweenPt1AndPt3(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)Z

    move-result v4

    if-nez v4, :cond_11

    :cond_f
    if-ne p1, v0, :cond_10

    iget-object v0, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    :cond_10
    invoke-static {p1}, Lde/lighti/clipper/ClipperBase;->removeEdge(Lde/lighti/clipper/Edge;)Lde/lighti/clipper/Edge;

    move-result-object p1

    iget-object v3, p1, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    goto :goto_6

    :cond_11
    iget-object p1, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    if-eq p1, v3, :cond_12

    if-nez p3, :cond_9

    iget-object v4, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    if-ne v4, v0, :cond_9

    :cond_12
    :goto_7
    if-nez p3, :cond_13

    iget-object v3, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    if-eq p1, v3, :cond_14

    :cond_13
    if-eqz p3, :cond_15

    iget-object v3, p1, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    iget-object p1, p1, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    if-ne v3, p1, :cond_15

    :cond_14
    return v2

    :cond_15
    const/4 p1, -0x2

    if-nez p3, :cond_16

    iput-boolean v1, p0, Lde/lighti/clipper/ClipperBase;->hasOpenPaths:Z

    iget-object v3, v0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    iput p1, v3, Lde/lighti/clipper/Edge;->outIdx:I

    :cond_16
    move-object v3, v0

    const/4 v4, 0x1

    :cond_17
    invoke-static {v3, p2}, Lde/lighti/clipper/ClipperBase;->initEdge2(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Clipper$PolyType;)V

    iget-object v3, v3, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    if-eqz v4, :cond_18

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getCurrent()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-eqz v9, :cond_18

    const/4 v4, 0x0

    :cond_18
    if-ne v3, v0, :cond_17

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    if-eqz p3, :cond_19

    return v2

    :cond_19
    iget-object p2, v3, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    iput p1, p2, Lde/lighti/clipper/Edge;->outIdx:I

    new-instance p2, Lde/lighti/clipper/ClipperBase$LocalMinima;

    invoke-direct {p2, p0}, Lde/lighti/clipper/ClipperBase$LocalMinima;-><init>(Lde/lighti/clipper/ClipperBase;)V

    iput-object v5, p2, Lde/lighti/clipper/ClipperBase$LocalMinima;->next:Lde/lighti/clipper/ClipperBase$LocalMinima;

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    iput-wide v6, p2, Lde/lighti/clipper/ClipperBase$LocalMinima;->y:J

    iput-object v5, p2, Lde/lighti/clipper/ClipperBase$LocalMinima;->leftBound:Lde/lighti/clipper/Edge;

    iput-object v3, p2, Lde/lighti/clipper/ClipperBase$LocalMinima;->rightBound:Lde/lighti/clipper/Edge;

    sget-object p3, Lde/lighti/clipper/Edge$Side;->RIGHT:Lde/lighti/clipper/Edge$Side;

    iput-object p3, v3, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    iput v2, v3, Lde/lighti/clipper/Edge;->windDelta:I

    :goto_8
    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    iget-object p3, v3, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    invoke-virtual {p3}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p3

    invoke-virtual {p3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long p3, v4, v6

    if-eqz p3, :cond_1a

    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->reverseHorizontal()V

    :cond_1a
    iget-object p3, v3, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    iget v0, p3, Lde/lighti/clipper/Edge;->outIdx:I

    if-ne v0, p1, :cond_1b

    invoke-direct {p0, p2}, Lde/lighti/clipper/ClipperBase;->insertLocalMinima(Lde/lighti/clipper/ClipperBase$LocalMinima;)V

    return v1

    :cond_1b
    iput-object p3, v3, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    move-object v3, p3

    goto :goto_8

    :cond_1c
    iget-object p2, v3, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    invoke-virtual {p2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p2

    iget-object v0, v3, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-virtual {p2, v0}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d

    iget-object v3, v3, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    :cond_1d
    move-object p2, v5

    :goto_9
    invoke-virtual {v3}, Lde/lighti/clipper/Edge;->findNextLocMin()Lde/lighti/clipper/Edge;

    move-result-object v0

    if-ne v0, p2, :cond_1e

    return v1

    :cond_1e
    if-nez p2, :cond_1f

    move-object p2, v0

    :cond_1f
    new-instance v3, Lde/lighti/clipper/ClipperBase$LocalMinima;

    invoke-direct {v3, p0}, Lde/lighti/clipper/ClipperBase$LocalMinima;-><init>(Lde/lighti/clipper/ClipperBase;)V

    iput-object v5, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->next:Lde/lighti/clipper/ClipperBase$LocalMinima;

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    iput-wide v6, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->y:J

    iget-wide v6, v0, Lde/lighti/clipper/Edge;->deltaX:D

    iget-object v4, v0, Lde/lighti/clipper/Edge;->prev:Lde/lighti/clipper/Edge;

    iget-wide v8, v4, Lde/lighti/clipper/Edge;->deltaX:D

    cmpg-double v10, v6, v8

    if-gez v10, :cond_20

    iput-object v4, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->leftBound:Lde/lighti/clipper/Edge;

    iput-object v0, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->rightBound:Lde/lighti/clipper/Edge;

    const/4 v0, 0x0

    goto :goto_a

    :cond_20
    iput-object v0, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->leftBound:Lde/lighti/clipper/Edge;

    iput-object v4, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->rightBound:Lde/lighti/clipper/Edge;

    const/4 v0, 0x1

    :goto_a
    iget-object v4, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->leftBound:Lde/lighti/clipper/Edge;

    sget-object v6, Lde/lighti/clipper/Edge$Side;->LEFT:Lde/lighti/clipper/Edge$Side;

    iput-object v6, v4, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    iget-object v6, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->rightBound:Lde/lighti/clipper/Edge;

    sget-object v7, Lde/lighti/clipper/Edge$Side;->RIGHT:Lde/lighti/clipper/Edge$Side;

    iput-object v7, v6, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    if-nez p3, :cond_21

    iput v2, v4, Lde/lighti/clipper/Edge;->windDelta:I

    goto :goto_b

    :cond_21
    iget-object v7, v4, Lde/lighti/clipper/Edge;->next:Lde/lighti/clipper/Edge;

    if-ne v7, v6, :cond_22

    const/4 v7, -0x1

    iput v7, v4, Lde/lighti/clipper/Edge;->windDelta:I

    goto :goto_b

    :cond_22
    iput v1, v4, Lde/lighti/clipper/Edge;->windDelta:I

    :goto_b
    iget v7, v4, Lde/lighti/clipper/Edge;->windDelta:I

    neg-int v7, v7

    iput v7, v6, Lde/lighti/clipper/Edge;->windDelta:I

    invoke-direct {p0, v4, v0}, Lde/lighti/clipper/ClipperBase;->processBound(Lde/lighti/clipper/Edge;Z)Lde/lighti/clipper/Edge;

    move-result-object v4

    iget v6, v4, Lde/lighti/clipper/Edge;->outIdx:I

    if-ne v6, p1, :cond_23

    invoke-direct {p0, v4, v0}, Lde/lighti/clipper/ClipperBase;->processBound(Lde/lighti/clipper/Edge;Z)Lde/lighti/clipper/Edge;

    move-result-object v4

    :cond_23
    iget-object v6, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->rightBound:Lde/lighti/clipper/Edge;

    xor-int/lit8 v7, v0, 0x1

    invoke-direct {p0, v6, v7}, Lde/lighti/clipper/ClipperBase;->processBound(Lde/lighti/clipper/Edge;Z)Lde/lighti/clipper/Edge;

    move-result-object v6

    iget v7, v6, Lde/lighti/clipper/Edge;->outIdx:I

    if-ne v7, p1, :cond_24

    xor-int/lit8 v7, v0, 0x1

    invoke-direct {p0, v6, v7}, Lde/lighti/clipper/ClipperBase;->processBound(Lde/lighti/clipper/Edge;Z)Lde/lighti/clipper/Edge;

    move-result-object v6

    :cond_24
    iget-object v7, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->leftBound:Lde/lighti/clipper/Edge;

    iget v7, v7, Lde/lighti/clipper/Edge;->outIdx:I

    if-ne v7, p1, :cond_25

    iput-object v5, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->leftBound:Lde/lighti/clipper/Edge;

    goto :goto_c

    :cond_25
    iget-object v7, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->rightBound:Lde/lighti/clipper/Edge;

    iget v7, v7, Lde/lighti/clipper/Edge;->outIdx:I

    if-ne v7, p1, :cond_26

    iput-object v5, v3, Lde/lighti/clipper/ClipperBase$LocalMinima;->rightBound:Lde/lighti/clipper/Edge;

    :cond_26
    :goto_c
    invoke-direct {p0, v3}, Lde/lighti/clipper/ClipperBase;->insertLocalMinima(Lde/lighti/clipper/ClipperBase$LocalMinima;)V

    if-nez v0, :cond_27

    move-object v3, v6

    goto/16 :goto_9

    :cond_27
    move-object v3, v4

    goto/16 :goto_9
.end method

.method public addPaths(Lde/lighti/clipper/Paths;Lde/lighti/clipper/Clipper$PolyType;Z)Z
    .locals 2

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/lighti/clipper/Path;

    invoke-virtual {p0, v1, p2, p3}, Lde/lighti/clipper/ClipperBase;->addPath(Lde/lighti/clipper/Path;Lde/lighti/clipper/Clipper$PolyType;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    invoke-direct {p0}, Lde/lighti/clipper/ClipperBase;->disposeLocalMinimaList()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/lighti/clipper/ClipperBase;->hasOpenPaths:Z

    return-void
.end method

.method protected createOutRec()Lde/lighti/clipper/Path$OutRec;
    .locals 2

    new-instance v0, Lde/lighti/clipper/Path$OutRec;

    invoke-direct {v0}, Lde/lighti/clipper/Path$OutRec;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lde/lighti/clipper/Path$OutRec;->Idx:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lde/lighti/clipper/Path$OutRec;->isHole:Z

    iput-boolean v1, v0, Lde/lighti/clipper/Path$OutRec;->isOpen:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lde/lighti/clipper/Path$OutRec;->firstLeft:Lde/lighti/clipper/Path$OutRec;

    invoke-virtual {v0, v1}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    iput-object v1, v0, Lde/lighti/clipper/Path$OutRec;->bottomPt:Lde/lighti/clipper/Path$OutPt;

    iput-object v1, v0, Lde/lighti/clipper/Path$OutRec;->polyNode:Lde/lighti/clipper/PolyNode;

    iget-object v1, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lde/lighti/clipper/Path$OutRec;->Idx:I

    return-object v0
.end method

.method protected deleteFromAEL(Lde/lighti/clipper/Edge;)V
    .locals 6

    sget-object v0, Lde/lighti/clipper/ClipperBase;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/ClipperBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "deleteFromAEL"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iget-object v4, p1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    iget-object v5, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    if-eq p1, v5, :cond_0

    return-void

    :cond_0
    if-eqz v2, :cond_1

    iput-object v4, v2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    :goto_0
    if-eqz v4, :cond_2

    iput-object v2, v4, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    iput-object v2, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Ljava/util/logging/Logger;->exiting(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected disposeOutRec(I)V
    .locals 2

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/lighti/clipper/Path$OutRec;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/lighti/clipper/Path$OutRec;->setPoints(Lde/lighti/clipper/Path$OutPt;)V

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->polyOuts:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected insertScanbeam(J)V
    .locals 5

    sget-object v0, Lde/lighti/clipper/ClipperBase;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/ClipperBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "insertScanbeam"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->scanbeam:Lde/lighti/clipper/ClipperBase$Scanbeam;

    if-nez v0, :cond_0

    new-instance v0, Lde/lighti/clipper/ClipperBase$Scanbeam;

    invoke-direct {v0, p0}, Lde/lighti/clipper/ClipperBase$Scanbeam;-><init>(Lde/lighti/clipper/ClipperBase;)V

    iput-object v0, p0, Lde/lighti/clipper/ClipperBase;->scanbeam:Lde/lighti/clipper/ClipperBase$Scanbeam;

    const/4 v1, 0x0

    iput-object v1, v0, Lde/lighti/clipper/ClipperBase$Scanbeam;->next:Lde/lighti/clipper/ClipperBase$Scanbeam;

    iput-wide p1, v0, Lde/lighti/clipper/ClipperBase$Scanbeam;->y:J

    goto :goto_1

    :cond_0
    iget-wide v1, v0, Lde/lighti/clipper/ClipperBase$Scanbeam;->y:J

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    new-instance v0, Lde/lighti/clipper/ClipperBase$Scanbeam;

    invoke-direct {v0, p0}, Lde/lighti/clipper/ClipperBase$Scanbeam;-><init>(Lde/lighti/clipper/ClipperBase;)V

    iput-wide p1, v0, Lde/lighti/clipper/ClipperBase$Scanbeam;->y:J

    iget-object p1, p0, Lde/lighti/clipper/ClipperBase;->scanbeam:Lde/lighti/clipper/ClipperBase$Scanbeam;

    iput-object p1, v0, Lde/lighti/clipper/ClipperBase$Scanbeam;->next:Lde/lighti/clipper/ClipperBase$Scanbeam;

    iput-object v0, p0, Lde/lighti/clipper/ClipperBase;->scanbeam:Lde/lighti/clipper/ClipperBase$Scanbeam;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, v0, Lde/lighti/clipper/ClipperBase$Scanbeam;->next:Lde/lighti/clipper/ClipperBase$Scanbeam;

    if-eqz v1, :cond_2

    iget-wide v2, v1, Lde/lighti/clipper/ClipperBase$Scanbeam;->y:J

    cmp-long v4, p1, v2

    if-gtz v4, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-wide v1, v0, Lde/lighti/clipper/ClipperBase$Scanbeam;->y:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_3

    return-void

    :cond_3
    new-instance v1, Lde/lighti/clipper/ClipperBase$Scanbeam;

    invoke-direct {v1, p0}, Lde/lighti/clipper/ClipperBase$Scanbeam;-><init>(Lde/lighti/clipper/ClipperBase;)V

    iput-wide p1, v1, Lde/lighti/clipper/ClipperBase$Scanbeam;->y:J

    iget-object p1, v0, Lde/lighti/clipper/ClipperBase$Scanbeam;->next:Lde/lighti/clipper/ClipperBase$Scanbeam;

    iput-object p1, v1, Lde/lighti/clipper/ClipperBase$Scanbeam;->next:Lde/lighti/clipper/ClipperBase$Scanbeam;

    iput-object v1, v0, Lde/lighti/clipper/ClipperBase$Scanbeam;->next:Lde/lighti/clipper/ClipperBase$Scanbeam;

    :goto_1
    return-void
.end method

.method protected final localMinimaPending()Z
    .locals 1

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->currentLM:Lde/lighti/clipper/ClipperBase$LocalMinima;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected popLocalMinima(J[Lde/lighti/clipper/ClipperBase$LocalMinima;)Z
    .locals 4

    sget-object v0, Lde/lighti/clipper/ClipperBase;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/ClipperBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "popLocalMinima"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->currentLM:Lde/lighti/clipper/ClipperBase$LocalMinima;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->y:J

    cmp-long p3, v2, p1

    if-nez p3, :cond_0

    iget-object p1, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->next:Lde/lighti/clipper/ClipperBase$LocalMinima;

    iput-object p1, p0, Lde/lighti/clipper/ClipperBase;->currentLM:Lde/lighti/clipper/ClipperBase$LocalMinima;

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method protected popScanbeam([J)Z
    .locals 4

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->scanbeam:Lde/lighti/clipper/ClipperBase$Scanbeam;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    aput-wide v2, p1, v1

    return v1

    :cond_0
    iget-wide v2, v0, Lde/lighti/clipper/ClipperBase$Scanbeam;->y:J

    aput-wide v2, p1, v1

    iget-object p1, v0, Lde/lighti/clipper/ClipperBase$Scanbeam;->next:Lde/lighti/clipper/ClipperBase$Scanbeam;

    iput-object p1, p0, Lde/lighti/clipper/ClipperBase;->scanbeam:Lde/lighti/clipper/ClipperBase$Scanbeam;

    const/4 p1, 0x1

    return p1
.end method

.method protected reset()V
    .locals 6

    iget-object v0, p0, Lde/lighti/clipper/ClipperBase;->minimaList:Lde/lighti/clipper/ClipperBase$LocalMinima;

    iput-object v0, p0, Lde/lighti/clipper/ClipperBase;->currentLM:Lde/lighti/clipper/ClipperBase$LocalMinima;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lde/lighti/clipper/ClipperBase;->scanbeam:Lde/lighti/clipper/ClipperBase$Scanbeam;

    :goto_0
    if-eqz v0, :cond_3

    iget-wide v2, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->y:J

    invoke-virtual {p0, v2, v3}, Lde/lighti/clipper/ClipperBase;->insertScanbeam(J)V

    iget-object v2, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->leftBound:Lde/lighti/clipper/Edge;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    new-instance v4, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v2, v4}, Lde/lighti/clipper/Edge;->setCurrent(Lde/lighti/clipper/Point$LongPoint;)V

    iput v3, v2, Lde/lighti/clipper/Edge;->outIdx:I

    :cond_1
    iget-object v2, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->rightBound:Lde/lighti/clipper/Edge;

    if-eqz v2, :cond_2

    new-instance v4, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v2}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v2, v4}, Lde/lighti/clipper/Edge;->setCurrent(Lde/lighti/clipper/Point$LongPoint;)V

    iput v3, v2, Lde/lighti/clipper/Edge;->outIdx:I

    :cond_2
    iget-object v0, v0, Lde/lighti/clipper/ClipperBase$LocalMinima;->next:Lde/lighti/clipper/ClipperBase$LocalMinima;

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    return-void
.end method

.method protected swapPositionsInAEL(Lde/lighti/clipper/Edge;Lde/lighti/clipper/Edge;)V
    .locals 7

    sget-object v0, Lde/lighti/clipper/ClipperBase;->LOGGER:Ljava/util/logging/Logger;

    const-class v1, Lde/lighti/clipper/ClipperBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "swapPositionsInAEL"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->entering(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    iget-object v4, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    if-eq v2, v4, :cond_d

    iget-object v5, p2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    iget-object v6, p2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    if-ne v2, p2, :cond_3

    if-eqz v5, :cond_1

    iput-object p1, v5, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    :cond_1
    iget-object v2, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    if-eqz v2, :cond_2

    iput-object p2, v2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    :cond_2
    iput-object v2, p2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iput-object p1, p2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    iput-object p2, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iput-object v5, p1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_3
    if-ne v5, p1, :cond_6

    if-eqz v2, :cond_4

    iput-object p2, v2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    :cond_4
    iget-object v4, p2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    if-eqz v4, :cond_5

    iput-object p1, v4, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    :cond_5
    iput-object v4, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iput-object p2, p1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    iput-object p1, p2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iput-object v2, p2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_6
    iput-object v5, p1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    if-eqz v5, :cond_7

    iput-object p1, v5, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    :cond_7
    iget-object v5, p2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iput-object v5, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    if-eqz v5, :cond_8

    iput-object p1, v5, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    :cond_8
    iput-object v2, p2, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    if-eqz v2, :cond_9

    iput-object p2, v2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    :cond_9
    iput-object v4, p2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    if-eqz v4, :cond_a

    iput-object p2, v4, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    :cond_a
    :goto_0
    iget-object v2, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    if-nez v2, :cond_b

    iput-object p1, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    goto :goto_1

    :cond_b
    iget-object p1, p2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    if-nez p1, :cond_c

    iput-object p2, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    :cond_c
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Ljava/util/logging/Logger;->exiting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_2
    return-void
.end method

.method protected updateEdgeIntoAEL(Lde/lighti/clipper/Edge;)V
    .locals 4

    iget-object v0, p1, Lde/lighti/clipper/Edge;->nextInLML:Lde/lighti/clipper/Edge;

    if-eqz v0, :cond_3

    iget-object v1, p1, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iget-object v2, p1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    iget v3, p1, Lde/lighti/clipper/Edge;->outIdx:I

    iput v3, v0, Lde/lighti/clipper/Edge;->outIdx:I

    if-eqz v1, :cond_0

    iput-object v0, v1, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lde/lighti/clipper/ClipperBase;->activeEdges:Lde/lighti/clipper/Edge;

    :goto_0
    if-eqz v2, :cond_1

    iput-object v0, v2, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    :cond_1
    iget-object v3, p1, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    iput-object v3, v0, Lde/lighti/clipper/Edge;->side:Lde/lighti/clipper/Edge$Side;

    iget v3, p1, Lde/lighti/clipper/Edge;->windDelta:I

    iput v3, v0, Lde/lighti/clipper/Edge;->windDelta:I

    iget v3, p1, Lde/lighti/clipper/Edge;->windCnt:I

    iput v3, v0, Lde/lighti/clipper/Edge;->windCnt:I

    iget p1, p1, Lde/lighti/clipper/Edge;->windCnt2:I

    iput p1, v0, Lde/lighti/clipper/Edge;->windCnt2:I

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getBot()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {v0, p1}, Lde/lighti/clipper/Edge;->setCurrent(Lde/lighti/clipper/Point$LongPoint;)V

    iput-object v1, v0, Lde/lighti/clipper/Edge;->prevInAEL:Lde/lighti/clipper/Edge;

    iput-object v2, v0, Lde/lighti/clipper/Edge;->nextInAEL:Lde/lighti/clipper/Edge;

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->isHorizontal()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lde/lighti/clipper/Edge;->getTop()Lde/lighti/clipper/Point$LongPoint;

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
