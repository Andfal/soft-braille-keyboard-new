.class public Lw3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/d0;
.implements Lw3/k3;


# instance fields
.field protected a:Lw3/z2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lw3/t;->a:Lw3/z2;

    return-void
.end method


# virtual methods
.method public A(Lw3/z2;)V
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0, p1}, Lw3/z2;->A(Lw3/z2;)V

    return-void
.end method

.method public B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    instance-of v1, v0, Lw3/k3;

    if-eqz v1, :cond_0

    check-cast v0, Lw3/k3;

    invoke-interface {v0, p1, p2}, Lw3/k3;->B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1
.end method

.method public C(ILw3/z2;)Z
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lw3/z2;->C(ILw3/z2;)Z

    move-result p1

    return p1
.end method

.method public D(ILw3/z2;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lw3/z2;->D(ILw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    instance-of v1, v0, Lw3/k3;

    if-eqz v1, :cond_0

    check-cast v0, Lw3/k3;

    invoke-interface {v0, p1, p2, p3}, Lw3/k3;->F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    check-cast v0, Lw3/d0;

    invoke-interface {v0, p1, p2, p3, p4}, Lw3/d0;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lw3/z2;)Z
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0, p1}, Lw3/z2;->b(Lw3/z2;)Z

    move-result p1

    return p1
.end method

.method public c()Lw3/z2;
    .locals 1

    iget-object v0, p0, Lw3/t;->a:Lw3/z2;

    return-object v0
.end method

.method public d(ILw3/z2;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lw3/z2;->d(ILw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_1

    sget-object v0, Lw3/u2;->r:Ljava/lang/Class;

    if-eq p1, v0, :cond_1

    sget-object v0, Lw3/u2;->p:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0, p1}, Lw3/z2;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public f(I)V
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0, p1}, Lw3/z2;->f(I)V

    return-void
.end method

.method protected g()Lw3/t;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lw3/m;->i0(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0}, Lw3/z2;->getIds()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h(Lw3/z2;)V
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0, p1}, Lw3/z2;->h(Lw3/z2;)V

    return-void
.end method

.method public i()Lw3/z2;
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0}, Lw3/z2;->i()Lw3/z2;

    move-result-object v0

    return-object v0
.end method

.method public k(Lw3/i3;Lw3/z2;)Z
    .locals 2

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    instance-of v1, v0, Lw3/k3;

    if-eqz v1, :cond_0

    check-cast v0, Lw3/k3;

    invoke-interface {v0, p1, p2}, Lw3/k3;->k(Lw3/i3;Lw3/z2;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public l()Lw3/z2;
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0}, Lw3/z2;->l()Lw3/z2;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0}, Lw3/z2;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n(Lw3/z2;)V
    .locals 0

    iput-object p1, p0, Lw3/t;->a:Lw3/z2;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0, p1}, Lw3/z2;->o(Ljava/lang/String;)V

    return-void
.end method

.method public p(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;
    .locals 2

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lw3/t;->g()Lw3/t;

    move-result-object v0

    array-length v1, p3

    if-nez v1, :cond_0

    new-instance p1, Lw3/x1;

    invoke-direct {p1}, Lw3/x1;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object p3, p3, v1

    invoke-static {p1, p2, p3}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lw3/t;->n(Lw3/z2;)V

    return-object v0

    :cond_1
    check-cast v0, Lw3/d0;

    invoke-interface {v0, p1, p2, p3}, Lw3/d0;->p(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;Lw3/z2;)Z
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lw3/z2;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lw3/z2;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lw3/z2;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z(Lw3/i3;)V
    .locals 2

    invoke-virtual {p0}, Lw3/t;->c()Lw3/z2;

    move-result-object v0

    instance-of v1, v0, Lw3/k3;

    if-eqz v1, :cond_0

    check-cast v0, Lw3/k3;

    invoke-interface {v0, p1}, Lw3/k3;->z(Lw3/i3;)V

    :cond_0
    return-void
.end method
