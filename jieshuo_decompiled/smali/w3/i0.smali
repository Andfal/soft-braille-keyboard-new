.class public final Lw3/i0;
.super Lw3/m2;
.source "SourceFile"


# instance fields
.field private C:Lw3/r;


# direct methods
.method public constructor <init>(Lw3/j;Lw3/z;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lw3/m2;-><init>(Lw3/j;Lw3/z;)V

    new-instance p1, Lw3/r;

    invoke-direct {p1}, Lw3/r;-><init>()V

    iput-object p1, p0, Lw3/i0;->C:Lw3/r;

    return-void
.end method

.method private A3(Ly3/e1;)Lw3/g2;
    .locals 4

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/e1;->v0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/e1;->w0()Ly3/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x58

    invoke-virtual {v2, v3}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lw3/i0;->w2(Lw3/g2;Lw3/g2;I)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private B3(Ly3/j1;)Lw3/g2;
    .locals 7

    new-instance v0, Lw3/g2;

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result v1

    const/16 v2, 0x1e

    invoke-direct {v0, v2, v1}, Lw3/g2;-><init>(II)V

    invoke-virtual {p1}, Ly3/j1;->w0()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly3/n1;

    invoke-virtual {v1}, Ly3/n1;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "XMLList"

    goto :goto_0

    :cond_0
    const-string v1, "XML"

    :goto_0
    invoke-virtual {p0, v1}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/g2;->f(Lw3/g2;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/i1;

    instance-of v3, v2, Ly3/n1;

    const/16 v4, 0x15

    if-eqz v3, :cond_2

    check-cast v2, Ly3/n1;

    invoke-virtual {v2}, Ly3/n1;->v0()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v3, v2}, Lw3/r;->b(Ljava/lang/String;)V

    if-nez v1, :cond_1

    invoke-static {v2}, Lw3/i0;->s2(Ljava/lang/String;)Lw3/g2;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lw3/i0;->s2(Ljava/lang/String;)Lw3/g2;

    move-result-object v2

    :goto_2
    invoke-static {v4, v1, v2}, Lw3/i0;->e2(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v1

    goto :goto_1

    :cond_2
    check-cast v2, Ly3/h1;

    invoke-virtual {v2}, Ly3/h1;->w0()Z

    move-result v3

    iget-object v5, p0, Lw3/i0;->C:Lw3/r;

    const/16 v6, 0x57

    invoke-virtual {v5, v6}, Lw3/r;->f(I)V

    invoke-virtual {v2}, Ly3/h1;->v0()Ly3/e;

    move-result-object v5

    instance-of v5, v5, Ly3/p;

    if-eqz v5, :cond_3

    const-string v2, ""

    invoke-static {v2}, Lw3/i0;->s2(Ljava/lang/String;)Lw3/g2;

    move-result-object v2

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ly3/h1;->v0()Ly3/e;

    move-result-object v2

    invoke-virtual {p0, v2}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v2

    :goto_3
    iget-object v5, p0, Lw3/i0;->C:Lw3/r;

    const/16 v6, 0x58

    invoke-virtual {v5, v6}, Lw3/r;->f(I)V

    if-eqz v3, :cond_4

    const/16 v3, 0x4d

    invoke-static {v3, v2}, Lw3/i0;->u2(ILw3/g2;)Lw3/g2;

    move-result-object v2

    const-string v3, "\""

    invoke-static {v3}, Lw3/i0;->s2(Ljava/lang/String;)Lw3/g2;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lw3/i0;->e2(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v2

    invoke-static {v3}, Lw3/i0;->s2(Ljava/lang/String;)Lw3/g2;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lw3/i0;->e2(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/16 v3, 0x4e

    invoke-static {v3, v2}, Lw3/i0;->u2(ILw3/g2;)Lw3/g2;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Lw3/g2;->f(Lw3/g2;)V

    return-object v0
.end method

.method private C3(Ly3/k1;)Lw3/g2;
    .locals 4

    invoke-virtual {p1}, Ly3/k1;->B0()Ly3/m1;

    move-result-object v0

    invoke-virtual {p1}, Ly3/b0;->v0()Ly3/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    invoke-virtual {v0}, Ly3/m1;->w0()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result p1

    const/16 v3, 0x92

    if-ne p1, v3, :cond_1

    or-int/lit8 v2, v2, 0x4

    iget-object p1, p0, Lw3/i0;->C:Lw3/r;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x6f

    :goto_1
    invoke-virtual {p1, v3}, Lw3/r;->f(I)V

    invoke-direct {p0, v1, v0, v2}, Lw3/i0;->D3(Lw3/g2;Ly3/m1;I)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private D2(Ly3/x;)Lw3/g2;
    .locals 18

    move-object/from16 v9, p0

    iget-object v0, v9, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual/range {p1 .. p1}, Ly3/e;->C()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ly3/x;->T0()Ly3/e;

    move-result-object v2

    invoke-virtual {v9, v2}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Ly3/x;->S0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    new-array v11, v3, [Lw3/g2;

    new-array v12, v3, [Lw3/g2;

    const/4 v13, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, " "

    const/16 v14, 0x5a

    if-ge v4, v3, :cond_2

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly3/y;

    iget-object v7, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v7, v5}, Lw3/r;->b(Ljava/lang/String;)V

    iget-object v5, v9, Lw3/i0;->C:Lw3/r;

    const/16 v7, 0x7a

    invoke-virtual {v5, v7}, Lw3/r;->f(I)V

    iget-object v5, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v5, v1}, Lw3/r;->f(I)V

    invoke-virtual {v6}, Ly3/t;->U0()Ly3/e;

    move-result-object v5

    invoke-virtual {v5}, Lw3/g2;->H()I

    move-result v7

    const/16 v8, 0x27

    if-ne v7, v8, :cond_0

    invoke-virtual {v5}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v7, v5}, Lw3/r;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v9, v5}, Lw3/i0;->x2(Ly3/e;)V

    iget-object v7, v9, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {v7}, Ly3/s0;->b1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v1, v7, v13}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    const/16 v8, 0x5c

    invoke-virtual {v9, v7}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v15

    invoke-direct {v9, v8, v5, v15}, Lw3/i0;->d2(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v5

    const/16 v8, 0x5b

    invoke-static {v8, v5, v2}, Lw3/i0;->e2(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v2

    move-object v5, v7

    :goto_1
    invoke-virtual {v9, v5}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v7

    const/16 v8, 0x9c

    invoke-virtual {v9, v8, v5, v13}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    aput-object v7, v11, v4

    invoke-virtual {v6}, Ly3/t;->W0()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v9, Lw3/i0;->C:Lw3/r;

    const-string v7, "of "

    invoke-virtual {v5, v7}, Lw3/r;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v5, v9, Lw3/i0;->C:Lw3/r;

    const/16 v7, 0x34

    invoke-virtual {v5, v7}, Lw3/r;->f(I)V

    :goto_2
    invoke-virtual {v6}, Ly3/t;->T0()Ly3/e;

    move-result-object v5

    invoke-virtual {v9, v5}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v5

    aput-object v5, v12, v4

    iget-object v5, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v5, v14}, Lw3/r;->f(I)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v4, Lw3/g2;

    const/16 v6, 0x49

    invoke-virtual/range {p1 .. p1}, Ly3/e;->C()I

    move-result v7

    invoke-direct {v4, v6, v2, v7}, Lw3/g2;-><init>(ILw3/g2;I)V

    new-instance v2, Lw3/g2;

    const/16 v6, 0x88

    invoke-direct {v2, v6, v4, v0}, Lw3/g2;-><init>(ILw3/g2;I)V

    invoke-virtual/range {p1 .. p1}, Ly3/x;->R0()Ly3/e;

    move-result-object v4

    const/4 v15, 0x0

    if-eqz v4, :cond_3

    iget-object v4, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v4, v5}, Lw3/r;->b(Ljava/lang/String;)V

    iget-object v4, v9, Lw3/i0;->C:Lw3/r;

    const/16 v5, 0x73

    invoke-virtual {v4, v5}, Lw3/r;->f(I)V

    iget-object v4, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v4, v1}, Lw3/r;->f(I)V

    invoke-virtual/range {p1 .. p1}, Ly3/x;->R0()Ly3/e;

    move-result-object v1

    invoke-virtual {v9, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    invoke-static {v1, v2, v15, v0}, Lw3/i0;->m2(Lw3/g2;Lw3/g2;Lw3/g2;I)Lw3/g2;

    move-result-object v2

    iget-object v0, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v0, v14}, Lw3/r;->f(I)V

    :cond_3
    add-int/lit8 v3, v3, -0x1

    move-object v6, v2

    move v0, v3

    const/4 v1, 0x0

    :goto_3
    if-ltz v0, :cond_5

    :try_start_0
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/y;

    invoke-virtual {v2}, Ly3/e;->C()I

    move-result v3

    invoke-direct {v9, v15, v3}, Lw3/i0;->p2(Lw3/g2;I)Ly3/r0;

    move-result-object v3

    invoke-virtual {v9, v3}, Lw3/m2;->u1(Ly3/r0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v16, v1, 0x1

    const/16 v4, 0x9c

    :try_start_1
    aget-object v5, v11, v0

    aget-object v7, v12, v0

    invoke-virtual {v2}, Ly3/y;->V0()Z

    move-result v8

    invoke-virtual {v2}, Ly3/t;->W0()Z

    move-result v17

    move-object/from16 v1, p0

    move v2, v4

    move-object v4, v5

    move-object v5, v7

    move v7, v8

    move/from16 v8, v17

    invoke-direct/range {v1 .. v8}, Lw3/i0;->l2(ILw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;ZZ)Lw3/g2;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, -0x1

    move/from16 v1, v16

    goto :goto_3

    :catchall_0
    move-exception v0

    move/from16 v1, v16

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    if-ge v13, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lw3/m2;->q1()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_4
    throw v0

    :cond_5
    :goto_5
    if-ge v13, v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lw3/m2;->q1()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_6
    iget-object v0, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v0, v14}, Lw3/r;->f(I)V

    return-object v6
.end method

.method private D3(Lw3/g2;Ly3/m1;I)Lw3/g2;
    .locals 3

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    :cond_0
    invoke-virtual {p2}, Ly3/m1;->v0()Ly3/i0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v1, v0}, Lw3/r;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x93

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    :cond_2
    instance-of v1, p2, Ly3/l1;

    if-eqz v1, :cond_3

    check-cast p2, Ly3/l1;

    invoke-virtual {p2}, Ly3/l1;->A0()Ly3/i0;

    move-result-object p2

    invoke-virtual {p2}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v1, p2}, Lw3/r;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lw3/i0;->r2(Lw3/g2;Ljava/lang/String;Ljava/lang/String;I)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    check-cast p2, Ly3/g1;

    invoke-virtual {p2}, Ly3/g1;->A0()Ly3/e;

    move-result-object p2

    invoke-virtual {p0, p2}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object p2

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x56

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    invoke-direct {p0, p1, v0, p2, p3}, Lw3/i0;->i2(Lw3/g2;Ljava/lang/String;Lw3/g2;I)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private E2(Lw3/g2;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p1, Ly3/i0;

    if-eqz v0, :cond_0

    check-cast p1, Ly3/i0;

    invoke-virtual {p1}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v0, p1}, Lw3/r;->b(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1}, Lw3/u2;->Y(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ly3/t0;

    if-eqz v0, :cond_1

    check-cast p1, Ly3/t0;

    invoke-virtual {p1}, Ly3/t0;->v0()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v0, p1}, Lw3/r;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ly3/k0;

    if-eqz v0, :cond_2

    check-cast p1, Ly3/k0;

    invoke-virtual {p1}, Ly3/k0;->v0()D

    move-result-wide v0

    iget-object p1, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1, v0, v1}, Lw3/r;->c(D)V

    invoke-static {v0, v1}, Lw3/u2;->X(D)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private E3(Ly3/m1;)Lw3/g2;
    .locals 2

    invoke-virtual {p1}, Ly3/m1;->w0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lw3/i0;->D3(Lw3/g2;Ly3/m1;I)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private static F2(Ly3/w;ILw3/g2;I)Lw3/g2;
    .locals 5

    invoke-virtual {p0, p3}, Ly3/w;->J1(I)V

    invoke-virtual {p0, p2}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {p0}, Ly3/s0;->Y0()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly3/w;->Q1()V

    :cond_0
    const/4 v0, 0x2

    const/16 v1, 0x70

    if-ne p3, v0, :cond_1

    invoke-virtual {p0}, Ly3/w;->u1()Ly3/i0;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ly3/i0;->w0()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly3/r0;->I0(Ljava/lang/String;)Ly3/w0;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ly3/w0;

    invoke-virtual {p3}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ly3/w0;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ly3/r0;->L0(Ly3/w0;)V

    new-instance v0, Lw3/g2;

    new-instance v2, Lw3/g2;

    const/16 v3, 0x31

    invoke-virtual {p3}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lw3/g2;->O(ILjava/lang/String;)Lw3/g2;

    move-result-object p3

    new-instance v3, Lw3/g2;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lw3/g2;-><init>(I)V

    const/16 v4, 0x8

    invoke-direct {v2, v4, p3, v3}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    const/16 p3, 0x88

    invoke-direct {v0, p3, v2}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-virtual {p2, v0}, Lw3/g2;->j(Lw3/g2;)V

    :cond_1
    invoke-virtual {p2}, Lw3/g2;->A()Lw3/g2;

    move-result-object p3

    const/4 v0, 0x4

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lw3/g2;->H()I

    move-result p3

    if-eq p3, v0, :cond_3

    :cond_2
    new-instance p3, Lw3/g2;

    invoke-direct {p3, v0}, Lw3/g2;-><init>(I)V

    invoke-virtual {p2, p3}, Lw3/g2;->f(Lw3/g2;)V

    :cond_3
    invoke-virtual {p0}, Ly3/w;->y1()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lw3/g2;->O(ILjava/lang/String;)Lw3/g2;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Lw3/g2;->R(II)V

    return-object p0
