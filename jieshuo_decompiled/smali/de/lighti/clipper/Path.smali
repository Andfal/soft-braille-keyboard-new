.class public Lde/lighti/clipper/Path;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/lighti/clipper/Path$OutRec;,
        Lde/lighti/clipper/Path$OutPt;,
        Lde/lighti/clipper/Path$Join;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lde/lighti/clipper/Point$LongPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x62cfe53b24b268b1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method private static excludeOp(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Path$OutPt;
    .locals 2

    iget-object v0, p0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iget-object v1, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v1, v0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iget-object p0, p0, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v0, p0, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    const/4 p0, 0x0

    iput p0, v0, Lde/lighti/clipper/Path$OutPt;->idx:I

    return-object v0
.end method


# virtual methods
.method public TranslatePath(Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Path;
    .locals 9

    new-instance v0, Lde/lighti/clipper/Path;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lde/lighti/clipper/Path;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v3}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual {p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v5

    invoke-virtual {p1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    add-long/2addr v5, v7

    invoke-direct {v2, v3, v4, v5, v6}, Lde/lighti/clipper/Point$LongPoint;-><init>(JJ)V

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public area()D
    .locals 12

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    if-ge v0, v1, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 v1, v0, -0x1

    const/4 v4, 0x0

    move-wide v3, v2

    move v2, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v5}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v5

    long-to-double v5, v5

    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v7

    long-to-double v7, v7

    add-double/2addr v5, v7

    invoke-virtual {p0, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v7

    long-to-double v7, v7

    invoke-virtual {p0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    long-to-double v9, v9

    sub-double/2addr v7, v9

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    add-int/lit8 v2, v1, 0x1

    move v11, v2

    move v2, v1

    move v1, v11

    goto :goto_0

    :cond_1
    neg-double v0, v3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public cleanPolygon()Lde/lighti/clipper/Path;
    .locals 2

    const-wide v0, 0x3ff6a3d70a3d70a4L    # 1.415

    invoke-virtual {p0, v0, v1}, Lde/lighti/clipper/Path;->cleanPolygon(D)Lde/lighti/clipper/Path;

    move-result-object v0

    return-object v0
.end method

.method public cleanPolygon(D)Lde/lighti/clipper/Path;
    .locals 6

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lde/lighti/clipper/Path;

    invoke-direct {p1}, Lde/lighti/clipper/Path;-><init>()V

    return-object p1

    :cond_0
    new-array v1, v0, [Lde/lighti/clipper/Path$OutPt;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    new-instance v4, Lde/lighti/clipper/Path$OutPt;

    invoke-direct {v4}, Lde/lighti/clipper/Path$OutPt;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lde/lighti/clipper/Point$LongPoint;

    invoke-static {v4, v5}, Lde/lighti/clipper/Path$OutPt;->access$202(Lde/lighti/clipper/Path$OutPt;Lde/lighti/clipper/Point$LongPoint;)Lde/lighti/clipper/Point$LongPoint;

    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    rem-int v5, v3, v0

    aget-object v5, v1, v5

    iput-object v5, v4, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iput-object v4, v5, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    iput v2, v4, Lde/lighti/clipper/Path$OutPt;->idx:I

    goto :goto_1

    :cond_2
    mul-double p1, p1, p1

    aget-object v1, v1, v2

    :goto_2
    iget v3, v1, Lde/lighti/clipper/Path$OutPt;->idx:I

    if-nez v3, :cond_6

    iget-object v3, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    iget-object v4, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    if-eq v3, v4, :cond_6

    invoke-static {v1}, Lde/lighti/clipper/Path$OutPt;->access$200(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    iget-object v4, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-static {v4}, Lde/lighti/clipper/Path$OutPt;->access$200(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-static {v3, v4, p1, p2}, Lde/lighti/clipper/Point;->arePointsClose(Lde/lighti/clipper/Point;Lde/lighti/clipper/Point;D)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-static {v1}, Lde/lighti/clipper/Path;->excludeOp(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    iget-object v3, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-static {v3}, Lde/lighti/clipper/Path$OutPt;->access$200(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    iget-object v4, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-static {v4}, Lde/lighti/clipper/Path$OutPt;->access$200(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    invoke-static {v3, v4, p1, p2}, Lde/lighti/clipper/Point;->arePointsClose(Lde/lighti/clipper/Point;Lde/lighti/clipper/Point;D)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-static {v3}, Lde/lighti/clipper/Path;->excludeOp(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Path$OutPt;

    invoke-static {v1}, Lde/lighti/clipper/Path;->excludeOp(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Path$OutPt;

    move-result-object v1

    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lde/lighti/clipper/Path$OutPt;->prev:Lde/lighti/clipper/Path$OutPt;

    invoke-static {v3}, Lde/lighti/clipper/Path$OutPt;->access$200(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Point$LongPoint;

    move-result-object v3

    invoke-static {v1}, Lde/lighti/clipper/Path$OutPt;->access$200(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Point$LongPoint;

    move-result-object v4

    iget-object v5, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    invoke-static {v5}, Lde/lighti/clipper/Path$OutPt;->access$200(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Point$LongPoint;

    move-result-object v5

    invoke-static {v3, v4, v5, p1, p2}, Lde/lighti/clipper/Point;->slopesNearCollinear(Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;Lde/lighti/clipper/Point$LongPoint;D)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x1

    iput v3, v1, Lde/lighti/clipper/Path$OutPt;->idx:I

    iget-object v1, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    goto :goto_2

    :cond_6
    const/4 p1, 0x3

    if-ge v0, p1, :cond_7

    const/4 v0, 0x0

    :cond_7
    new-instance p1, Lde/lighti/clipper/Path;

    invoke-direct {p1, v0}, Lde/lighti/clipper/Path;-><init>(I)V

    :goto_4
    if-ge v2, v0, :cond_8

    invoke-static {v1}, Lde/lighti/clipper/Path$OutPt;->access$200(Lde/lighti/clipper/Path$OutPt;)Lde/lighti/clipper/Point$LongPoint;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    iget-object v1, v1, Lde/lighti/clipper/Path$OutPt;->next:Lde/lighti/clipper/Path$OutPt;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return-object p1
.end method

.method public isPointInPolygon(Lde/lighti/clipper/Point$LongPoint;)I
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lde/lighti/clipper/Point$LongPoint;

    const/4 v5, 0x1

    const/4 v6, 0x0

    :goto_0
    if-gt v5, v1, :cond_11

    if-ne v5, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v7

    :goto_1
    check-cast v7, Lde/lighti/clipper/Point$LongPoint;

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    const/4 v12, -0x1

    cmp-long v13, v8, v10

    if-nez v13, :cond_5

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    cmp-long v13, v8, v10

    if-eqz v13, :cond_4

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    cmp-long v13, v8, v10

    if-nez v13, :cond_5

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    cmp-long v13, v8, v10

    if-lez v13, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v13

    cmp-long v11, v9, v13

    if-gez v11, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    if-ne v8, v9, :cond_5

    :cond_4
    return v12

    :cond_5
    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    cmp-long v13, v8, v10

    if-gez v13, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    :goto_4
    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v13

    cmp-long v11, v9, v13

    if-gez v11, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    if-eq v8, v9, :cond_10

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v15, v8, v10

    if-ltz v15, :cond_c

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    cmp-long v15, v8, v10

    if-lez v15, :cond_8

    :goto_6
    rsub-int/lit8 v6, v6, 0x1

    goto/16 :goto_b

    :cond_8
    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-double v8, v8

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v15

    sub-long/2addr v10, v15

    long-to-double v10, v10

    mul-double v8, v8, v10

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v15

    sub-long/2addr v10, v15

    long-to-double v10, v10

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v17

    sub-long v3, v15, v17

    long-to-double v3, v3

    mul-double v10, v10, v3

    sub-double/2addr v8, v10

    cmpl-double v3, v8, v13

    if-nez v3, :cond_9

    return v12

    :cond_9
    if-lez v3, :cond_a

    const/4 v3, 0x1

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    cmp-long v2, v8, v10

    if-lez v2, :cond_b

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    if-ne v3, v2, :cond_10

    rsub-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_b

    :cond_c
    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v8

    cmp-long v10, v3, v8

    if-lez v10, :cond_10

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v8

    sub-long/2addr v3, v8

    long-to-double v3, v3

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-double v8, v8

    mul-double v3, v3, v8

    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getX()J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-double v8, v8

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v15

    sub-long/2addr v10, v15

    long-to-double v10, v10

    mul-double v8, v8, v10

    sub-double/2addr v3, v8

    cmpl-double v8, v3, v13

    if-nez v8, :cond_d

    return v12

    :cond_d
    if-lez v8, :cond_e

    const/4 v3, 0x1

    goto :goto_9

    :cond_e
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v7}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v8

    invoke-virtual {v2}, Lde/lighti/clipper/Point$LongPoint;->getY()J

    move-result-wide v10

    cmp-long v2, v8, v10

    if-lez v2, :cond_f

    const/4 v2, 0x1

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    :goto_a
    if-ne v3, v2, :cond_10

    goto/16 :goto_6

    :cond_10
    :goto_b
    add-int/lit8 v5, v5, 0x1

    move-object v2, v7

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_11
    return v6
.end method

.method public orientation()Z
    .locals 5

    invoke-virtual {p0}, Lde/lighti/clipper/Path;->area()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reverse()V
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method
