.class public Lp0/e;
.super Lp0/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lp0/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lp0/b;-><init>(Lp0/c;)V

    return-void
.end method


# virtual methods
.method public C()V
    .locals 1

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0}, Lp0/c;->i0()V

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0}, Lp0/c;->f0()Lp0/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp0/b;->D(Lp0/b;)V

    return-void
.end method

.method public b(Ll1/i;)V
    .locals 1

    invoke-virtual {p0}, Lp0/e;->C()V

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0}, Lp0/a;->P()Lp0/b;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0, p1}, Lp0/a;->b(Ll1/i;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0}, Lp0/c;->m0()V

    iget-object v0, p0, Lp0/b;->a:Lp0/c;

    invoke-virtual {v0}, Lp0/c;->d0()Lp0/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lp0/b;->D(Lp0/b;)V

    return-void
.end method
