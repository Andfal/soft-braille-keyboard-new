.class public abstract Lp0/a;
.super Lg1/a;
.source "SourceFile"

# interfaces
.implements Lp0/d;


# instance fields
.field protected c:Lq0/b;

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo0/b;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile e:Lp0/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg1/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp0/a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public B(Lq0/b;)V
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0, p1}, Lp0/b;->B(Lq0/b;)V

    return-void
.end method

.method protected H()Ll0/f;
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0}, Lp0/b;->b()Ll0/f;

    move-result-object v0

    return-object v0
.end method

.method protected I()V
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0}, Lp0/b;->C()V

    return-void
.end method

.method protected J()V
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0}, Lp0/b;->c()V

    return-void
.end method

.method protected K()V
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0}, Lp0/b;->d()V

    return-void
.end method

.method protected L()V
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0}, Lp0/b;->e()V

    return-void
.end method

.method protected M()V
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0}, Lp0/b;->f()V

    return-void
.end method

.method public P()Lp0/b;
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    return-object v0
.end method

.method public Q(Lp0/b;)V
    .locals 0

    iput-object p1, p0, Lp0/a;->e:Lp0/b;

    return-void
.end method

.method R(Ll1/h;)V
    .locals 2

    invoke-virtual {p0}, Lg1/a;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    new-instance p1, Ll1/h;

    invoke-direct {p1}, Ll1/h;-><init>()V

    :cond_0
    sget-object v0, Lb1/e;->c:Lb1/e;

    invoke-virtual {p1, v0}, Ll1/h;->h(Lb1/e;)V

    iget-object v0, p0, Lp0/a;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/b;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lo0/b;->c(Ll1/h;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method S(Ll1/h;)V
    .locals 2

    invoke-virtual {p0}, Lg1/a;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    new-instance p1, Ll1/h;

    invoke-direct {p1}, Ll1/h;-><init>()V

    :cond_0
    sget-object v0, Lb1/e;->b:Lb1/e;

    invoke-virtual {p1, v0}, Ll1/h;->h(Lb1/e;)V

    iget-object v0, p0, Lp0/a;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/b;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lo0/b;->b(Ll1/h;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method T(Ll1/h;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ll1/h;

    invoke-direct {p1}, Ll1/h;-><init>()V

    :cond_0
    sget-object v0, Lb1/e;->d:Lb1/e;

    invoke-virtual {p1, v0}, Ll1/h;->h(Lb1/e;)V

    iget-object v0, p0, Lp0/a;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/b;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lo0/b;->e(Ll1/h;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method U(Ll1/h;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Ll1/h;

    invoke-direct {p1}, Ll1/h;-><init>()V

    :cond_0
    sget-object v0, Lb1/e;->g:Lb1/e;

    invoke-virtual {p1, v0}, Ll1/h;->h(Lb1/e;)V

    iget-object v0, p0, Lp0/a;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/b;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lo0/b;->d(Ll1/h;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0, p1}, Lp0/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method a(Ll1/h;)V
    .locals 2

    invoke-virtual {p0}, Lg1/a;->E()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    new-instance p1, Ll1/h;

    invoke-direct {p1}, Ll1/h;-><init>()V

    :cond_0
    sget-object v0, Lb1/e;->a:Lb1/e;

    invoke-virtual {p1, v0}, Ll1/h;->h(Lb1/e;)V

    iget-object v0, p0, Lp0/a;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/b;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lo0/b;->a(Ll1/h;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Ll1/i;)V
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0, p1}, Lp0/b;->b(Ll1/i;)V

    return-void
.end method

.method public d(Ll1/g;)I
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0, p1}, Lp0/b;->d(Ll1/g;)I

    move-result p1

    return p1
.end method

.method public e(Ll1/f;)I
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0, p1}, Lp0/b;->e(Ll1/f;)I

    move-result p1

    return p1
.end method

.method public f(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0, p1}, Lp0/b;->f(Ll1/e;)I

    move-result p1

    return p1
.end method

.method public g(Ll1/e;)I
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0, p1}, Lp0/b;->g(Ll1/e;)I

    move-result p1

    return p1
.end method

.method public h(Lo0/b;)V
    .locals 1

    iget-object v0, p0, Lp0/a;->e:Lp0/b;

    invoke-virtual {v0, p1}, Lp0/b;->h(Lo0/b;)V

    return-void
.end method
