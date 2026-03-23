.class public Lp3/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/util/ArrayList;

.field b:I


# direct methods
.method public constructor <init>([B[BIII)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lp3/l;->a:Ljava/util/ArrayList;

    new-instance v1, Lp3/i;

    invoke-static {}, Lp3/h;->b()I

    move-result v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct {v1, v3, v4, v5, v2}, Lp3/i;-><init>([BIII)V

    invoke-virtual {v1}, Lp3/i;->e()I

    move-result v2

    new-array v3, v2, [Lp3/h;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-virtual {v1, v5}, Lp3/i;->b(I)Lp3/g;

    move-result-object v6

    new-instance v7, Lp3/h;

    invoke-virtual {v6}, Lp3/g;->d()[B

    move-result-object v6

    invoke-direct {v7, v6, v4}, Lp3/h;-><init>([BI)V

    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    aget-object v5, v3, v4

    invoke-virtual {v5}, Lp3/h;->a()I

    move-result v5

    sub-int v5, v5, p5

    iput v5, v0, Lp3/l;->b:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v2, :cond_3

    aget-object v7, v3, v5

    invoke-virtual {v7}, Lp3/h;->a()I

    move-result v7

    invoke-virtual {v1, v5}, Lp3/i;->b(I)Lp3/g;

    move-result-object v8

    invoke-virtual {v8}, Lp3/j;->b()I

    move-result v9

    aget-object v10, v3, v5

    invoke-virtual {v10}, Lp3/h;->c()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v11, 0x2

    goto :goto_2

    :cond_1
    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v8}, Lp3/j;->a()I

    move-result v12

    sub-int/2addr v12, v9

    mul-int v12, v12, v11

    add-int/2addr v12, v9

    sub-int v11, v12, v9

    new-array v13, v11, [B

    move-object/from16 v14, p1

    invoke-static {v14, v7, v13, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, v0, Lp3/l;->a:Ljava/util/ArrayList;

    new-instance v11, Lp3/k;

    add-int v15, v9, v6

    add-int/2addr v12, v6

    aget-object v4, v3, v5

    invoke-direct {v11, v15, v12, v13, v4}, Lp3/k;-><init>(II[BLp3/h;)V

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Lp3/j;->a()I

    move-result v4

    sub-int/2addr v4, v9

    add-int/2addr v6, v4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lp3/l;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    check-cast p1, Lp3/l;

    iget-object v0, p1, Lp3/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lp3/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p1, Lp3/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lp3/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method
