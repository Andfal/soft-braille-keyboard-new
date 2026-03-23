.class public abstract Lw3/n0;
.super Lw3/a3;
.source "SourceFile"

# interfaces
.implements Lw3/k0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/n0$a;
    }
.end annotation


# instance fields
.field private transient i:Lw3/n0$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw3/a3;-><init>()V

    return-void
.end method

.method public constructor <init>(Lw3/z2;Lw3/z2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lw3/a3;-><init>(Lw3/z2;Lw3/z2;)V

    return-void
.end method

.method protected static E1(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method private F1(Ljava/lang/Object;ILjava/lang/String;ILw3/z2;)Lw3/l0;
    .locals 9

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v0

    invoke-virtual {v0}, Lw3/m;->v()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    new-instance v0, Lw3/l0;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lw3/l0;-><init>(Lw3/k0;Ljava/lang/Object;ILjava/lang/String;ILw3/z2;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lw3/m0;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lw3/m0;-><init>(Lw3/k0;Ljava/lang/Object;ILjava/lang/String;ILw3/z2;)V

    :goto_0
    invoke-virtual {p0}, Lw3/a3;->R0()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lw3/a3;->c1()V

    :cond_1
    return-object v0
.end method

.method protected static m1(Ljava/lang/Object;Ljava/lang/Class;Lw3/l0;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lw3/l0;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "msg.incompat.call.details"

    if-nez p0, :cond_1

    new-array p0, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lw3/l0;->N1()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v2

    const-string p2, "null"

    aput-object p2, p0, v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {v4, p0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p0

    throw p0

    :cond_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Lw3/l0;->N1()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-static {v4, v3}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p0

    throw p0
.end method

.method private t1(Ljava/lang/String;)Lw3/a3;
    .locals 3

    invoke-virtual {p0}, Lw3/a3;->i()Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    invoke-virtual {p0, p1}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const p1, 0xffff

    and-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lw3/n0;->w1(I)Ljava/lang/Object;

    move-result-object p1

    ushr-int/lit8 v1, v1, 0x10

    invoke-static {v0, p1, v1}, Lw3/a3;->L(Lw3/z2;Ljava/lang/Object;I)Lw3/a3;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v1, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lw3/n0$a;->d(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {v1, p1}, Lw3/n0$a;->f(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {v2, p1}, Lw3/n0$a;->g(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Lw3/a3;->L(Lw3/z2;Ljava/lang/Object;I)Lw3/a3;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private u1(Lw3/i3;)Lw3/a3;
    .locals 3

    invoke-virtual {p0}, Lw3/a3;->i()Lw3/z2;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    iget-object v1, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lw3/n0$a;->e(Lw3/i3;)I

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {v1, p1}, Lw3/n0$a;->f(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {v2, p1}, Lw3/n0$a;->g(I)I

    move-result p1

    invoke-static {v0, v1, p1}, Lw3/a3;->L(Lw3/z2;Ljava/lang/Object;I)Lw3/a3;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;
    .locals 1

    invoke-super {p0, p1, p2}, Lw3/a3;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object p1

    if-nez p1, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lw3/n0;->t1(Ljava/lang/String;)Lw3/a3;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lw3/u2;->H0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lw3/c2;

    invoke-virtual {p2}, Lw3/c2;->L1()Lw3/j3;

    move-result-object p1

    invoke-direct {p0, p1}, Lw3/n0;->u1(Lw3/i3;)Lw3/a3;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final A1(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lw3/l0;
    .locals 6

    invoke-static {p0}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object v5

    if-eqz p4, :cond_0

    move-object v3, p4

    goto :goto_0

    :cond_0
    move-object v3, p3

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lw3/n0;->F1(Ljava/lang/Object;ILjava/lang/String;ILw3/z2;)Lw3/l0;

    move-result-object p1

    iget-object p4, p0, Lw3/n0;->i:Lw3/n0$a;

    const/4 p5, 0x2

    invoke-virtual {p4, p2, p3, p1, p5}, Lw3/n0$a;->k(ILjava/lang/String;Ljava/lang/Object;I)V

    return-object p1
.end method

.method public B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1, p2}, Lw3/a3;->B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lw3/n0;->q1(Lw3/i3;)I

    move-result p2

    if-eqz p2, :cond_1

    const v1, 0xffff

    and-int/2addr p2, v1

    invoke-virtual {p0, p2}, Lw3/n0;->w1(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v0, :cond_1

    return-object p2

    :cond_1
    iget-object p2, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lw3/n0$a;->e(Lw3/i3;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p2, p1}, Lw3/n0$a;->f(I)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final B1(Ljava/lang/Object;ILw3/i3;Ljava/lang/String;I)Lw3/l0;
    .locals 6

    invoke-static {p0}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lw3/n0;->F1(Ljava/lang/Object;ILjava/lang/String;ILw3/z2;)Lw3/l0;

    move-result-object p1

    iget-object p4, p0, Lw3/n0;->i:Lw3/n0$a;

    const/4 p5, 0x2

    invoke-virtual {p4, p2, p3, p1, p5}, Lw3/n0$a;->l(ILw3/i3;Ljava/lang/Object;I)V

    return-object p1
.end method

.method public final C1(ILjava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/n0$a;->k(ILjava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public final D1(ILw3/i3;Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/n0$a;->l(ILw3/i3;Ljava/lang/Object;I)V

    return-void
.end method

.method public F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V
    .locals 4

    invoke-virtual {p0, p1}, Lw3/n0;->q1(Lw3/i3;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "msg.modify.sealed"

    if-eqz v0, :cond_4

    if-ne p2, p0, :cond_1

    invoke-virtual {p0}, Lw3/a3;->R0()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    ushr-int/lit8 v1, v0, 0x10

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    if-ne p2, p0, :cond_2

    const p1, 0xffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1, p3}, Lw3/n0;->H1(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lw3/a3;->d0(Ljava/lang/Object;)Lw3/k3;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lw3/k3;->F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lw3/n0$a;->e(Lw3/i3;)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne p2, p0, :cond_6

    invoke-virtual {p0}, Lw3/a3;->R0()Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_6
    :goto_2
    iget-object p1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p1, v0, p2, p3}, Lw3/n0$a;->m(ILw3/z2;Ljava/lang/Object;)V

    return-void

    :cond_7
    invoke-super {p0, p1, p2, p3}, Lw3/a3;->F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method protected G1(II)V
    .locals 1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Changing attributes not supported for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lw3/a3;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lw3/n0;->v1(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " property"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InternalError"

    invoke-static {p2, p1}, Lw3/u2;->l(Ljava/lang/String;Ljava/lang/String;)Lw3/w;

    move-result-object p1

    throw p1
.end method

.method protected H1(ILjava/lang/Object;)V
    .locals 0

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public V(Lw3/m;Ljava/lang/Object;Lw3/a3;)V
    .locals 5

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_6

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result v1

    const-string v2, "value"

    if-eqz v1, :cond_2

    const v3, 0xffff

    and-int/2addr v3, v1

    invoke-virtual {p0, p3}, Lw3/a3;->M0(Lw3/a3;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lw3/a3;->f(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lw3/a3;->P(Lw3/a3;)V

    invoke-virtual {p0, p1, p2}, Lw3/n0;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p3}, Lw3/a3;->O(Ljava/lang/Object;Lw3/a3;Lw3/a3;)V

    ushr-int/lit8 p1, v1, 0x10

    invoke-static {p3, v2}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p2, v1, :cond_1

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, v3}, Lw3/n0;->w1(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lw3/a3;->b1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v3, p2}, Lw3/n0;->H1(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, p1, p3}, Lw3/a3;->H(ILw3/a3;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lw3/n0;->d1(Ljava/lang/String;I)V

    return-void

    :cond_2
    :goto_0
    iget-object v1, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lw3/n0$a;->d(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p3}, Lw3/a3;->M0(Lw3/a3;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {v0, v1}, Lw3/n0$a;->b(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p3}, Lw3/a3;->P(Lw3/a3;)V

    invoke-virtual {p0, p1, p2}, Lw3/n0;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object p1

    invoke-virtual {p0, v0, p1, p3}, Lw3/a3;->O(Ljava/lang/Object;Lw3/a3;Lw3/a3;)V

    iget-object p1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p1, v1}, Lw3/n0$a;->g(I)I

    move-result p1

    invoke-static {p3, v2}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    sget-object v2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p2, v2, :cond_4

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_4

    iget-object v2, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {v2, v1}, Lw3/n0$a;->f(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lw3/a3;->b1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {v2, v1, p0, p2}, Lw3/n0$a;->m(ILw3/z2;Ljava/lang/Object;)V

    :cond_4
    iget-object p2, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p0, p1, p3}, Lw3/a3;->H(ILw3/a3;)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Lw3/n0$a;->n(II)V

    invoke-super {p0, v0, p0}, Lw3/a3;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-super {p0, v0}, Lw3/a3;->o(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lw3/a3;->V(Lw3/m;Ljava/lang/Object;Lw3/a3;)V

    return-void
.end method

.method public d1(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p2}, Lw3/a3;->Q(I)V

    invoke-virtual {p0, p1}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0xffff

    and-int/2addr p1, v0

    ushr-int/lit8 v0, v0, 0x10

    if-eq p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lw3/n0;->G1(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lw3/n0$a;->d(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p1, v0, p2}, Lw3/n0$a;->n(II)V

    return-void

    :cond_2
    invoke-super {p0, p1, p2}, Lw3/a3;->d1(Ljava/lang/String;I)V

    return-void
.end method

.method public final h1(I)V
    .locals 1

    new-instance v0, Lw3/n0$a;

    invoke-direct {v0, p0, p1}, Lw3/n0$a;-><init>(Lw3/n0;I)V

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lw3/n0;->i:Lw3/n0$a;

    if-nez p1, :cond_0

    iput-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    monitor-exit p0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected i1(Lw3/z2;Ljava/lang/Object;ILjava/lang/String;I)V
    .locals 6

    invoke-static {p1}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lw3/n0;->F1(Ljava/lang/Object;ILjava/lang/String;ILw3/z2;)Lw3/l0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lw3/l0;->a2(Lw3/z2;)V

    return-void
.end method

.method protected final j1(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1, p0}, Lw3/a3;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Lw3/i3;Lw3/z2;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lw3/n0;->q1(Lw3/i3;)I

    move-result v0

    if-eqz v0, :cond_2

    ushr-int/lit8 p1, v0, 0x10

    and-int/lit8 p1, p1, 0x4

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const p1, 0xffff

    and-int/2addr p1, v0

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lw3/n0;->w1(I)Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return p2

    :cond_2
    iget-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lw3/n0$a;->e(Lw3/i3;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p1, v0}, Lw3/n0$a;->i(I)Z

    move-result p1

    return p1

    :cond_3
    invoke-super {p0, p1, p2}, Lw3/a3;->k(Lw3/i3;Lw3/z2;)Z

    move-result p1

    return p1
.end method

.method protected final k1(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p0}, Lw3/a3;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result p1

    return p1
.end method

.method protected final l1(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p0, p2}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method public n0(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    ushr-int/lit8 p1, v0, 0x10

    return p1

    :cond_0
    iget-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lw3/n0$a;->d(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p1, v0}, Lw3/n0$a;->g(I)I

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lw3/a3;->n0(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final n1(ILw3/z2;Z)Lw3/l0;
    .locals 0

    if-eq p2, p0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lw3/a3;->h(Lw3/z2;)V

    invoke-static {p2}, Lw3/a3;->z0(Lw3/z2;)Lw3/z2;

    move-result-object p2

    invoke-virtual {p0, p2}, Lw3/a3;->A(Lw3/z2;)V

    :cond_0
    invoke-virtual {p0, p1}, Lw3/n0;->h1(I)V

    iget-object p1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p1}, Lw3/n0$a;->a()Lw3/l0;

    move-result-object p1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lw3/a3;->c1()V

    :cond_1
    invoke-virtual {p0, p1}, Lw3/n0;->o1(Lw3/l0;)V

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lw3/a3;->c1()V

    :cond_2
    invoke-virtual {p1}, Lw3/l0;->c2()V

    return-object p1
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lw3/a3;->R0()Z

    move-result v1

    if-nez v1, :cond_2

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v0

    invoke-virtual {v0}, Lw3/m;->L()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "msg.delete.property.with.configurable.false"

    invoke-static {p1, v0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_1
    const p1, 0xffff

    and-int/2addr p1, v0

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lw3/n0;->H1(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lw3/n0$a;->d(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lw3/a3;->R0()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p1, v0}, Lw3/n0$a;->b(I)V

    :cond_3
    return-void

    :cond_4
    invoke-super {p0, p1}, Lw3/a3;->o(Ljava/lang/String;)V

    return-void
.end method

.method public o0(Lw3/i3;)I
    .locals 1

    invoke-virtual {p0, p1}, Lw3/n0;->q1(Lw3/i3;)I

    move-result v0

    if-eqz v0, :cond_0

    ushr-int/lit8 p1, v0, 0x10

    return p1

    :cond_0
    iget-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lw3/n0$a;->e(Lw3/i3;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p1, v0}, Lw3/n0$a;->g(I)I

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lw3/a3;->o0(Lw3/i3;)I

    move-result p1

    return p1
.end method

.method protected o1(Lw3/l0;)V
    .locals 0

    return-void
.end method

.method protected p1(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected q1(Lw3/i3;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public r(Ljava/lang/String;Lw3/z2;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    ushr-int/lit8 p1, v0, 0x10

    and-int/lit8 p1, p1, 0x4

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    const p1, 0xffff

    and-int/2addr p1, v0

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lw3/n0;->w1(I)Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return p2

    :cond_2
    iget-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lw3/n0$a;->d(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p1, v0}, Lw3/n0$a;->i(I)Z

    move-result p1

    return p1

    :cond_3
    invoke-super {p0, p1, p2}, Lw3/a3;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result p1

    return p1
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected s1(Lw3/i3;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lw3/l0;->i2()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V
    .locals 5

    invoke-virtual {p0, p1}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "msg.modify.sealed"

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-ne p2, p0, :cond_1

    invoke-virtual {p0}, Lw3/a3;->R0()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {v2, p2}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    ushr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v3

    if-nez v1, :cond_3

    if-ne p2, p0, :cond_2

    const p1, 0xffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1, p3}, Lw3/n0;->H1(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {p2, p1, p2, p3}, Lw3/z2;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lw3/n0$a;->d(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne p2, p0, :cond_6

    invoke-virtual {p0}, Lw3/a3;->R0()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    new-array p2, v3, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-static {v2, p2}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_6
    :goto_2
    iget-object p1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p1, v0, p2, p3}, Lw3/n0$a;->m(ILw3/z2;Ljava/lang/Object;)V

    return-void

    :cond_7
    invoke-super {p0, p1, p2, p3}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method protected v1(I)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1, p2}, Lw3/a3;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p2, v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    const v1, 0xffff

    and-int/2addr p2, v1

    invoke-virtual {p0, p2}, Lw3/n0;->w1(I)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v0, :cond_1

    return-object p2

    :cond_1
    iget-object p2, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lw3/n0$a;->d(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p2, p1}, Lw3/n0$a;->f(I)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v0, :cond_2

    return-object p1

    :cond_2
    return-object v0
.end method

.method protected w1(I)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected x1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method y0(ZZ)[Ljava/lang/Object;
    .locals 8

    invoke-super {p0, p1, p2}, Lw3/a3;->y0(ZZ)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, v0}, Lw3/n0$a;->h(ZZ[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lw3/n0;->x1()I

    move-result p2

    if-eqz p2, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p0, p2}, Lw3/n0;->v1(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    ushr-int/lit8 v5, v5, 0x10

    and-int/lit8 v6, v5, 0x4

    if-nez v6, :cond_1

    sget-object v6, Lw3/z2;->a0:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lw3/n0;->w1(I)Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_1

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_4

    :cond_2
    if-nez v3, :cond_3

    new-array v2, p2, [Ljava/lang/Object;

    :cond_3
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v2, v3

    move v3, v5

    :cond_4
    :goto_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_7

    array-length p1, v0

    if-nez p1, :cond_6

    array-length p1, v2

    if-ne p1, v3, :cond_6

    move-object v0, v2

    goto :goto_2

    :cond_6
    array-length p1, v0

    add-int/2addr p1, v3

    new-array p1, p1, [Ljava/lang/Object;

    array-length p2, v0

    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, v0

    invoke-static {v2, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    :cond_7
    :goto_2
    return-object v0
.end method

.method protected y1(I)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z(Lw3/i3;)V
    .locals 2

    invoke-virtual {p0, p1}, Lw3/n0;->q1(Lw3/i3;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lw3/a3;->R0()Z

    move-result v1

    if-nez v1, :cond_2

    ushr-int/lit8 p1, v0, 0x10

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p1

    invoke-virtual {p1}, Lw3/m;->L()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "msg.delete.property.with.configurable.false"

    invoke-static {v0, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_1
    const p1, 0xffff

    and-int/2addr p1, v0

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lw3/n0;->H1(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lw3/n0;->i:Lw3/n0$a;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lw3/n0$a;->e(Lw3/i3;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lw3/a3;->R0()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lw3/n0;->i:Lw3/n0$a;

    invoke-virtual {p1, v0}, Lw3/n0$a;->b(I)V

    :cond_3
    return-void

    :cond_4
    invoke-super {p0, p1}, Lw3/a3;->z(Lw3/i3;)V

    return-void
.end method

.method public final z1(Ljava/lang/Object;ILjava/lang/String;I)Lw3/l0;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lw3/n0;->A1(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)Lw3/l0;

    move-result-object p1

    return-object p1
.end method
