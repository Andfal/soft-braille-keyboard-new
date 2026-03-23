.class final Lw3/p0;
.super Lw3/i1;
.source "SourceFile"

# interfaces
.implements Lw3/t2;


# instance fields
.field p:Lw3/r0;

.field q:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lw3/p0;I)V
    .locals 1

    invoke-direct {p0}, Lw3/i1;-><init>()V

    iget-object v0, p1, Lw3/p0;->p:Lw3/r0;

    iget-object v0, v0, Lw3/r0;->g:[Lw3/r0;

    aget-object p2, v0, p2

    iput-object p2, p0, Lw3/p0;->p:Lw3/r0;

    iget-object p1, p1, Lw3/p0;->q:Ljava/lang/Object;

    iput-object p1, p0, Lw3/p0;->q:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lw3/r0;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lw3/i1;-><init>()V

    iput-object p1, p0, Lw3/p0;->p:Lw3/r0;

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p1

    invoke-virtual {p1}, Lw3/m;->A()Lw3/b3;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lw3/p0;->q:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method static i2(Lw3/m;Lw3/z2;Lw3/p0;I)Lw3/p0;
    .locals 1

    new-instance v0, Lw3/p0;

    invoke-direct {v0, p2, p3}, Lw3/p0;-><init>(Lw3/p0;I)V

    iget-object p2, v0, Lw3/p0;->p:Lw3/r0;

    iget-boolean p2, p2, Lw3/r0;->y:Z

    invoke-virtual {v0, p0, p1, p2}, Lw3/i1;->g2(Lw3/m;Lw3/z2;Z)V

    return-object v0
.end method

.method static j2(Lw3/m;Lw3/z2;Lw3/r0;Ljava/lang/Object;)Lw3/p0;
    .locals 1

    new-instance v0, Lw3/p0;

    invoke-direct {v0, p2, p3}, Lw3/p0;-><init>(Lw3/r0;Ljava/lang/Object;)V

    iget-object p2, v0, Lw3/p0;->p:Lw3/r0;

    iget-boolean p2, p2, Lw3/r0;->y:Z

    invoke-virtual {v0, p0, p1, p2}, Lw3/i1;->g2(Lw3/m;Lw3/z2;Z)V

    return-object v0
.end method

.method static k2(Lw3/r0;Ljava/lang/Object;)Lw3/p0;
    .locals 1

    new-instance v0, Lw3/p0;

    invoke-direct {v0, p0, p1}, Lw3/p0;-><init>(Lw3/r0;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public E(Lw3/m;Lw3/z2;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Lw3/p0;->m2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lw3/u2;->q0(Lw3/m;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v5, Lw3/u2;->y:[Ljava/lang/Object;

    iget-object v0, p0, Lw3/p0;->p:Lw3/r0;

    iget-boolean v6, v0, Lw3/r0;->w:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lw3/u2;->v(Lw3/f;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lw3/u2;->y:[Ljava/lang/Object;

    invoke-static {p0, p1, p2, p2, v0}, Lw3/q0;->W(Lw3/p0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public N1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/p0;->p:Lw3/r0;

    iget-object v0, v0, Lw3/r0;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {p1}, Lw3/u2;->q0(Lw3/m;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lw3/p0;->p:Lw3/r0;

    iget-boolean v6, v0, Lw3/r0;->w:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lw3/u2;->v(Lw3/f;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lw3/q0;->W(Lw3/p0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/p0;->p:Lw3/r0;

    invoke-static {v0}, Lw3/q0;->M(Lw3/r0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b2()I
    .locals 1

    iget-object v0, p0, Lw3/p0;->p:Lw3/r0;

    iget v0, v0, Lw3/r0;->v:I

    return v0
.end method

.method protected c2()I
    .locals 1

    iget-object v0, p0, Lw3/p0;->p:Lw3/r0;

    iget-object v0, v0, Lw3/r0;->o:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method protected d2()I
    .locals 1

    iget-object v0, p0, Lw3/p0;->p:Lw3/r0;

    iget v0, v0, Lw3/r0;->q:I

    return v0
.end method

.method protected e2(I)Z
    .locals 1

    iget-object v0, p0, Lw3/p0;->p:Lw3/r0;

    iget-object v0, v0, Lw3/r0;->p:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method protected f2(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw3/p0;->p:Lw3/r0;

    iget-object v0, v0, Lw3/r0;->o:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public h2(Lw3/m;Lw3/z2;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lw3/q0;->a0(Lw3/m;Lw3/z2;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method l2(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lw3/p0;->p:Lw3/r0;

    invoke-virtual {v2}, Lw3/r0;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lw3/p0;->p:Lw3/r0;

    invoke-virtual {v2, v1}, Lw3/r0;->a(I)Lz3/b;

    move-result-object v2

    check-cast v2, Lw3/r0;

    iget-boolean v3, v2, Lw3/r0;->G:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lw3/r0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public m2()Z
    .locals 1

    iget-object v0, p0, Lw3/p0;->p:Lw3/r0;

    iget v0, v0, Lw3/r0;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
