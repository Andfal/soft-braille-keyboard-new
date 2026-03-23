.class public final Lh/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;


# static fields
.field public static final a:Lh/p0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/p0;

    invoke-direct {v0}, Lh/p0;-><init>()V

    sput-object v0, Lh/p0;->a:Lh/p0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 20

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move/from16 v8, p5

    iget-object v1, v7, Lh/k0;->k:Lh/f1;

    sget-object v2, Lh/g1;->p:Lh/g1;

    invoke-virtual {v1, v2}, Lh/f1;->j(Lh/g1;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-static {v8, v2}, Lh/g1;->c(ILh/g1;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    const/4 v9, 0x1

    :goto_1
    iget-object v10, v7, Lh/k0;->k:Lh/f1;

    if-eqz v9, :cond_2

    invoke-static/range {p4 .. p4}, Ll/l;->U(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move-object v11, v1

    if-nez v0, :cond_3

    sget-object v0, Lh/g1;->h:Lh/g1;

    invoke-virtual {v10, v0}, Lh/f1;->R(Lh/g1;)V

    return-void

    :cond_3
    move-object v12, v0

    check-cast v12, Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_4

    const-string v0, "[]"

    invoke-virtual {v10, v0}, Lh/f1;->c(Ljava/lang/CharSequence;)Lh/f1;

    return-void

    :cond_4
    iget-object v13, v7, Lh/k0;->q:Lh/a1;

    move-object/from16 v14, p3

    invoke-virtual {v7, v13, v0, v14, v3}, Lh/k0;->B(Lh/a1;Ljava/lang/Object;Ljava/lang/Object;I)V

    :try_start_0
    sget-object v1, Lh/g1;->o:Lh/g1;

    invoke-virtual {v10, v1}, Lh/f1;->j(Lh/g1;)Z

    move-result v1

    const/16 v15, 0x2c

    const/16 v6, 0x5d

    const/16 v2, 0x5b

    if-eqz v1, :cond_9

    invoke-virtual {v10, v2}, Lh/f1;->b(C)Lh/f1;

    invoke-virtual/range {p1 .. p1}, Lh/k0;->x()V

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v12, 0x0

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v12, :cond_5

    invoke-virtual {v10, v15}, Lh/f1;->b(C)Lh/f1;

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lh/k0;->A()V

    if-eqz v5, :cond_7

    invoke-virtual {v7, v5}, Lh/k0;->r(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v7, v5}, Lh/k0;->H(Ljava/lang/Object;)V

    const/16 v0, 0x5d

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Lh/k0;->v(Ljava/lang/Class;)Lh/v0;

    move-result-object v16

    new-instance v4, Lh/a1;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v1, v4

    move-object v2, v13

    move-object/from16 v3, p2

    move-object v15, v4

    move-object/from16 v4, p3

    move-object/from16 v19, v5

    move/from16 v5, v17

    const/16 v0, 0x5d

    move/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lh/a1;-><init>(Lh/a1;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v15, v7, Lh/k0;->q:Lh/a1;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, v19

    move-object v5, v11

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lh/v0;->b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_4

    :cond_7
    const/16 v0, 0x5d

    iget-object v1, v7, Lh/k0;->k:Lh/f1;

    invoke-virtual {v1}, Lh/f1;->O()V

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p2

    const/16 v6, 0x5d

    const/16 v15, 0x2c

    goto :goto_3

    :cond_8
    const/16 v0, 0x5d

    invoke-virtual/range {p1 .. p1}, Lh/k0;->s()V

    invoke-virtual/range {p1 .. p1}, Lh/k0;->A()V

    invoke-virtual {v10, v0}, Lh/f1;->b(C)Lh/f1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v13, v7, Lh/k0;->q:Lh/a1;

    return-void

    :cond_9
    const/16 v0, 0x5d

    :try_start_1
    invoke-virtual {v10, v2}, Lh/f1;->b(C)Lh/f1;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v15, :cond_13

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v6, :cond_a

    const/16 v4, 0x2c

    invoke-virtual {v10, v4}, Lh/f1;->b(C)Lh/f1;

    goto :goto_6

    :cond_a
    const/16 v4, 0x2c

    :goto_6
    if-nez v5, :cond_b

    const-string v1, "null"

    invoke-virtual {v10, v1}, Lh/f1;->c(Ljava/lang/CharSequence;)Lh/f1;

    :goto_7
    move/from16 v16, v6

    move/from16 v18, v9

    const/16 v17, 0x2c

    goto/16 :goto_9

    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_c

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Lh/f1;->L(I)V

    goto :goto_7

    :cond_c
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_e

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    if-eqz v9, :cond_d

    invoke-virtual {v10, v1, v2}, Lh/f1;->N(J)V

    const/16 v1, 0x4c

    invoke-virtual {v10, v1}, Lh/f1;->write(I)V

    goto :goto_7

    :cond_d
    invoke-virtual {v10, v1, v2}, Lh/f1;->N(J)V

    goto :goto_7

    :cond_e
    sget-object v1, Lh/g1;->q:Lh/g1;

    iget v1, v1, Lh/g1;->a:I

    and-int/2addr v1, v8

    if-eqz v1, :cond_f

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Lh/k0;->v(Ljava/lang/Class;)Lh/v0;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v2, p1

    move-object v3, v5

    const/16 v17, 0x2c

    move-object/from16 v4, v16

    move-object v5, v11

    move/from16 v16, v6

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lh/v0;->b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move/from16 v18, v9

    goto/16 :goto_9

    :cond_f
    move/from16 v16, v6

    const/16 v17, 0x2c

    iget-boolean v1, v10, Lh/f1;->h:Z

    if-nez v1, :cond_10

    new-instance v6, Lh/a1;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v1, v6

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v0, v5

    move/from16 v5, v18

    move/from16 v18, v9

    move-object v9, v6

    move/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Lh/a1;-><init>(Lh/a1;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v9, v7, Lh/k0;->q:Lh/a1;

    goto :goto_8

    :cond_10
    move-object v0, v5

    move/from16 v18, v9

    :goto_8
    invoke-virtual {v7, v0}, Lh/k0;->r(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v7, v0}, Lh/k0;->H(Ljava/lang/Object;)V

    goto :goto_9

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Lh/k0;->v(Ljava/lang/Class;)Lh/v0;

    move-result-object v1

    sget-object v2, Lh/g1;->p:Lh/g1;

    iget v2, v2, Lh/g1;->a:I

    and-int/2addr v2, v8

    if-eqz v2, :cond_12

    instance-of v2, v1, Lh/l0;

    if-eqz v2, :cond_12

    check-cast v1, Lh/l0;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v2, p1

    move-object v3, v0

    move-object v5, v11

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lh/l0;->D(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_9

    :cond_12
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v2, p1

    move-object v3, v0

    move-object v5, v11

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lh/v0;->b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    :goto_9
    add-int/lit8 v6, v16, 0x1

    move/from16 v9, v18

    const/16 v0, 0x5d

    goto/16 :goto_5

    :cond_13
    invoke-virtual {v10, v0}, Lh/f1;->b(C)Lh/f1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v13, v7, Lh/k0;->q:Lh/a1;

    return-void

    :catchall_0
    move-exception v0

    iput-object v13, v7, Lh/k0;->q:Lh/a1;

    throw v0
.end method