.end method

.method private F3(Ly3/o1;)Lw3/g2;
    .locals 3

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v1

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/o1;->v0()Ly3/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ly3/o1;->v0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lw3/g2;

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v2

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result p1

    invoke-direct {v1, v2, v0, p1}, Lw3/g2;-><init>(ILw3/g2;I)V

    return-object v1

    :cond_1
    new-instance v0, Lw3/g2;

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v1

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lw3/g2;-><init>(II)V

    return-object v0
.end method

.method private static G2(Lw3/g2;)I
    .locals 6

    invoke-virtual {p0}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_2

    const/16 p0, 0x2a

    if-eq v0, p0, :cond_1

    const/16 p0, 0x2c

    if-eq v0, p0, :cond_1

    const/16 p0, 0x2d

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v2

    :cond_1
    return v3

    :cond_2
    invoke-virtual {p0}, Lw3/g2;->v()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_3

    const-wide/16 v4, 0x0

    cmpl-double p0, v0, v4

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v3
.end method

.method private static I2(ILw3/g2;)Ly3/c0;
    .locals 1

    new-instance v0, Ly3/c0;

    invoke-direct {v0, p0}, Ly3/c0;-><init>(I)V

    iput-object p1, v0, Ly3/c0;->m:Lw3/g2;

    return-object v0
.end method

