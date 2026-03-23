.class public abstract Lq/t0;
.super Lq/l0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lq/m;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lq/l0;-><init>(Ljava/lang/String;Lq/m;I)V

    return-void
.end method


# virtual methods
.method public final b(Lq/y;)I
    .locals 1

    check-cast p1, Lq/x;

    invoke-virtual {p1}, Lq/x;->f()I

    move-result v0

    invoke-virtual {p1}, Lq/y;->d()I

    move-result p1

    mul-int v0, v0, p1

    invoke-virtual {p0, v0}, Lq/l0;->c(I)I

    move-result p1

    return p1
.end method

.method protected final i()V
    .locals 3

    invoke-virtual {p0}, Lq/l0;->e()Lq/m;

    move-result-object v0

    invoke-virtual {p0}, Lq/t0;->q()V

    invoke-virtual {p0}, Lq/l0;->g()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq/y;

    invoke-virtual {v2, v0}, Lq/y;->a(Lq/m;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final n()I
    .locals 2

    invoke-virtual {p0}, Lq/l0;->g()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/y;

    invoke-virtual {v0}, Lq/y;->d()I

    move-result v0

    mul-int v1, v1, v0

    return v1
.end method

.method protected final p(Lx/a;)V
    .locals 4

    invoke-virtual {p0}, Lq/l0;->e()Lq/m;

    move-result-object v0

    invoke-virtual {p0}, Lq/l0;->d()I

    move-result v1

    invoke-virtual {p0}, Lq/l0;->g()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq/y;

    invoke-virtual {v3, v0, p1}, Lq/y;->e(Lq/m;Lx/a;)V

    invoke-interface {p1, v1}, Lx/q;->l(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract q()V
.end method
