.class public Lh/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/v0;
.implements Lg/j1;


# static fields
.field public static final a:Lh/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh/v;

    invoke-direct {v0}, Lh/v;-><init>()V

    sput-object v0, Lh/v;->a:Lh/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 9

    iget-object v0, p1, Lh/k0;->k:Lh/f1;

    if-nez p2, :cond_0

    sget-object p1, Lh/g1;->h:Lh/g1;

    invoke-virtual {v0, p1}, Lh/f1;->R(Lh/g1;)V

    return-void

    :cond_0
    sget-object v1, Lh/g1;->p:Lh/g1;

    invoke-virtual {v0, v1}, Lh/f1;->j(Lh/g1;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p5, v1}, Lh/g1;->c(ILh/g1;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p4}, Ll/l;->U(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p4

    :goto_1
    move-object v2, p2

    check-cast v2, Ljava/util/Collection;

    iget-object v8, p1, Lh/k0;->q:Lh/a1;

    const/4 v3, 0x0

    invoke-virtual {p1, v8, p2, p3, v3}, Lh/k0;->B(Lh/a1;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lh/f1;->j(Lh/g1;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class p3, Ljava/util/HashSet;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Set"

    :goto_2
    invoke-virtual {v0, p2}, Lh/f1;->c(Ljava/lang/CharSequence;)Lh/f1;

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-class p3, Ljava/util/TreeSet;

    if-ne p3, p2, :cond_4

    const-string p2, "TreeSet"

    goto :goto_2

    :cond_4
    :goto_3
    const/16 p2, 0x5b

    :try_start_0
    invoke-virtual {v0, p2}, Lh/f1;->b(C)Lh/f1;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 p3, v3, 0x1

    if-eqz v3, :cond_5

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lh/f1;->b(C)Lh/f1;

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {v0}, Lh/f1;->O()V

    goto :goto_5

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    if-ne v1, v2, :cond_7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lh/f1;->L(I)V

    goto :goto_5

    :cond_7
    const-class v2, Ljava/lang/Long;

    if-ne v1, v2, :cond_8

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lh/f1;->N(J)V

    sget-object v1, Lh/g1;->p:Lh/g1;

    invoke-virtual {v0, v1}, Lh/f1;->j(Lh/g1;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lh/f1;->write(I)V

    goto :goto_5

    :cond_8
    invoke-virtual {p1, v1}, Lh/k0;->v(Ljava/lang/Class;)Lh/v0;

    move-result-object v2

    sget-object v1, Lh/g1;->p:Lh/g1;

    invoke-static {p5, v1}, Lh/g1;->c(ILh/g1;)Z

    move-result v1

    if-eqz v1, :cond_9

    instance-of v1, v2, Lh/l0;

    if-eqz v1, :cond_9

    check-cast v2, Lh/l0;

    add-int/lit8 v1, p3, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lh/l0;->D(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto :goto_5

    :cond_9
    add-int/lit8 v1, p3, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lh/v0;->b(Lh/k0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    :cond_a
    :goto_5
    move v3, p3

    goto :goto_4

    :cond_b
    const/16 p2, 0x5d

    invoke-virtual {v0, p2}, Lh/f1;->b(C)Lh/f1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v8, p1, Lh/k0;->q:Lh/a1;

    return-void

    :catchall_0
    move-exception p2

    iput-object v8, p1, Lh/k0;->q:Lh/a1;

    throw p2
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/a;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p1, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lf/a;->f:Lf/c;

    const/16 p2, 0x10

    invoke-interface {p1, p2}, Lf/c;->x(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-class v0, Lc/b;

    if-ne p2, v0, :cond_1

    new-instance p2, Lc/b;

    invoke-direct {p2}, Lc/b;-><init>()V

    invoke-virtual {p1, p2}, Lf/a;->N(Ljava/util/Collection;)V

    return-object p2

    :cond_1
    invoke-static {p2}, Ll/l;->G(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {p2}, Ll/l;->U(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p3}, Lf/a;->M(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    return-object v0
.end method
