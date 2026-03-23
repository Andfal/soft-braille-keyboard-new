.class public abstract Ls0/a;
.super Lg1/a;
.source "SourceFile"

# interfaces
.implements Ls0/c;


# instance fields
.field protected c:Lr0/a;

.field protected volatile d:Ls0/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg1/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected H()Ll0/f;
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0}, Ls0/b;->b()Ll0/f;

    move-result-object v0

    return-object v0
.end method

.method protected I()V
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0}, Ls0/b;->C()V

    return-void
.end method

.method protected J()V
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0}, Ls0/b;->c()V

    return-void
.end method

.method protected K()V
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0}, Ls0/b;->d()V

    return-void
.end method

.method protected L()V
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0}, Ls0/b;->e()V

    return-void
.end method

.method protected M()V
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0}, Ls0/b;->f()V

    return-void
.end method

.method public P()Ls0/b;
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    return-object v0
.end method

.method public Q(Ls0/b;)V
    .locals 0

    iput-object p1, p0, Ls0/a;->d:Ls0/b;

    return-void
.end method

.method protected R(Ll1/h;)V
    .locals 1

    invoke-virtual {p0}, Lg1/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls0/a;->c:Lr0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr0/a;->a(Ll1/h;)V

    :cond_0
    return-void
.end method

.method protected S(Ll1/h;)V
    .locals 1

    invoke-virtual {p0}, Lg1/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls0/a;->c:Lr0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr0/a;->b(Ll1/h;)V

    :cond_0
    return-void
.end method

.method protected T(Ll1/h;)V
    .locals 1

    invoke-virtual {p0}, Lg1/a;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls0/a;->c:Lr0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr0/a;->c(Ll1/h;)V

    :cond_0
    return-void
.end method

.method public a(I)I
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0, p1}, Ls0/b;->a(I)I

    move-result p1

    return p1
.end method

.method public a(II)I
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0, p1, p2}, Ls0/b;->a(II)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0, p1}, Ls0/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0, p1}, Ls0/b;->a(Ll1/h;)V

    return-void
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0, p1}, Ls0/b;->b(I)I

    move-result p1

    return p1
.end method

.method public c(FF)I
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0, p1, p2}, Ls0/b;->c(FF)I

    move-result p1

    return p1
.end method

.method public i(Lr0/a;)V
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0, p1}, Ls0/b;->i(Lr0/a;)V

    return-void
.end method

.method public v()V
    .locals 1

    iget-object v0, p0, Ls0/a;->d:Ls0/b;

    invoke-virtual {v0}, Ls0/b;->v()V

    return-void
.end method
