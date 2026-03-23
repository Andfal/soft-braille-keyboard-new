.class public Lh/r0;
.super Lh/e1;
.source "SourceFile"

# interfaces
.implements Lh/v0;


# static fields
.field public static j:Lh/r0;

.field private static final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lh/r0;

    invoke-direct {v0}, Lh/r0;-><init>()V

    sput-object v0, Lh/r0;->j:Lh/r0;

    const/4 v0, 0x3

    new-array v0, v0, [Lh/g1;

    const/4 v1, 0x0

    sget-object v2, Lh/g1;->s:Lh/g1;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lh/g1;->x:Lh/g1;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lh/g1;->z:Lh/g1;

    aput-object v2, v0, v1

    invoke-static {v0}, Lh/g1;->d([Lh/g1;)I

    move-result v0

    sput v0, Lh/r0;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh/e1;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lh/r0;->q(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    return-void
.end method

.method public q(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .locals 23

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    iget-object v12, v9, Lh/k0;->k:Lh/f1;

    if-nez v0, :cond_0

    invoke-virtual {v12}, Lh/f1;->O()V

    return-void

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lh/g1;->E:Lh/g1;

    iget v2, v2, Lh/g1;->a:I

    iget v3, v12, Lh/f1;->c:I

    and-int/2addr v3, v2

    if-nez v3, :cond_2

    and-int/2addr v2, v11

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v13, v1

    goto :goto_2

    :cond_2
    :goto_1
    instance-of v2, v1, Lc/e;

    if-eqz v2, :cond_3

    check-cast v1, Lc/e;

    invoke-virtual {v1}, Lc/e;->z()Ljava/util/Map;

    move-result-object v1

    :cond_3
    instance-of v2, v1, Ljava/util/SortedMap;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/util/LinkedHashMap;

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v2

    goto :goto_2

    :catch_0
    nop

    goto :goto_0

    :goto_2
    invoke-virtual/range {p1 .. p2}, Lh/k0;->r(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p2}, Lh/k0;->H(Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object v14, v9, Lh/k0;->q:Lh/a1;

    const/4 v15, 0x0

    move-object/from16 v1, p3

    invoke-virtual {v9, v14, v0, v1, v15}, Lh/k0;->B(Lh/a1;Ljava/lang/Object;Ljava/lang/Object;I)V

    if-nez p6, :cond_5

    const/16 v1, 0x7b

    :try_start_1
    invoke-virtual {v12, v1}, Lh/f1;->write(I)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lh/k0;->x()V

    sget-object v1, Lh/g1;->p:Lh/g1;

    invoke-virtual {v12, v1}, Lh/f1;->j(Lh/g1;)Z

    move-result v1

    const/4 v7, 0x1

    if-eqz v1, :cond_8

    iget-object v1, v9, Lh/k0;->j:Lh/c1;

    iget-object v1, v1, Lh/c1;->c:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lc/e;

    if-eq v2, v3, :cond_6

    const-class v3, Ljava/util/HashMap;

    if-eq v2, v3, :cond_6

    const-class v3, Ljava/util/LinkedHashMap;

    if-ne v2, v3, :cond_7

    :cond_6
    invoke-interface {v13, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_8

    invoke-virtual {v12, v1}, Lh/f1;->x(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lh/f1;->S(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    const/4 v1, 0x1

    :goto_4
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x0

    move/from16 v18, v1

    move-object/from16 v6, v17

    move-object/from16 v19, v6

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lh/e1;->f:Ljava/util/List;

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    if-eqz v1, :cond_b

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_a

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_c

    :cond_a
    invoke-static {v1}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v0, v2}, Lh/e1;->f(Lh/k0;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_7

    :cond_b
    :goto_6
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v2}, Lh/e1;->f(Lh/k0;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    :goto_7
    move-object/from16 v22, v6

    const/4 v0, 0x1

    goto/16 :goto_16

    :cond_c
    iget-object v2, v8, Lh/e1;->f:Ljava/util/List;

    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    if-eqz v1, :cond_f

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_e

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_10

    :cond_e
    invoke-static {v1}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v0, v2}, Lh/e1;->f(Lh/k0;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_7

    :cond_f
    :goto_8
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v2}, Lh/e1;->f(Lh/k0;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_7

    :cond_10
    iget-object v2, v9, Lh/e1;->c:Ljava/util/List;

    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    if-eqz v1, :cond_13

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_11

    goto :goto_9

    :cond_11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_12

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_14

    :cond_12
    invoke-static {v1}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v0, v2, v5}, Lh/e1;->d(Lh/k0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_7

    :cond_13
    :goto_9
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v2, v5}, Lh/e1;->d(Lh/k0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_7

    :cond_14
    iget-object v2, v8, Lh/e1;->c:Ljava/util/List;

    if-eqz v2, :cond_18

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_18

    if-eqz v1, :cond_17

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_15

    goto :goto_a

    :cond_15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_16

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_18

    :cond_16
    invoke-static {v1}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v9, v0, v2, v5}, Lh/e1;->d(Lh/k0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_7

    :cond_17
    :goto_a
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v9, v0, v2, v5}, Lh/e1;->d(Lh/k0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    goto/16 :goto_7

    :cond_18
    iget-object v2, v9, Lh/e1;->e:Ljava/util/List;

    if-eqz v2, :cond_1c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1c

    if-eqz v1, :cond_1b

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_19

    goto :goto_c

    :cond_19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1a

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_1c

    :cond_1a
    invoke-static {v1}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_b
    invoke-virtual {v8, v9, v0, v1, v5}, Lh/e1;->o(Lh/k0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_1b
    :goto_c
    check-cast v1, Ljava/lang/String;

    goto :goto_b

    :cond_1c
    :goto_d
    iget-object v2, v8, Lh/e1;->e:Ljava/util/List;

    if-eqz v2, :cond_20

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_20

    if-eqz v1, :cond_1f

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1d

    goto :goto_f

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1e

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_20

    :cond_1e
    invoke-static {v1}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_e
    invoke-virtual {v8, v9, v0, v1, v5}, Lh/e1;->o(Lh/k0;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_1f
    :goto_f
    check-cast v1, Ljava/lang/String;

    goto :goto_e

    :cond_20
    :goto_10
    move-object v4, v1

    if-eqz v4, :cond_25

    instance-of v1, v4, Ljava/lang/String;

    if-eqz v1, :cond_21

    goto :goto_13

    :cond_21
    instance-of v1, v4, Ljava/util/Map;

    if-nez v1, :cond_23

    instance-of v1, v4, Ljava/util/Collection;

    if-eqz v1, :cond_22

    goto :goto_11

    :cond_22
    const/4 v1, 0x0

    goto :goto_12

    :cond_23
    :goto_11
    const/4 v1, 0x1

    :goto_12
    if-nez v1, :cond_24

    invoke-static {v4}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v15, v4

    move-object/from16 v4, p2

    move-object/from16 v21, v5

    move-object/from16 v5, v20

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    const/4 v0, 0x1

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lh/e1;->p(Lh/k0;Lh/l;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_14

    :cond_24
    move-object v15, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    const/4 v0, 0x1

    move-object/from16 v3, v21

    goto :goto_15

    :cond_25
    :goto_13
    move-object v15, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    const/4 v0, 0x1

    const/4 v3, 0x0

    move-object v5, v15

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v6, v21

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lh/e1;->p(Lh/k0;Lh/l;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    :goto_14
    move-object v3, v1

    :goto_15
    if-nez v3, :cond_26

    iget v1, v12, Lh/f1;->c:I

    sget-object v2, Lh/g1;->d:Lh/g1;

    invoke-static {v1, v11, v2}, Lh/g1;->b(IILh/g1;)Z

    move-result v1

    if-nez v1, :cond_26

    :goto_16
    move-object/from16 v0, p2

    move-object/from16 v6, v22

    const/4 v7, 0x1

    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_26
    instance-of v1, v15, Ljava/lang/String;

    const/16 v2, 0x2c

    if-eqz v1, :cond_29

    move-object v4, v15

    check-cast v4, Ljava/lang/String;

    if-nez v18, :cond_27

    invoke-virtual {v12, v2}, Lh/f1;->write(I)V

    :cond_27
    sget-object v1, Lh/g1;->o:Lh/g1;

    invoke-virtual {v12, v1}, Lh/f1;->j(Lh/g1;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual/range {p1 .. p1}, Lh/k0;->A()V

    :cond_28
    invoke-virtual {v12, v4, v0}, Lh/f1;->y(Ljava/lang/String;Z)V

    goto :goto_18

    :cond_29
    if-nez v18, :cond_2a

    invoke-virtual {v12, v2}, Lh/f1;->write(I)V

    :cond_2a
    sget v1, Lh/r0;->k:I

    invoke-virtual {v12, v1}, Lh/f1;->i(I)Z

    move-result v1

    if-nez v1, :cond_2b

    sget-object v1, Lh/g1;->x:Lh/g1;

    invoke-static {v11, v1}, Lh/g1;->c(ILh/g1;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_2b
    instance-of v1, v15, Ljava/lang/Enum;

    if-nez v1, :cond_2c

    invoke-static {v15}, Lc/a;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lh/k0;->F(Ljava/lang/String;)V

    goto :goto_17

    :cond_2c
    invoke-virtual {v9, v15}, Lh/k0;->E(Ljava/lang/Object;)V

    :goto_17
    const/16 v1, 0x3a

    invoke-virtual {v12, v1}, Lh/f1;->write(I)V

    :goto_18
    if-nez v3, :cond_2d

    invoke-virtual {v12}, Lh/f1;->O()V

    move-object/from16 v0, p2

    move-object/from16 v6, v22

    :goto_19
    const/4 v7, 0x1

    const/4 v15, 0x0

    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v2, v22

    if-eq v1, v2, :cond_2e

    invoke-virtual {v9, v1}, Lh/k0;->v(Ljava/lang/Class;)Lh/v0;

    move-result-object v19

    move-object v7, v1

    goto :goto_1a

    :cond_2e
    move-object v7, v2

    :goto_1a
    move-object/from16 v6, v19

    sget-object v1, Lh/g1;->p:Lh/g1;

    invoke-static {v11, v1}, Lh/g1;->c(ILh/g1;)Z

    move-result v1

    if-eqz v1, :cond_30

    instance-of v1, v6, Lh/l0;

    if-eqz v1, :cond_30

    instance-of v1, v10, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2f

    move-object v1, v10

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2f

    aget-object v1, v1, v0

    move-object v5, v1

    goto :goto_1b

    :cond_2f
    move-object/from16 v5, v17

    :goto_1b
    move-object v1, v6

    check-cast v1, Lh/l0;

    move-object/from16 v2, p1

    move-object v4, v15

    move-object/from16 v19, v6

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lh/l0;->D(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_1c

    :cond_30
    move-object/from16 v19, v6

    const/4 v5, 0x0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object v4, v15

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lh/v0;->b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1c
    move-object/from16 v0, p2

    move-object v6, v7

    goto :goto_19

    :cond_31
    iput-object v14, v9, Lh/k0;->q:Lh/a1;

    invoke-virtual/range {p1 .. p1}, Lh/k0;->s()V

    sget-object v0, Lh/g1;->o:Lh/g1;

    invoke-virtual {v12, v0}, Lh/f1;->j(Lh/g1;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_32

    invoke-virtual/range {p1 .. p1}, Lh/k0;->A()V

    :cond_32
    if-nez p6, :cond_33

    const/16 v0, 0x7d

    invoke-virtual {v12, v0}, Lh/f1;->write(I)V

    :cond_33
    return-void

    :catchall_0
    move-exception v0

    iput-object v14, v9, Lh/k0;->q:Lh/a1;

    throw v0
.end method
