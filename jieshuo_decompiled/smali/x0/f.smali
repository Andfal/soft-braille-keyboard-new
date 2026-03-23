.class public Lx0/f;
.super Lx0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx0/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lx0/a;-><init>(Lx0/b;)V

    return-void
.end method


# virtual methods
.method public C(Lx0/c;)Lx0/e;
    .locals 1

    invoke-virtual {p0}, Lx0/f;->D()V

    iget-object v0, p0, Lx0/a;->a:Lx0/b;

    invoke-virtual {v0}, Lx0/b;->Q()Lx0/a;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lx0/a;->a:Lx0/b;

    invoke-virtual {v0, p1}, Lx0/b;->R(Lx0/c;)Lx0/e;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public D()V
    .locals 1

    iget-object v0, p0, Lx0/a;->a:Lx0/b;

    invoke-virtual {v0}, Lx0/b;->Z()V

    iget-object v0, p0, Lx0/a;->a:Lx0/b;

    invoke-virtual {v0}, Lx0/b;->X()Lx0/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Lx0/a;)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lx0/a;->a:Lx0/b;

    invoke-virtual {v0}, Lx0/b;->V()Lx0/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lx0/a;->E(Lx0/a;)V

    return-void
.end method
