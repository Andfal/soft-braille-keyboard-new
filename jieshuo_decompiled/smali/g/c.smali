.class public Lg/c;
.super Lg/l;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/reflect/Type;

.field private d:I

.field private e:Lg/j1;


# direct methods
.method public constructor <init>(Lf/i;Ljava/lang/Class;Ll/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/i;",
            "Ljava/lang/Class<",
            "*>;",
            "Ll/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lg/l;-><init>(Ljava/lang/Class;Ll/c;)V

    iget-object p1, p3, Ll/c;->f:Ljava/lang/reflect/Type;

    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    instance-of p3, p1, Ljava/lang/reflect/WildcardType;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Ljava/lang/reflect/WildcardType;

    invoke-interface {p3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p3

    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    aget-object p1, p3, p2

    goto :goto_0

    :cond_0
    const-class p1, Ljava/lang/Object;

    :cond_1
    :goto_0
    iput-object p1, p0, Lg/c;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public c(Lf/a;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lf/c;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lf/a;->j()Lf/h;

    move-result-object v1

    iget-object v2, p0, Lg/l;->a:Ll/c;

    iget-object v2, v2, Ll/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v2}, Lf/a;->e0(Lf/h;Ljava/lang/Object;Ljava/lang/Object;)Lf/h;

    invoke-virtual {p0, p1, p3, v0}, Lg/c;->j(Lf/a;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Lf/a;->h0(Lf/h;)V

    if-nez p2, :cond_1

    iget-object p1, p0, Lg/l;->a:Ll/c;

    iget-object p1, p1, Ll/c;->a:Ljava/lang/String;

    invoke-interface {p4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v0}, Lg/l;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const/4 p1, 0x0

    if-nez p2, :cond_3

    iget-object p2, p0, Lg/l;->a:Ll/c;

    iget-object p2, p2, Ll/c;->a:Ljava/lang/String;

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2, p1}, Lg/l;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final j(Lf/a;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 12

    iget-object v0, p0, Lg/c;->c:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lg/c;->e:Lg/j1;

    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_0

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/Class;

    :cond_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    array-length v3, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v3, :cond_2

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, -0x1

    :goto_1
    if-eq v7, v6, :cond_a

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    aget-object p2, p2, v7

    iget-object v0, p0, Lg/c;->c:Ljava/lang/reflect/Type;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lf/a;->i()Lf/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v0

    move-object v1, v0

    :cond_3
    :goto_2
    move-object v0, p2

    goto/16 :goto_6

    :cond_4
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_a

    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    array-length v8, v7

    if-ne v8, v3, :cond_a

    aget-object v3, v7, v4

    instance-of v8, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v8, :cond_a

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Class;

    if-eqz v8, :cond_5

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_7

    invoke-virtual {v5}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-interface {v10}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    const/4 v9, -0x1

    :goto_4
    if-eq v9, v6, :cond_a

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    aget-object p2, p2, v9

    aput-object p2, v7, v4

    new-instance p2, Ll/h;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-direct {p2, v7, v0, v2}, Ll/h;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    goto :goto_2

    :cond_8
    instance-of v2, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v2, :cond_a

    instance-of v2, p2, Ljava/lang/Class;

    if-eqz v2, :cond_a

    check-cast p2, Ljava/lang/Class;

    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_a

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p2

    array-length v2, p2

    if-ne v2, v3, :cond_a

    aget-object v0, p2, v4

    goto :goto_6

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    iget-object p2, p1, Lf/a;->f:Lf/c;

    invoke-interface {p2}, Lf/c;->M()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_f

    if-nez v1, :cond_b

    invoke-virtual {p1}, Lf/a;->i()Lf/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v1

    iput-object v1, p0, Lg/c;->e:Lg/j1;

    invoke-interface {v1}, Lg/j1;->c()I

    move-result v2

    iput v2, p0, Lg/c;->d:I

    :cond_b
    move-object v2, v1

    iget v1, p0, Lg/c;->d:I

    invoke-interface {p2, v1}, Lf/c;->x(I)V

    :goto_7
    sget-object v1, Lf/b;->h:Lf/b;

    invoke-interface {p2, v1}, Lf/c;->D(Lf/b;)Z

    move-result v1

    const/16 v3, 0x10

    if-eqz v1, :cond_c

    :goto_8
    invoke-interface {p2}, Lf/c;->M()I

    move-result v1

    if-ne v1, v3, :cond_c

    invoke-interface {p2}, Lf/c;->nextToken()V

    goto :goto_8

    :cond_c
    invoke-interface {p2}, Lf/c;->M()I

    move-result v1

    const/16 v5, 0xf

    if-ne v1, v5, :cond_d

    invoke-interface {p2, v3}, Lf/c;->x(I)V

    goto :goto_9

    :cond_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p3}, Lf/a;->g(Ljava/util/Collection;)V

    invoke-interface {p2}, Lf/c;->M()I

    move-result v1

    if-ne v1, v3, :cond_e

    iget v1, p0, Lg/c;->d:I

    invoke-interface {p2, v1}, Lf/c;->x(I)V

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_f
    if-nez v1, :cond_10

    invoke-virtual {p1}, Lf/a;->i()Lf/i;

    move-result-object p2

    invoke-virtual {p2, v0}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v1

    iput-object v1, p0, Lg/c;->e:Lg/j1;

    :cond_10
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p1, v0, p2}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p3}, Lf/a;->g(Ljava/util/Collection;)V

    :goto_9
    return-void
.end method
