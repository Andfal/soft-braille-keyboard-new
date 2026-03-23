.class public Lg/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/j1;


# static fields
.field public static a:Lg/h1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/h1;

    invoke-direct {v0}, Lg/h1;-><init>()V

    sput-object v0, Lg/h1;->a:Lg/h1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(Lf/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p4, p0, Lf/a;->f:Lf/c;

    invoke-interface {p4}, Lf/c;->M()I

    move-result v0

    const/16 v1, 0xc

    const/16 v2, 0x10

    if-eq v0, v1, :cond_1

    invoke-interface {p4}, Lf/c;->M()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lc/d;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "syntax error, expect {, actual "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lf/c;->a0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lf/a;->i()Lf/i;

    move-result-object v0

    invoke-virtual {v0, p2}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v0

    invoke-virtual {p0}, Lf/a;->i()Lf/i;

    move-result-object v1

    invoke-virtual {v1, p3}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object v1

    invoke-interface {v0}, Lg/j1;->c()I

    move-result v3

    invoke-interface {p4, v3}, Lf/c;->x(I)V

    invoke-virtual {p0}, Lf/a;->j()Lf/h;

    move-result-object v3

    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {p4}, Lf/c;->M()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    invoke-interface {p4, v2}, Lf/c;->x(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3}, Lf/a;->h0(Lf/h;)V

    return-object p1

    :cond_3
    :try_start_1
    invoke-interface {p4}, Lf/c;->M()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-ne v4, v7, :cond_9

    invoke-interface {p4}, Lf/c;->f0()Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Lf/b;->q:Lf/b;

    invoke-interface {p4, v4}, Lf/c;->D(Lf/b;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-interface {p4, v7}, Lf/c;->G(I)V

    invoke-interface {p4}, Lf/c;->M()I

    move-result p1

    if-ne p1, v7, :cond_8

    invoke-interface {p4}, Lf/c;->H()Ljava/lang/String;

    move-result-object p1

    const-string p2, ".."

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p1, v3, Lf/h;->b:Lf/h;

    :cond_4
    iget-object v6, p1, Lf/h;->a:Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const-string p2, "$"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    move-object p1, v3

    :goto_2
    iget-object p2, p1, Lf/h;->b:Lf/h;

    if-eqz p2, :cond_4

    move-object p1, p2

    goto :goto_2

    :cond_6
    new-instance p2, Lf/a$a;

    invoke-direct {p2, v3, p1}, Lf/a$a;-><init>(Lf/h;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lf/a;->f(Lf/a$a;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lf/a;->l0(I)V

    :goto_3
    invoke-interface {p4, v5}, Lf/c;->x(I)V

    invoke-interface {p4}, Lf/c;->M()I

    move-result p1

    if-ne p1, v5, :cond_7

    invoke-interface {p4, v2}, Lf/c;->x(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v3}, Lf/a;->h0(Lf/h;)V

    return-object v6

    :cond_7
    :try_start_2
    new-instance p1, Lc/d;

    const-string p2, "illegal ref"

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "illegal ref, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lf/c;->M()I

    move-result p3

    invoke-static {p3}, Lf/g;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {p4}, Lf/c;->M()I

    move-result v4

    if-ne v4, v7, :cond_b

    sget-object v4, Lc/a;->c:Ljava/lang/String;

    invoke-interface {p4}, Lf/c;->H()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Lf/b;->q:Lf/b;

    invoke-interface {p4, v4}, Lf/c;->D(Lf/b;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface {p4, v7}, Lf/c;->G(I)V

    invoke-interface {p4, v2}, Lf/c;->x(I)V

    invoke-interface {p4}, Lf/c;->M()I

    move-result v4

    if-ne v4, v5, :cond_a

    invoke-interface {p4}, Lf/c;->nextToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v3}, Lf/a;->h0(Lf/h;)V

    return-object p1

    :cond_a
    :try_start_3
    invoke-interface {v0}, Lg/j1;->c()I

    move-result v4

    invoke-interface {p4, v4}, Lf/c;->x(I)V

    :cond_b
    invoke-interface {p4}, Lf/c;->M()I

    move-result v4

    if-ne v4, v7, :cond_c

    instance-of v4, v0, Lg/o;

    if-eqz v4, :cond_c

    invoke-interface {p4}, Lf/c;->H()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4}, Lf/c;->nextToken()V

    new-instance v5, Lf/a;

    invoke-virtual {p0}, Lf/a;->i()Lf/i;

    move-result-object v7

    invoke-virtual {p0}, Lf/a;->A()Lf/c;

    move-result-object v8

    invoke-interface {v8}, Lf/c;->P()I

    move-result v8

    invoke-direct {v5, v4, v7, v8}, Lf/a;-><init>(Ljava/lang/String;Lf/i;I)V

    invoke-virtual {p0}, Lf/a;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lf/a;->j0(Ljava/lang/String;)V

    invoke-interface {v0, v5, p2, v6}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_4

    :cond_c
    invoke-interface {v0, p0, p2, v6}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_4
    invoke-interface {p4}, Lf/c;->M()I

    move-result v5

    const/16 v6, 0x11

    if-ne v5, v6, :cond_d

    invoke-interface {v1}, Lg/j1;->c()I

    move-result v5

    invoke-interface {p4, v5}, Lf/c;->x(I)V

    invoke-interface {v1, p0, p3, v4}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, p1, v4}, Lf/a;->h(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p4}, Lf/c;->M()I

    move-result v4

    if-ne v4, v2, :cond_2

    invoke-interface {v0}, Lg/j1;->c()I

    move-result v4

    invoke-interface {p4, v4}, Lf/c;->x(I)V

    goto/16 :goto_1

    :cond_d
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "syntax error, expect :, actual "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4}, Lf/c;->M()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v3}, Lf/a;->h0(Lf/h;)V

    throw p1
