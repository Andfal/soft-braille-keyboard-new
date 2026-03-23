.class public Ls0/h;
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

    invoke-virtual {p0}, Ls0/h;->b()Ll0/f;

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0}, Ls0/a;->P()Ls0/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0, p1}, Ls0/a;->a(Ll1/h;)V

    :cond_0
    return-void
.end method

.method public b()Ll0/f;
    .locals 2

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0}, Ls0/f;->g0()Ll0/f;

    move-result-object v0

    iget-object v1, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v1}, Ls0/f;->d0()Ls0/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Ls0/b;->D(Ls0/b;)V

    return-object v0
.end method

.method public v()V
    .locals 1

    invoke-virtual {p0}, Ls0/h;->b()Ll0/f;

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0}, Ls0/a;->P()Ls0/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Ls0/b;->a:Ls0/f;

    invoke-virtual {v0}, Ls0/a;->v()V

    :cond_0
    return-void
.end method
