.class Lde/lighti/clipper/Path$OutPt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/lighti/clipper/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OutPt"
.end annotation


# instance fields
.field idx:I

.field next:Lde/lighti/clipper/Path$OutPt;

.field prev:Lde/lighti/clipper/Path$OutPt;

.field private pt:Lde/lighti/clipper/Point$LongPoint;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lde/lighti/clipper/Path$OutPt;)D
    .locals 2

    invoke-direct {p0}, Lde/lighti/clipper/Path$OutPt;->area()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Point$LongPoint;
    .locals 0

    iget-object p0, p0, Lde/lighti/clipper/Path$OutPt;->pt:Lde/lighti/clipper/Point$LongPoint;

    return-object p0
.end method

.method static synthetic access$202(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Point$LongPoint;
    .locals 0

    iput-object p1, p0, Lde/lighti/clipper/Path$OutPt;->pt:Lde/lighti/clipper/Point$LongPoint;

    return-object p1
.end method

.method private area()D
    .locals 9

    const-wide/16 v0, 0x0

    move-object v2, p0

    :cond_0
    iget-object v3, v2, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    add-long/2addr v3, v5

    long-to-double v3, v3

    iget-object v5, v2, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v5}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-double v5, v5

    mul-double v3, v3, v5

    add-double/2addr v0, v3

    iget-object v2, v2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-ne v2, p0, :cond_0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public static getLowerMostRec(Lde/lighti/clipper/Path$OutRec;Lde/lighti/clipper/Path$OutRec;)Lde/lighti/clipper/Path$OutRec;
    .locals 7

    iget-object v0, p0, Lde/lighti/clipper/Path$OutRec;->bottomPt:Lde/lighti/clipper/Path$OutPt;

    if-nez v0, :cond_0

    invoke-static {p0}, Lde/lighti/clipper/Path$OutRec;->access$000(Lde/lighti/clipper/Path$OutRec;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getBottomPt()Lde/lighti/clipper/Path$OutPt;

    move-result-object v0

    iput-object v0, p0, Lde/lighti/clipper/Path$OutRec;->bottomPt:Lde/lighti/clipper/Path$OutPt;

    :cond_0
    iget-object v0, p1, Lde/lighti/clipper/Path$OutRec;->bottomPt:Lde/lighti/clipper/Path$OutPt;

    if-nez v0, :cond_1

    invoke-static {p1}, Lde/lighti/clipper/Path$OutRec;->access$000(Lde/lighti/clipper/Path$OutRec;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v0

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getBottomPt()Lde/lighti/clipper/Path$OutPt;

    move-result-object v0

    iput-object v0, p1, Lde/lighti/clipper/Path$OutRec;->bottomPt:Lde/lighti/clipper/Path$OutPt;

    :cond_1
    iget-object v0, p0, Lde/lighti/clipper/Path$OutRec;->bottomPt:Lde/lighti/clipper/Path$OutPt;

    iget-object v1, p1, Lde/lighti/clipper/Path$OutRec;->bottomPt:Lde/lighti/clipper/Path$OutPt;

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v2

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v2

    invoke-virtual {v1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    return-object p1

    :cond_5
    iget-object v2, v0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-ne v2, v0, :cond_6

    return-object p1

    :cond_6
    iget-object v2, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-ne v2, v1, :cond_7

    return-object p0

    :cond_7
    invoke-static {v0, v1}, Lde/lighti/clipper/Path$OutPt;->isFirstBottomPt(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-object p0

    :cond_8
    return-object p1
.end method

.method public static getPointCount(Lde/lighti/clipper/Path$OutPt;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move-object v1, p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-ne v1, p0, :cond_1

    return v0
.end method

.method private static isFirstBottomPt(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;)Z
    .locals 14

    iget-object v0, p0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    :goto_0
    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {p0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v0

    invoke-static {v1, v0}, Lde/lighti/clipper/Point$LongPoint;->getDeltaX(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    :goto_1
    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {p0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-static {v3, v2}, Lde/lighti/clipper/Point$LongPoint;->getDeltaX(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-object v4, p1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    :goto_2
    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {p1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v4, v4, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-virtual {v4}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-static {v5, v4}, Lde/lighti/clipper/Point$LongPoint;->getDeltaX(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-object v6, p1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    :goto_3
    invoke-virtual {v6}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v7

    invoke-virtual {p1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v8

    invoke-virtual {v7, v8}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v6, v6, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object p1

    invoke-virtual {v6}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-static {p1, v6}, Lde/lighti/clipper/Point$LongPoint;->getDeltaX(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    const/4 p1, 0x1

    const/4 v12, 0x0

    cmpl-double v13, v8, v10

    if-nez v13, :cond_5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    cmpl-double v13, v8, v10

    if-nez v13, :cond_5

    invoke-direct {p0}, Lde/lighti/clipper/Path$OutPt;->area()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    return p1

    :cond_5
    cmpl-double p0, v0, v4

    if-ltz p0, :cond_6

    cmpl-double p0, v0, v6

    if-gez p0, :cond_8

    :cond_6
    cmpl-double p0, v2, v4

    if-ltz p0, :cond_7

    cmpl-double p0, v2, v6

    if-ltz p0, :cond_7

    goto :goto_5

    :cond_7
    const/4 p1, 0x0

    :cond_8
    :goto_5
    return p1
.end method


# virtual methods
.method public duplicate(Z)Lde/lighti/clipper/Path$OutPt;
    .locals 3

    new-instance v0, Lde/lighti/clipper/Path$OutPt;

    invoke-direct {v0}, Lde/lighti/clipper/Path$OutPt;-><init>()V

    new-instance v1, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {p0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/lighti/clipper/Point$LongPoint;-><init>(Lde/lighti/clipper/Point$LongPoint;)V

    invoke-virtual {v0, v1}, Lde/lighti/clipper/Path$OutPt;->setPt(Lde/lighti/clipper/Point$LongPoint;)V

    iget v1, p0, Lde/lighti/clipper/Path$OutPt;->idx:I

    iput v1, v0, Lde/lighti/clipper/Path$OutPt;->idx:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object p1, v0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object p0, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iget-object p1, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v0, p1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v0, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object p1, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object p0, v0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iget-object p1, p0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v0, p1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v0, p0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    :goto_0
    return-object v0
.end method

.method getBottomPt()Lde/lighti/clipper/Path$OutPt;
    .locals 9

    iget-object v0, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v3, v1

    :goto_0
    if-eq v0, v2, :cond_3

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    :goto_1
    move-object v2, v0

    move-object v3, v1

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v4

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_2

    invoke-virtual {v0}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v4}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v4

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v6

    invoke-virtual {v6}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    if-eq v4, v2, :cond_2

    iget-object v4, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    if-eq v4, v2, :cond_2

    move-object v3, v0

    :cond_2
    :goto_2
    iget-object v0, v0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_6

    :cond_4
    if-eq v3, v0, :cond_6

    invoke-static {v0, v3}, Lde/lighti/clipper/Path$OutPt;->isFirstBottomPt(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Path$OutPt;)Z

    move-result v1

    if-nez v1, :cond_5

    move-object v2, v3

    :cond_5
    iget-object v1, v3, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    move-object v3, v1

    :goto_3
    invoke-virtual {v3}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v1

    invoke-virtual {v2}, Lde/lighti/clipper/Path$OutPt;->getPt()Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-virtual {v1, v4}, Lde/lighti/clipper/Point;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v3, v3, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_3

    :cond_6
    return-object v2
.end method

.method public getPt()Lde/lighti/clipper/Point$LongPoint;
    .locals 1

    iget-object v0, p0, Lde/lighti/clipper/Path$OutPt;->pt:Lde/lighti/clipper/Point$LongPoint;

    return-object v0
.end method

.method public reversePolyPtLinks()V
    .locals 3

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iget-object v2, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput-object v2, v0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v1, v0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    if-ne v1, p0, :cond_0

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public setPt(Lde/lighti/clipper/Point$LongPoint;)V
    .locals 0

    iput-object p1, p0, Lde/lighti/clipper/Path$OutPt;->pt:Lde/lighti/clipper/Point$LongPoint;

    return-void
.end method