.end method

.method public static h(Lf/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    iget-object v0, p0, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/16 v2, 0xc

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "syntax error, expect {, actual "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lf/c;->a0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    instance-of p2, p3, Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", fieldName "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lf/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    if-eq v1, p2, :cond_1

    new-instance p2, Lc/b;

    invoke-direct {p2}, Lc/b;-><init>()V

    invoke-virtual {p0, p2, p3}, Lf/a;->O(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lc/b;->size()I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_1

    invoke-virtual {p2, v3}, Lc/b;->get(I)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Lc/e;

    if-eqz p2, :cond_1

    check-cast p0, Lc/e;

    return-object p0

    :cond_1
    new-instance p0, Lc/d;

    invoke-direct {p0, p1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lf/a;->j()Lf/h;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v0}, Lf/c;->V()V

    invoke-interface {v0}, Lf/c;->S()C

    move-result v2

    sget-object v4, Lf/b;->h:Lf/b;

    invoke-interface {v0, v4}, Lf/c;->D(Lf/b;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_1
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_3

    invoke-interface {v0}, Lf/c;->next()C

    invoke-interface {v0}, Lf/c;->V()V

    invoke-interface {v0}, Lf/c;->S()C

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    const-string v4, "expect \':\' at "

    const/16 v5, 0x3a

    const/16 v6, 0x22

    const/16 v7, 0x10

    if-ne v2, v6, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lf/a;->C()Lf/j;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Lf/c;->j(Lf/j;C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lf/c;->V()V

    invoke-interface {v0}, Lf/c;->S()C

    move-result v8

    if-ne v8, v5, :cond_4

    goto/16 :goto_2

    :cond_4
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lf/c;->b()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/16 v8, 0x7d

    if-ne v2, v8, :cond_6

    invoke-interface {v0}, Lf/c;->next()C

    invoke-interface {v0}, Lf/c;->W()V

    invoke-interface {v0, v7}, Lf/c;->x(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v1}, Lf/a;->h0(Lf/h;)V

    return-object p1

    :cond_6
    const-string v8, "syntax error"

    const/16 v9, 0x27

    if-ne v2, v9, :cond_9

    :try_start_2
    sget-object v2, Lf/b;->e:Lf/b;

    invoke-interface {v0, v2}, Lf/c;->D(Lf/b;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lf/a;->C()Lf/j;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Lf/c;->j(Lf/j;C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lf/c;->V()V

    invoke-interface {v0}, Lf/c;->S()C

    move-result v8

    if-ne v8, v5, :cond_7

    goto :goto_2

    :cond_7
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lf/c;->b()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lc/d;

    invoke-direct {p1, v8}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    sget-object v2, Lf/b;->d:Lf/b;

    invoke-interface {v0, v2}, Lf/c;->D(Lf/b;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Lf/a;->C()Lf/j;

    move-result-object v2

    invoke-interface {v0, v2}, Lf/c;->u(Lf/j;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lf/c;->V()V

    invoke-interface {v0}, Lf/c;->S()C

    move-result v8

    if-ne v8, v5, :cond_13

    :goto_2
    invoke-interface {v0}, Lf/c;->next()C

    invoke-interface {v0}, Lf/c;->V()V

    invoke-interface {v0}, Lf/c;->S()C

    invoke-interface {v0}, Lf/c;->W()V

    sget-object v4, Lc/a;->c:Ljava/lang/String;

    const/16 v5, 0xd

    const/4 v8, 0x0

    if-ne v2, v4, :cond_d

    sget-object v4, Lf/b;->q:Lf/b;

    invoke-interface {v0, v4}, Lf/c;->D(Lf/b;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0}, Lf/a;->C()Lf/j;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Lf/c;->j(Lf/j;C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lf/a;->i()Lf/i;

    move-result-object v4

    const-string v6, "java.util.HashMap"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-class v2, Ljava/util/HashMap;

    goto :goto_3

    :cond_a
    invoke-interface {v0}, Lf/c;->P()I

    move-result v6

    invoke-virtual {v4, v2, v8, v6}, Lf/i;->h(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v2

    :goto_3
    const-class v6, Ljava/util/Map;

    invoke-virtual {v6, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v0, v7}, Lf/c;->x(I)V

    invoke-interface {v0}, Lf/c;->M()I

    move-result v2

    if-ne v2, v5, :cond_11

    invoke-interface {v0, v7}, Lf/c;->x(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0, v1}, Lf/a;->h0(Lf/h;)V

    return-object p1

    :cond_b
    :try_start_3
    invoke-virtual {v4, v2}, Lf/i;->n(Ljava/lang/reflect/Type;)Lg/j1;

    move-result-object p1

    invoke-interface {v0, v7}, Lf/c;->x(I)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lf/a;->l0(I)V

    if-eqz v1, :cond_c

    instance-of p2, p3, Ljava/lang/Integer;

    if-nez p2, :cond_c

    invoke-virtual {p0}, Lf/a;->a0()V

    :cond_c
    invoke-interface {p1, p0, v2, p3}, Lg/j1;->d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, v1}, Lf/a;->h0(Lf/h;)V

    return-object p1

    :cond_d
    :try_start_4
    invoke-interface {v0}, Lf/c;->nextToken()V

    if-eqz v3, :cond_e

    invoke-virtual {p0, v1}, Lf/a;->h0(Lf/h;)V

    :cond_e
    invoke-interface {v0}, Lf/c;->M()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_f

    invoke-interface {v0}, Lf/c;->nextToken()V

    goto :goto_4

    :cond_f
    invoke-virtual {p0, p2, v2}, Lf/a;->V(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :goto_4
    invoke-interface {p1, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lf/a;->h(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v8, v2}, Lf/a;->e0(Lf/h;Ljava/lang/Object;Ljava/lang/Object;)Lf/h;

    invoke-virtual {p0, v1}, Lf/a;->h0(Lf/h;)V

    invoke-interface {v0}, Lf/c;->M()I

    move-result v2

    const/16 v4, 0x14

    if-eq v2, v4, :cond_12

    const/16 v4, 0xf

    if-ne v2, v4, :cond_10

    goto :goto_5

    :cond_10
    if-ne v2, v5, :cond_11

    invoke-interface {v0}, Lf/c;->nextToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0, v1}, Lf/a;->h0(Lf/h;)V

    return-object p1

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_12
    :goto_5
    invoke-virtual {p0, v1}, Lf/a;->h0(Lf/h;)V

    return-object p1

    :cond_13
    :try_start_5
    new-instance p1, Lc/d;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lf/c;->b()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", actual "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Lc/d;

    invoke-direct {p1, v8}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Lf/a;->h0(Lf/h;)V

    throw p1
.end method


# virtual methods
.method public b(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget v0, Lc/a;->g:I

    invoke-virtual {p0, p1, v0}, Lg/h1;->e(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public d(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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

    const-class v0, Lc/e;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Lf/a;->x()Lg/m;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lf/a;->R()Lc/e;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Lf/a;->f:Lf/c;

    invoke-interface {v0}, Lf/c;->M()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/16 p1, 0x10

    invoke-interface {v0, p1}, Lf/c;->x(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.util.Collections$UnmodifiableMap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lf/c;->P()I

    move-result v2

    sget-object v3, Lf/b;->p:Lf/b;

    iget v3, v3, Lf/b;->a:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lf/c;->P()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lg/h1;->e(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p2}, Lg/h1;->b(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lf/a;->j()Lf/h;

    move-result-object v2

    :try_start_0
    invoke-virtual {p1, v2, v0, p3}, Lf/a;->e0(Lf/h;Ljava/lang/Object;Ljava/lang/Object;)Lf/h;

    invoke-virtual {p0, p1, p2, p3, v0}, Lg/h1;->f(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    if-eqz v1, :cond_4

    check-cast p2, Ljava/util/Map;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    invoke-virtual {p1, v2}, Lf/a;->h0(Lf/h;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-virtual {p1, v2}, Lf/a;->h0(Lf/h;)V

    throw p2
.end method

.method public e(Ljava/lang/reflect/Type;I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/util/Properties;

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    return-object p1

    :cond_0
    const-class v0, Ljava/util/Hashtable;

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    return-object p1

    :cond_1
    const-class v0, Ljava/util/IdentityHashMap;

    if-ne p1, v0, :cond_2

    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    return-object p1

    :cond_2
    const-class v0, Ljava/util/SortedMap;

    if-eq p1, v0, :cond_e

    const-class v0, Ljava/util/TreeMap;

    if-ne p1, v0, :cond_3

    goto/16 :goto_2

    :cond_3
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    if-eq p1, v0, :cond_d

    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne p1, v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const-class v0, Ljava/util/Map;

    if-ne p1, v0, :cond_6

    sget-object p1, Lf/b;->p:Lf/b;

    iget p1, p1, Lf/b;->a:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_5

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object p1

    :cond_6
    const-class v0, Ljava/util/HashMap;

    if-ne p1, v0, :cond_7

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_7
    const-class v0, Ljava/util/LinkedHashMap;

    if-ne p1, v0, :cond_8

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p1

    :cond_8
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    new-instance p2, Ljava/util/EnumMap;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Class;

    invoke-direct {p2, p1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    return-object p2

    :cond_9
    invoke-virtual {p0, v0, p2}, Lg/h1;->e(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_a
    move-object p2, p1

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const-string v1, "unsupport type "

    if-nez v0, :cond_c

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "java.util.Collections$UnmodifiableMap"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_b
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    new-instance v0, Lc/d;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    new-instance p2, Lc/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lc/d;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_d
    :goto_1
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p1

    :cond_e
    :goto_2
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    return-object p1
.end method

.method protected f(Lf/a;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "org.springframework.util.LinkedMultiValueMap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-class p2, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p2

    const/4 v1, 0x1

    aget-object p2, p2, v1

    :goto_0
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_1

    invoke-static {p1, p4, p2, p3}, Lg/h1;->h(Lf/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1, p4, v0, p2, p3}, Lg/h1;->g(Lf/a;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1, p4, p3}, Lf/a;->X(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
