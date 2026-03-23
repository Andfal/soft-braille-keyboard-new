.class public Ll/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ll/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Field;

.field private d:I

.field public final e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/reflect/Type;

.field public final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:Ljava/lang/String;

.field private final l:Ld/b;

.field private final m:Ld/b;

.field public final n:Z

.field public final o:Z

.field public final p:[C

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Ljava/lang/String;

.field public final u:[Ljava/lang/String;

.field public final v:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "III)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ll/c;->d:I

    if-gez p6, :cond_0

    const/4 p6, 0x0

    :cond_0
    iput-object p1, p0, Ll/c;->a:Ljava/lang/String;

    iput-object p2, p0, Ll/c;->g:Ljava/lang/Class;

    iput-object p3, p0, Ll/c;->e:Ljava/lang/Class;

    iput-object p4, p0, Ll/c;->f:Ljava/lang/reflect/Type;

    const/4 p2, 0x0

    iput-object p2, p0, Ll/c;->b:Ljava/lang/reflect/Method;

    iput-object p5, p0, Ll/c;->c:Ljava/lang/reflect/Field;

    iput p6, p0, Ll/c;->d:I

    iput p7, p0, Ll/c;->i:I

    iput p8, p0, Ll/c;->j:I

    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result p3

    iput-boolean p3, p0, Ll/c;->q:Z

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p3

    and-int/lit8 p4, p3, 0x1

    const/4 p4, 0x1

    iput-boolean p4, p0, Ll/c;->n:Z

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p3

    iput-boolean p3, p0, Ll/c;->o:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Ll/c;->o:Z

    iput-boolean v0, p0, Ll/c;->n:Z

    :goto_0
    invoke-virtual {p0}, Ll/c;->b()[C

    move-result-object p3

    iput-object p3, p0, Ll/c;->p:[C

    if-eqz p5, :cond_2

    invoke-static {p5}, Ll/l;->K0(Ljava/lang/reflect/AccessibleObject;)V

    :cond_2
    const-string p3, ""

    iput-object p3, p0, Ll/c;->k:Ljava/lang/String;

    if-nez p5, :cond_3

    move-object p3, p2

    goto :goto_1

    :cond_3
    const-class p3, Ld/b;

    invoke-static {p5, p3}, Ll/l;->N(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p3

    check-cast p3, Ld/b;

    :goto_1
    iput-object p3, p0, Ll/c;->l:Ld/b;

    iput-object p2, p0, Ll/c;->m:Ld/b;

    iput-boolean v0, p0, Ll/c;->h:Z

    iput-boolean v0, p0, Ll/c;->r:Z

    iput-boolean v0, p0, Ll/c;->s:Z

    iput-object p2, p0, Ll/c;->t:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/String;

    iput-object p2, p0, Ll/c;->u:[Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Ll/c;->m(Ljava/lang/String;Ld/b;)J

    move-result-wide p1

    iput-wide p1, p0, Ll/c;->v:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "III",
            "Ld/b;",
            "Ld/b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Ll/c;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILd/b;Ld/b;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "III",
            "Ld/b;",
            "Ld/b;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ll/c;->d:I

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    :cond_0
    if-gez p6, :cond_1

    const/4 p6, 0x0

    :cond_1
    iput-object p1, p0, Ll/c;->a:Ljava/lang/String;

    iput-object p2, p0, Ll/c;->b:Ljava/lang/reflect/Method;

    iput-object p3, p0, Ll/c;->c:Ljava/lang/reflect/Field;

    iput p6, p0, Ll/c;->d:I

    iput p7, p0, Ll/c;->i:I

    iput p8, p0, Ll/c;->j:I

    iput-object p9, p0, Ll/c;->l:Ld/b;

    iput-object p10, p0, Ll/c;->m:Ld/b;

    const/4 p6, 0x1

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p7

    and-int/lit8 p8, p7, 0x1

    if-nez p8, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p8, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p8, 0x1

    :goto_1
    iput-boolean p8, p0, Ll/c;->n:Z

    invoke-static {p7}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p7

    if-nez p7, :cond_5

    invoke-static {p2}, Ll/l;->x0(Ljava/lang/reflect/Method;)Z

    move-result p7

    if-eqz p7, :cond_4

    goto :goto_2

    :cond_4
    const/4 p7, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p7, 0x1

    goto :goto_3

    :cond_6
    iput-boolean v0, p0, Ll/c;->n:Z

    invoke-static {p2}, Ll/l;->x0(Ljava/lang/reflect/Method;)Z

    move-result p7

    :goto_3
    iput-boolean p7, p0, Ll/c;->o:Z

    if-eqz p11, :cond_7

    invoke-virtual {p11}, Ljava/lang/String;->length()I

    move-result p7

    if-lez p7, :cond_7

    iput-object p11, p0, Ll/c;->k:Ljava/lang/String;

    goto :goto_4

    :cond_7
    const-string p7, ""

    iput-object p7, p0, Ll/c;->k:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0}, Ll/c;->d()Ld/b;

    move-result-object p7

    invoke-direct {p0, p1, p7}, Ll/c;->m(Ljava/lang/String;Ld/b;)J

    move-result-wide p8

    iput-wide p8, p0, Ll/c;->v:J

    const/4 p1, 0x0

    if-eqz p7, :cond_9

    invoke-interface {p7}, Ld/b;->format()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result p9

    if-nez p9, :cond_8

    goto :goto_5

    :cond_8
    move-object p1, p8

    :goto_5
    invoke-interface {p7}, Ld/b;->jsonDirect()Z

    move-result p8

    invoke-interface {p7}, Ld/b;->unwrapped()Z

    move-result p9

    iput-boolean p9, p0, Ll/c;->s:Z

    invoke-interface {p7}, Ld/b;->alternateNames()[Ljava/lang/String;

    move-result-object p7

    iput-object p7, p0, Ll/c;->u:[Ljava/lang/String;

    goto :goto_6

    :cond_9
    iput-boolean v0, p0, Ll/c;->s:Z

    new-array p7, v0, [Ljava/lang/String;

    iput-object p7, p0, Ll/c;->u:[Ljava/lang/String;

    const/4 p8, 0x0

    :goto_6
    iput-object p1, p0, Ll/c;->t:Ljava/lang/String;

    invoke-virtual {p0}, Ll/c;->b()[C

    move-result-object p1

    iput-object p1, p0, Ll/c;->p:[C

    if-eqz p2, :cond_a

    invoke-static {p2}, Ll/l;->K0(Ljava/lang/reflect/AccessibleObject;)V

    :cond_a
    if-eqz p3, :cond_b

    invoke-static {p3}, Ll/l;->K0(Ljava/lang/reflect/AccessibleObject;)V

    :cond_b
    const-class p1, Ljava/lang/Object;

    const-class p7, Ljava/lang/String;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    array-length p9, p3

    if-ne p9, p6, :cond_c

    aget-object p3, p3, v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p9

    aget-object p9, p9, v0

    :goto_7
    const/4 p10, 0x0

    goto :goto_8

    :cond_c
    array-length p9, p3

    const/4 p10, 0x2

    if-ne p9, p10, :cond_d

    aget-object p9, p3, v0

    if-ne p9, p7, :cond_d

    aget-object p3, p3, p6

    if-ne p3, p1, :cond_d

    move-object p3, p9

    goto :goto_7

    :cond_d
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p9

    const/4 p10, 0x1

    :goto_8
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Ll/c;->g:Ljava/lang/Class;

    goto :goto_9

    :cond_e
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p9

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p10

    iput-object p10, p0, Ll/c;->g:Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p3

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p10

    move-object p3, p2

    :goto_9
    iput-boolean p10, p0, Ll/c;->h:Z

    if-eqz p8, :cond_f

    if-ne p3, p7, :cond_f

    const/4 v0, 0x1

    :cond_f
    iput-boolean v0, p0, Ll/c;->r:Z

    if-eqz p4, :cond_10

    if-ne p3, p1, :cond_10

    instance-of p1, p9, Ljava/lang/reflect/TypeVariable;

    if-eqz p1, :cond_10

    move-object p1, p9

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-static {p4, p5, p1}, Ll/c;->k(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-static {p1}, Ll/l;->P(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Ll/c;->e:Ljava/lang/Class;

    iput-object p1, p0, Ll/c;->f:Ljava/lang/reflect/Type;

    :goto_a
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    iput-boolean p1, p0, Ll/c;->q:Z

    return-void

    :cond_10
    instance-of p1, p9, Ljava/lang/Class;

    if-nez p1, :cond_14

    if-eqz p5, :cond_11

    goto :goto_b

    :cond_11
    move-object p5, p4

    :goto_b
    invoke-static {p4, p5, p9, p12}, Ll/c;->i(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p1

    if-eq p1, p9, :cond_13

    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_12

    :goto_c
    invoke-static {p1}, Ll/l;->P(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p3

    goto :goto_d

    :cond_12
    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_13

    goto :goto_c

    :cond_13
    :goto_d
    move-object p9, p1

    :cond_14
    iput-object p9, p0, Ll/c;->f:Ljava/lang/reflect/Type;

    iput-object p3, p0, Ll/c;->e:Ljava/lang/Class;

    goto :goto_a
.end method

.method private static e([Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-object v2, p0, v0

    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v3, p1}, Ll/c;->e([Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v1, Ll/h;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {v1, v3, v5, v2}, Ll/h;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    aput-object v1, p0, v0

    goto :goto_1

    :cond_1
    instance-of v3, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    aput-object v1, p0, v0

    :goto_1
    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v0
.end method

.method private static f([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    aget-object v3, p0, v1

    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, p1, p2}, Ll/c;->f([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v2, Ll/h;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v2, v4, v6, v3}, Ll/h;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    aput-object v2, p0, v1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    instance-of v4, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    array-length v6, p1

    if-ge v4, v6, :cond_3

    aget-object v6, p1, v4

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v2, p2, v4

    aput-object v2, p0, v1

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2

    :cond_5
    :goto_3
    return v0
.end method

.method public static h(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Ll/c;->i(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Ll/c;->i(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    if-eq v0, p0, :cond_1

    invoke-static {p0}, Ll/l;->P(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2

    :cond_2
    invoke-static {p1}, Ll/l;->o0(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p2

    :cond_3
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    invoke-static {p1}, Ll/l;->Y(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0}, Ll/l;->P(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_5

    aget-object v4, v2, v1

    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    return-object p0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_9

    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1, p3}, Ll/c;->e([Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result p3

    if-nez p3, :cond_8

    instance-of p3, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_6

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p3

    instance-of p3, p3, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    move-object p1, v0

    :goto_2
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {v1, p0, p1}, Ll/c;->f([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-result p3

    :cond_8
    if-eqz p3, :cond_9

    new-instance p0, Ll/h;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-direct {p0, v1, p1, p2}, Ll/h;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p0

    :cond_9
    :goto_3
    return-object p2
.end method

.method private static k(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-ne v0, p0, :cond_2

    instance-of p0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p0, :cond_1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_2

    :cond_1
    move-object p0, v1

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_1
    if-eqz p0, :cond_4

    const-class v2, Ljava/lang/Object;

    if-eq p0, v2, :cond_4

    if-eq p0, v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    invoke-static {v2, v3, p1}, Ll/c;->f([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-object p1, v2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, p1

    :goto_2
    if-eqz p0, :cond_7

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    const/4 v0, 0x0

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_7

    aget-object v2, p1, v0

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    aget-object v1, p0, v0

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-object v1
.end method

.method private m(Ljava/lang/String;Ld/b;)J
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ld/b;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ll/l;->J(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    invoke-static {p1}, Ll/l;->K(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method


# virtual methods
.method public a(Ll/c;)I
    .locals 6

    iget v0, p0, Ll/c;->d:I

    iget v1, p1, Ll/c;->d:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Ll/c;->a:Ljava/lang/String;

    iget-object v1, p1, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ll/c;->g()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ll/c;->g()Ljava/lang/Class;

    move-result-object v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v2

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    :cond_4
    iget-object v0, p0, Ll/c;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v4, p0, Ll/c;->e:Ljava/lang/Class;

    if-ne v0, v4, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    iget-object v4, p1, Ll/c;->c:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p1, Ll/c;->e:Ljava/lang/Class;

    if-ne v4, v5, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    return v3

    :cond_7
    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    return v2

    :cond_8
    iget-object v0, p1, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_9

    return v3

    :cond_9
    iget-object v0, p0, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p1, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_a

    return v2

    :cond_a
    iget-object v0, p1, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    return v3

    :cond_b
    iget-object v0, p0, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    return v2

    :cond_c
    iget-object v0, p0, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Ll/c;->e:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected b()[C
    .locals 6

    iget-object v0, p0, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x3

    new-array v1, v1, [C

    iget-object v2, p0, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    const/16 v2, 0x22

    aput-char v2, v1, v5

    add-int/lit8 v3, v0, 0x1

    aput-char v2, v1, v3

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0x3a

    aput-char v2, v1, v0

    return-object v1
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ll/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ll/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ll/c;

    invoke-virtual {p0, p1}, Ll/c;->a(Ll/c;)I

    move-result p1

    return p1
.end method

.method public d()Ld/b;
    .locals 1

    iget-object v0, p0, Ll/c;->l:Ld/b;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ll/c;->m:Ld/b;

    return-object v0
.end method

.method protected g()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Ll/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ll/c;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/reflect/Member;
    .locals 1

    iget-object v0, p0, Ll/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Ll/c;->c:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public n(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ll/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v0, p0, Ll/c;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Ll/c;->b:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ll/l;->K0(Ljava/lang/reflect/AccessibleObject;)V

    return-void

    :cond_0
    iget-object v0, p0, Ll/c;->c:Ljava/lang/reflect/Field;

    invoke-static {v0}, Ll/l;->K0(Ljava/lang/reflect/AccessibleObject;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ll/c;->a:Ljava/lang/String;

    return-object v0
.end method
