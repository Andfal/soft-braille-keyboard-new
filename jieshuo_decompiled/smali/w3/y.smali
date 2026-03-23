.class final Lw3/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lw3/y;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lw3/y;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lw3/y;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lw3/y;->b:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic a(Lw3/i3;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lw3/y;->l(Lw3/i3;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lw3/b4;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p2, Lw3/b4;

    if-eqz v0, :cond_0

    check-cast p1, Lw3/b4;

    invoke-interface {p1}, Lw3/b4;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p2, Lw3/b4;

    invoke-interface {p2}, Lw3/b4;->c()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lw3/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Lw3/z2;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lw3/z2;

    if-eqz v0, :cond_2

    check-cast p1, Lw3/z2;

    check-cast p2, Lw3/z2;

    invoke-direct {p0, p1, p2}, Lw3/y;->h(Lw3/z2;Lw3/z2;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_3
    instance-of v0, p1, Lw3/k;

    if-eqz v0, :cond_4

    check-cast p1, Lw3/k;

    invoke-virtual {p1}, Lw3/k;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    instance-of v0, p2, Lw3/k;

    if-eqz v0, :cond_5

    check-cast p2, Lw3/k;

    invoke-virtual {p2}, Lw3/k;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    instance-of v0, p1, Lw3/j3;

    if-eqz v0, :cond_7

    instance-of v0, p2, Lw3/j3;

    if-eqz v0, :cond_6

    check-cast p1, Lw3/j3;

    invoke-virtual {p1}, Lw3/j3;->a()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lw3/j3;

    invoke-virtual {p2}, Lw3/j3;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lw3/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    return v1

    :cond_7
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_9

    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lw3/y;->g([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    return v1

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, p2}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_a
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_c

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lw3/y;->e(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v1, 0x0

    :goto_4
    return v1

    :cond_c
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_e

    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lw3/y;->f(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_5

    :cond_d
    const/4 v1, 0x0

    :goto_5
    return v1

    :cond_e
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_10

    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p1, p2}, Lw3/y;->i(Ljava/util/Set;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_6

    :cond_f
    const/4 v1, 0x0

    :goto_6
    return v1

    :cond_10
    instance-of v0, p1, Lw3/k1;

    if-eqz v0, :cond_11

    instance-of p1, p2, Lw3/k1;

    return p1

    :cond_11
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static d(Lw3/p0;Lw3/p0;)Z
    .locals 0

    invoke-virtual {p0}, Lw3/p0;->a2()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lw3/p0;->a2()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private e(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lw3/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private f(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Lw3/y;->n(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p2}, Lw3/y;->n(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lw3/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lw3/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private g([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {p0, v1, v3}, Lw3/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private h(Lw3/z2;Lw3/z2;)Z
    .locals 7

    invoke-static {p1}, Lw3/y;->k(Lw3/z2;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lw3/y;->k(Lw3/z2;)[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lw3/y;->g([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    invoke-static {p1, v5}, Lw3/y;->m(Lw3/z2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-static {p2, v6}, Lw3/y;->m(Lw3/z2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lw3/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lw3/z2;->l()Lw3/z2;

    move-result-object v0

    invoke-interface {p2}, Lw3/z2;->l()Lw3/z2;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lw3/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    invoke-interface {p1}, Lw3/z2;->i()Lw3/z2;

    move-result-object v0

    invoke-interface {p2}, Lw3/z2;->i()Lw3/z2;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lw3/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v3

    :cond_4
    instance-of v0, p1, Lw3/e1;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    instance-of v0, p2, Lw3/e1;

    if-eqz v0, :cond_5

    check-cast p1, Lw3/e1;

    check-cast p2, Lw3/e1;

    invoke-static {p1, p2}, Lw3/e1;->I1(Lw3/e1;Lw3/e1;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3

    :cond_6
    instance-of v0, p1, Lw3/l0;

    if-eqz v0, :cond_8

    instance-of v0, p2, Lw3/l0;

    if-eqz v0, :cond_7

    check-cast p1, Lw3/l0;

    check-cast p2, Lw3/l0;

    invoke-static {p1, p2, p0}, Lw3/l0;->b2(Lw3/l0;Lw3/l0;Lw3/y;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v3, 0x1

    :cond_7
    return v3

    :cond_8
    instance-of v0, p1, Lw3/p0;

    if-eqz v0, :cond_a

    instance-of v0, p2, Lw3/p0;

    if-eqz v0, :cond_9

    check-cast p1, Lw3/p0;

    check-cast p2, Lw3/p0;

    invoke-static {p1, p2}, Lw3/y;->d(Lw3/p0;Lw3/p0;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 v3, 0x1

    :cond_9
    return v3

    :cond_a
    instance-of v0, p1, Lw3/b;

    if-eqz v0, :cond_c

    instance-of v0, p2, Lw3/b;

    if-eqz v0, :cond_b

    check-cast p1, Lw3/b;

    check-cast p2, Lw3/b;

    invoke-static {p1, p2, p0}, Lw3/b;->a2(Lw3/b;Lw3/b;Lw3/y;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 v3, 0x1

    :cond_b
    return v3

    :cond_c
    instance-of v0, p1, Lw3/e;

    if-eqz v0, :cond_e

    instance-of v0, p2, Lw3/e;

    if-eqz v0, :cond_d

    check-cast p1, Lw3/e;

    check-cast p2, Lw3/e;

    invoke-static {p1, p2, p0}, Lw3/e;->b2(Lw3/e;Lw3/e;Lw3/y;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 v3, 0x1

    :cond_d
    return v3

    :cond_e
    instance-of v0, p1, Lw3/c2;

    if-eqz v0, :cond_10

    instance-of v0, p2, Lw3/c2;

    if-eqz v0, :cond_f

    check-cast p1, Lw3/c2;

    invoke-virtual {p1}, Lw3/c2;->L1()Lw3/j3;

    move-result-object p1

    check-cast p2, Lw3/c2;

    invoke-virtual {p2}, Lw3/c2;->L1()Lw3/j3;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lw3/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/4 v3, 0x1

    :cond_f
    return v3

    :cond_10
    return v1
.end method

.method private i(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Set<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lw3/y;->o(Ljava/util/Set;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lw3/y;->o(Ljava/util/Set;)[Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lw3/y;->g([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static j(Lw3/z2;)[Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lw3/a3;

    if-eqz v0, :cond_0

    check-cast p0, Lw3/a3;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lw3/a3;->y0(ZZ)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lz3/a;

    if-eqz v0, :cond_1

    check-cast p0, Lz3/a;

    invoke-interface {p0}, Lz3/a;->s()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0}, Lw3/z2;->getIds()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static k(Lw3/z2;)[Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lw3/y;->j(Lw3/z2;)[Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lw3/y$a;

    invoke-direct {v0}, Lw3/y$a;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p0
.end method

.method private static l(Lw3/i3;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Lw3/j3;

    if-eqz v0, :cond_0

    check-cast p0, Lw3/j3;

    :goto_0
    invoke-virtual {p0}, Lw3/j3;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lw3/c2;

    if-eqz v0, :cond_1

    check-cast p0, Lw3/c2;

    invoke-virtual {p0}, Lw3/c2;->L1()Lw3/j3;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method private static m(Lw3/z2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lw3/i3;

    if-eqz v0, :cond_0

    check-cast p1, Lw3/i3;

    invoke-static {p0, p1}, Lw3/a3;->D0(Lw3/z2;Lw3/i3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lw3/a3;->B0(Lw3/z2;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method private static n(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry;",
            ">;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private static o(Ljava/util/Set;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lw3/y;->b:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_2

    return v0

    :cond_2
    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lw3/y;->a:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_4

    return v0

    :cond_4
    if-eqz v2, :cond_5

    return v1

    :cond_5
    iget-object v0, p0, Lw3/y;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lw3/y;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lw3/y;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lw3/y;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lw3/y;->a:Ljava/util/Map;

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p2, p0, Lw3/y;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_8
    :goto_0
    return v1
.end method
