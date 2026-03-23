.class public Lw3/i2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lw3/j2;

.field private b:Lw3/j2;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lw3/g2;->x()Lw3/g2;

    move-result-object p1

    if-eq p2, p1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p0, p3}, Lw3/g2;->h(Lw3/g2;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lw3/g2;->D()Lw3/g2;

    move-result-object v0

    if-eq p2, v0, :cond_2

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_2
    invoke-virtual {p0, p3, p1}, Lw3/g2;->e(Lw3/g2;Lw3/g2;)V

    :goto_0
    return-object p3
.end method

.method private static b(Lw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lw3/g2;->x()Lw3/g2;

    move-result-object p1

    if-eq p2, p1, :cond_1

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lw3/g2;->b:Lw3/g2;

    if-ne v0, p2, :cond_1

    invoke-virtual {p0, p1, p3}, Lw3/g2;->X(Lw3/g2;Lw3/g2;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3}, Lw3/g2;->W(Lw3/g2;Lw3/g2;)V

    :goto_1
    return-object p3
.end method

.method private e(Ly3/s0;Z)V
    .locals 7

    new-instance v0, Lw3/j2;

    invoke-direct {v0}, Lw3/j2;-><init>()V

    iput-object v0, p0, Lw3/i2;->a:Lw3/j2;

    new-instance v0, Lw3/j2;

    invoke-direct {v0}, Lw3/j2;-><init>()V

    iput-object v0, p0, Lw3/i2;->b:Lw3/j2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lw3/i2;->c:Z

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    move-object v1, p1

    check-cast v1, Ly3/w;

    invoke-virtual {v1}, Ly3/w;->D1()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v5, 0x1

    :goto_1
    xor-int/lit8 v0, v5, 0x1

    invoke-virtual {p1, v0}, Ly3/s0;->T0(Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lw3/i2;->f(Ly3/s0;Lw3/g2;Ly3/r0;ZZ)V

    return-void
.end method

.method private f(Ly3/s0;Lw3/g2;Ly3/r0;ZZ)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v10, 0x0

    move-object v0, v10

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Lw3/g2;->x()Lw3/g2;

    move-result-object v0

    move-object v1, v10

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lw3/g2;->D()Lw3/g2;

    move-result-object v1

    move-object/from16 v17, v1

    move-object v1, v0

    move-object/from16 v0, v17

    :goto_1
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lw3/g2;->H()I

    move-result v2

    const/16 v3, 0x9c

    const/16 v4, 0x84

    const/16 v5, 0xa1

    const/16 v11, 0x27

    if-eqz p4, :cond_5

    const/16 v12, 0xa0

    if-eq v2, v4, :cond_2

    const/16 v13, 0x87

    if-eq v2, v13, :cond_2

    if-ne v2, v12, :cond_5

    :cond_2
    instance-of v13, v0, Ly3/r0;

    if-eqz v13, :cond_5

    move-object v13, v0

    check-cast v13, Ly3/r0;

    invoke-virtual {v13}, Ly3/r0;->J0()Ljava/util/Map;

    move-result-object v14

    if-eqz v14, :cond_5

    new-instance v14, Lw3/g2;

    if-ne v2, v12, :cond_3

    const/16 v2, 0xa1

    goto :goto_2

    :cond_3
    const/16 v2, 0x9c

    :goto_2
    invoke-direct {v14, v2}, Lw3/g2;-><init>(I)V

    new-instance v2, Lw3/g2;

    invoke-direct {v2, v3}, Lw3/g2;-><init>(I)V

    invoke-virtual {v14, v2}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v13}, Ly3/r0;->J0()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v11, v15}, Lw3/g2;->O(ILjava/lang/String;)Lw3/g2;

    move-result-object v15

    invoke-virtual {v2, v15}, Lw3/g2;->f(Lw3/g2;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v13, v10}, Ly3/r0;->O0(Ljava/util/Map;)V

    invoke-static {v8, v1, v0, v14}, Lw3/i2;->b(Lw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v2

    invoke-virtual {v2}, Lw3/g2;->H()I

    move-result v12

    invoke-virtual {v14, v0}, Lw3/g2;->f(Lw3/g2;)V

    move-object v0, v2

    move v2, v12

    :cond_5
    const/4 v12, 0x3

    if-eq v2, v12, :cond_37

    const/4 v13, 0x4

    const/16 v14, 0x8a

    const/16 v15, 0x7e

    const/16 v16, 0x0

    const/16 v4, 0x53

    if-eq v2, v13, :cond_2c

    const/4 v13, 0x7

    if-eq v2, v13, :cond_27

    const/16 v13, 0x31

    const/16 v10, 0x8

    if-eq v2, v10, :cond_1b

    const/16 v10, 0x26

    if-eq v2, v10, :cond_1a

    if-eq v2, v11, :cond_1c

    const/16 v10, 0x49

    if-eq v2, v10, :cond_19

    if-eq v2, v4, :cond_17

    const/16 v10, 0x75

    if-eq v2, v10, :cond_16

    const/16 v10, 0x8c

    if-eq v2, v10, :cond_15

    if-eq v2, v5, :cond_c

    const/16 v10, 0xa8

    if-eq v2, v10, :cond_19

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_19

    :pswitch_0
    iget-object v1, v6, Lw3/i2;->a:Lw3/j2;

    invoke-virtual {v1, v0}, Lw3/j2;->k(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lw3/g2;->D()Lw3/g2;

    move-result-object v1

    invoke-virtual {v1}, Lw3/g2;->H()I

    move-result v2

    if-eq v2, v12, :cond_18

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    goto/16 :goto_c

    :pswitch_1
    move-object v3, v0

    check-cast v3, Ly3/c0;

    invoke-virtual {v3}, Ly3/c0;->y0()Ly3/c0;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_6
    iget-object v10, v6, Lw3/i2;->a:Lw3/j2;

    invoke-virtual {v10}, Lw3/j2;->m()I

    move-result v10

    :cond_7
    :goto_4
    if-eqz v10, :cond_b

    add-int/lit8 v10, v10, -0x1

    iget-object v11, v6, Lw3/i2;->a:Lw3/j2;

    invoke-virtual {v11, v10}, Lw3/j2;->c(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lw3/g2;

    if-ne v11, v5, :cond_9

    const/16 v1, 0x7b

    if-ne v2, v1, :cond_8

    iget-object v1, v5, Ly3/c0;->m:Lw3/g2;

    goto :goto_5

    :cond_8
    invoke-virtual {v5}, Ly3/c0;->v0()Lw3/g2;

    move-result-object v1

    :goto_5
    iput-object v1, v3, Ly3/c0;->m:Lw3/g2;

    const/4 v1, 0x5

    invoke-virtual {v3, v1}, Lw3/g2;->d0(I)Lw3/g2;

    goto/16 :goto_19

    :cond_9
    invoke-virtual {v11}, Lw3/g2;->H()I

    move-result v13

    if-ne v13, v15, :cond_a

    new-instance v11, Lw3/g2;

    invoke-direct {v11, v12}, Lw3/g2;-><init>(I)V

    invoke-static {v8, v1, v0, v11}, Lw3/i2;->a(Lw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v1

    goto :goto_4

    :cond_a
    if-ne v13, v4, :cond_7

    check-cast v11, Ly3/c0;

    new-instance v13, Ly3/c0;

    invoke-direct {v13, v14}, Ly3/c0;-><init>(I)V

    invoke-virtual {v11}, Ly3/c0;->x0()Lw3/g2;

    move-result-object v11

    iput-object v11, v13, Ly3/c0;->m:Lw3/g2;

    invoke-static {v8, v1, v0, v13}, Lw3/i2;->a(Lw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v1

    goto :goto_4

    :cond_b
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_2
    invoke-virtual {v6, v0, v7}, Lw3/i2;->i(Lw3/g2;Ly3/s0;)V

    goto/16 :goto_19

    :cond_c
    :pswitch_3
    invoke-virtual {v0}, Lw3/g2;->x()Lw3/g2;

    move-result-object v4

    invoke-virtual {v4}, Lw3/g2;->H()I

    move-result v4

    if-ne v4, v3, :cond_f

    invoke-virtual/range {p1 .. p1}, Lw3/g2;->H()I

    move-result v2

    const/16 v3, 0x70

    if-ne v2, v3, :cond_e

    move-object v2, v7

    check-cast v2, Ly3/w;

    invoke-virtual {v2}, Ly3/w;->D1()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    :cond_e
    :goto_6
    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v6, v2, v8, v1, v0}, Lw3/i2;->h(ZLw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v0

    goto/16 :goto_19

    :cond_f
    :pswitch_4
    new-instance v3, Lw3/g2;

    const/16 v4, 0x84

    invoke-direct {v3, v4}, Lw3/g2;-><init>(I)V

    invoke-virtual {v0}, Lw3/g2;->x()Lw3/g2;

    move-result-object v4

    :goto_8
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lw3/g2;->D()Lw3/g2;

    move-result-object v10

    invoke-virtual {v4}, Lw3/g2;->H()I

    move-result v12

    if-ne v12, v11, :cond_12

    invoke-virtual {v4}, Lw3/g2;->I()Z

    move-result v12

    if-nez v12, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v4}, Lw3/g2;->x()Lw3/g2;

    move-result-object v12

    invoke-virtual {v4, v12}, Lw3/g2;->T(Lw3/g2;)V

    invoke-virtual {v4, v13}, Lw3/g2;->d0(I)Lw3/g2;

    new-instance v14, Lw3/g2;

    const/16 v15, 0x9d

    if-ne v2, v15, :cond_11

    const/16 v15, 0x9e

    goto :goto_9

    :cond_11
    const/16 v15, 0x8

    :goto_9
    invoke-direct {v14, v15, v4, v12}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    move-object v4, v14

    goto :goto_a

    :cond_12
    invoke-virtual {v4}, Lw3/g2;->H()I

    move-result v12

    if-ne v12, v5, :cond_13

    :goto_a
    new-instance v12, Lw3/g2;

    const/16 v14, 0x88

    invoke-virtual {v0}, Lw3/g2;->C()I

    move-result v15

    invoke-direct {v12, v14, v4, v15}, Lw3/g2;-><init>(ILw3/g2;I)V

    invoke-virtual {v3, v12}, Lw3/g2;->f(Lw3/g2;)V

    :goto_b
    move-object v4, v10

    goto :goto_8

    :cond_13
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_14
    invoke-static {v8, v1, v0, v3}, Lw3/i2;->b(Lw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v0

    goto/16 :goto_19

    :cond_15
    invoke-virtual {v0}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ly3/r0;->G0(Ljava/lang/String;)Ly3/r0;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v0, v1}, Lw3/g2;->b0(Ly3/r0;)V

    goto/16 :goto_19

    :cond_16
    :pswitch_5
    iget-object v1, v6, Lw3/i2;->a:Lw3/j2;

    invoke-virtual {v1, v0}, Lw3/j2;->k(Ljava/lang/Object;)V

    iget-object v1, v6, Lw3/i2;->b:Lw3/j2;

    move-object v2, v0

    check-cast v2, Ly3/c0;

    iget-object v2, v2, Ly3/c0;->m:Lw3/g2;

    invoke-virtual {v1, v2}, Lw3/j2;->k(Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_17
    move-object v1, v0

    check-cast v1, Ly3/c0;

    invoke-virtual {v1}, Ly3/c0;->x0()Lw3/g2;

    move-result-object v1

    if-eqz v1, :cond_38

    const/4 v2, 0x1

    iput-boolean v2, v6, Lw3/i2;->c:Z

    iget-object v2, v6, Lw3/i2;->a:Lw3/j2;

    invoke-virtual {v2, v0}, Lw3/j2;->k(Ljava/lang/Object;)V

    :cond_18
    :goto_c
    iget-object v2, v6, Lw3/i2;->b:Lw3/j2;

    invoke-virtual {v2, v1}, Lw3/j2;->k(Ljava/lang/Object;)V

    goto/16 :goto_19

    :cond_19
    move-object v1, v7

    check-cast v1, Ly3/w;

    invoke-virtual {v1, v0}, Ly3/w;->s1(Lw3/g2;)V

    goto/16 :goto_19

    :cond_1a
    invoke-virtual {v6, v0, v7}, Lw3/i2;->g(Lw3/g2;Ly3/s0;)V

    goto/16 :goto_19

    :cond_1b
    if-eqz p5, :cond_1c

    const/16 v3, 0x4a

    invoke-virtual {v0, v3}, Lw3/g2;->d0(I)Lw3/g2;

    :cond_1c
    :pswitch_6
    if-eqz p4, :cond_1d

    goto/16 :goto_19

    :cond_1d
    const/16 v3, 0x1f

    if-ne v2, v11, :cond_1e

    move-object v4, v0

    goto :goto_d

    :cond_1e
    invoke-virtual {v0}, Lw3/g2;->x()Lw3/g2;

    move-result-object v4

    invoke-virtual {v4}, Lw3/g2;->H()I

    move-result v5

    if-eq v5, v13, :cond_20

    if-ne v2, v3, :cond_1f

    goto/16 :goto_19

    :cond_1f
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_20
    :goto_d
    invoke-virtual {v4}, Lw3/g2;->F()Ly3/r0;

    move-result-object v5

    if-eqz v5, :cond_21

    goto/16 :goto_19

    :cond_21
    invoke-virtual {v4}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ly3/r0;->G0(Ljava/lang/String;)Ly3/r0;

    move-result-object v5

    if-eqz v5, :cond_38

    invoke-virtual {v4, v5}, Lw3/g2;->b0(Ly3/r0;)V

    if-ne v2, v11, :cond_22

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lw3/g2;->d0(I)Lw3/g2;

    goto/16 :goto_19

    :cond_22
    const/16 v5, 0x29

    const/16 v10, 0x8

    if-eq v2, v10, :cond_26

    const/16 v10, 0x4a

    if-ne v2, v10, :cond_23

    goto :goto_e

    :cond_23
    const/16 v10, 0x9e

    if-ne v2, v10, :cond_24

    const/16 v1, 0x9f

    goto :goto_f

    :cond_24
    if-ne v2, v3, :cond_25

    new-instance v2, Lw3/g2;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Lw3/g2;-><init>(I)V

    invoke-static {v8, v1, v0, v2}, Lw3/i2;->b(Lw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v0

    goto/16 :goto_19

    :cond_25
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_26
    :goto_e
    const/16 v1, 0x38

    :goto_f
    invoke-virtual {v0, v1}, Lw3/g2;->d0(I)Lw3/g2;

    invoke-virtual {v4, v5}, Lw3/g2;->d0(I)Lw3/g2;

    goto/16 :goto_19

    :cond_27
    :pswitch_7
    invoke-virtual {v0}, Lw3/g2;->x()Lw3/g2;

    move-result-object v1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2b

    :goto_10
    invoke-virtual {v1}, Lw3/g2;->H()I

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_28

    invoke-virtual {v1}, Lw3/g2;->x()Lw3/g2;

    move-result-object v1

    goto :goto_10

    :cond_28
    invoke-virtual {v1}, Lw3/g2;->H()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_29

    invoke-virtual {v1}, Lw3/g2;->H()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2b

    :cond_29
    invoke-virtual {v1}, Lw3/g2;->x()Lw3/g2;

    move-result-object v2

    invoke-virtual {v1}, Lw3/g2;->A()Lw3/g2;

    move-result-object v3

    invoke-virtual {v2}, Lw3/g2;->H()I

    move-result v4

    const-string v5, "undefined"

    if-ne v4, v11, :cond_2a

    invoke-virtual {v2}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object v1, v3

    goto :goto_11

    :cond_2a
    invoke-virtual {v3}, Lw3/g2;->H()I

    move-result v4

    if-ne v4, v11, :cond_2b

    invoke-virtual {v3}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object v1, v2

    :cond_2b
    :goto_11
    invoke-virtual {v1}, Lw3/g2;->H()I

    move-result v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_38

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lw3/g2;->d0(I)Lw3/g2;

    goto/16 :goto_19

    :cond_2c
    invoke-virtual/range {p1 .. p1}, Lw3/g2;->H()I

    move-result v2

    const/16 v3, 0x70

    if-ne v2, v3, :cond_2d

    move-object v2, v7

    check-cast v2, Ly3/w;

    invoke-virtual {v2}, Ly3/w;->C1()Z

    move-result v2

    if-eqz v2, :cond_2d

    const/16 v16, 0x1

    :cond_2d
    if-eqz v16, :cond_2e

    const/16 v2, 0x14

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lw3/g2;->R(II)V

    goto :goto_12

    :cond_2e
    const/4 v3, 0x1

    :goto_12
    iget-boolean v2, v6, Lw3/i2;->c:Z

    if-nez v2, :cond_2f

    goto/16 :goto_19

    :cond_2f
    iget-object v2, v6, Lw3/i2;->a:Lw3/j2;

    invoke-virtual {v2}, Lw3/j2;->m()I

    move-result v2

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    :goto_13
    if-ltz v2, :cond_34

    iget-object v5, v6, Lw3/i2;->a:Lw3/j2;

    invoke-virtual {v5, v2}, Lw3/j2;->c(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw3/g2;

    invoke-virtual {v5}, Lw3/g2;->H()I

    move-result v10

    if-eq v10, v4, :cond_31

    if-ne v10, v15, :cond_30

    goto :goto_14

    :cond_30
    const/16 v11, 0x84

    goto :goto_17

    :cond_31
    :goto_14
    if-ne v10, v4, :cond_32

    new-instance v10, Ly3/c0;

    invoke-direct {v10, v14}, Ly3/c0;-><init>(I)V

    check-cast v5, Ly3/c0;

    invoke-virtual {v5}, Ly3/c0;->x0()Lw3/g2;

    move-result-object v5

    iput-object v5, v10, Ly3/c0;->m:Lw3/g2;

    goto :goto_15

    :cond_32
    new-instance v10, Lw3/g2;

    invoke-direct {v10, v12}, Lw3/g2;-><init>(I)V

    :goto_15
    if-nez v3, :cond_33

    new-instance v3, Lw3/g2;

    invoke-virtual {v0}, Lw3/g2;->C()I

    move-result v5

    const/16 v11, 0x84

    invoke-direct {v3, v11, v5}, Lw3/g2;-><init>(II)V

    goto :goto_16

    :cond_33
    const/16 v11, 0x84

    :goto_16
    invoke-virtual {v3, v10}, Lw3/g2;->f(Lw3/g2;)V

    :goto_17
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_34
    if-eqz v3, :cond_38

    invoke-virtual {v0}, Lw3/g2;->x()Lw3/g2;

    move-result-object v2

    invoke-static {v8, v1, v0, v3}, Lw3/i2;->b(Lw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v10

    if-eqz v2, :cond_36

    if-eqz v16, :cond_35

    goto :goto_18

    :cond_35
    new-instance v4, Lw3/g2;

    const/16 v0, 0x89

    invoke-direct {v4, v0, v2}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-virtual {v3, v4}, Lw3/g2;->h(Lw3/g2;)V

    new-instance v0, Lw3/g2;

    const/16 v1, 0x41

    invoke-direct {v0, v1}, Lw3/g2;-><init>(I)V

    invoke-virtual {v3, v0}, Lw3/g2;->f(Lw3/g2;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object/from16 v3, p3

    goto :goto_1b

    :cond_36
    :goto_18
    invoke-virtual {v3, v0}, Lw3/g2;->f(Lw3/g2;)V

    goto :goto_1c

    :cond_37
    :pswitch_8
    iget-object v1, v6, Lw3/i2;->b:Lw3/j2;

    invoke-virtual {v1}, Lw3/j2;->e()Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, v6, Lw3/i2;->b:Lw3/j2;

    invoke-virtual {v1}, Lw3/j2;->i()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_38

    iget-object v1, v6, Lw3/i2;->b:Lw3/j2;

    invoke-virtual {v1}, Lw3/j2;->j()Ljava/lang/Object;

    iget-object v1, v6, Lw3/i2;->a:Lw3/j2;

    invoke-virtual {v1}, Lw3/j2;->j()Ljava/lang/Object;

    :cond_38
    :goto_19
    move-object v10, v0

    nop

    instance-of v0, v10, Ly3/r0;

    if-eqz v0, :cond_39

    move-object v0, v10

    check-cast v0, Ly3/r0;

    move-object v3, v0

    goto :goto_1a

    :cond_39
    move-object v3, v9

    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    :goto_1b
    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lw3/i2;->f(Ly3/s0;Lw3/g2;Ly3/r0;ZZ)V

    :goto_1c
    move-object v0, v10

    const/4 v10, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7b
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x85
        :pswitch_5
        :pswitch_8
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x9c
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public final c(Ly3/s0;Lw3/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lw3/i2;->d(Ly3/s0;ZLw3/j;)V

    return-void
.end method

.method public final d(Ly3/s0;ZLw3/j;)V
    .locals 2

    invoke-virtual {p3}, Lw3/j;->c()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ly3/s0;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2}, Lw3/i2;->e(Ly3/s0;Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ly3/s0;->Y0()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ly3/s0;->Z0(I)Ly3/w;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lw3/i2;->d(Ly3/s0;ZLw3/j;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected g(Lw3/g2;Ly3/s0;)V
    .locals 0

    return-void
.end method

.method protected h(ZLw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p4 .. p4}, Lw3/g2;->x()Lw3/g2;

    move-result-object v3

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v4

    invoke-virtual {v2, v3}, Lw3/g2;->T(Lw3/g2;)V

    invoke-virtual {v2, v4}, Lw3/g2;->T(Lw3/g2;)V

    invoke-virtual/range {p4 .. p4}, Lw3/g2;->H()I

    move-result v5

    const/16 v7, 0xa1

    if-ne v5, v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/16 v8, 0x9c

    const-wide/16 v10, 0x0

    const/16 v12, 0x81

    const/16 v13, 0x88

    const/16 v14, 0x5b

    const/16 v15, 0x84

    new-instance v6, Lw3/g2;

    if-eqz p1, :cond_9

    if-eqz v5, :cond_1

    const/16 v16, 0xa2

    const/16 v9, 0xa2

    goto :goto_1

    :cond_1
    const/16 v9, 0x84

    :goto_1
    invoke-direct {v6, v9}, Lw3/g2;-><init>(I)V

    invoke-static {v0, v1, v2, v6}, Lw3/i2;->b(Lw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lw3/g2;

    const/16 v6, 0x43

    invoke-direct {v2, v6}, Lw3/g2;-><init>(I)V

    invoke-virtual {v3}, Lw3/g2;->x()Lw3/g2;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lw3/g2;->H()I

    move-result v6

    if-ne v6, v7, :cond_5

    const/16 v6, 0x16

    invoke-virtual {v3, v6}, Lw3/g2;->E(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v3}, Lw3/g2;->x()Lw3/g2;

    move-result-object v9

    invoke-virtual {v9}, Lw3/g2;->H()I

    move-result v7

    if-ne v7, v8, :cond_4

    new-instance v7, Lw3/g2;

    if-eqz v5, :cond_2

    invoke-virtual {v9}, Lw3/g2;->D()Lw3/g2;

    move-result-object v8

    invoke-direct {v7, v14, v8, v4}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    goto :goto_3

    :cond_2
    new-instance v8, Lw3/g2;

    invoke-virtual {v9}, Lw3/g2;->D()Lw3/g2;

    move-result-object v14

    invoke-direct {v8, v13, v14}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-direct {v7, v15, v8, v4}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    :goto_3
    if-eqz v6, :cond_3

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    new-instance v8, Lw3/g2;

    invoke-static {v10, v11}, Lw3/g2;->N(D)Lw3/g2;

    move-result-object v14

    invoke-direct {v8, v12, v14}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-virtual {v2, v8}, Lw3/g2;->f(Lw3/g2;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_3
    invoke-virtual {v9}, Lw3/g2;->x()Lw3/g2;

    move-result-object v4

    goto :goto_5

    :cond_4
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_5
    move-object v7, v4

    move-object v4, v3

    :goto_5
    invoke-virtual {v4}, Lw3/g2;->H()I

    move-result v6

    const/16 v8, 0x27

    if-ne v6, v8, :cond_7

    invoke-virtual {v4}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lw3/u2;->Y(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lw3/g2;->x()Lw3/g2;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v4, Lw3/g2;

    invoke-static {v10, v11}, Lw3/g2;->N(D)Lw3/g2;

    move-result-object v6

    invoke-direct {v4, v12, v6}, Lw3/g2;-><init>(ILw3/g2;)V

    :cond_6
    invoke-virtual {v2, v4}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v3

    move-object v4, v7

    const/16 v7, 0xa1

    const/16 v8, 0x9c

    const/16 v14, 0x5b

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_8
    const/16 v3, 0xc

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lw3/g2;->S(ILjava/lang/Object;)V

    new-instance v1, Lw3/g2;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-virtual {v0, v1}, Lw3/g2;->f(Lw3/g2;)V

    new-instance v1, Lw3/g2;

    const/16 v2, 0x7e

    invoke-direct {v1, v2, v4}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-virtual {v0, v1}, Lw3/g2;->f(Lw3/g2;)V

    new-instance v1, Lw3/g2;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lw3/g2;-><init>(I)V

    invoke-virtual {v0, v1}, Lw3/g2;->f(Lw3/g2;)V

    goto/16 :goto_b

    :cond_9
    if-eqz v5, :cond_a

    const/16 v7, 0x5b

    goto :goto_6

    :cond_a
    const/16 v7, 0x84

    :goto_6
    invoke-direct {v6, v7}, Lw3/g2;-><init>(I)V

    invoke-static {v0, v1, v2, v6}, Lw3/i2;->b(Lw3/g2;Lw3/g2;Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v0

    new-instance v1, Lw3/g2;

    const/16 v6, 0x5b

    invoke-direct {v1, v6}, Lw3/g2;-><init>(I)V

    invoke-virtual {v3}, Lw3/g2;->x()Lw3/g2;

    move-result-object v3

    :goto_7
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lw3/g2;->H()I

    move-result v6

    const/16 v7, 0xa1

    if-ne v6, v7, :cond_d

    invoke-virtual {v3}, Lw3/g2;->x()Lw3/g2;

    move-result-object v6

    invoke-virtual {v6}, Lw3/g2;->H()I

    move-result v8

    const/16 v9, 0x9c

    if-ne v8, v9, :cond_c

    new-instance v8, Lw3/g2;

    if-eqz v5, :cond_b

    invoke-virtual {v6}, Lw3/g2;->D()Lw3/g2;

    move-result-object v14

    const/16 v7, 0x5b

    invoke-direct {v8, v7, v14, v4}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    goto :goto_8

    :cond_b
    new-instance v7, Lw3/g2;

    invoke-virtual {v6}, Lw3/g2;->D()Lw3/g2;

    move-result-object v14

    invoke-direct {v7, v13, v14}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-direct {v8, v15, v7, v4}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    :goto_8
    move-object v4, v3

    check-cast v4, Ly3/r0;

    move-object v7, v2

    check-cast v7, Ly3/r0;

    invoke-static {v4, v7}, Ly3/r0;->K0(Ly3/r0;Ly3/r0;)V

    invoke-virtual {v6}, Lw3/g2;->x()Lw3/g2;

    move-result-object v4

    goto :goto_9

    :cond_c
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_d
    const/16 v9, 0x9c

    move-object v8, v4

    move-object v4, v3

    :goto_9
    invoke-virtual {v4}, Lw3/g2;->H()I

    move-result v6

    const/16 v7, 0x27

    if-ne v6, v7, :cond_f

    invoke-virtual {v4}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lw3/g2;->P(Ljava/lang/String;)Lw3/g2;

    move-result-object v6

    move-object v14, v2

    check-cast v14, Ly3/r0;

    invoke-virtual {v6, v14}, Lw3/g2;->b0(Ly3/r0;)V

    invoke-virtual {v4}, Lw3/g2;->x()Lw3/g2;

    move-result-object v4

    if-nez v4, :cond_e

    new-instance v4, Lw3/g2;

    invoke-static {v10, v11}, Lw3/g2;->N(D)Lw3/g2;

    move-result-object v14

    invoke-direct {v4, v12, v14}, Lw3/g2;-><init>(ILw3/g2;)V

    :cond_e
    new-instance v14, Lw3/g2;

    const/16 v7, 0x38

    invoke-direct {v14, v7, v6, v4}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    invoke-virtual {v1, v14}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v3

    move-object v4, v8

    goto :goto_7

    :cond_f
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_10
    if-eqz v5, :cond_11

    invoke-virtual {v0, v1}, Lw3/g2;->f(Lw3/g2;)V

    const/16 v1, 0x5b

    invoke-virtual {v2, v1}, Lw3/g2;->d0(I)Lw3/g2;

    invoke-virtual {v0, v2}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v2, v4}, Lw3/g2;->f(Lw3/g2;)V

    instance-of v1, v4, Ly3/r0;

    if-eqz v1, :cond_12

    goto :goto_a

    :cond_11
    new-instance v3, Lw3/g2;

    invoke-direct {v3, v13, v1}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-virtual {v0, v3}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v2, v15}, Lw3/g2;->d0(I)Lw3/g2;

    invoke-virtual {v0, v2}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v2, v4}, Lw3/g2;->i(Lw3/g2;)V

    instance-of v1, v4, Ly3/r0;

    if-eqz v1, :cond_12

    :goto_a
    check-cast v4, Ly3/r0;

    invoke-virtual {v4}, Ly3/r0;->H0()Ly3/r0;

    move-result-object v1

    check-cast v2, Ly3/r0;

    invoke-virtual {v4, v2}, Ly3/r0;->N0(Ly3/r0;)V

    invoke-virtual {v2, v1}, Ly3/r0;->N0(Ly3/r0;)V

    :cond_12
    :goto_b
    return-object v0
.end method

.method protected i(Lw3/g2;Ly3/s0;)V
    .locals 0

    return-void
.end method