.method private static J2(Lw3/g2;)Lw3/g2;
    .locals 3

    invoke-virtual {p0}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_1

    const/16 v2, 0x26

    if-eq v0, v2, :cond_0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x47

    invoke-virtual {p0, v0}, Lw3/g2;->d0(I)Lw3/g2;

    new-instance v0, Lw3/g2;

    invoke-direct {v0, v1, p0}, Lw3/g2;-><init>(ILw3/g2;)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method private L2(Ly3/a;)Lw3/g2;
    .locals 8

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result v0

    const/16 v1, 0xa0

    invoke-virtual {p0, v1, v0}, Lw3/m2;->d0(II)Ly3/r0;

    move-result-object v1

    iget-object v2, p0, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {v2}, Ly3/s0;->b1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lw3/m2;->u1(Ly3/r0;)V

    const/16 v3, 0x9c

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v3, v2, v4}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    new-instance v3, Lw3/g2;

    const/16 v4, 0x84

    invoke-direct {v3, v4, v0}, Lw3/g2;-><init>(II)V

    const-string v4, "Array"

    invoke-virtual {p0, v4}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v4

    const/16 v5, 0x1e

    invoke-direct {p0, v5, v4}, Lw3/i0;->f2(ILw3/g2;)Lw3/g2;

    move-result-object v4

    new-instance v5, Lw3/g2;

    invoke-virtual {p0, v2}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v6

    const/16 v7, 0x5c

    invoke-direct {p0, v7, v6, v4}, Lw3/i0;->d2(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v4

    const/16 v6, 0x88

    invoke-direct {v5, v6, v4, v0}, Lw3/g2;-><init>(ILw3/g2;I)V

    invoke-virtual {v3, v5}, Lw3/g2;->f(Lw3/g2;)V

    invoke-direct {p0, p1, v2}, Lw3/i0;->b2(Ly3/a;Ljava/lang/String;)Lw3/g2;

    move-result-object p1

    invoke-virtual {v3, p1}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v1, v3}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {p0, v2}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lw3/g2;->f(Lw3/g2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lw3/m2;->q1()V

    return-object v1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lw3/m2;->q1()V

    throw p1
.end method

.method private M2(Ly3/c;)Lw3/g2;
    .locals 8

    invoke-virtual {p1}, Ly3/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/c;->x0()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lw3/g2;

    const/16 v2, 0x42

    invoke-direct {v1, v2}, Lw3/g2;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly3/e;

    invoke-virtual {v5}, Lw3/g2;->H()I

    move-result v6

    const/16 v7, 0x83

    if-eq v6, v7, :cond_1

    invoke-virtual {p0, v5}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v5

    invoke-virtual {v1, v5}, Lw3/g2;->f(Lw3/g2;)V

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lw3/i0;->C:Lw3/r;

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Lw3/r;->f(I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v4, 0x56

    invoke-virtual {v0, v4}, Lw3/r;->f(I)V

    const/16 v0, 0x15

    invoke-virtual {p1}, Ly3/c;->w0()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Lw3/g2;->R(II)V

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [I

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/16 v0, 0xb

    invoke-virtual {v1, v0, p1}, Lw3/g2;->S(ILjava/lang/Object;)V

    :cond_6
    return-object v1
.end method

.method private N2(Ly3/d;)Lw3/g2;
    .locals 4

    invoke-virtual {p1}, Ly3/b0;->w0()Ly3/e;

    move-result-object v0

    invoke-virtual {p1}, Ly3/b0;->v0()Ly3/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/m2;->y1(Ly3/e;)Ly3/e;

    move-result-object v1

    invoke-direct {p0, p1, v1, v0}, Lw3/i0;->O2(Ly3/d;Ly3/e;Ly3/e;)Ly3/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/i0;->H2(Lw3/g2;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lw3/i0;->x2(Ly3/e;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v3

    invoke-virtual {v2, v3}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result p1

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lw3/i0;->d2(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private O2(Ly3/d;Ly3/e;Ly3/e;)Ly3/e;
    .locals 2

    invoke-virtual {p3}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    instance-of v0, p2, Ly3/i0;

    if-eqz v0, :cond_1

    instance-of p3, p3, Ly3/d0;

    if-eqz p3, :cond_1

    move-object p3, p2

    check-cast p3, Ly3/i0;

    invoke-virtual {p3}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ly3/e;->l0()Ly3/e;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Ly3/w;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ly3/w;

    invoke-virtual {v1}, Ly3/w;->u1()Ly3/i0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p3, Ly3/o0;

    invoke-direct {p3}, Ly3/o0;-><init>()V

    new-instance v0, Ly3/d0;

    invoke-direct {v0}, Ly3/d0;-><init>()V

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ly3/d0;->v0(I)Ly3/d0;

    invoke-virtual {p3, v0}, Ly3/b0;->x0(Ly3/e;)V

    invoke-virtual {p3, p2}, Ly3/b0;->A0(Ly3/e;)V

    invoke-virtual {p1, p3}, Ly3/b0;->x0(Ly3/e;)V

    return-object p3

    :cond_0
    invoke-virtual {v0}, Ly3/e;->l0()Ly3/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private P2(Ly3/e;)Lw3/g2;
    .locals 4

    instance-of v0, p1, Ly3/r0;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Ly3/r0;

    invoke-virtual {p0, v1}, Lw3/m2;->u1(Ly3/r0;)V

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lw3/g2;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lw3/g2;

    check-cast v3, Ly3/e;

    invoke-virtual {p0, v3}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lw3/g2;->U()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw3/g2;

    invoke-virtual {p1, v2}, Lw3/g2;->f(Lw3/g2;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ly3/r0;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lw3/m2;->q1()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lw3/m2;->q1()V

    :cond_4
    throw p1
.end method

.method private Q2(Ly3/h;)Lw3/g2;
    .locals 2

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/h;->E0()Ly3/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Ly3/h;->E0()Ly3/i0;

    move-result-object v1

    invoke-virtual {v1}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/r;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lw3/r;->a(I)V

    return-object p1
.end method

.method private R2(Ly3/k;)Lw3/g2;
    .locals 4

    invoke-virtual {p1}, Ly3/k;->w0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/k;->x0()Ly3/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/k;->v0()Ly3/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lw3/i0;->h2(Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private S2(Ly3/l;)Lw3/g2;
    .locals 2

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/l;->E0()Ly3/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Ly3/l;->E0()Ly3/i0;

    move-result-object v1

    invoke-virtual {v1}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/r;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lw3/r;->a(I)V

    return-object p1
.end method

.method private T2(Ly3/z0;)Lw3/g2;
    .locals 2

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const-string v1, " xml"

    invoke-virtual {v0, v1}, Lw3/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const-string v1, " namespace"

    invoke-virtual {v0, v1}, Lw3/r;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/z0;->v0()Ly3/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object p1

    const/16 v0, 0x4c

    invoke-static {v0, p1}, Lw3/i0;->u2(ILw3/g2;)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private U2(Ly3/n;)Lw3/g2;
    .locals 7

    const/16 v0, 0x87

    invoke-virtual {p1, v0}, Lw3/g2;->d0(I)Lw3/g2;

    invoke-virtual {p0, p1}, Lw3/m2;->u1(Ly3/r0;)V

    :try_start_0
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/h0;->Q0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v3

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/n;->T0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v4

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lw3/r;->a(I)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lw3/i0;->o2(Ly3/c0;ILw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lw3/m2;->q1()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lw3/m2;->q1()V

    throw p1
.end method

.method private V2(Ly3/o;)Lw3/g2;
    .locals 3

    invoke-virtual {p1}, Ly3/o;->w0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x55

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/o;->v0()Ly3/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object p1

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x56

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    new-instance v1, Lw3/g2;

    const/16 v2, 0x24

    invoke-direct {v1, v2, v0, p1}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    return-object v1
.end method

.method private W2(Ly3/s;)Lw3/g2;
    .locals 3

    invoke-virtual {p1}, Ly3/s;->v0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Lw3/r;->a(I)V

    new-instance v1, Lw3/g2;

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v2

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result p1

    invoke-direct {v1, v2, v0, p1}, Lw3/g2;-><init>(ILw3/g2;I)V

    return-object v1
.end method

.method private X2(Ly3/t;)Lw3/g2;
    .locals 10

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/t;->V0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const-string v1, "each "

    invoke-virtual {v0, v1}, Lw3/r;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    const/16 v0, 0x87

    invoke-virtual {p1, v0}, Lw3/g2;->d0(I)Lw3/g2;

    invoke-virtual {p0, p1}, Lw3/m2;->u1(Ly3/r0;)V

    :try_start_0
    invoke-virtual {p1}, Ly3/t;->U0()Ly3/e;

    move-result-object v0

    instance-of v1, v0, Ly3/b1;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ly3/b1;

    invoke-virtual {v1}, Lw3/g2;->H()I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    const/4 v3, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v5

    invoke-virtual {p1}, Ly3/t;->W0()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const-string v1, "of "

    invoke-virtual {v0, v1}, Lw3/r;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    :goto_1
    invoke-virtual {p1}, Ly3/t;->T0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v6

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/h0;->Q0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v7

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/t;->V0()Z

    move-result v8

    invoke-virtual {p1}, Ly3/t;->W0()Z

    move-result v9

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lw3/i0;->l2(ILw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;ZZ)Lw3/g2;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lw3/m2;->q1()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lw3/m2;->q1()V

    throw p1
.end method

.method private Y2(Ly3/u;)Lw3/g2;
    .locals 7

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    const/16 v0, 0x87

    invoke-virtual {p1, v0}, Lw3/g2;->d0(I)Lw3/g2;

    iget-object v0, p0, Lw3/m2;->s:Ly3/r0;

    iput-object p1, p0, Lw3/m2;->s:Ly3/r0;

    :try_start_0
    invoke-virtual {p1}, Ly3/u;->V0()Ly3/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/u;->T0()Ly3/e;

    move-result-object v2

    invoke-virtual {p0, v2}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v2

    iget-object v4, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v4, v3}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/u;->U0()Ly3/e;

    move-result-object v3

    invoke-virtual {p0, v3}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v3

    iget-object v4, p0, Lw3/i0;->C:Lw3/r;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Lw3/r;->f(I)V

    iget-object v4, p0, Lw3/i0;->C:Lw3/r;

    const/16 v5, 0x57

    invoke-virtual {v4, v5}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/h0;->Q0()Ly3/e;

    move-result-object v4

    invoke-virtual {p0, v4}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v4

    iget-object v5, p0, Lw3/i0;->C:Lw3/r;

    const/16 v6, 0x58

    invoke-virtual {v5, v6}, Lw3/r;->a(I)V

    invoke-static {p1, v1, v2, v3, v4}, Lw3/i0;->k2(Ly3/r0;Lw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lw3/m2;->s:Ly3/r0;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lw3/m2;->s:Ly3/r0;

    throw p1
.end method

.method private Z2(Ly3/w;)Lw3/g2;
    .locals 11

    invoke-virtual {p1}, Ly3/w;->v1()I

    move-result v0

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v1, v0}, Lw3/r;->p(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lw3/i0;->A2(Ly3/w;)Lw3/g2;

    move-result-object v2

    iget-object v3, p0, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {v3, p1}, Ly3/s0;->Q0(Ly3/w;)I

    move-result v3

    new-instance v4, Lw3/m2$c;

    invoke-direct {v4, p0, p1}, Lw3/m2$c;-><init>(Lw3/m2;Ly3/w;)V

    const/16 v5, 0x17

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1, v5}, Lw3/g2;->E(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw3/g2;

    invoke-virtual {p1, v5}, Lw3/g2;->V(I)V

    invoke-virtual {p1}, Ly3/w;->t1()Ly3/e;

    move-result-object v5

    invoke-virtual {v5}, Ly3/e;->C()I

    move-result v5

    iget v8, p0, Lw3/m2;->n:I

    add-int/2addr v8, v6

    iput v8, p0, Lw3/m2;->n:I

    invoke-virtual {p1}, Ly3/w;->t1()Ly3/e;

    move-result-object v8

    invoke-virtual {p0, v8}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v8

    invoke-virtual {p1}, Ly3/w;->B1()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lw3/i0;->C:Lw3/r;

    const/16 v10, 0x58

    invoke-virtual {v9, v10}, Lw3/r;->f(I)V

    :cond_0
    iget-object v9, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v9, v1}, Lw3/r;->o(I)I

    move-result v9

    invoke-virtual {p1, v1, v9}, Ly3/s0;->n1(II)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ly3/w;->B1()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v0, v6}, Lw3/r;->f(I)V

    :cond_1
    if-eqz v7, :cond_2

    new-instance v0, Lw3/g2;

    const/16 v9, 0x88

    invoke-direct {v0, v9, v7, v5}, Lw3/g2;-><init>(ILw3/g2;I)V

    invoke-virtual {v8, v0}, Lw3/g2;->h(Lw3/g2;)V

    :cond_2
    invoke-virtual {p1}, Ly3/w;->v1()I

    move-result v0

    invoke-static {p1, v3, v8, v0}, Lw3/i0;->F2(Ly3/w;ILw3/g2;I)Lw3/g2;

    move-result-object v3

    if-eqz v2, :cond_3

    const/16 v5, 0x5c

    invoke-direct {p0, v5, v2, v3}, Lw3/i0;->d2(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v3

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result p1

    invoke-static {v3, p1}, Lw3/i0;->j2(Lw3/g2;I)Lw3/g2;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget p1, p0, Lw3/m2;->n:I

    sub-int/2addr p1, v6

    iput p1, p0, Lw3/m2;->n:I

    invoke-virtual {v4}, Lw3/m2$c;->a()V

    return-object v3

    :catchall_0
    move-exception p1

    iget v0, p0, Lw3/m2;->n:I

    sub-int/2addr v0, v6

    iput v0, p0, Lw3/m2;->n:I

    invoke-virtual {v4}, Lw3/m2$c;->a()V

    throw p1
.end method

.method private static a2(Lw3/g2;Lw3/g2;Lw3/g2;)V
    .locals 4

    invoke-virtual {p0}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x84

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lw3/g2;->x()Lw3/g2;

    move-result-object v0

    check-cast v0, Ly3/c0;

    invoke-virtual {v0}, Lw3/g2;->H()I

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object v1

    if-eqz p1, :cond_0

    new-instance v2, Ly3/c0;

    const/16 v3, 0x76

    invoke-direct {v2, v3, p1}, Ly3/c0;-><init>(ILw3/g2;)V

    iput-object v1, v2, Ly3/c0;->m:Lw3/g2;

    invoke-virtual {v0, v2}, Lw3/g2;->f(Lw3/g2;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ly3/c0;->A0(Lw3/g2;)V

    :goto_0
    invoke-virtual {p0, v1}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {p0, p2}, Lw3/g2;->f(Lw3/g2;)V

    return-void

    :cond_1
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private a3(Ly3/v;)Lw3/g2;
    .locals 4

    invoke-virtual {p1}, Ly3/v;->x0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    const/16 v1, 0x26

    invoke-direct {p0, v1, v0}, Lw3/i0;->f2(ILw3/g2;)Lw3/g2;

    move-result-object v0

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lw3/g2;->a0(I)V

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x59

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/v;->w0()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/e;

    invoke-virtual {p0, v2}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lw3/g2;->f(Lw3/g2;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Lw3/r;->f(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x5a

    invoke-virtual {p1, v1}, Lw3/r;->f(I)V

    return-object v0
.end method

.method private b2(Ly3/a;Ljava/lang/String;)Lw3/g2;
    .locals 19

    move-object/from16 v9, p0

    iget-object v0, v9, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual/range {p1 .. p1}, Ly3/e;->C()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ly3/a;->T0()Ly3/e;

    move-result-object v1

    invoke-virtual {v9, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ly3/a;->S0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    new-array v11, v2, [Lw3/g2;

    new-array v12, v2, [Lw3/g2;

    const/4 v13, 0x0

    move-object v14, v1

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x5a

    const-string v4, " "

    const/16 v5, 0x59

    if-ge v1, v2, :cond_3

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly3/b;

    iget-object v7, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v7, v4}, Lw3/r;->b(Ljava/lang/String;)V

    iget-object v4, v9, Lw3/i0;->C:Lw3/r;

    const/16 v7, 0x7a

    invoke-virtual {v4, v7}, Lw3/r;->f(I)V

    invoke-virtual {v6}, Ly3/t;->V0()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v9, Lw3/i0;->C:Lw3/r;

    const-string v7, "each "

    invoke-virtual {v4, v7}, Lw3/r;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v4, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v4, v5}, Lw3/r;->f(I)V

    invoke-virtual {v6}, Ly3/t;->U0()Ly3/e;

    move-result-object v4

    invoke-virtual {v4}, Lw3/g2;->H()I

    move-result v7

    const/16 v8, 0x27

    if-ne v7, v8, :cond_1

    invoke-virtual {v4}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v5, v4}, Lw3/r;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9, v4}, Lw3/i0;->x2(Ly3/e;)V

    iget-object v7, v9, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {v7}, Ly3/s0;->b1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v5, v7, v13}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    const/16 v5, 0x5c

    invoke-virtual {v9, v7}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v8

    invoke-direct {v9, v5, v4, v8}, Lw3/i0;->d2(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v4

    const/16 v5, 0x5b

    invoke-static {v5, v4, v14}, Lw3/i0;->e2(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v4

    move-object v14, v4

    move-object v4, v7

    :goto_1
    invoke-virtual {v9, v4}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v5

    const/16 v7, 0x9c

    invoke-virtual {v9, v7, v4, v13}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    aput-object v5, v11, v1

    invoke-virtual {v6}, Ly3/t;->W0()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v9, Lw3/i0;->C:Lw3/r;

    const-string v5, "of "

    invoke-virtual {v4, v5}, Lw3/r;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v4, v9, Lw3/i0;->C:Lw3/r;

    const/16 v5, 0x34

    invoke-virtual {v4, v5}, Lw3/r;->f(I)V

    :goto_2
    invoke-virtual {v6}, Ly3/t;->T0()Ly3/e;

    move-result-object v4

    invoke-virtual {v9, v4}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v4

    aput-object v4, v12, v1

    iget-object v4, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v4, v3}, Lw3/r;->f(I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v1, p2

    invoke-virtual {v9, v1}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v1

    const-string v6, "push"

    const/4 v15, 0x0

    invoke-direct {v9, v1, v15, v6, v13}, Lw3/i0;->r2(Lw3/g2;Ljava/lang/String;Ljava/lang/String;I)Lw3/g2;

    move-result-object v1

    const/16 v6, 0x26

    invoke-direct {v9, v6, v1}, Lw3/i0;->f2(ILw3/g2;)Lw3/g2;

    move-result-object v8

    new-instance v1, Lw3/g2;

    const/16 v6, 0x88

    invoke-direct {v1, v6, v8, v0}, Lw3/g2;-><init>(ILw3/g2;I)V

    invoke-virtual/range {p1 .. p1}, Ly3/a;->R0()Ly3/e;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v6, v4}, Lw3/r;->b(Ljava/lang/String;)V

    iget-object v4, v9, Lw3/i0;->C:Lw3/r;

    const/16 v6, 0x73

    invoke-virtual {v4, v6}, Lw3/r;->f(I)V

    iget-object v4, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v4, v5}, Lw3/r;->f(I)V

    invoke-virtual/range {p1 .. p1}, Ly3/a;->R0()Ly3/e;

    move-result-object v4

    invoke-virtual {v9, v4}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v4

    invoke-static {v4, v1, v15, v0}, Lw3/i0;->m2(Lw3/g2;Lw3/g2;Lw3/g2;I)Lw3/g2;

    move-result-object v1

    iget-object v0, v9, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v0, v3}, Lw3/r;->f(I)V

    :cond_4
    add-int/lit8 v2, v2, -0x1

    move-object v6, v1

    move v0, v2

    const/4 v1, 0x0

    :goto_3
    if-ltz v0, :cond_6

    :try_start_0
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/b;

    invoke-virtual {v2}, Ly3/e;->C()I

    move-result v3

    invoke-direct {v9, v15, v3}, Lw3/i0;->p2(Lw3/g2;I)Ly3/r0;

    move-result-object v3

    invoke-virtual {v9, v3}, Lw3/m2;->u1(Ly3/r0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v16, v1, 0x1

    const/16 v4, 0x9c

    :try_start_1
    aget-object v5, v11, v0

    aget-object v7, v12, v0

    invoke-virtual {v2}, Ly3/t;->V0()Z

    move-result v17

    invoke-virtual {v2}, Ly3/t;->W0()Z

    move-result v18

    move-object/from16 v1, p0

    move v2, v4

    move-object v4, v5

    move-object v5, v7

    move/from16 v7, v17

    move-object v13, v8

    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lw3/i0;->l2(ILw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;ZZ)Lw3/g2;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, -0x1

    move-object v8, v13

    move/from16 v1, v16

    const/4 v13, 0x0

    goto :goto_3

    :catchall_0
    move-exception v0

    move/from16 v1, v16

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_4
    const/4 v13, 0x0

    :goto_5
    if-ge v13, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lw3/m2;->q1()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_5
    throw v0

    :cond_6
    move-object v13, v8

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lw3/m2;->q1()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    iget-object v0, v9, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x56

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {v13, v14}, Lw3/g2;->f(Lw3/g2;)V

    return-object v6
.end method

.method private b3(Ly3/x;)Lw3/g2;
    .locals 13

    new-instance v0, Ly3/w;

    invoke-direct {v0}, Ly3/w;-><init>()V

    iget-object v1, p0, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {v1}, Ly3/s0;->b1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly3/s0;->q1(Ljava/lang/String;)V

    invoke-virtual {v0}, Ly3/w;->M1()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ly3/w;->J1(I)V

    invoke-virtual {v0}, Ly3/w;->Q1()V

    invoke-virtual {v0}, Ly3/w;->v1()I

    move-result v2

    iget-object v3, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v3, v2}, Lw3/r;->p(I)I

    move-result v3

    invoke-virtual {p0, v0}, Lw3/i0;->A2(Ly3/w;)Lw3/g2;

    move-result-object v4

    iget-object v5, p0, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {v5, v0}, Ly3/s0;->Q0(Ly3/w;)I

    move-result v5

    new-instance v6, Lw3/m2$c;

    invoke-direct {v6, p0, v0}, Lw3/m2$c;-><init>(Lw3/m2;Ly3/w;)V

    const/16 v7, 0x17

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v0, v7}, Lw3/g2;->E(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lw3/g2;

    invoke-virtual {v0, v7}, Lw3/g2;->V(I)V

    iget v7, p1, Lw3/g2;->e:I

    iget v10, p0, Lw3/m2;->n:I

    add-int/2addr v10, v8

    iput v10, p0, Lw3/m2;->n:I

    invoke-direct {p0, p1}, Lw3/i0;->D2(Ly3/x;)Lw3/g2;

    move-result-object v10

    invoke-virtual {v0}, Ly3/w;->B1()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lw3/i0;->C:Lw3/r;

    const/16 v12, 0x58

    invoke-virtual {v11, v12}, Lw3/r;->f(I)V

    :cond_0
    iget-object v11, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v11, v3}, Lw3/r;->o(I)I

    move-result v11

    invoke-virtual {v0, v3, v11}, Ly3/s0;->n1(II)V

    if-eq v2, v1, :cond_1

    invoke-virtual {v0}, Ly3/w;->B1()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v2, v8}, Lw3/r;->f(I)V

    :cond_1
    if-eqz v9, :cond_2

    new-instance v2, Lw3/g2;

    const/16 v3, 0x88

    invoke-direct {v2, v3, v9, v7}, Lw3/g2;-><init>(ILw3/g2;I)V

    invoke-virtual {v10, v2}, Lw3/g2;->h(Lw3/g2;)V

    :cond_2
    invoke-virtual {v0}, Ly3/w;->v1()I

    move-result v2

    invoke-static {v0, v5, v10, v2}, Lw3/i0;->F2(Ly3/w;ILw3/g2;I)Lw3/g2;

    move-result-object v3

    if-eqz v4, :cond_3

    const/16 v5, 0x5c

    invoke-direct {p0, v5, v4, v3}, Lw3/i0;->d2(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v3

    if-eq v2, v1, :cond_3

    invoke-virtual {v0}, Ly3/e;->C()I

    move-result v0

    invoke-static {v3, v0}, Lw3/i0;->j2(Lw3/g2;I)Lw3/g2;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget v0, p0, Lw3/m2;->n:I

    sub-int/2addr v0, v8

    iput v0, p0, Lw3/m2;->n:I

    invoke-virtual {v6}, Lw3/m2$c;->a()V

    const/16 v0, 0x26

    invoke-direct {p0, v0, v3}, Lw3/i0;->f2(ILw3/g2;)Lw3/g2;

    move-result-object v0

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result p1

    invoke-virtual {v0, p1}, Lw3/g2;->a0(I)V

    iget-object p1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x59

    invoke-virtual {p1, v1}, Lw3/r;->f(I)V

    iget-object p1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x5a

    invoke-virtual {p1, v1}, Lw3/r;->f(I)V

    return-object v0

    :catchall_0
    move-exception p1

    iget v0, p0, Lw3/m2;->n:I

    sub-int/2addr v0, v8

    iput v0, p0, Lw3/m2;->n:I

    invoke-virtual {v6}, Lw3/m2$c;->a()V

    throw p1
.end method

.method private static c2(Lw3/g2;)V
    .locals 4

    invoke-virtual {p0}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x84

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lw3/g2;->x()Lw3/g2;

    move-result-object v0

    check-cast v0, Ly3/c0;

    invoke-virtual {v0}, Lw3/g2;->H()I

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object v1

    iput-object v1, v0, Ly3/c0;->m:Lw3/g2;

    invoke-virtual {v0}, Ly3/c0;->w0()Lw3/g2;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    :cond_0
    const/4 v3, 0x5

    invoke-static {v3, v2}, Lw3/i0;->I2(ILw3/g2;)Ly3/c0;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lw3/g2;->e(Lw3/g2;Lw3/g2;)V

    invoke-virtual {p0, v1}, Lw3/g2;->f(Lw3/g2;)V

    return-void

    :cond_1
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private c3(Ly3/a0;)Lw3/g2;
    .locals 6

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/a0;->v0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/a0;->x0()Ly3/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    invoke-virtual {p1}, Ly3/a0;->w0()Ly3/e;

    move-result-object v3

    const/16 v4, 0x58

    if-eqz v3, :cond_0

    iget-object v3, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v3, v4}, Lw3/r;->f(I)V

    iget-object v3, p0, Lw3/i0;->C:Lw3/r;

    const/16 v5, 0x74

    invoke-virtual {v3, v5}, Lw3/r;->f(I)V

    iget-object v3, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v3, v2}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/a0;->w0()Ly3/e;

    move-result-object v2

    invoke-virtual {p0, v2}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v3, v4}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lw3/i0;->m2(Lw3/g2;Lw3/g2;Lw3/g2;I)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private d2(ILw3/g2;Lw3/g2;)Lw3/g2;
    .locals 4

    invoke-static {p2}, Lw3/i0;->J2(Lw3/g2;)Lw3/g2;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "msg.bad.assign.left"

    invoke-virtual {p0, p1}, Lw3/m2;->z1(Ljava/lang/String;)V

    return-object p3

    :cond_1
    :goto_0
    const/16 v0, 0x5c

    if-eq p1, v0, :cond_2

    const-string p1, "msg.bad.destruct.op"

    invoke-virtual {p0, p1}, Lw3/m2;->z1(Ljava/lang/String;)V

    return-object p3

    :cond_2
    const/4 p1, -0x1

    invoke-virtual {p0, p1, p2, p3}, Lw3/m2;->W(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_3
    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    const/16 p1, 0x4b

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x19

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x18

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x17

    goto :goto_1

    :pswitch_4
    const/16 p1, 0x16

    goto :goto_1

    :pswitch_5
    const/16 p1, 0x15

    goto :goto_1

    :pswitch_6
    const/16 p1, 0x14

    goto :goto_1

    :pswitch_7
    const/16 p1, 0x13

    goto :goto_1

    :pswitch_8
    const/16 p1, 0x12

    goto :goto_1

    :pswitch_9
    const/16 p1, 0xb

    goto :goto_1

    :pswitch_a
    const/16 p1, 0xa

    goto :goto_1

    :pswitch_b
    const/16 p1, 0x9

    :goto_1
    invoke-virtual {v0}, Lw3/g2;->H()I

    move-result p2

    const/16 v1, 0x8d

    const/16 v2, 0x21

    if-eq p2, v2, :cond_6

    const/16 v3, 0x24

    if-eq p2, v3, :cond_6

    const/16 v2, 0x27

    if-eq p2, v2, :cond_5

    const/16 v2, 0x44

    if-ne p2, v2, :cond_4

    invoke-virtual {v0}, Lw3/g2;->x()Lw3/g2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lw3/m2;->Q(Lw3/g2;)V

    new-instance v0, Lw3/g2;

    invoke-direct {v0, v1}, Lw3/g2;-><init>(I)V

    new-instance v1, Lw3/g2;

    invoke-direct {v1, p1, v0, p3}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    new-instance p1, Lw3/g2;

    const/16 p3, 0x91

    invoke-direct {p1, p3, p2, v1}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    return-object p1

    :cond_4
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_5
    new-instance p2, Lw3/g2;

    invoke-direct {p2, p1, v0, p3}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    const/16 p1, 0x31

    invoke-virtual {v0}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lw3/g2;->O(ILjava/lang/String;)Lw3/g2;

    move-result-object p1

    new-instance p3, Lw3/g2;

    const/16 v0, 0x8

    invoke-direct {p3, v0, p1, p2}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    return-object p3

    :cond_6
    invoke-virtual {v0}, Lw3/g2;->x()Lw3/g2;

    move-result-object v3

    invoke-virtual {v0}, Lw3/g2;->A()Lw3/g2;

    move-result-object v0

    if-ne p2, v2, :cond_7

    const/16 p2, 0x8e

    goto :goto_2

    :cond_7
    const/16 p2, 0x8f

    :goto_2
    new-instance v2, Lw3/g2;

    invoke-direct {v2, v1}, Lw3/g2;-><init>(I)V

    new-instance v1, Lw3/g2;

    invoke-direct {v1, p1, v2, p3}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    new-instance p1, Lw3/g2;

    invoke-direct {p1, p2, v3, v0, v1}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;Lw3/g2;)V

    return-object p1

    :pswitch_c
    invoke-virtual {p0, v0, p3}, Lw3/m2;->K1(Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d3(Ly3/b0;)Lw3/g2;
    .locals 4

    invoke-virtual {p1}, Ly3/b0;->v0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v2

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/b0;->w0()Ly3/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    instance-of v2, p1, Ly3/f1;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lw3/r;->f(I)V

    :cond_0
    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result p1

    invoke-static {p1, v0, v1}, Lw3/i0;->e2(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private static e2(ILw3/g2;Lw3/g2;)Lw3/g2;
    .locals 7

    const/16 v0, 0x6b

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p0, v0, :cond_a

    const/16 v0, 0x6c

    if-eq p0, v0, :cond_8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/16 v2, 0x1c

    const/16 v3, 0x28

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget v4, p2, Lw3/g2;->a:I

    if-ne v4, v3, :cond_c

    invoke-virtual {p2}, Lw3/g2;->v()D

    move-result-wide v4

    iget v6, p1, Lw3/g2;->a:I

    if-ne v6, v3, :cond_0

    invoke-virtual {p1}, Lw3/g2;->v()D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lw3/g2;->Y(D)V

    return-object p1

    :cond_0
    cmpl-double v3, v4, v0

    if-nez v3, :cond_c

    new-instance p0, Lw3/g2;

    invoke-direct {p0, v2, p1}, Lw3/g2;-><init>(ILw3/g2;)V

    return-object p0

    :pswitch_1
    iget v4, p1, Lw3/g2;->a:I

    if-ne v4, v3, :cond_2

    invoke-virtual {p1}, Lw3/g2;->v()D

    move-result-wide v4

    iget v6, p2, Lw3/g2;->a:I

    if-ne v6, v3, :cond_1

    invoke-virtual {p2}, Lw3/g2;->v()D

    move-result-wide v0

    mul-double v4, v4, v0

    invoke-virtual {p1, v4, v5}, Lw3/g2;->Y(D)V

    return-object p1

    :cond_1
    cmpl-double v3, v4, v0

    if-nez v3, :cond_c

    new-instance p0, Lw3/g2;

    invoke-direct {p0, v2, p2}, Lw3/g2;-><init>(ILw3/g2;)V

    return-object p0

    :cond_2
    iget v4, p2, Lw3/g2;->a:I

    if-ne v4, v3, :cond_c

    invoke-virtual {p2}, Lw3/g2;->v()D

    move-result-wide v3

    cmpl-double v5, v3, v0

    if-nez v5, :cond_c

    new-instance p0, Lw3/g2;

    invoke-direct {p0, v2, p1}, Lw3/g2;-><init>(ILw3/g2;)V

    return-object p0

    :pswitch_2
    iget v0, p1, Lw3/g2;->a:I

    const-wide/16 v4, 0x0

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Lw3/g2;->v()D

    move-result-wide v0

    iget v2, p2, Lw3/g2;->a:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p2}, Lw3/g2;->v()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lw3/g2;->Y(D)V

    return-object p1

    :cond_3
    cmpl-double v2, v0, v4

    if-nez v2, :cond_c

    new-instance p0, Lw3/g2;

    const/16 p1, 0x1d

    invoke-direct {p0, p1, p2}, Lw3/g2;-><init>(ILw3/g2;)V

    return-object p0

    :cond_4
    iget v0, p2, Lw3/g2;->a:I

    if-ne v0, v3, :cond_c

    invoke-virtual {p2}, Lw3/g2;->v()D

    move-result-wide v0

    cmpl-double v3, v0, v4

    if-nez v3, :cond_c

    new-instance p0, Lw3/g2;

    invoke-direct {p0, v2, p1}, Lw3/g2;-><init>(ILw3/g2;)V

    return-object p0

    :pswitch_3
    iget v0, p1, Lw3/g2;->a:I

    const/16 v1, 0xa

    const/16 v2, 0x29

    if-ne v0, v2, :cond_6

    iget v0, p2, Lw3/g2;->a:I

    if-ne v0, v2, :cond_5

    invoke-virtual {p2}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    if-ne v0, v3, :cond_c

    invoke-virtual {p2}, Lw3/g2;->v()D

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lw3/u2;->j1(DI)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lw3/g2;->c0(Ljava/lang/String;)V

    return-object p1

    :cond_6
    if-ne v0, v3, :cond_c

    iget v0, p2, Lw3/g2;->a:I

    if-ne v0, v3, :cond_7

    invoke-virtual {p1}, Lw3/g2;->v()D

    move-result-wide v0

    invoke-virtual {p2}, Lw3/g2;->v()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lw3/g2;->Y(D)V

    return-object p1

    :cond_7
    if-ne v0, v2, :cond_c

    invoke-virtual {p1}, Lw3/g2;->v()D

    move-result-wide p0

    invoke-static {p0, p1, v1}, Lw3/u2;->j1(DI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lw3/g2;->c0(Ljava/lang/String;)V

    return-object p2

    :cond_8
    invoke-static {p1}, Lw3/i0;->G2(Lw3/g2;)I

    move-result v0

    if-ne v0, v1, :cond_9

    return-object p1

    :cond_9
    if-ne v0, v2, :cond_c

    return-object p2

    :cond_a
    invoke-static {p1}, Lw3/i0;->G2(Lw3/g2;)I

    move-result v0

    if-ne v0, v2, :cond_b

    return-object p1

    :cond_b
    if-ne v0, v1, :cond_c

    return-object p2

    :cond_c
    :goto_1
    new-instance v0, Lw3/g2;

    invoke-direct {v0, p0, p1, p2}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e3(Ly3/f0;)Lw3/g2;
    .locals 5

    invoke-virtual {p1}, Ly3/f0;->w0()Ly3/e0;

    move-result-object v0

    invoke-virtual {p1}, Ly3/f0;->y0()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v0}, Ly3/e0;->E0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lw3/r;->b(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x6a

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/e0;

    iget-object v4, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v4, v3}, Lw3/r;->a(I)V

    iget-object v4, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v2}, Ly3/e0;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lw3/r;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ly3/f0;->z0()Ly3/e;

    move-result-object v1

    invoke-virtual {v1}, Lw3/g2;->H()I

    move-result v1

    const/16 v2, 0x84

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x43

    invoke-virtual {v1, v3}, Lw3/r;->f(I)V

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x57

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    :goto_1
    invoke-virtual {v1, v3}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/f0;->z0()Ly3/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    invoke-virtual {p1}, Ly3/f0;->z0()Ly3/e;

    move-result-object p1

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x58

    invoke-virtual {p1, v3}, Lw3/r;->a(I)V

    :cond_2
    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object p1

    new-instance v3, Lw3/g2;

    invoke-direct {v3, v2, v0, v1, p1}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;Lw3/g2;)V

    iput-object p1, v0, Ly3/c0;->m:Lw3/g2;

    return-object v3
.end method

.method private f2(ILw3/g2;)Lw3/g2;
    .locals 5

    invoke-virtual {p2}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x27

    const/4 v2, 0x1

    const-string v3, "eval"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "With"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Lw3/g2;->A()Lw3/g2;

    move-result-object v0

    invoke-virtual {v0}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    new-instance v0, Lw3/g2;

    invoke-direct {v0, p1, p2}, Lw3/g2;-><init>(ILw3/g2;)V

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lw3/m2;->I1()V

    const/16 p1, 0xa

    invoke-virtual {v0, p1, v2}, Lw3/g2;->R(II)V

    :cond_3
    return-object v0
.end method

.method private f3(Ly3/g0;)Lw3/g2;
    .locals 3

    invoke-virtual {p0, p1}, Lw3/m2;->u1(Ly3/r0;)V

    :try_start_0
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x9c

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/g0;->R0()Ly3/b1;

    move-result-object v0

    invoke-direct {p0, v0}, Lw3/i0;->x3(Ly3/b1;)Lw3/g2;

    move-result-object v0

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    invoke-virtual {p1, v0}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ly3/g0;->Q0()Ly3/e;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const-string v2, " "

    invoke-virtual {v1, v2}, Lw3/r;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Lw3/r;->a(I)V

    :goto_1
    invoke-virtual {p1}, Ly3/g0;->Q0()Ly3/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    invoke-virtual {p1, v1}, Lw3/g2;->f(Lw3/g2;)V

    if-nez v0, :cond_2

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lw3/r;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-virtual {p0}, Lw3/m2;->q1()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lw3/m2;->q1()V

    throw p1
.end method

.method private g2(Ljava/lang/String;Lw3/g2;Lw3/g2;I)Lw3/g2;
    .locals 7

    if-nez p2, :cond_0

    new-instance p2, Lw3/g2;

    const/16 v0, 0x83

    invoke-direct {p2, v0}, Lw3/g2;-><init>(I)V

    :cond_0
    move-object v4, p2

    new-instance p2, Lw3/g2;

    const/16 v2, 0x7f

    invoke-virtual {p0, p1}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v3

    move-object v1, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;Lw3/g2;I)V

    return-object p2
.end method

.method private g3(Ly3/e;)Lw3/g2;
    .locals 2

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v1

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    return-object p1
.end method

.method private static h2(Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;
    .locals 2

    invoke-static {p0}, Lw3/i0;->G2(Lw3/g2;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p2

    :cond_1
    new-instance v0, Lw3/g2;

    const/16 v1, 0x69

    invoke-direct {v0, v1, p0, p1, p2}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;Lw3/g2;)V

    return-object v0
.end method

.method private h3(Ly3/i0;)Lw3/g2;
    .locals 2

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/r;->b(Ljava/lang/String;)V

    return-object p1
.end method

.method private i2(Lw3/g2;Ljava/lang/String;Lw3/g2;I)Lw3/g2;
    .locals 0

    if-nez p2, :cond_1

    if-nez p4, :cond_1

    if-eqz p1, :cond_0

    new-instance p2, Lw3/g2;

    const/16 p4, 0x24

    invoke-direct {p2, p4, p1, p3}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    return-object p2

    :cond_0
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lw3/i0;->q2(Lw3/g2;Ljava/lang/String;Lw3/g2;I)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private i3(Ly3/j0;)Lw3/g2;
    .locals 5

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/v;->x0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lw3/i0;->f2(ILw3/g2;)Lw3/g2;

    move-result-object v0

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result v1

    invoke-virtual {v0, v1}, Lw3/g2;->a0(I)V

    invoke-virtual {p1}, Ly3/v;->w0()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x59

    invoke-virtual {v2, v3}, Lw3/r;->f(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly3/e;

    invoke-virtual {p0, v3}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v3

    invoke-virtual {v0, v3}, Lw3/g2;->f(Lw3/g2;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lw3/i0;->C:Lw3/r;

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Lw3/r;->f(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/j0;->D0()Ly3/l0;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ly3/j0;->D0()Ly3/l0;

    move-result-object p1

    invoke-direct {p0, p1}, Lw3/i0;->k3(Ly3/l0;)Lw3/g2;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw3/g2;->f(Lw3/g2;)V

    :cond_2
    return-object v0
.end method

.method private static j2(Lw3/g2;I)Lw3/g2;
    .locals 2

    new-instance v0, Lw3/g2;

    const/16 v1, 0x88

    invoke-direct {v0, v1, p0, p1}, Lw3/g2;-><init>(ILw3/g2;I)V

    return-object v0
.end method

.method private j3(Ly3/k0;)Lw3/g2;
    .locals 3

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Ly3/k0;->v0()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lw3/r;->c(D)V

    return-object p1
.end method

.method private static k2(Ly3/r0;Lw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;
    .locals 8

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x9c

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Ly3/r0;->P0(Ly3/r0;)Ly3/r0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw3/g2;->d0(I)Lw3/g2;

    invoke-virtual {v0, p1}, Lw3/g2;->i(Lw3/g2;)V

    const/4 v3, 0x2

    new-instance v6, Lw3/g2;

    const/16 p1, 0x83

    invoke-direct {v6, p1}, Lw3/g2;-><init>(I)V

    move-object v2, p0

    move-object v4, p4

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lw3/i0;->o2(Ly3/c0;ILw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lw3/g2;->f(Lw3/g2;)V

    return-object v0

    :cond_0
    const/4 v2, 0x2

    move-object v1, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lw3/i0;->o2(Ly3/c0;ILw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object p0

    return-object p0
.end method

.method private k3(Ly3/l0;)Lw3/g2;
    .locals 11

    invoke-virtual {p1}, Ly3/l0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/l0;->w0()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lw3/g2;

    const/16 v1, 0x43

    invoke-direct {v0, v1}, Lw3/g2;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, Lw3/u2;->y:[Ljava/lang/Object;

    goto/16 :goto_3

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly3/m0;

    invoke-virtual {v5}, Ly3/m0;->B0()Z

    move-result v6

    const/16 v7, 0xa6

    const/16 v8, 0x9b

    const/16 v9, 0x9a

    if-eqz v6, :cond_2

    iget-object v6, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v6, v9}, Lw3/r;->f(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ly3/m0;->E0()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v6, v8}, Lw3/r;->f(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ly3/m0;->D0()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v6, v7}, Lw3/r;->f(I)V

    :cond_4
    :goto_1
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Ly3/b0;->v0()Ly3/e;

    move-result-object v10

    invoke-direct {p0, v10}, Lw3/i0;->E2(Lw3/g2;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v3, v4

    invoke-virtual {v5}, Ly3/m0;->C0()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v4, v1}, Lw3/r;->f(I)V

    :cond_5
    invoke-virtual {v5}, Ly3/b0;->w0()Ly3/e;

    move-result-object v4

    invoke-virtual {p0, v4}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v4

    invoke-virtual {v5}, Ly3/m0;->B0()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v9, v4}, Lw3/i0;->u2(ILw3/g2;)Lw3/g2;

    move-result-object v4

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ly3/m0;->E0()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v8, v4}, Lw3/i0;->u2(ILw3/g2;)Lw3/g2;

    move-result-object v4

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ly3/m0;->D0()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v7, v4}, Lw3/i0;->u2(ILw3/g2;)Lw3/g2;

    move-result-object v4

    :cond_8
    :goto_2
    invoke-virtual {v0, v4}, Lw3/g2;->f(Lw3/g2;)V

    if-ge v6, v2, :cond_9

    iget-object v4, p0, Lw3/i0;->C:Lw3/r;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Lw3/r;->f(I)V

    :cond_9
    move v4, v6

    goto/16 :goto_0

    :cond_a
    move-object p1, v3

    :goto_3
    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x58

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lw3/g2;->S(ILjava/lang/Object;)V

    return-object v0
.end method

.method private l2(ILw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;ZZ)Lw3/g2;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Lw3/g2;->H()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, "msg.bad.for.in.lhs"

    const/16 v5, 0x9c

    const/16 v6, 0x42

    const/16 v7, 0x43

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x7d

    if-eq v2, v10, :cond_5

    if-ne v2, v5, :cond_0

    goto :goto_2

    :cond_0
    if-eq v2, v6, :cond_3

    if-ne v2, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-static/range {p3 .. p3}, Lw3/i0;->J2(Lw3/g2;)Lw3/g2;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v4}, Lw3/m2;->z1(Ljava/lang/String;)V

    return-object v3

    :cond_2
    move v12, v2

    :goto_0
    const/4 v2, -0x1

    goto :goto_4

    :cond_3
    :goto_1
    instance-of v3, v1, Ly3/c;

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Ly3/c;

    invoke-virtual {v3}, Ly3/c;->w0()I

    move-result v9

    :cond_4
    move-object v6, v1

    move v12, v2

    goto :goto_4

    :cond_5
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lw3/g2;->A()Lw3/g2;

    move-result-object v11

    invoke-virtual {v11}, Lw3/g2;->H()I

    move-result v12

    if-eq v12, v6, :cond_8

    if-ne v12, v7, :cond_6

    goto :goto_3

    :cond_6
    const/16 v6, 0x27

    if-ne v12, v6, :cond_7

    invoke-virtual {v11}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lw3/g2;->O(ILjava/lang/String;)Lw3/g2;

    move-result-object v3

    move v12, v2

    move-object v6, v3

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v4}, Lw3/m2;->z1(Ljava/lang/String;)V

    return-object v3

    :cond_8
    :goto_3
    instance-of v2, v11, Ly3/c;

    if-eqz v2, :cond_9

    move-object v2, v11

    check-cast v2, Ly3/c;

    invoke-virtual {v2}, Ly3/c;->w0()I

    move-result v9

    :cond_9
    move-object v6, v11

    move v2, v12

    :goto_4
    new-instance v3, Lw3/g2;

    const/16 v4, 0x90

    invoke-direct {v3, v4}, Lw3/g2;-><init>(I)V

    if-eqz p6, :cond_a

    const/16 v4, 0x3b

    goto :goto_5

    :cond_a
    if-eqz p7, :cond_b

    const/16 v4, 0x3d

    goto :goto_5

    :cond_b
    if-eq v2, v8, :cond_c

    const/16 v4, 0x3c

    goto :goto_5

    :cond_c
    const/16 v4, 0x3a

    :goto_5
    new-instance v11, Lw3/g2;

    move-object/from16 v13, p4

    invoke-direct {v11, v4, v13}, Lw3/g2;-><init>(ILw3/g2;)V

    const/4 v4, 0x3

    invoke-virtual {v11, v4, v3}, Lw3/g2;->S(ILjava/lang/Object;)V

    new-instance v15, Lw3/g2;

    const/16 v13, 0x3e

    invoke-direct {v15, v13}, Lw3/g2;-><init>(I)V

    invoke-virtual {v15, v4, v3}, Lw3/g2;->S(ILjava/lang/Object;)V

    new-instance v13, Lw3/g2;

    const/16 v14, 0x3f

    invoke-direct {v13, v14}, Lw3/g2;-><init>(I)V

    invoke-virtual {v13, v4, v3}, Lw3/g2;->S(ILjava/lang/Object;)V

    new-instance v4, Lw3/g2;

    const/16 v14, 0x84

    invoke-direct {v4, v14}, Lw3/g2;-><init>(I)V

    if-eq v2, v8, :cond_e

    move/from16 v8, p1

    invoke-virtual {v0, v8, v6, v13}, Lw3/m2;->W(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v6

    if-nez p6, :cond_f

    if-nez p7, :cond_f

    if-eq v2, v7, :cond_d

    const/4 v2, 0x2

    if-eq v9, v2, :cond_f

    :cond_d
    const-string v2, "msg.bad.for.in.destruct"

    invoke-virtual {v0, v2}, Lw3/m2;->z1(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    invoke-virtual {v0, v6, v13}, Lw3/m2;->K1(Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v6

    :cond_f
    :goto_6
    new-instance v2, Lw3/g2;

    const/16 v7, 0x88

    invoke-direct {v2, v7, v6}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-virtual {v4, v2}, Lw3/g2;->f(Lw3/g2;)V

    move-object/from16 v2, p5

    invoke-virtual {v4, v2}, Lw3/g2;->f(Lw3/g2;)V

    move-object/from16 v13, p2

    check-cast v13, Ly3/c0;

    const/4 v14, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v2, v15

    move-object v15, v4

    move-object/from16 v16, v2

    invoke-static/range {v13 .. v18}, Lw3/i0;->o2(Ly3/c0;ILw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v2

    invoke-virtual {v2, v11}, Lw3/g2;->h(Lw3/g2;)V

    if-eq v12, v10, :cond_10

    if-ne v12, v5, :cond_11

    :cond_10
    invoke-virtual {v2, v1}, Lw3/g2;->h(Lw3/g2;)V

    :cond_11
    invoke-virtual {v3, v2}, Lw3/g2;->f(Lw3/g2;)V

    return-object v3
.end method

.method private l3(Ly3/n0;)Lw3/g2;
    .locals 4

    invoke-virtual {p1}, Ly3/n0;->v0()Ly3/e;

    move-result-object p1

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    const/4 v0, 0x1

    :goto_0
    instance-of v2, p1, Ly3/n0;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v2, v1}, Lw3/r;->f(I)V

    add-int/lit8 v0, v0, 0x1

    check-cast p1, Ly3/n0;

    invoke-virtual {p1}, Ly3/n0;->v0()Ly3/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lw3/r;->f(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x13

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lw3/g2;->S(ILjava/lang/Object;)V

    return-object p1
.end method

.method private static m2(Lw3/g2;Lw3/g2;Lw3/g2;I)Lw3/g2;
    .locals 3

    invoke-static {p0}, Lw3/i0;->G2(Lw3/g2;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, -0x1

    const/16 v2, 0x84

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    new-instance p0, Lw3/g2;

    invoke-direct {p0, v2, p3}, Lw3/g2;-><init>(II)V

    return-object p0

    :cond_2
    new-instance v0, Lw3/g2;

    invoke-direct {v0, v2, p3}, Lw3/g2;-><init>(II)V

    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object p3

    new-instance v1, Ly3/c0;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Ly3/c0;-><init>(ILw3/g2;)V

    iput-object p3, v1, Ly3/c0;->m:Lw3/g2;

    invoke-virtual {v0, v1}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v0, p1}, Lw3/g2;->i(Lw3/g2;)V

    if-eqz p2, :cond_3

    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, p0}, Lw3/i0;->I2(ILw3/g2;)Ly3/c0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v0, p3}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v0, p2}, Lw3/g2;->i(Lw3/g2;)V

    invoke-virtual {v0, p0}, Lw3/g2;->f(Lw3/g2;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p3}, Lw3/g2;->f(Lw3/g2;)V

    :goto_0
    return-object v0
.end method

.method private m3(Ly3/o0;)Lw3/g2;
    .locals 3

    invoke-virtual {p1}, Ly3/o0;->C0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    invoke-virtual {p1}, Ly3/o0;->B0()Ly3/i0;

    move-result-object p1

    invoke-virtual {p1}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v1, p1}, Lw3/r;->b(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lw3/i0;->r2(Lw3/g2;Ljava/lang/String;Ljava/lang/String;I)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private static n2(IZLw3/g2;)Lw3/g2;
    .locals 2

    invoke-static {p2}, Lw3/i0;->J2(Lw3/g2;)Lw3/g2;

    move-result-object p2

    invoke-virtual {p2}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lw3/g2;

    invoke-direct {v0, p0, p2}, Lw3/g2;-><init>(ILw3/g2;)V

    const/16 p2, 0x6e

    if-ne p0, p2, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p1, :cond_3

    or-int/lit8 p0, p0, 0x2

    :cond_3
    const/16 p1, 0xd

    invoke-virtual {v0, p1, p0}, Lw3/g2;->R(II)V

    return-object v0
.end method

.method private n3(Ly3/p0;)Lw3/g2;
    .locals 3

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Ly3/p0;->w0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ly3/p0;->v0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lw3/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {v0, p1}, Ly3/s0;->R0(Ly3/p0;)V

    return-object p1
.end method

.method private static o2(Ly3/c0;ILw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;
    .locals 7

    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object v0

    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object v1

    const/16 v2, 0x83

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    invoke-virtual {p3}, Lw3/g2;->H()I

    move-result v4

    if-ne v4, v2, :cond_0

    new-instance p3, Lw3/g2;

    const/16 v4, 0x2d

    invoke-direct {p3, v4}, Lw3/g2;-><init>(I)V

    :cond_0
    new-instance v4, Ly3/c0;

    const/4 v5, 0x6

    invoke-direct {v4, v5, p3}, Ly3/c0;-><init>(ILw3/g2;)V

    iput-object v0, v4, Ly3/c0;->m:Lw3/g2;

    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object p3

    invoke-virtual {p0, v0}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {p0, p2}, Lw3/g2;->i(Lw3/g2;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-ne p1, v3, :cond_2

    :cond_1
    new-instance v5, Lw3/g2;

    invoke-virtual {p0}, Ly3/e;->C()I

    move-result v6

    invoke-direct {v5, v2, v6}, Lw3/g2;-><init>(II)V

    invoke-virtual {p0, v5}, Lw3/g2;->i(Lw3/g2;)V

    :cond_2
    invoke-virtual {p0, v1}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {p0, v4}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {p0, p3}, Lw3/g2;->f(Lw3/g2;)V

    iput-object p3, p0, Ly3/c0;->m:Lw3/g2;

    if-eq p1, v0, :cond_3

    if-ne p1, v3, :cond_6

    :cond_3
    const/4 p3, 0x5

    invoke-static {p3, v1}, Lw3/i0;->I2(ILw3/g2;)Ly3/c0;

    move-result-object p3

    invoke-virtual {p0, p3}, Lw3/g2;->h(Lw3/g2;)V

    if-ne p1, v3, :cond_6

    invoke-virtual {p4}, Lw3/g2;->H()I

    move-result p1

    const/16 p3, 0x88

    if-eq p1, v2, :cond_5

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9c

    if-eq p1, v0, :cond_4

    new-instance p1, Lw3/g2;

    invoke-direct {p1, p3, p4}, Lw3/g2;-><init>(ILw3/g2;)V

    move-object p4, p1

    :cond_4
    invoke-virtual {p0, p4}, Lw3/g2;->h(Lw3/g2;)V

    :cond_5
    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lw3/g2;->e(Lw3/g2;Lw3/g2;)V

    invoke-virtual {p5}, Lw3/g2;->H()I

    move-result p1

    if-eq p1, v2, :cond_6

    new-instance p1, Lw3/g2;

    invoke-direct {p1, p3, p5}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-virtual {p0, p1, v1}, Lw3/g2;->e(Lw3/g2;Lw3/g2;)V

    :cond_6
    invoke-virtual {p0, v1}, Ly3/c0;->z0(Lw3/g2;)V

    return-object p0
.end method

.method private o3(Ly3/q0;)Lw3/g2;
    .locals 5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x19

    invoke-virtual {p1, v1}, Lw3/g2;->E(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x1b

    invoke-virtual {p1, v2}, Lw3/g2;->E(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const-string v3, " "

    invoke-virtual {v0, v3}, Lw3/r;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v0, v2}, Lw3/r;->f(I)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ly3/q0;->v0()Ly3/e;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v3

    :goto_1
    if-nez v1, :cond_3

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v4, 0x54

    invoke-virtual {v1, v4}, Lw3/r;->a(I)V

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Lw3/g2;

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result p1

    invoke-direct {v0, v2, p1}, Lw3/g2;-><init>(II)V

    goto :goto_2

    :cond_4
    new-instance v0, Lw3/g2;

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result p1

    invoke-direct {v0, v2, v3, p1}, Lw3/g2;-><init>(ILw3/g2;I)V

    :goto_2
    return-object v0
.end method

.method private p2(Lw3/g2;I)Ly3/r0;
    .locals 1

    const/16 v0, 0x87

    invoke-virtual {p0, v0, p2}, Lw3/m2;->d0(II)Ly3/r0;

    move-result-object p2

    if-eqz p1, :cond_0

    check-cast p1, Ly3/c0;

    invoke-virtual {p1, p2}, Ly3/c0;->D0(Ly3/c0;)V

    :cond_0
    return-object p2
.end method

.method private p3(Ly3/s0;)Lw3/g2;
    .locals 3

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/m2;->s:Ly3/r0;

    if-eqz v0, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    iput-object p1, p0, Lw3/m2;->s:Ly3/r0;

    new-instance v0, Lw3/g2;

    const/16 v1, 0x84

    invoke-direct {v0, v1}, Lw3/g2;-><init>(I)V

    invoke-virtual {p1}, Lw3/g2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw3/g2;

    check-cast v2, Ly3/e;

    invoke-virtual {p0, v2}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lw3/g2;->f(Lw3/g2;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lw3/g2;->U()V

    invoke-virtual {v0}, Lw3/g2;->x()Lw3/g2;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Lw3/g2;->i(Lw3/g2;)V

    :cond_2
    return-object p1
.end method

.method private q2(Lw3/g2;Ljava/lang/String;Lw3/g2;I)Lw3/g2;
    .locals 2

    if-eqz p2, :cond_1

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lw3/g2;

    const/16 v1, 0x2a

    invoke-direct {v0, v1}, Lw3/g2;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_3

    new-instance p1, Lw3/g2;

    if-nez p2, :cond_2

    const/16 p2, 0x51

    invoke-direct {p1, p2, p3}, Lw3/g2;-><init>(ILw3/g2;)V

    goto :goto_2

    :cond_2
    const/16 p2, 0x52

    invoke-direct {p1, p2, v0, p3}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    goto :goto_2

    :cond_3
    if-nez p2, :cond_4

    new-instance p2, Lw3/g2;

    const/16 v0, 0x4f

    invoke-direct {p2, v0, p1, p3}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    goto :goto_1

    :cond_4
    new-instance p2, Lw3/g2;

    const/16 v1, 0x50

    invoke-direct {p2, v1, p1, v0, p3}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;Lw3/g2;)V

    :goto_1
    move-object p1, p2

    :goto_2
    if-eqz p4, :cond_5

    const/16 p2, 0x10

    invoke-virtual {p1, p2, p4}, Lw3/g2;->R(II)V

    :cond_5
    new-instance p2, Lw3/g2;

    const/16 p3, 0x44

    invoke-direct {p2, p3, p1}, Lw3/g2;-><init>(ILw3/g2;)V

    return-object p2
.end method

.method private q3(Ly3/t0;)Lw3/g2;
    .locals 2

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Ly3/t0;->v0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/r;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Ly3/t0;->v0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/g2;->P(Ljava/lang/String;)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private r2(Lw3/g2;Ljava/lang/String;Ljava/lang/String;I)Lw3/g2;
    .locals 0

    if-nez p2, :cond_2

    if-nez p4, :cond_2

    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p2, 0x21

    invoke-virtual {p0, p3, p2}, Lw3/m2;->N(Ljava/lang/String;I)V

    invoke-static {p3}, Lw3/u2;->F0(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    new-instance p2, Lw3/g2;

    const/16 p4, 0x48

    invoke-direct {p2, p4, p1}, Lw3/g2;-><init>(ILw3/g2;)V

    const/16 p1, 0x11

    invoke-virtual {p2, p1, p3}, Lw3/g2;->S(ILjava/lang/Object;)V

    new-instance p1, Lw3/g2;

    const/16 p3, 0x44

    invoke-direct {p1, p3, p2}, Lw3/g2;-><init>(ILw3/g2;)V

    return-object p1

    :cond_1
    new-instance p4, Lw3/g2;

    invoke-static {p3}, Lw3/g2;->P(Ljava/lang/String;)Lw3/g2;

    move-result-object p3

    invoke-direct {p4, p2, p1, p3}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    return-object p4

    :cond_2
    invoke-static {p3}, Lw3/g2;->P(Ljava/lang/String;)Lw3/g2;

    move-result-object p3

    or-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lw3/i0;->q2(Lw3/g2;Ljava/lang/String;Lw3/g2;I)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private r3(Ly3/v0;)Lw3/g2;
    .locals 5

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/v0;->G0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    invoke-virtual {p1, v0}, Lw3/g2;->f(Lw3/g2;)V

    new-instance v0, Lw3/g2;

    const/16 v1, 0x84

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result v2

    invoke-direct {v0, v1, p1, v2}, Lw3/g2;-><init>(ILw3/g2;I)V

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0x57

    invoke-virtual {v1, v2}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/v0;->F0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly3/u0;

    invoke-virtual {v1}, Ly3/u0;->w0()Ly3/e;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lw3/i0;->C:Lw3/r;

    const/16 v4, 0x76

    invoke-virtual {v3, v4}, Lw3/r;->f(I)V

    invoke-virtual {p0, v2}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x77

    invoke-virtual {v2, v3}, Lw3/r;->f(I)V

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lw3/i0;->C:Lw3/r;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Lw3/r;->a(I)V

    invoke-virtual {v1}, Ly3/u0;->x0()Ljava/util/List;

    move-result-object v1

    new-instance v3, Ly3/g;

    invoke-direct {v3}, Ly3/g;-><init>()V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly3/e;

    invoke-virtual {p0, v4}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lw3/g2;->f(Lw3/g2;)V

    goto :goto_2

    :cond_1
    invoke-static {v0, v2, v3}, Lw3/i0;->a2(Lw3/g2;Lw3/g2;Lw3/g2;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x58

    invoke-virtual {p1, v1}, Lw3/r;->a(I)V

    invoke-static {v0}, Lw3/i0;->c2(Lw3/g2;)V

    return-object v0
.end method

.method private static s2(Ljava/lang/String;)Lw3/g2;
    .locals 0

    invoke-static {p0}, Lw3/g2;->P(Ljava/lang/String;)Lw3/g2;

    move-result-object p0

    return-object p0
.end method

.method private s3(Ly3/x0;)Lw3/g2;
    .locals 4

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/x0;->v0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x54

    invoke-virtual {v2, v3}, Lw3/r;->a(I)V

    new-instance v2, Lw3/g2;

    invoke-virtual {p1}, Ly3/e;->C()I

    move-result p1

    invoke-direct {v2, v1, v0, p1}, Lw3/g2;-><init>(ILw3/g2;I)V

    return-object v2
.end method

.method private t2(Lw3/g2;Lw3/g2;Lw3/g2;I)Lw3/g2;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/16 v2, 0x84

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-virtual/range {p3 .. p3}, Lw3/g2;->H()I

    move-result v5

    if-ne v5, v2, :cond_0

    invoke-virtual/range {p3 .. p3}, Lw3/g2;->I()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lw3/g2;->H()I

    move-result v6

    if-ne v6, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lw3/g2;->I()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v5, :cond_2

    return-object v0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lw3/g2;->I()Z

    move-result v2

    if-nez v5, :cond_3

    if-nez v2, :cond_3

    return-object v0

    :cond_3
    new-instance v6, Lw3/g2;

    const/16 v7, 0x90

    invoke-direct {v6, v7}, Lw3/g2;-><init>(I)V

    new-instance v8, Ly3/c0;

    const/16 v9, 0x53

    move/from16 v10, p4

    invoke-direct {v8, v9, v0, v10}, Ly3/c0;-><init>(ILw3/g2;I)V

    const/4 v0, 0x3

    invoke-virtual {v8, v0, v6}, Lw3/g2;->S(ILjava/lang/Object;)V

    const/4 v9, 0x5

    if-eqz v2, :cond_7

    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object v2

    invoke-static {v9, v2}, Lw3/i0;->I2(ILw3/g2;)Ly3/c0;

    move-result-object v10

    invoke-virtual {v8, v10}, Lw3/g2;->f(Lw3/g2;)V

    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object v10

    iput-object v10, v8, Ly3/c0;->m:Lw3/g2;

    invoke-virtual {v8, v10}, Lw3/g2;->f(Lw3/g2;)V

    new-instance v10, Lw3/g2;

    invoke-direct {v10, v7}, Lw3/g2;-><init>(I)V

    invoke-virtual/range {p2 .. p2}, Lw3/g2;->x()Lw3/g2;

    move-result-object v7

    move-object v11, v7

    const/4 v7, 0x0

    :goto_1
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lw3/g2;->C()I

    move-result v12

    invoke-virtual {v11}, Lw3/g2;->x()Lw3/g2;

    move-result-object v13

    invoke-virtual {v13}, Lw3/g2;->D()Lw3/g2;

    move-result-object v14

    invoke-virtual {v14}, Lw3/g2;->D()Lw3/g2;

    move-result-object v15

    invoke-virtual {v11, v13}, Lw3/g2;->T(Lw3/g2;)V

    invoke-virtual {v11, v14}, Lw3/g2;->T(Lw3/g2;)V

    invoke-virtual {v11, v15}, Lw3/g2;->T(Lw3/g2;)V

    new-instance v3, Lw3/g2;

    invoke-direct {v3, v0}, Lw3/g2;-><init>(I)V

    invoke-virtual {v15, v3}, Lw3/g2;->f(Lw3/g2;)V

    invoke-static {v9, v2}, Lw3/i0;->I2(ILw3/g2;)Ly3/c0;

    move-result-object v3

    invoke-virtual {v15, v3}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v14}, Lw3/g2;->H()I

    move-result v3

    const/16 v9, 0x83

    if-ne v3, v9, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    invoke-static {v14, v15, v3, v12}, Lw3/i0;->m2(Lw3/g2;Lw3/g2;Lw3/g2;I)Lw3/g2;

    move-result-object v15

    :goto_2
    new-instance v3, Lw3/g2;

    const/16 v9, 0x39

    invoke-static {v6}, Lw3/i0;->v2(Lw3/g2;)Lw3/g2;

    move-result-object v14

    invoke-direct {v3, v9, v13, v14}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    invoke-virtual {v3, v0, v10}, Lw3/g2;->S(ILjava/lang/Object;)V

    const/16 v9, 0xe

    invoke-virtual {v3, v9, v7}, Lw3/g2;->R(II)V

    invoke-virtual {v10, v3}, Lw3/g2;->f(Lw3/g2;)V

    invoke-static {v10}, Lw3/i0;->v2(Lw3/g2;)Lw3/g2;

    move-result-object v3

    move-object/from16 v9, p0

    invoke-direct {v9, v3, v15, v12}, Lw3/i0;->w2(Lw3/g2;Lw3/g2;I)Lw3/g2;

    move-result-object v3

    invoke-virtual {v10, v3}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v11}, Lw3/g2;->D()Lw3/g2;

    move-result-object v11

    const/4 v3, 0x1

    add-int/2addr v7, v3

    const/4 v9, 0x5

    goto :goto_1

    :cond_5
    move-object/from16 v9, p0

    invoke-virtual {v8, v10}, Lw3/g2;->f(Lw3/g2;)V

    if-nez v4, :cond_6

    new-instance v3, Lw3/g2;

    const/16 v4, 0x33

    invoke-direct {v3, v4}, Lw3/g2;-><init>(I)V

    invoke-virtual {v3, v0, v6}, Lw3/g2;->S(ILjava/lang/Object;)V

    invoke-virtual {v8, v3}, Lw3/g2;->f(Lw3/g2;)V

    :cond_6
    invoke-virtual {v8, v2}, Lw3/g2;->f(Lw3/g2;)V

    goto :goto_3

    :cond_7
    move-object/from16 v9, p0

    :goto_3
    if-eqz v5, :cond_8

    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object v2

    invoke-virtual {v8, v2}, Ly3/c0;->B0(Lw3/g2;)V

    const/16 v3, 0x8a

    invoke-static {v3, v2}, Lw3/i0;->I2(ILw3/g2;)Ly3/c0;

    move-result-object v3

    invoke-virtual {v8, v3}, Lw3/g2;->f(Lw3/g2;)V

    invoke-static {}, Lw3/g2;->Q()Lw3/g2;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lw3/i0;->I2(ILw3/g2;)Ly3/c0;

    move-result-object v4

    invoke-virtual {v8, v4}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v8, v2}, Lw3/g2;->f(Lw3/g2;)V

    new-instance v2, Lw3/g2;

    const/16 v4, 0x80

    invoke-direct {v2, v4, v1}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-virtual {v2, v0, v6}, Lw3/g2;->S(ILjava/lang/Object;)V

    invoke-virtual {v8, v2}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v8, v3}, Lw3/g2;->f(Lw3/g2;)V

    :cond_8
    invoke-virtual {v6, v8}, Lw3/g2;->f(Lw3/g2;)V

    return-object v6
.end method

.method private static u2(ILw3/g2;)Lw3/g2;
    .locals 4

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x27

    const/16 v2, 0x28

    const/16 v3, 0x2d

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    if-ne v0, v1, :cond_7

    const/16 p0, 0x8c

    invoke-virtual {p1, p0}, Lw3/g2;->d0(I)Lw3/g2;

    return-object p1

    :pswitch_2
    if-ne v0, v1, :cond_0

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lw3/g2;->d0(I)Lw3/g2;

    invoke-virtual {p1}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/g2;->P(Ljava/lang/String;)Lw3/g2;

    move-result-object v0

    new-instance v1, Lw3/g2;

    invoke-direct {v1, p0, p1, v0}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    goto :goto_1

    :cond_0
    const/16 v1, 0x21

    if-eq v0, v1, :cond_3

    const/16 v1, 0x24

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x44

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lw3/g2;->x()Lw3/g2;

    move-result-object p0

    invoke-virtual {p1, p0}, Lw3/g2;->T(Lw3/g2;)V

    new-instance v1, Lw3/g2;

    const/16 p1, 0x46

    invoke-direct {v1, p1, p0}, Lw3/g2;-><init>(ILw3/g2;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lw3/g2;

    new-instance v0, Lw3/g2;

    invoke-direct {v0, v3}, Lw3/g2;-><init>(I)V

    invoke-direct {v1, p0, v0, p1}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lw3/g2;->x()Lw3/g2;

    move-result-object v0

    invoke-virtual {p1}, Lw3/g2;->A()Lw3/g2;

    move-result-object v1

    invoke-virtual {p1, v0}, Lw3/g2;->T(Lw3/g2;)V

    invoke-virtual {p1, v1}, Lw3/g2;->T(Lw3/g2;)V

    new-instance p1, Lw3/g2;

    invoke-direct {p1, p0, v0, v1}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    move-object v1, p1

    :goto_1
    return-object v1

    :pswitch_3
    if-ne v0, v2, :cond_7

    invoke-virtual {p1}, Lw3/g2;->v()D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p1, v0, v1}, Lw3/g2;->Y(D)V

    return-object p1

    :pswitch_4
    if-ne v0, v2, :cond_7

    invoke-virtual {p1}, Lw3/g2;->v()D

    move-result-wide v0

    invoke-static {v0, v1}, Lw3/u2;->Q1(D)I

    move-result p0

    not-int p0, p0

    int-to-double v0, p0

    invoke-virtual {p1, v0, v1}, Lw3/g2;->Y(D)V

    return-object p1

    :pswitch_5
    invoke-static {p1}, Lw3/i0;->G2(Lw3/g2;)I

    move-result v1

    if-eqz v1, :cond_7

    const/4 p0, 0x1

    const/16 v2, 0x2c

    if-ne v1, p0, :cond_4

    const/16 p0, 0x2c

    goto :goto_2

    :cond_4
    const/16 p0, 0x2d

    :goto_2
    if-eq v0, v3, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Lw3/g2;

    invoke-direct {p1, p0}, Lw3/g2;-><init>(I)V

    return-object p1

    :cond_6
    :goto_3
    invoke-virtual {p1, p0}, Lw3/g2;->d0(I)Lw3/g2;

    return-object p1

    :cond_7
    :goto_4
    new-instance v0, Lw3/g2;

    invoke-direct {v0, p0, p1}, Lw3/g2;-><init>(ILw3/g2;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private u3(Ly3/y0;)Lw3/g2;
    .locals 10

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/y0;->y0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x58

    invoke-virtual {v2, v3}, Lw3/r;->a(I)V

    new-instance v2, Ly3/g;

    invoke-direct {v2}, Ly3/g;-><init>()V

    invoke-virtual {p1}, Ly3/y0;->w0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly3/i;

    iget-object v6, p0, Lw3/i0;->C:Lw3/r;

    const/16 v7, 0x7f

    invoke-virtual {v6, v7}, Lw3/r;->f(I)V

    iget-object v6, p0, Lw3/i0;->C:Lw3/r;

    const/16 v7, 0x59

    invoke-virtual {v6, v7}, Lw3/r;->f(I)V

    invoke-virtual {v5}, Ly3/i;->x0()Ly3/i0;

    move-result-object v6

    invoke-virtual {v6}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v7, v6}, Lw3/r;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Ly3/i;->w0()Ly3/e;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v8, p0, Lw3/i0;->C:Lw3/r;

    const-string v9, " "

    invoke-virtual {v8, v9}, Lw3/r;->b(Ljava/lang/String;)V

    iget-object v8, p0, Lw3/i0;->C:Lw3/r;

    const/16 v9, 0x73

    invoke-virtual {v8, v9}, Lw3/r;->f(I)V

    invoke-virtual {p0, v7}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v7

    goto :goto_1

    :cond_0
    new-instance v7, Ly3/p;

    invoke-direct {v7}, Ly3/p;-><init>()V

    :goto_1
    iget-object v8, p0, Lw3/i0;->C:Lw3/r;

    const/16 v9, 0x5a

    invoke-virtual {v8, v9}, Lw3/r;->f(I)V

    iget-object v8, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v8, v1}, Lw3/r;->a(I)V

    invoke-virtual {v5}, Ly3/i;->v0()Ly3/g;

    move-result-object v8

    invoke-virtual {p0, v8}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v8

    iget-object v9, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v9, v3}, Lw3/r;->a(I)V

    invoke-virtual {v5}, Ly3/e;->C()I

    move-result v5

    invoke-direct {p0, v6, v7, v8, v5}, Lw3/i0;->g2(Ljava/lang/String;Lw3/g2;Lw3/g2;I)Lw3/g2;

    move-result-object v5

    invoke-virtual {v2, v5}, Lw3/g2;->f(Lw3/g2;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ly3/y0;->x0()Ly3/e;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lw3/i0;->C:Lw3/r;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lw3/r;->f(I)V

    iget-object v4, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v4, v1}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/y0;->x0()Ly3/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    iget-object v4, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v4, v3}, Lw3/r;->a(I)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ly3/e;->C()I

    move-result p1

    invoke-direct {p0, v0, v2, v1, p1}, Lw3/i0;->t2(Lw3/g2;Lw3/g2;Lw3/g2;I)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private static v2(Lw3/g2;)Lw3/g2;
    .locals 2

    invoke-virtual {p0}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x90

    if-ne v1, v0, :cond_0

    new-instance v0, Lw3/g2;

    const/16 v1, 0x36

    invoke-direct {v0, v1}, Lw3/g2;-><init>(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0}, Lw3/g2;->S(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private v3(Ly3/z0;)Lw3/g2;
    .locals 2

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lw3/i0;->T2(Ly3/z0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v1, v0}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/z0;->v0()Ly3/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object p1

    invoke-static {v0, p1}, Lw3/i0;->u2(ILw3/g2;)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private w2(Lw3/g2;Lw3/g2;I)Lw3/g2;
    .locals 3

    invoke-virtual {p0}, Lw3/m2;->I1()V

    new-instance v0, Lw3/g2;

    const/16 v1, 0x84

    invoke-direct {v0, v1, p3}, Lw3/g2;-><init>(II)V

    new-instance v1, Lw3/g2;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-virtual {v0, v1}, Lw3/g2;->f(Lw3/g2;)V

    new-instance p1, Lw3/g2;

    const/16 v1, 0x7e

    invoke-direct {p1, v1, p2, p3}, Lw3/g2;-><init>(ILw3/g2;I)V

    invoke-virtual {v0, p1}, Lw3/g2;->i(Lw3/g2;)V

    new-instance p1, Lw3/g2;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lw3/g2;-><init>(I)V

    invoke-virtual {v0, p1}, Lw3/g2;->f(Lw3/g2;)V

    return-object v0
.end method

.method private w3(Ly3/a1;)Lw3/g2;
    .locals 3

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    invoke-virtual {p1}, Ly3/a1;->x0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v1, v0}, Lw3/r;->f(I)V

    :cond_0
    invoke-virtual {p1}, Ly3/a1;->v0()Ly3/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v1

    invoke-virtual {p1}, Ly3/a1;->w0()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v2, v0}, Lw3/r;->f(I)V

    :cond_1
    invoke-virtual {p1}, Ly3/a1;->w0()Z

    move-result p1

    invoke-static {v0, p1, v1}, Lw3/i0;->n2(IZLw3/g2;)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method private x3(Ly3/b1;)Lw3/g2;
    .locals 8

    invoke-virtual {p1}, Ly3/b1;->w0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly3/c1;

    invoke-virtual {v3}, Ly3/c1;->w0()Ly3/e;

    move-result-object v4

    invoke-virtual {v3}, Ly3/c1;->v0()Ly3/e;

    move-result-object v5

    invoke-virtual {v3}, Ly3/c1;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v4}, Lw3/i0;->x2(Ly3/e;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v4

    :goto_1
    if-eqz v5, :cond_1

    iget-object v6, p0, Lw3/i0;->C:Lw3/r;

    const/16 v7, 0x5c

    invoke-virtual {v6, v7}, Lw3/r;->f(I)V

    invoke-virtual {p0, v5}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v5

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3}, Ly3/c1;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v3

    invoke-virtual {p0, v3, v4, v5}, Lw3/m2;->W(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v3

    invoke-virtual {p1, v3}, Lw3/g2;->f(Lw3/g2;)V

    goto :goto_4

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v4, v5}, Lw3/g2;->f(Lw3/g2;)V

    :cond_4
    :goto_3
    invoke-virtual {p1, v4}, Lw3/g2;->f(Lw3/g2;)V

    :goto_4
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_5

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Lw3/r;->f(I)V

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    return-object p1
.end method

.method private y3(Ly3/b1;)Lw3/g2;
    .locals 2

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v1

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-direct {p0, p1}, Lw3/i0;->x3(Ly3/b1;)Lw3/g2;

    invoke-virtual {p1}, Ly3/e;->l0()Ly3/e;

    move-result-object v0

    instance-of v1, v0, Ly3/h0;

    if-nez v1, :cond_0

    instance-of v0, v0, Ly3/g0;

    if-nez v0, :cond_0

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Lw3/r;->a(I)V

    :cond_0
    return-object p1
.end method

.method private z3(Ly3/d1;)Lw3/g2;
    .locals 7

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    const/16 v0, 0x87

    invoke-virtual {p1, v0}, Lw3/g2;->d0(I)Lw3/g2;

    invoke-virtual {p0, p1}, Lw3/m2;->u1(Ly3/r0;)V

    :try_start_0
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x59

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/d1;->T0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v4

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lw3/r;->a(I)V

    invoke-virtual {p1}, Ly3/h0;->Q0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v3

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lw3/r;->a(I)V

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lw3/i0;->o2(Ly3/c0;ILw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lw3/m2;->q1()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lw3/m2;->q1()V

    throw p1
.end method


# virtual methods
.method A2(Ly3/w;)Lw3/g2;
    .locals 8

    invoke-virtual {p1}, Ly3/w;->u1()Ly3/i0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Ly3/w;->y1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/r;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ly3/w;->x1()Ly3/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ly3/w;->x1()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ly3/w;->v1()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ly3/w;->w1()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_4

    iget-object v5, p0, Lw3/i0;->C:Lw3/r;

    const/16 v6, 0x59

    invoke-virtual {v5, v6}, Lw3/r;->f(I)V

    :cond_4
    invoke-virtual {p1}, Ly3/w;->z1()Ljava/util/List;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly3/e;

    invoke-virtual {p0, v6}, Lw3/i0;->x2(Ly3/e;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ge v3, v6, :cond_5

    iget-object v6, p0, Lw3/i0;->C:Lw3/r;

    const/16 v7, 0x5b

    invoke-virtual {v6, v7}, Lw3/r;->f(I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    if-nez v2, :cond_7

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Lw3/r;->f(I)V

    :cond_7
    if-eqz v1, :cond_8

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v2, 0xa7

    invoke-virtual {v1, v2}, Lw3/r;->f(I)V

    :cond_8
    invoke-virtual {p1}, Ly3/w;->B1()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x57

    invoke-virtual {p1, v1}, Lw3/r;->a(I)V

    :cond_9
    return-object v0
.end method

.method B2(Ly3/l0;)V
    .locals 5

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/l0;->w0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/m0;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v4, 0x1a

    invoke-virtual {v2, v4}, Lw3/g2;->E(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2}, Ly3/b0;->v0()Ly3/e;

    move-result-object v4

    invoke-virtual {p0, v4}, Lw3/i0;->x2(Ly3/e;)V

    if-nez v3, :cond_0

    iget-object v3, p0, Lw3/i0;->C:Lw3/r;

    const/16 v4, 0x6a

    invoke-virtual {v3, v4}, Lw3/r;->f(I)V

    invoke-virtual {v2}, Ly3/b0;->w0()Ly3/e;

    move-result-object v2

    invoke-virtual {p0, v2}, Lw3/i0;->x2(Ly3/e;)V

    :cond_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Lw3/r;->f(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v0, 0x58

    invoke-virtual {p1, v0}, Lw3/r;->f(I)V

    return-void
.end method

.method C2(Ly3/o0;)V
    .locals 2

    invoke-virtual {p1}, Ly3/o0;->C0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->x2(Ly3/e;)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/o0;->B0()Ly3/i0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw3/i0;->x2(Ly3/e;)V

    return-void
.end method

.method H2(Lw3/g2;)Z
    .locals 1

    instance-of v0, p1, Ly3/m;

    if-eqz v0, :cond_0

    check-cast p1, Ly3/m;

    invoke-interface {p1}, Ly3/m;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public K2(Ly3/e;)Lw3/g2;
    .locals 3

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_10

    const/16 v1, 0x43

    if-eq v0, v1, :cond_f

    const/16 v1, 0x83

    if-eq v0, v1, :cond_e

    const/16 v1, 0x84

    if-eq v0, v1, :cond_d

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    instance-of v0, p1, Ly3/s;

    if-eqz v0, :cond_0

    check-cast p1, Ly3/s;

    invoke-direct {p0, p1}, Lw3/i0;->W2(Ly3/s;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Ly3/d;

    if-eqz v0, :cond_1

    check-cast p1, Ly3/d;

    invoke-direct {p0, p1}, Lw3/i0;->N2(Ly3/d;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Ly3/z0;

    if-eqz v0, :cond_2

    check-cast p1, Ly3/z0;

    invoke-direct {p0, p1}, Lw3/i0;->v3(Ly3/z0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_2
    instance-of v0, p1, Ly3/a1;

    if-eqz v0, :cond_3

    check-cast p1, Ly3/a1;

    invoke-direct {p0, p1}, Lw3/i0;->w3(Ly3/a1;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_3
    instance-of v0, p1, Ly3/k1;

    if-eqz v0, :cond_4

    check-cast p1, Ly3/k1;

    invoke-direct {p0, p1}, Lw3/i0;->C3(Ly3/k1;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_4
    instance-of v0, p1, Ly3/b0;

    if-eqz v0, :cond_5

    check-cast p1, Ly3/b0;

    invoke-direct {p0, p1}, Lw3/i0;->d3(Ly3/b0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_5
    instance-of v0, p1, Ly3/b1;

    if-eqz v0, :cond_6

    check-cast p1, Ly3/b1;

    invoke-direct {p0, p1}, Lw3/i0;->y3(Ly3/b1;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_6
    instance-of v0, p1, Ly3/n0;

    if-eqz v0, :cond_7

    check-cast p1, Ly3/n0;

    invoke-direct {p0, p1}, Lw3/i0;->l3(Ly3/n0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Ly3/f0;

    if-eqz v0, :cond_8

    check-cast p1, Ly3/f0;

    invoke-direct {p0, p1}, Lw3/i0;->e3(Ly3/f0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_8
    instance-of v0, p1, Ly3/g0;

    if-eqz v0, :cond_9

    check-cast p1, Ly3/g0;

    invoke-direct {p0, p1}, Lw3/i0;->f3(Ly3/g0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_9
    instance-of v0, p1, Ly3/m1;

    if-eqz v0, :cond_a

    check-cast p1, Ly3/m1;

    invoke-direct {p0, p1}, Lw3/i0;->E3(Ly3/m1;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_a
    instance-of v0, p1, Ly3/j1;

    if-eqz v0, :cond_b

    check-cast p1, Ly3/j1;

    invoke-direct {p0, p1}, Lw3/i0;->B3(Ly3/j1;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t transform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p1, Ly3/x;

    invoke-direct {p0, p1}, Lw3/i0;->b3(Ly3/x;)Lw3/g2;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Ly3/l;

    invoke-direct {p0, p1}, Lw3/i0;->S2(Ly3/l;)Lw3/g2;

    move-result-object p1

    return-object p1

    :pswitch_2
    check-cast p1, Ly3/h;

    invoke-direct {p0, p1}, Lw3/i0;->Q2(Ly3/h;)Lw3/g2;

    move-result-object p1

    return-object p1

    :pswitch_3
    instance-of v0, p1, Ly3/t;

    if-eqz v0, :cond_c

    check-cast p1, Ly3/t;

    invoke-direct {p0, p1}, Lw3/i0;->X2(Ly3/t;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_c
    check-cast p1, Ly3/u;

    invoke-direct {p0, p1}, Lw3/i0;->Y2(Ly3/u;)Lw3/g2;

    move-result-object p1

    return-object p1

    :pswitch_4
    check-cast p1, Ly3/n;

    invoke-direct {p0, p1}, Lw3/i0;->U2(Ly3/n;)Lw3/g2;

    move-result-object p1

    return-object p1

    :pswitch_5
    check-cast p1, Ly3/d1;

    invoke-direct {p0, p1}, Lw3/i0;->z3(Ly3/d1;)Lw3/g2;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-direct {p0, p1}, Lw3/i0;->g3(Ly3/e;)Lw3/g2;

    move-result-object p1

    return-object p1

    :pswitch_7
    check-cast p1, Ly3/t0;

    invoke-direct {p0, p1}, Lw3/i0;->q3(Ly3/t0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :pswitch_8
    check-cast p1, Ly3/k0;

    invoke-direct {p0, p1}, Lw3/i0;->j3(Ly3/k0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :pswitch_9
    check-cast p1, Ly3/i0;

    invoke-direct {p0, p1}, Lw3/i0;->h3(Ly3/i0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :pswitch_a
    check-cast p1, Ly3/v;

    invoke-direct {p0, p1}, Lw3/i0;->a3(Ly3/v;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_0
    check-cast p1, Ly3/a;

    invoke-direct {p0, p1}, Lw3/i0;->L2(Ly3/a;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_1
    check-cast p1, Ly3/s0;

    invoke-direct {p0, p1}, Lw3/i0;->p3(Ly3/s0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_2
    check-cast p1, Ly3/e1;

    invoke-direct {p0, p1}, Lw3/i0;->A3(Ly3/e1;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_3
    check-cast p1, Ly3/v0;

    invoke-direct {p0, p1}, Lw3/i0;->r3(Ly3/v0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_4
    check-cast p1, Ly3/a0;

    invoke-direct {p0, p1}, Lw3/i0;->c3(Ly3/a0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_5
    check-cast p1, Ly3/w;

    invoke-direct {p0, p1}, Lw3/i0;->Z2(Ly3/w;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_6
    check-cast p1, Ly3/k;

    invoke-direct {p0, p1}, Lw3/i0;->R2(Ly3/k;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_7
    check-cast p1, Ly3/y0;

    invoke-direct {p0, p1}, Lw3/i0;->u3(Ly3/y0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_8
    check-cast p1, Ly3/o1;

    invoke-direct {p0, p1}, Lw3/i0;->F3(Ly3/o1;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_9
    check-cast p1, Ly3/x0;

    invoke-direct {p0, p1}, Lw3/i0;->s3(Ly3/x0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_a
    check-cast p1, Ly3/p0;

    invoke-direct {p0, p1}, Lw3/i0;->n3(Ly3/p0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_b
    check-cast p1, Ly3/o;

    invoke-direct {p0, p1}, Lw3/i0;->V2(Ly3/o;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_c
    check-cast p1, Ly3/o0;

    invoke-direct {p0, p1}, Lw3/i0;->m3(Ly3/o0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_d
    check-cast p1, Ly3/j0;

    invoke-direct {p0, p1}, Lw3/i0;->i3(Ly3/j0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :sswitch_e
    check-cast p1, Ly3/q0;

    invoke-direct {p0, p1}, Lw3/i0;->o3(Ly3/q0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_d
    invoke-direct {p0, p1}, Lw3/i0;->P2(Ly3/e;)Lw3/g2;

    move-result-object p1

    :cond_e
    :pswitch_b
    return-object p1

    :cond_f
    check-cast p1, Ly3/l0;

    invoke-direct {p0, p1}, Lw3/i0;->k3(Ly3/l0;)Lw3/g2;

    move-result-object p1

    return-object p1

    :cond_10
    check-cast p1, Ly3/c;

    invoke-direct {p0, p1}, Lw3/i0;->M2(Ly3/c;)Lw3/g2;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_e
        0x1e -> :sswitch_d
        0x21 -> :sswitch_c
        0x24 -> :sswitch_b
        0x30 -> :sswitch_a
        0x32 -> :sswitch_9
        0x49 -> :sswitch_8
        0x53 -> :sswitch_7
        0x69 -> :sswitch_6
        0x70 -> :sswitch_5
        0x73 -> :sswitch_4
        0x75 -> :sswitch_3
        0x7e -> :sswitch_2
        0x8b -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa8 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x78
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa3
        :pswitch_6
        :pswitch_b
        :pswitch_0
    .end packed-switch
.end method

.method public t3(Ly3/f;)Ly3/s0;
    .locals 2

    iput-object p1, p0, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {p1}, Ly3/s0;->k1()Z

    move-result v0

    iput-boolean v0, p0, Lw3/m2;->q:Z

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v0}, Lw3/r;->j()I

    move-result v0

    invoke-virtual {p0, p1}, Lw3/i0;->K2(Ly3/e;)Lw3/g2;

    move-result-object p1

    check-cast p1, Ly3/s0;

    iget-object v1, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v1}, Lw3/r;->j()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ly3/s0;->n1(II)V

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {v0}, Lw3/r;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ly3/s0;->m1(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lw3/i0;->C:Lw3/r;

    return-object p1
.end method

.method x2(Ly3/e;)V
    .locals 3

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_4

    const/16 v1, 0x24

    if-eq v0, v1, :cond_3

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_2

    const/16 v1, 0x83

    if-eq v0, v1, :cond_5

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    const/16 v1, 0x43

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result p1

    invoke-static {p1}, Lw3/s3;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw3/v0;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    check-cast p1, Ly3/t0;

    invoke-virtual {p1}, Ly3/t0;->v0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw3/r;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    check-cast p1, Ly3/k0;

    invoke-virtual {p1}, Ly3/k0;->v0()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lw3/r;->c(D)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    check-cast p1, Ly3/i0;

    invoke-virtual {p1}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw3/r;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Ly3/l0;

    invoke-virtual {p0, p1}, Lw3/i0;->B2(Ly3/l0;)V

    goto :goto_0

    :cond_1
    check-cast p1, Ly3/c;

    invoke-virtual {p0, p1}, Lw3/i0;->y2(Ly3/c;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result p1

    invoke-virtual {v0, p1}, Lw3/r;->f(I)V

    goto :goto_0

    :cond_3
    check-cast p1, Ly3/o;

    invoke-virtual {p0, p1}, Lw3/i0;->z2(Ly3/o;)V

    goto :goto_0

    :cond_4
    check-cast p1, Ly3/o0;

    invoke-virtual {p0, p1}, Lw3/i0;->C2(Ly3/o0;)V

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method y2(Ly3/c;)V
    .locals 4

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/c;->x0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/e;

    invoke-virtual {p0, v2}, Lw3/i0;->x2(Ly3/e;)V

    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lw3/i0;->C:Lw3/r;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Lw3/r;->f(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Lw3/r;->f(I)V

    return-void
.end method

.method z2(Ly3/o;)V
    .locals 2

    invoke-virtual {p1}, Ly3/o;->w0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/i0;->x2(Ly3/e;)V

    iget-object v0, p0, Lw3/i0;->C:Lw3/r;

    const/16 v1, 0x55

    invoke-virtual {v0, v1}, Lw3/r;->f(I)V

    invoke-virtual {p1}, Ly3/o;->v0()Ly3/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw3/i0;->x2(Ly3/e;)V

    iget-object p1, p0, Lw3/i0;->C:Lw3/r;

    const/16 v0, 0x56

    invoke-virtual {p1, v0}, Lw3/r;->f(I)V

    return-void
.end method
