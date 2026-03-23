.class public Ls0/g;
.super Ls0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ls0/f;)V
    .locals 0

    invoke-direct {p0, p1}, Ls0/b;-><init>(Ls0/f;)V

    return-void
.end method


# virtual methods
.method public a(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0, p1}, Ls0/f;->b0(Ll1/h;)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0}, Ls0/f;->j0()V

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0}, Ls0/f;->f0()Ls0/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls0/b;->D(Ls0/b;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0}, Ls0/f;->k0()V

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0}, Ls0/f;->d0()Ls0/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls0/b;->D(Ls0/b;)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0}, Ls0/f;->k0()V

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0}, Ls0/f;->l0()V

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0}, Ls0/f;->c0()Ls0/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls0/b;->D(Ls0/b;)V

    return-void
.end method
