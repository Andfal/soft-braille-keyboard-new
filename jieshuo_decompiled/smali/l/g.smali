.class public Ll/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/reflect/Method;

.field public final f:Ljava/lang/reflect/Method;

.field public final g:I

.field public final h:[Ll/c;

.field public final i:[Ll/c;

.field public final j:I

.field public final k:Ld/d;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public n:[Ljava/lang/String;

.field public o:[Ljava/lang/reflect/Type;

.field public p:[Ljava/lang/String;

.field public q:Z

.field public r:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ld/d;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ld/d;",
            "Ljava/util/List<",
            "Ll/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/g;->a:Ljava/lang/Class;

    iput-object p2, p0, Ll/g;->b:Ljava/lang/Class;

    iput-object p3, p0, Ll/g;->c:Ljava/lang/reflect/Constructor;

    iput-object p4, p0, Ll/g;->d:Ljava/lang/reflect/Constructor;

    iput-object p5, p0, Ll/g;->e:Ljava/lang/reflect/Method;

    invoke-static {p1}, Ll/l;->e0(Ljava/lang/Class;)I

    move-result p2

    iput p2, p0, Ll/g;->j:I

    iput-object p6, p0, Ll/g;->f:Ljava/lang/reflect/Method;

    iput-object p7, p0, Ll/g;->k:Ld/d;

    const/4 p2, 0x0

    if-eqz p7, :cond_3

    invoke-interface {p7}, Ld/d;->typeName()Ljava/lang/String;

    move-result-object p6

    invoke-interface {p7}, Ld/d;->typeKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Ll/g;->m:Ljava/lang/String;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    :goto_1
    iput-object p6, p0, Ll/g;->l:Ljava/lang/String;

    invoke-interface {p7}, Ld/d;->orders()[Ljava/lang/String;

    move-result-object p6

    array-length p7, p6

    if-nez p7, :cond_2

    move-object p6, p2

    :cond_2
    iput-object p6, p0, Ll/g;->n:[Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Ll/g;->l:Ljava/lang/String;

    iput-object p2, p0, Ll/g;->m:Ljava/lang/String;

    iput-object p2, p0, Ll/g;->n:[Ljava/lang/String;

    :goto_2
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p6

    new-array p6, p6, [Ll/c;

    iput-object p6, p0, Ll/g;->h:[Ll/c;

    invoke-interface {p8, p6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    array-length p7, p6

    new-array p7, p7, [Ll/c;

    iget-object v0, p0, Ll/g;->n:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p8

    invoke-direct {v0, p8}, Ljava/util/LinkedHashMap;-><init>(I)V

    array-length p8, p6

    const/4 v2, 0x0

    :goto_3
    if-ge v2, p8, :cond_4

    aget-object v3, p6, v2

    iget-object v4, v3, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object p6, p0, Ll/g;->n:[Ljava/lang/String;

    array-length p8, p6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v2, p8, :cond_6

    aget-object v4, p6, v2

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll/c;

    if-eqz v5, :cond_5

    add-int/lit8 v6, v3, 0x1

    aput-object v5, p7, v3

    invoke-virtual {v0, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_5
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result p8

    if-eqz p8, :cond_8

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Ll/c;

    add-int/lit8 v0, v3, 0x1

    aput-object p8, p7, v3

    move v3, v0

    goto :goto_5

    :cond_7
    array-length p8, p6

    invoke-static {p6, v1, p7, v1, p8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_8
    iget-object p6, p0, Ll/g;->h:[Ll/c;

    invoke-static {p6, p7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_9

    iget-object p7, p0, Ll/g;->h:[Ll/c;

    :cond_9
    iput-object p7, p0, Ll/g;->i:[Ll/c;

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    :goto_6
    iput p3, p0, Ll/g;->g:I

    goto :goto_7

    :cond_a
    if-eqz p5, :cond_b

    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p3, p3

    goto :goto_6

    :cond_b
    iput v1, p0, Ll/g;->g:I

    :goto_7
    if-eqz p4, :cond_13

    invoke-virtual {p4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    iput-object p3, p0, Ll/g;->o:[Ljava/lang/reflect/Type;

    invoke-static {p1}, Ll/l;->s0(Ljava/lang/Class;)Z

    move-result p3

    iput-boolean p3, p0, Ll/g;->q:Z

    if-eqz p3, :cond_f

    invoke-static {p1}, Ll/l;->Z(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Ll/g;->p:[Ljava/lang/String;

    :try_start_0
    new-array p3, v1, [Ljava/lang/Class;

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Ll/g;->r:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    invoke-static {p4}, Ll/l;->c0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    const/4 p3, 0x0

    :goto_8
    iget-object p4, p0, Ll/g;->p:[Ljava/lang/String;

    array-length p4, p4

    if-ge p3, p4, :cond_13

    array-length p4, p1

    if-ge p3, p4, :cond_13

    aget-object p4, p1, p3

    array-length p5, p4

    const/4 p6, 0x0

    :goto_9
    if-ge p6, p5, :cond_d

    aget-object p7, p4, p6

    instance-of p8, p7, Ld/b;

    if-eqz p8, :cond_c

    check-cast p7, Ld/b;

    goto :goto_a

    :cond_c
    add-int/lit8 p6, p6, 0x1

    goto :goto_9

    :cond_d
    move-object p7, p2

    :goto_a
    if-eqz p7, :cond_e

    invoke-interface {p7}, Ld/b;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p5

    if-lez p5, :cond_e

    iget-object p5, p0, Ll/g;->p:[Ljava/lang/String;

    aput-object p4, p5, p3

    :cond_e
    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_f
    iget-object p1, p0, Ll/g;->o:[Ljava/lang/reflect/Type;

    array-length p1, p1

    iget-object p2, p0, Ll/g;->h:[Ll/c;

    array-length p2, p2

    if-eq p1, p2, :cond_10

    goto :goto_c

    :cond_10
    const/4 p1, 0x0

    :goto_b
    iget-object p2, p0, Ll/g;->o:[Ljava/lang/reflect/Type;

    array-length p3, p2

    if-ge p1, p3, :cond_12

    aget-object p2, p2, p1

    iget-object p3, p0, Ll/g;->h:[Ll/c;

    aget-object p3, p3, p1

    iget-object p3, p3, Ll/c;->e:Ljava/lang/Class;

    if-eq p2, p3, :cond_11

    goto :goto_c

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_12
    const/4 v1, 0x1

    :goto_c
    if-nez v1, :cond_13

    invoke-static {p4}, Ll/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ll/g;->p:[Ljava/lang/String;

    :cond_13
    return-void
.end method

.method static a(Ljava/util/List;Ll/c;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll/c;",
            ">;",
            "Ll/c;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll/c;

    iget-object v3, v2, Ll/c;->a:Ljava/lang/String;

    iget-object v4, p1, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, v2, Ll/c;->h:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Ll/c;->h:Z

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Ll/c;->e:Ljava/lang/Class;

    iget-object v4, p1, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    invoke-virtual {v2, p1}, Ll/c;->a(Ll/c;)I

    move-result v2

    if-gez v2, :cond_2

    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/reflect/Type;Lc/l;)Ll/g;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lc/l;",
            ")",
            "Ll/g;"
        }
    .end annotation

    const/4 v3, 0x0

    sget-boolean v4, Ll/l;->b:Z

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Ll/g;->c(Ljava/lang/Class;Ljava/lang/reflect/Type;Lc/l;ZZZ)Ll/g;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/reflect/Type;Lc/l;ZZZ)Ll/g;
    .locals 59
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lc/l;",
            "ZZZ)",
            "Ll/g;"
        }
    .end annotation

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v9, p5

    const-class v0, Ld/d;

    invoke-static {v13, v0}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ld/d;

    if-eqz v15, :cond_0

    invoke-interface {v15}, Ld/d;->naming()Lc/l;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lc/l;->a:Lc/l;

    if-eq v0, v1, :cond_0

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p2

    :goto_0
    invoke-static {v13, v15}, Ll/g;->f(Ljava/lang/Class;Ld/d;)Ljava/lang/Class;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Ll/g;->d(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v16

    invoke-static/range {p0 .. p0}, Ll/l;->s0(Ljava/lang/Class;)Z

    move-result v17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/16 v18, 0x0

    const/4 v7, 0x1

    if-eqz v17, :cond_2

    array-length v1, v0

    if-ne v1, v7, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v19, v18

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v11, :cond_3

    invoke-static {v13, v0}, Ll/g;->h(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-virtual {v11}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {v11, v1}, Ll/g;->h(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_2
    move-object/from16 v19, v1

    :goto_3
    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_6

    move-object v0, v13

    :goto_4
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v13, v14, v12, v6, v1}, Ll/g;->e(Ljava/lang/Class;Ljava/lang/reflect/Type;Lc/l;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    :cond_4
    if-eqz v19, :cond_5

    invoke-static/range {v19 .. v19}, Ll/l;->K0(Ljava/lang/reflect/AccessibleObject;)V

    :cond_5
    new-instance v9, Ll/g;

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, v19

    move-object/from16 v5, v21

    move-object v8, v6

    move-object/from16 v6, v20

    move-object v7, v15

    invoke-direct/range {v0 .. v8}, Ll/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ld/d;Ljava/util/List;)V

    return-object v9

    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v1, 0x1

    :goto_6
    const-class v4, Ljava/util/Collection;

    const-class v3, Ljava/lang/String;

    const-class v14, Ljava/lang/Object;

    move-object/from16 p2, v12

    const-class v12, Ld/b;

    move-object/from16 p4, v12

    if-nez v19, :cond_9

    if-eqz v11, :cond_a

    :cond_9
    if-eqz v1, :cond_3a

    :cond_a
    invoke-static {v0}, Ll/g;->g([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v22

    if-eqz v22, :cond_16

    if-nez v1, :cond_16

    invoke-static/range {v22 .. v22}, Ll/l;->K0(Ljava/lang/reflect/AccessibleObject;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v0, v9

    if-lez v0, :cond_15

    invoke-static/range {v22 .. v22}, Ll/l;->c0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v23, v18

    const/4 v0, 0x0

    :goto_7
    array-length v2, v9

    if-ge v0, v2, :cond_15

    array-length v2, v1

    if-ge v0, v2, :cond_15

    aget-object v2, v1, v0

    array-length v5, v2

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v5, :cond_c

    aget-object v12, v2, v7

    move-object/from16 p5, v1

    instance-of v1, v12, Ld/b;

    if-eqz v1, :cond_b

    check-cast v12, Ld/b;

    goto :goto_9

    :cond_b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p5

    goto :goto_8

    :cond_c
    move-object/from16 p5, v1

    move-object/from16 v12, v18

    :goto_9
    aget-object v5, v9, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v7, v1, v0

    if-eqz v12, :cond_d

    invoke-interface {v12}, Ld/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1, v10}, Ll/l;->W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-interface {v12}, Ld/b;->ordinal()I

    move-result v2

    invoke-interface {v12}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lh/g1;->d([Lh/g1;)I

    move-result v28

    invoke-interface {v12}, Ld/b;->parseFeatures()[Lf/b;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lf/b;->b([Lf/b;)I

    move-result v29

    invoke-interface {v12}, Ld/b;->name()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v58, v12

    move v12, v2

    move-object/from16 v2, v58

    goto :goto_a

    :cond_d
    move-object/from16 v1, v18

    move-object v2, v1

    const/4 v12, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_a
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v30

    if-nez v30, :cond_10

    :cond_e
    if-nez v23, :cond_f

    invoke-static/range {v22 .. v22}, Ll/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    :cond_f
    aget-object v2, v23, v0

    :cond_10
    if-nez v1, :cond_14

    if-nez v23, :cond_12

    if-eqz v17, :cond_11

    invoke-static/range {p0 .. p0}, Ll/l;->Z(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v23

    goto :goto_b

    :cond_11
    invoke-static/range {v22 .. v22}, Ll/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v23

    :cond_12
    :goto_b
    move-object/from16 v30, v1

    move-object/from16 v31, v3

    move-object/from16 v1, v23

    array-length v3, v1

    if-le v3, v0, :cond_13

    aget-object v3, v1, v0

    invoke-static {v13, v3, v10}, Ll/l;->W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object/from16 v23, v1

    move-object/from16 v30, v3

    goto :goto_c

    :cond_13
    move-object/from16 v23, v1

    goto :goto_c

    :cond_14
    move-object/from16 v30, v1

    move-object/from16 v31, v3

    :goto_c
    new-instance v3, Ll/c;

    move/from16 v32, v0

    move-object v0, v3

    move-object/from16 v33, p5

    move-object v1, v2

    move-object/from16 v34, v14

    const/4 v14, 0x2

    move-object/from16 v2, p0

    move-object v14, v3

    move-object/from16 v35, v31

    move-object v3, v5

    move-object v5, v4

    move-object v4, v7

    move-object/from16 v36, v5

    const/4 v7, 0x0

    move-object/from16 v5, v30

    move-object/from16 v25, v15

    move-object v15, v6

    move v6, v12

    const/4 v12, 0x0

    move/from16 v7, v28

    move-object v12, v8

    move/from16 v8, v29

    invoke-direct/range {v0 .. v8}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    invoke-static {v15, v14}, Ll/g;->a(Ljava/util/List;Ll/c;)Z

    add-int/lit8 v0, v32, 0x1

    move-object v8, v12

    move-object v6, v15

    move-object/from16 v15, v25

    move-object/from16 v1, v33

    move-object/from16 v14, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_15
    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move-object v12, v8

    move-object/from16 v34, v14

    move-object/from16 v25, v15

    move-object v15, v6

    move-object/from16 v23, v10

    move-object/from16 v29, v12

    move-object/from16 v33, v21

    :goto_d
    move-object/from16 v14, v34

    move-object/from16 v37, v35

    const/16 v26, 0x0

    const/16 v30, 0x3

    move-object/from16 v10, p4

    goto/16 :goto_23

    :cond_16
    move-object/from16 v35, v3

    move-object/from16 v36, v4

    move-object v12, v8

    move-object/from16 v34, v14

    move-object/from16 v25, v15

    move-object v15, v6

    invoke-static {v13, v12, v9}, Ll/g;->i(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v14

    if-eqz v14, :cond_20

    invoke-static {v14}, Ll/l;->K0(Ljava/lang/reflect/AccessibleObject;)V

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v0, v8

    if-lez v0, :cond_39

    invoke-static {v14}, Ll/l;->d0(Ljava/lang/reflect/Method;)[[Ljava/lang/annotation/Annotation;

    move-result-object v12

    move-object/from16 v0, v18

    const/4 v7, 0x0

    :goto_e
    array-length v1, v8

    if-ge v7, v1, :cond_1f

    aget-object v1, v12, v7

    array-length v2, v1

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v2, :cond_18

    aget-object v3, v1, v5

    instance-of v4, v3, Ld/b;

    if-eqz v4, :cond_17

    check-cast v3, Ld/b;

    goto :goto_10

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_18
    move-object/from16 v3, v18

    :goto_10
    if-nez v3, :cond_1a

    if-eqz v9, :cond_19

    invoke-static {v14}, Ll/l;->r0(Ljava/lang/reflect/Method;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_11

    :cond_19
    new-instance v0, Lc/d;

    const-string v1, "illegal json creator"

    invoke-direct {v0, v1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    :goto_11
    if-eqz v3, :cond_1b

    invoke-interface {v3}, Ld/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Ld/b;->ordinal()I

    move-result v2

    invoke-interface {v3}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v4

    invoke-static {v4}, Lh/g1;->d([Lh/g1;)I

    move-result v4

    invoke-interface {v3}, Ld/b;->parseFeatures()[Lf/b;

    move-result-object v3

    invoke-static {v3}, Lf/b;->b([Lf/b;)I

    move-result v3

    move v6, v2

    move/from16 v17, v3

    move/from16 v16, v4

    goto :goto_12

    :cond_1b
    move-object/from16 v1, v18

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_12
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_14

    :cond_1c
    :goto_13
    move-object/from16 v19, v0

    goto :goto_15

    :cond_1d
    :goto_14
    if-nez v0, :cond_1e

    invoke-static {v14}, Ll/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v0

    :cond_1e
    aget-object v1, v0, v7

    goto :goto_13

    :goto_15
    aget-object v3, v8, v7

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v4, v0, v7

    invoke-static {v13, v1, v10}, Ll/l;->W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v5

    new-instance v2, Ll/c;

    move-object v0, v2

    move-object v9, v2

    move-object/from16 v2, p0

    move/from16 v20, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    invoke-static {v15, v9}, Ll/g;->a(Ljava/util/List;Ll/c;)Z

    add-int/lit8 v7, v20, 0x1

    move/from16 v9, p5

    move-object/from16 v8, v16

    move-object/from16 v0, v19

    goto/16 :goto_e

    :cond_1f
    new-instance v9, Ll/g;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v5, v14

    move-object/from16 v7, v25

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Ll/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ld/d;Ljava/util/List;)V

    return-object v9

    :cond_20
    if-nez v1, :cond_39

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    if-eqz v17, :cond_21

    array-length v1, v0

    if-lez v1, :cond_21

    invoke-static/range {p0 .. p0}, Ll/l;->Z(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ll/l;->b0([Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Ll/l;->K0(Ljava/lang/reflect/AccessibleObject;)V

    move-object/from16 v22, v0

    move-object/from16 v29, v12

    move-object/from16 v6, v34

    move-object/from16 v8, v35

    :goto_16
    move-object/from16 v0, v36

    :goto_17
    const/16 v26, 0x0

    move-object v12, v1

    goto/16 :goto_1c

    :cond_21
    array-length v1, v0

    move-object/from16 v2, v18

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v1, :cond_2f

    aget-object v3, v0, v5

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    const-string v6, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    array-length v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_22

    const/4 v6, 0x0

    aget-object v7, v4, v6

    move-object/from16 v8, v35

    if-ne v7, v8, :cond_23

    const/4 v6, 0x1

    aget-object v4, v4, v6

    if-ne v4, v8, :cond_23

    invoke-virtual {v3, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-static {v3}, Ll/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v3

    move-object/from16 v29, v12

    move-object/from16 v6, v34

    goto :goto_16

    :cond_22
    move-object/from16 v8, v35

    :cond_23
    move-object/from16 v23, v0

    move-object/from16 v29, v12

    move-object/from16 v6, v34

    move-object/from16 v0, v36

    :goto_19
    const/16 v26, 0x0

    goto/16 :goto_1b

    :cond_24
    move-object/from16 v8, v35

    const-string v6, "org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    array-length v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_25

    const/4 v6, 0x0

    aget-object v7, v4, v6

    move-object/from16 v6, v34

    move-object/from16 v23, v0

    if-ne v7, v6, :cond_26

    const/4 v7, 0x1

    aget-object v0, v4, v7

    if-ne v0, v6, :cond_26

    const/4 v0, 0x2

    aget-object v4, v4, v0

    move-object/from16 v0, v36

    if-ne v4, v0, :cond_27

    invoke-virtual {v3, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v1, "credentials"

    const-string v2, "authorities"

    const-string v4, "principal"

    filled-new-array {v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    move-object/from16 v22, v3

    move-object/from16 v29, v12

    goto :goto_17

    :cond_25
    move-object/from16 v23, v0

    move-object/from16 v6, v34

    :cond_26
    move-object/from16 v0, v36

    :cond_27
    move-object/from16 v29, v12

    goto :goto_19

    :cond_28
    move-object/from16 v23, v0

    move-object/from16 v6, v34

    move-object/from16 v0, v36

    const-string v7, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    array-length v7, v4

    move-object/from16 v29, v12

    const/4 v12, 0x1

    const/16 v26, 0x0

    if-ne v7, v12, :cond_2e

    aget-object v4, v4, v26

    if-ne v4, v8, :cond_2e

    const-string v1, "authority"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move-object/from16 v22, v3

    goto :goto_1c

    :cond_29
    move-object/from16 v29, v12

    const/4 v12, 0x1

    const/16 v26, 0x0

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v4

    and-int/2addr v4, v12

    if-eqz v4, :cond_2a

    const/4 v7, 0x1

    goto :goto_1a

    :cond_2a
    const/4 v7, 0x0

    :goto_1a
    if-nez v7, :cond_2b

    goto :goto_1b

    :cond_2b
    invoke-static {v3}, Ll/b;->f(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2e

    array-length v7, v4

    if-nez v7, :cond_2c

    goto :goto_1b

    :cond_2c
    if-eqz v22, :cond_2d

    if-eqz v2, :cond_2d

    array-length v7, v4

    array-length v12, v2

    if-gt v7, v12, :cond_2d

    goto :goto_1b

    :cond_2d
    move-object/from16 v22, v3

    move-object v2, v4

    :cond_2e
    :goto_1b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v36, v0

    move-object/from16 v34, v6

    move-object/from16 v35, v8

    move-object/from16 v0, v23

    move-object/from16 v12, v29

    goto/16 :goto_18

    :cond_2f
    move-object/from16 v29, v12

    move-object/from16 v6, v34

    move-object/from16 v8, v35

    move-object/from16 v0, v36

    const/16 v26, 0x0

    move-object v12, v2

    :goto_1c
    if-eqz v12, :cond_30

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    move-object v7, v1

    goto :goto_1d

    :cond_30
    move-object/from16 v7, v18

    :goto_1d
    if-eqz v12, :cond_38

    array-length v1, v7

    array-length v2, v12

    if-ne v1, v2, :cond_38

    invoke-static/range {v22 .. v22}, Ll/l;->c0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v21

    const/4 v5, 0x0

    :goto_1e
    array-length v1, v7

    if-ge v5, v1, :cond_37

    aget-object v1, v21, v5

    aget-object v2, v12, v5

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1f
    move-object/from16 v36, v0

    if-ge v4, v3, :cond_32

    aget-object v0, v1, v4

    move-object/from16 p5, v1

    instance-of v1, v0, Ld/b;

    if-eqz v1, :cond_31

    check-cast v0, Ld/b;

    goto :goto_20

    :cond_31
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p5

    move-object/from16 v0, v36

    goto :goto_1f

    :cond_32
    move-object/from16 v0, v18

    :goto_20
    aget-object v3, v7, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v4, v1, v5

    invoke-static {v13, v2, v10}, Ll/l;->W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_33

    if-nez v0, :cond_33

    move-object/from16 v23, v10

    move-object/from16 v10, p4

    invoke-static {v1, v10}, Ll/l;->N(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ld/b;

    goto :goto_21

    :cond_33
    move-object/from16 v23, v10

    move-object/from16 v10, p4

    :goto_21
    if-nez v0, :cond_35

    const-string v0, "org.springframework.security.core.userdetails.User"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "password"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lf/b;->n:Lf/b;

    iget v0, v0, Lf/b;->a:I

    move/from16 v32, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    goto :goto_22

    :cond_34
    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    goto :goto_22

    :cond_35
    invoke-interface {v0}, Ld/b;->name()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v31

    if-eqz v31, :cond_36

    move-object/from16 v2, v30

    :cond_36
    invoke-interface {v0}, Ld/b;->ordinal()I

    move-result v30

    invoke-interface {v0}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lh/g1;->d([Lh/g1;)I

    move-result v31

    invoke-interface {v0}, Ld/b;->parseFeatures()[Lf/b;

    move-result-object v0

    invoke-static {v0}, Lf/b;->b([Lf/b;)I

    move-result v0

    move/from16 v32, v0

    :goto_22
    new-instance v0, Ll/c;

    move-object/from16 p4, v0

    move-object/from16 v33, v14

    move-object/from16 v14, v36

    move-object/from16 v34, v1

    move-object v1, v2

    move-object/from16 v2, p0

    move/from16 v35, v5

    move-object/from16 v5, v34

    move-object v14, v6

    move/from16 v6, v30

    move-object/from16 v27, v7

    const/16 v30, 0x3

    move/from16 v7, v31

    move-object/from16 v37, v8

    move/from16 v8, v32

    invoke-direct/range {v0 .. v8}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    invoke-static {v15, v0}, Ll/g;->a(Ljava/util/List;Ll/c;)Z

    add-int/lit8 v5, v35, 0x1

    move-object/from16 p4, v10

    move-object v6, v14

    move-object/from16 v10, v23

    move-object/from16 v7, v27

    move-object/from16 v14, v33

    move-object/from16 v0, v36

    move-object/from16 v8, v37

    goto/16 :goto_1e

    :cond_37
    move-object/from16 v36, v0

    move-object/from16 v37, v8

    move-object/from16 v23, v10

    move-object/from16 v33, v14

    const/16 v30, 0x3

    move-object/from16 v10, p4

    move-object v14, v6

    if-nez v17, :cond_3b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax.servlet.http.Cookie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    new-instance v9, Ll/g;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v4, v22

    move-object/from16 v7, v25

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Ll/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ld/d;Ljava/util/List;)V

    return-object v9

    :cond_38
    new-instance v0, Lc/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default constructor not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    move-object/from16 v23, v10

    move-object/from16 v29, v12

    move-object/from16 v33, v14

    goto/16 :goto_d

    :cond_3a
    move-object/from16 v37, v3

    move-object/from16 v36, v4

    move-object/from16 v29, v8

    move-object/from16 v23, v10

    move-object/from16 v25, v15

    const/16 v26, 0x0

    const/16 v30, 0x3

    move-object/from16 v10, p4

    move-object v15, v6

    move-object/from16 v22, v18

    move-object/from16 v33, v21

    :cond_3b
    :goto_23
    if-eqz v19, :cond_3c

    invoke-static/range {v19 .. v19}, Ll/l;->K0(Ljava/lang/reflect/AccessibleObject;)V

    :cond_3c
    const-string v12, "set"

    if-eqz v11, :cond_50

    const-class v9, Ld/c;

    invoke-static {v11, v9}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ld/c;

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Ld/c;->withPrefix()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_3d
    move-object/from16 v0, v18

    :goto_24
    if-nez v0, :cond_3e

    const-string v0, "with"

    :cond_3e
    move-object v8, v0

    invoke-virtual {v11}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v6, v7

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v6, :cond_4a

    aget-object v2, v7, v5

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    :goto_26
    move-object/from16 v45, p2

    move/from16 v39, v5

    move/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 v21, v8

    move-object/from16 v42, v9

    move-object/from16 v46, v10

    move-object/from16 v44, v11

    move-object/from16 v34, v14

    move-object/from16 v43, v23

    move-object v14, v12

    goto/16 :goto_2c

    :cond_3f
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_26

    :cond_40
    invoke-static {v2, v10}, Ll/l;->O(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ld/b;

    if-nez v0, :cond_41

    invoke-static {v13, v2}, Ll/l;->i0(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ld/b;

    move-result-object v0

    :cond_41
    move-object/from16 v21, v0

    if-eqz v21, :cond_44

    invoke-interface/range {v21 .. v21}, Ld/b;->deserialize()Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_26

    :cond_42
    invoke-interface/range {v21 .. v21}, Ld/b;->ordinal()I

    move-result v27

    invoke-interface/range {v21 .. v21}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v0

    invoke-static {v0}, Lh/g1;->d([Lh/g1;)I

    move-result v31

    invoke-interface/range {v21 .. v21}, Ld/b;->parseFeatures()[Lf/b;

    move-result-object v0

    invoke-static {v0}, Lf/b;->b([Lf/b;)I

    move-result v32

    invoke-interface/range {v21 .. v21}, Ld/b;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface/range {v21 .. v21}, Ld/b;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ll/c;

    const/4 v3, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object v0, v4

    move-object/from16 v38, v4

    move-object/from16 v4, p0

    move/from16 v39, v5

    move-object/from16 v5, p1

    move/from16 v40, v6

    move/from16 v6, v27

    move-object/from16 v41, v7

    move/from16 v7, v31

    move-object/from16 p4, v8

    move/from16 v8, v32

    move-object/from16 v42, v9

    move-object/from16 v9, v21

    move-object/from16 v21, v10

    move-object/from16 v43, v23

    move-object/from16 v10, v34

    move-object/from16 v44, v11

    move-object/from16 v11, v35

    move-object/from16 v45, p2

    move-object/from16 v34, v14

    move-object/from16 v46, v21

    const/4 v13, 0x3

    move-object v14, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v38

    invoke-static {v15, v0}, Ll/g;->a(Ljava/util/List;Ll/c;)Z

    move-object/from16 v21, p4

    goto/16 :goto_2c

    :cond_43
    move-object/from16 v45, p2

    move/from16 v39, v5

    move/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 p4, v8

    move-object/from16 v42, v9

    move-object/from16 v46, v10

    move-object/from16 v44, v11

    move-object/from16 v34, v14

    move-object/from16 v43, v23

    const/4 v13, 0x3

    move-object v14, v12

    move/from16 v6, v27

    move/from16 v7, v31

    move/from16 v8, v32

    goto :goto_27

    :cond_44
    move-object/from16 v45, p2

    move/from16 v39, v5

    move/from16 v40, v6

    move-object/from16 v41, v7

    move-object/from16 p4, v8

    move-object/from16 v42, v9

    move-object/from16 v46, v10

    move-object/from16 v44, v11

    move-object/from16 v34, v14

    move-object/from16 v43, v23

    const/4 v13, 0x3

    move-object v14, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_27
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v13, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_45
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_28
    move-object/from16 v12, p4

    :goto_29
    const/4 v11, 0x0

    goto :goto_2b

    :cond_46
    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_47

    :goto_2a
    move-object/from16 v21, v12

    goto :goto_2c

    :cond_47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v1, v3, :cond_48

    goto :goto_2a

    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_29

    :goto_2b
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_49

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_49

    goto :goto_2a

    :cond_49
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {v1, v11, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v10, Ll/c;

    const/4 v3, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    move-object v0, v10

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v9, v21

    move-object v13, v10

    move-object/from16 v10, v23

    move-object/from16 v11, v26

    move-object/from16 v21, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v15, v13}, Ll/g;->a(Ljava/util/List;Ll/c;)Z

    :goto_2c
    add-int/lit8 v5, v39, 0x1

    move-object/from16 v13, p0

    move-object v12, v14

    move-object/from16 v8, v21

    move-object/from16 v14, v34

    move/from16 v6, v40

    move-object/from16 v7, v41

    move-object/from16 v9, v42

    move-object/from16 v23, v43

    move-object/from16 v11, v44

    move-object/from16 p2, v45

    move-object/from16 v10, v46

    const/16 v26, 0x0

    const/16 v30, 0x3

    goto/16 :goto_25

    :cond_4a
    move-object/from16 v45, p2

    move-object/from16 v46, v10

    move-object/from16 v34, v14

    move-object/from16 v43, v23

    move-object v14, v12

    move-object v0, v9

    move-object v13, v11

    invoke-static {v13, v0}, Ll/l;->M(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ld/c;

    if-eqz v0, :cond_4b

    invoke-interface {v0}, Ld/c;->buildMethod()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_4b
    move-object/from16 v0, v18

    :goto_2d
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4d

    :cond_4c
    const-string v0, "build"

    :cond_4d
    const/4 v12, 0x0

    :try_start_0
    new-array v1, v12, [Ljava/lang/Class;

    invoke-virtual {v13, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2e

    :catch_0
    nop

    :goto_2e
    if-nez v20, :cond_4e

    :try_start_1
    const-string v0, "create"

    new-array v1, v12, [Ljava/lang/Class;

    invoke-virtual {v13, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v20
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2f

    :catch_1
    nop

    :cond_4e
    :goto_2f
    if-eqz v20, :cond_4f

    invoke-static/range {v20 .. v20}, Ll/l;->K0(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_30

    :cond_4f
    new-instance v0, Lc/d;

    const-string v1, "buildMethod not found."

    invoke-direct {v0, v1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    move-object/from16 v45, p2

    move-object/from16 v46, v10

    move-object v13, v11

    move-object/from16 v34, v14

    move-object/from16 v43, v23

    move-object v14, v12

    const/4 v12, 0x0

    :goto_30
    move-object/from16 v11, v29

    array-length v10, v11

    const/4 v9, 0x0

    :goto_31
    const-string v8, "get"

    if-ge v9, v10, :cond_76

    aget-object v2, v11, v9

    const/4 v6, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_51

    :goto_32
    move/from16 v32, v9

    move-object/from16 v28, v11

    move-object/from16 v44, v13

    move-object/from16 v35, v14

    move-object/from16 v31, v34

    move-object/from16 v29, v37

    move-object/from16 v52, v43

    move-object/from16 v54, v45

    move-object/from16 v53, v46

    const/16 v26, 0x2

    const/16 v30, 0x0

    const/16 v37, 0x1

    move-object/from16 v14, p0

    move/from16 v34, v10

    goto/16 :goto_45

    :cond_51
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    goto :goto_32

    :cond_52
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v5, v34

    if-ne v1, v5, :cond_53

    goto/16 :goto_43

    :cond_53
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v3, v1

    if-eqz v3, :cond_75

    array-length v3, v1

    const/4 v4, 0x2

    if-le v3, v4, :cond_54

    goto/16 :goto_43

    :cond_54
    move-object/from16 v3, v46

    invoke-static {v2, v3}, Ll/l;->O(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v24

    check-cast v24, Ld/b;

    if-eqz v24, :cond_56

    array-length v7, v1

    if-ne v7, v4, :cond_56

    aget-object v7, v1, v12

    move-object/from16 v29, v11

    move-object/from16 v11, v37

    if-ne v7, v11, :cond_55

    const/4 v7, 0x1

    aget-object v4, v1, v7

    if-ne v4, v5, :cond_55

    new-instance v8, Ll/c;

    const-string v1, ""

    const/4 v4, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    move-object v0, v8

    move-object/from16 v47, v3

    move-object v3, v4

    const/16 v26, 0x2

    move-object/from16 v4, p0

    move-object/from16 v31, v5

    move-object/from16 v5, p1

    move/from16 v7, v21

    move-object/from16 v48, v8

    move/from16 v8, v23

    move/from16 v32, v9

    move-object/from16 v9, v24

    move/from16 v34, v10

    move-object/from16 v10, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v11

    move-object/from16 v11, v30

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v48

    invoke-static {v15, v0}, Ll/g;->a(Ljava/util/List;Ll/c;)Z

    goto :goto_34

    :cond_55
    move-object/from16 v47, v3

    move-object/from16 v31, v5

    move/from16 v32, v9

    move/from16 v34, v10

    move-object/from16 v28, v29

    const/16 v26, 0x2

    move-object/from16 v29, v11

    goto :goto_33

    :cond_56
    move-object/from16 v47, v3

    move-object/from16 v31, v5

    move/from16 v32, v9

    move/from16 v34, v10

    move-object/from16 v28, v11

    move-object/from16 v29, v37

    const/16 v26, 0x2

    :goto_33
    array-length v3, v1

    const/4 v12, 0x1

    if-eq v3, v12, :cond_57

    :goto_34
    move-object/from16 v44, v13

    move-object/from16 v35, v14

    move-object/from16 v52, v43

    move-object/from16 v54, v45

    move-object/from16 v53, v47

    goto/16 :goto_44

    :cond_57
    move-object/from16 v11, p0

    move-object/from16 v10, v28

    if-nez v24, :cond_58

    invoke-static {v11, v2}, Ll/l;->i0(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ld/b;

    move-result-object v3

    move-object v9, v3

    goto :goto_35

    :cond_58
    move-object/from16 v9, v24

    :goto_35
    if-nez v9, :cond_59

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_59

    :goto_36
    move-object/from16 v28, v10

    move-object/from16 v44, v13

    move-object/from16 v35, v14

    move-object/from16 v52, v43

    move-object/from16 v54, v45

    move-object/from16 v53, v47

    const/16 v30, 0x0

    const/16 v37, 0x1

    move-object v14, v11

    goto/16 :goto_45

    :cond_59
    if-eqz v9, :cond_5c

    invoke-interface {v9}, Ld/b;->deserialize()Z

    move-result v3

    if-nez v3, :cond_5a

    goto :goto_36

    :cond_5a
    invoke-interface {v9}, Ld/b;->ordinal()I

    move-result v6

    invoke-interface {v9}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v3

    invoke-static {v3}, Lh/g1;->d([Lh/g1;)I

    move-result v7

    invoke-interface {v9}, Ld/b;->parseFeatures()[Lf/b;

    move-result-object v3

    invoke-static {v3}, Lf/b;->b([Lf/b;)I

    move-result v21

    invoke-interface {v9}, Ld/b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v9}, Ld/b;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ll/c;

    const/4 v3, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v0, v8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v49, v8

    move/from16 v8, v21

    move-object/from16 v50, v10

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v49

    invoke-static {v15, v0}, Ll/g;->a(Ljava/util/List;Ll/c;)Z

    goto :goto_38

    :cond_5b
    move-object/from16 v50, v10

    move/from16 v23, v21

    move/from16 v21, v7

    goto :goto_37

    :cond_5c
    move-object/from16 v50, v10

    :goto_37
    if-nez v9, :cond_5e

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    goto :goto_39

    :cond_5d
    :goto_38
    move-object/from16 v44, v13

    move-object/from16 v35, v14

    move-object/from16 v52, v43

    move-object/from16 v54, v45

    move-object/from16 v53, v47

    move-object/from16 v28, v50

    goto/16 :goto_44

    :cond_5e
    :goto_39
    if-eqz v13, :cond_5f

    goto :goto_38

    :cond_5f
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v17, :cond_61

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v12, v50

    const/4 v5, 0x0

    :goto_3a
    array-length v7, v12

    if-ge v5, v7, :cond_62

    aget-object v7, v12, v5

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_60

    aget-object v7, v12, v5

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    :cond_61
    move-object/from16 v12, v50

    move-object/from16 v3, v18

    :cond_62
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    const-string v7, "is"

    const-string v8, "g"

    if-nez v5, :cond_6b

    const/16 v5, 0x200

    if-le v4, v5, :cond_63

    goto/16 :goto_3d

    :cond_63
    const/16 v5, 0x5f

    if-ne v4, v5, :cond_68

    if-eqz v17, :cond_65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_64
    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    move-object/from16 v10, p0

    move-object/from16 v5, v43

    invoke-static {v10, v0, v5}, Ll/l;->W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v4

    goto/16 :goto_40

    :cond_65
    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v11, 0x1

    move-object/from16 v10, p0

    move-object/from16 v5, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v5}, Ll/l;->W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    if-nez v8, :cond_66

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0, v5}, Ll/l;->W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    if-nez v8, :cond_67

    :cond_66
    move-object v0, v4

    :cond_67
    move-object v4, v8

    goto/16 :goto_40

    :cond_68
    const/4 v3, 0x3

    const/4 v11, 0x1

    move-object/from16 v10, p0

    move-object/from16 v5, v43

    const/16 v8, 0x66

    if-ne v4, v8, :cond_69

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_69
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v8, 0x5

    if-lt v4, v8, :cond_6a

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_6a

    goto :goto_3f

    :cond_6a
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0, v5}, Ll/l;->W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v4

    if-nez v4, :cond_6e

    move-object/from16 v52, v5

    move-object/from16 v28, v12

    move-object/from16 v44, v13

    move-object/from16 v35, v14

    move-object/from16 v54, v45

    move-object/from16 v53, v47

    :goto_3c
    const/16 v30, 0x0

    const/16 v37, 0x1

    move-object v14, v10

    goto/16 :goto_45

    :cond_6b
    :goto_3d
    const/4 v11, 0x1

    move-object/from16 v10, p0

    move-object/from16 v5, v43

    if-eqz v17, :cond_6d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6c
    invoke-static {v0}, Ll/l;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3e
    move-object/from16 v4, v18

    goto :goto_40

    :cond_6d
    sget-boolean v3, Ll/l;->b:Z

    if-eqz v3, :cond_6c

    const/4 v3, 0x3

    :goto_3f
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll/l;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_6e
    :goto_40
    if-nez v4, :cond_6f

    invoke-static {v10, v0, v5}, Ll/l;->W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v4

    :cond_6f
    const/4 v8, 0x0

    if-nez v4, :cond_70

    aget-object v1, v1, v8

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_70

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1, v5}, Ll/l;->W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v1

    move-object v3, v1

    goto :goto_41

    :cond_70
    move-object v3, v4

    :goto_41
    if-eqz v3, :cond_73

    move-object/from16 v7, v47

    invoke-static {v3, v7}, Ll/l;->N(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Ld/b;

    if-eqz v24, :cond_72

    invoke-interface/range {v24 .. v24}, Ld/b;->deserialize()Z

    move-result v1

    if-nez v1, :cond_71

    move-object/from16 v52, v5

    move-object/from16 v53, v7

    move-object/from16 v28, v12

    move-object/from16 v44, v13

    move-object/from16 v35, v14

    move-object/from16 v54, v45

    goto/16 :goto_3c

    :cond_71
    invoke-interface/range {v24 .. v24}, Ld/b;->ordinal()I

    move-result v6

    invoke-interface/range {v24 .. v24}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v1

    invoke-static {v1}, Lh/g1;->d([Lh/g1;)I

    move-result v21

    invoke-interface/range {v24 .. v24}, Ld/b;->parseFeatures()[Lf/b;

    move-result-object v1

    invoke-static {v1}, Lf/b;->b([Lf/b;)I

    move-result v23

    invoke-interface/range {v24 .. v24}, Ld/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_72

    invoke-interface/range {v24 .. v24}, Ld/b;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ll/c;

    const/16 v28, 0x0

    move-object v0, v4

    move-object/from16 v51, v4

    move-object/from16 v4, p0

    move-object/from16 v52, v5

    move-object/from16 v5, p1

    move-object/from16 v53, v7

    move/from16 v7, v21

    const/16 v30, 0x0

    move/from16 v8, v23

    move-object/from16 v35, v14

    move-object v14, v10

    move-object/from16 v10, v24

    const/16 v37, 0x1

    move-object/from16 v11, v28

    move-object/from16 v28, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v51

    invoke-static {v15, v0}, Ll/g;->a(Ljava/util/List;Ll/c;)Z

    move-object/from16 v44, v13

    move-object/from16 v54, v45

    goto/16 :goto_45

    :cond_72
    move-object/from16 v52, v5

    move-object/from16 v53, v7

    move-object/from16 v28, v12

    move-object/from16 v35, v14

    const/16 v30, 0x0

    const/16 v37, 0x1

    move-object v14, v10

    move/from16 v7, v21

    move/from16 v8, v23

    move-object/from16 v10, v24

    goto :goto_42

    :cond_73
    move-object/from16 v52, v5

    move-object/from16 v28, v12

    move-object/from16 v35, v14

    move-object/from16 v53, v47

    const/16 v30, 0x0

    const/16 v37, 0x1

    move-object v14, v10

    move-object/from16 v10, v18

    move/from16 v7, v21

    move/from16 v8, v23

    :goto_42
    move-object/from16 v12, v45

    if-eqz v12, :cond_74

    invoke-virtual {v12, v0}, Lc/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_74
    move-object v1, v0

    new-instance v11, Ll/c;

    const/16 v21, 0x0

    move-object v0, v11

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v44, v13

    move-object v13, v11

    move-object/from16 v11, v21

    move-object/from16 v54, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v15, v13}, Ll/g;->a(Ljava/util/List;Ll/c;)Z

    goto :goto_45

    :cond_75
    :goto_43
    move-object/from16 v31, v5

    move/from16 v32, v9

    move/from16 v34, v10

    move-object/from16 v28, v11

    move-object/from16 v44, v13

    move-object/from16 v35, v14

    move-object/from16 v29, v37

    move-object/from16 v52, v43

    move-object/from16 v54, v45

    move-object/from16 v53, v46

    const/16 v26, 0x2

    :goto_44
    const/16 v30, 0x0

    const/16 v37, 0x1

    move-object/from16 v14, p0

    :goto_45
    add-int/lit8 v9, v32, 0x1

    move-object/from16 v11, v28

    move-object/from16 v37, v29

    move/from16 v10, v34

    move-object/from16 v14, v35

    move-object/from16 v13, v44

    move-object/from16 v43, v52

    move-object/from16 v46, v53

    move-object/from16 v45, v54

    const/4 v12, 0x0

    move-object/from16 v34, v31

    goto/16 :goto_31

    :cond_76
    move-object/from16 v14, p0

    move-object/from16 v44, v13

    move-object/from16 v52, v43

    move-object/from16 v54, v45

    move-object/from16 v53, v46

    const/16 v30, 0x0

    const/16 v37, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    move-object/from16 v13, p1

    move-object/from16 v12, v54

    invoke-static {v14, v13, v12, v15, v0}, Ll/g;->e(Ljava/lang/Class;Ljava/lang/reflect/Type;Lc/l;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    array-length v10, v11

    const/4 v9, 0x0

    :goto_46
    if-ge v9, v10, :cond_84

    aget-object v2, v11, v9

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v7, 0x4

    if-ge v1, v7, :cond_78

    :cond_77
    :goto_47
    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v17, v10

    move-object/from16 v26, v11

    move-object/from16 v57, v12

    move-object/from16 v30, v36

    :goto_48
    move-object/from16 v55, v52

    move-object/from16 v29, v53

    :goto_49
    const/16 v21, 0x4

    const/16 v27, 0x3

    goto/16 :goto_4d

    :cond_78
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_79

    goto :goto_47

    :cond_79
    if-nez v44, :cond_77

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_77

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_7a

    goto :goto_47

    :cond_7a
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    move-object/from16 v5, v36

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-class v3, Ljava/util/Map;

    if-nez v1, :cond_7c

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_7c

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eq v1, v4, :cond_7c

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-eq v1, v4, :cond_7c

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    if-ne v1, v4, :cond_7b

    goto :goto_4a

    :cond_7b
    move-object/from16 v30, v5

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v17, v10

    move-object/from16 v26, v11

    move-object/from16 v57, v12

    goto :goto_48

    :cond_7c
    :goto_4a
    move-object/from16 v4, v53

    invoke-static {v2, v4}, Ll/l;->O(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ld/b;

    if-eqz v17, :cond_7d

    invoke-interface/range {v17 .. v17}, Ld/b;->deserialize()Z

    move-result v1

    if-eqz v1, :cond_7d

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v17, v10

    move-object/from16 v26, v11

    move-object/from16 v57, v12

    move-object/from16 v55, v52

    goto/16 :goto_49

    :cond_7d
    if-eqz v17, :cond_7e

    invoke-interface/range {v17 .. v17}, Ld/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7e

    invoke-interface/range {v17 .. v17}, Ld/b;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v18

    move-object/from16 v1, v52

    goto :goto_4b

    :cond_7e
    invoke-static {v0}, Ll/l;->g0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v52

    invoke-static {v14, v0, v1}, Ll/l;->W(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v6

    if-eqz v6, :cond_81

    invoke-static {v6, v4}, Ll/l;->N(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v21

    check-cast v21, Ld/b;

    if-eqz v21, :cond_7f

    invoke-interface/range {v21 .. v21}, Ld/b;->deserialize()Z

    move-result v21

    if-nez v21, :cond_7f

    goto :goto_4c

    :cond_7f
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_80

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_81

    :cond_80
    move-object v3, v6

    goto :goto_4b

    :cond_81
    move-object/from16 v3, v18

    :goto_4b
    if-eqz v12, :cond_82

    invoke-virtual {v12, v0}, Lc/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_82
    move-object v6, v0

    invoke-static {v15, v6}, Ll/g;->j(Ljava/util/List;Ljava/lang/String;)Ll/c;

    move-result-object v0

    if-eqz v0, :cond_83

    :goto_4c
    move-object/from16 v55, v1

    move-object/from16 v29, v4

    move-object/from16 v30, v5

    move-object/from16 v23, v8

    move/from16 v24, v9

    move/from16 v17, v10

    move-object/from16 v26, v11

    move-object/from16 v57, v12

    goto/16 :goto_49

    :cond_83
    new-instance v7, Ll/c;

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object v0, v7

    move-object/from16 v55, v1

    move-object v1, v6

    move-object/from16 v29, v4

    move-object/from16 v4, p0

    move-object/from16 v30, v5

    move-object/from16 v5, p1

    const/16 v27, 0x3

    move/from16 v6, v21

    move-object/from16 v56, v7

    const/16 v21, 0x4

    move/from16 v7, v23

    move-object/from16 v23, v8

    move/from16 v8, v24

    move/from16 v24, v9

    move-object/from16 v9, v17

    move/from16 v17, v10

    move-object/from16 v10, v26

    move-object/from16 v26, v11

    move-object/from16 v11, v28

    move-object/from16 v57, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, v56

    invoke-static {v15, v0}, Ll/g;->a(Ljava/util/List;Ll/c;)Z

    :goto_4d
    add-int/lit8 v9, v24, 0x1

    move/from16 v10, v17

    move-object/from16 v8, v23

    move-object/from16 v11, v26

    move-object/from16 v53, v29

    move-object/from16 v36, v30

    move-object/from16 v52, v55

    move-object/from16 v12, v57

    goto/16 :goto_46

    :cond_84
    move-object/from16 v57, v12

    move-object/from16 v55, v52

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_86

    invoke-static/range {p0 .. p0}, Ll/l;->y0(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_85

    goto :goto_4e

    :cond_85
    move/from16 v37, p3

    :goto_4e
    if-eqz v37, :cond_86

    move-object v11, v14

    :goto_4f
    if-eqz v11, :cond_86

    move-object/from16 v0, v55

    move-object/from16 v1, v57

    invoke-static {v14, v13, v1, v15, v0}, Ll/g;->e(Ljava/lang/Class;Ljava/lang/reflect/Type;Lc/l;Ljava/util/List;[Ljava/lang/reflect/Field;)V

    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    goto :goto_4f

    :cond_86
    new-instance v9, Ll/g;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, v44

    move-object/from16 v3, v19

    move-object/from16 v4, v22

    move-object/from16 v5, v33

    move-object/from16 v6, v20

    move-object/from16 v7, v25

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Ll/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ld/d;Ljava/util/List;)V

    return-object v9
.end method

.method private static d(Ljava/lang/Class;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    if-eqz p0, :cond_4

    const-class v2, Ljava/lang/Object;

    if-eq p0, v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_3

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    aget-object v4, v0, v3

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    aget-object v5, v2, v3

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    aget-object v4, v2, v3

    aget-object v5, v0, v3

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private static e(Ljava/lang/Class;Ljava/lang/reflect/Type;Lc/l;Ljava/util/List;[Ljava/lang/reflect/Field;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Lc/l;",
            "Ljava/util/List<",
            "Ll/c;",
            ">;[",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static/range {p0 .. p0}, Ll/g;->d(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v15

    array-length v14, v1

    const/16 v16, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v14, :cond_b

    aget-object v5, v1, v13

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_0

    :goto_1
    move-object/from16 v2, p3

    move/from16 v17, v13

    move/from16 v18, v14

    goto/16 :goto_6

    :cond_0
    and-int/lit8 v2, v2, 0x10

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    const-class v4, Ljava/util/Collection;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2

    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-class v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-class v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll/c;

    iget-object v4, v4, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Ld/b;

    invoke-static {v5, v3}, Ll/l;->N(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ld/b;

    if-eqz v12, :cond_9

    invoke-interface {v12}, Ld/b;->deserialize()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v12}, Ld/b;->ordinal()I

    move-result v3

    invoke-interface {v12}, Ld/b;->serialzeFeatures()[Lh/g1;

    move-result-object v4

    invoke-static {v4}, Lh/g1;->d([Lh/g1;)I

    move-result v4

    invoke-interface {v12}, Ld/b;->parseFeatures()[Lf/b;

    move-result-object v6

    invoke-static {v6}, Lf/b;->b([Lf/b;)I

    move-result v6

    invoke-interface {v12}, Ld/b;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v12}, Ld/b;->name()Ljava/lang/String;

    move-result-object v2

    :cond_8
    move v8, v3

    move v9, v4

    move v10, v6

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_5
    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Lc/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_a
    move-object v3, v2

    new-instance v11, Ll/c;

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v2, v11

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v19, v11

    move-object/from16 v11, v17

    move/from16 v17, v13

    move-object/from16 v13, v18

    move/from16 v18, v14

    move-object v14, v15

    invoke-direct/range {v2 .. v14}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    invoke-static {v2, v3}, Ll/g;->a(Ljava/util/List;Ll/c;)Z

    :goto_6
    add-int/lit8 v13, v17, 0x1

    move/from16 v14, v18

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public static f(Ljava/lang/Class;Ld/d;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ld/d;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "org.springframework.security.web.savedrequest.DefaultSavedRequest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "org.springframework.security.web.savedrequest.DefaultSavedRequest$Builder"

    invoke-static {p0}, Ll/l;->z0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p1}, Ld/d;->builder()Ljava/lang/Class;

    move-result-object p1

    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_2

    return-object p0

    :cond_2
    return-object p1
.end method

.method public static g([Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Constructor;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "multi-JSONCreator"

    if-ge v3, v0, :cond_2

    aget-object v5, p0, v3

    const-class v6, Ld/a;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Ld/a;

    if-eqz v6, :cond_1

    if-nez v1, :cond_0

    move-object v1, v5

    goto :goto_1

    :cond_0
    new-instance p0, Lc/d;

    invoke-direct {p0, v4}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    array-length v0, p0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_b

    aget-object v5, p0, v3

    invoke-static {v5}, Ll/l;->c0(Ljava/lang/reflect/Constructor;)[[Ljava/lang/annotation/Annotation;

    move-result-object v6

    array-length v7, v6

    if-nez v7, :cond_4

    goto :goto_7

    :cond_4
    array-length v7, v6

    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x1

    if-ge v8, v7, :cond_8

    aget-object v10, v6, v8

    array-length v11, v10

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_6

    aget-object v13, v10, v12

    instance-of v13, v13, Ld/b;

    if-eqz v13, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_7

    const/4 v9, 0x0

    goto :goto_6

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    :goto_6
    if-eqz v9, :cond_a

    if-nez v1, :cond_9

    move-object v1, v5

    goto :goto_7

    :cond_9
    new-instance p0, Lc/d;

    invoke-direct {p0, v4}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    return-object v1
.end method

.method static h(Ljava/lang/Class;[Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    array-length v0, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    aget-object v5, v5, v2

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-object v1
.end method

.method private static i(Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Method;",
            "Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const-class v5, Ld/a;

    invoke-static {v4, v5}, Ll/l;->O(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Ld/a;

    if-eqz v5, :cond_3

    if-nez v1, :cond_2

    move-object v1, v4

    goto :goto_1

    :cond_2
    new-instance p0, Lc/d;

    const-string p1, "multi-JSONCreator"

    invoke-direct {p0, p1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-nez v1, :cond_6

    if-eqz p2, :cond_6

    array-length p0, p1

    :goto_2
    if-ge v2, p0, :cond_6

    aget-object p2, p1, v2

    invoke-static {p2}, Ll/l;->r0(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v1, p2

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return-object v1
.end method

.method private static j(Ljava/util/List;Ljava/lang/String;)Ll/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll/c;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ll/c;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll/c;

    iget-object v1, v0, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v0, Ll/c;->c:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ll/c;->d()Ld/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
