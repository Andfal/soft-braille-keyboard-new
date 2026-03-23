.class Lw3/i;
.super Lw3/j0;
.source "SourceFile"


# instance fields
.field private a:Lw3/j;

.field private b:Z

.field private c:Z

.field private d:Lw3/r0;

.field private e:Ly3/s0;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Lw3/k2;

.field private k:I

.field private l:[I

.field private m:I

.field private n:[J

.field private o:I

.field private p:Lw3/j2;

.field private q:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lw3/j0;-><init>()V

    new-instance v0, Lw3/k2;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lw3/k2;-><init>(I)V

    iput-object v0, p0, Lw3/i;->j:Lw3/k2;

    new-instance v0, Lw3/j2;

    invoke-direct {v0}, Lw3/j2;-><init>()V

    iput-object v0, p0, Lw3/i;->p:Lw3/j2;

    return-void
.end method

.method private A()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lw3/i;->o:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lw3/i;->n:[J

    aget-wide v3, v2, v1

    const/16 v2, 0x20

    shr-long v5, v3, v2

    long-to-int v2, v5

    long-to-int v4, v3

    iget-object v3, p0, Lw3/i;->l:[I

    aget v2, v3, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-direct {p0, v4, v2}, Lw3/i;->N(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_1
    iput v0, p0, Lw3/i;->o:I

    return-void
.end method

.method private B(Lw3/g2;)V
    .locals 5

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/16 v4, 0x24

    if-eq v0, v4, :cond_1

    const/16 v2, 0x27

    if-eq v0, v2, :cond_0

    invoke-direct {p0, p1, v3}, Lw3/i;->R(Lw3/g2;I)V

    const/16 p1, -0x12

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    :goto_0
    invoke-direct {p0, v1}, Lw3/i;->O(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0xf

    invoke-direct {p0, v0, p1}, Lw3/i;->r(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lw3/i;->O(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lw3/g2;->x()Lw3/g2;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {p1}, Lw3/g2;->D()Lw3/g2;

    move-result-object p1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x10

    invoke-direct {p0, v0, p1}, Lw3/i;->r(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v3}, Lw3/i;->R(Lw3/g2;I)V

    const/16 p1, -0x11

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    :goto_1
    return-void
.end method

.method private C()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw3/i;->b:Z

    iget-object v1, p0, Lw3/i;->e:Ly3/s0;

    check-cast v1, Ly3/w;

    iget-object v2, p0, Lw3/i;->d:Lw3/r0;

    invoke-virtual {v1}, Ly3/w;->v1()I

    move-result v3

    iput v3, v2, Lw3/r0;->d:I

    iget-object v2, p0, Lw3/i;->d:Lw3/r0;

    invoke-virtual {v1}, Ly3/w;->D1()Z

    move-result v3

    iput-boolean v3, v2, Lw3/r0;->c:Z

    invoke-virtual {v1}, Ly3/w;->u1()Ly3/i0;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lw3/i;->d:Lw3/r0;

    invoke-virtual {v1}, Ly3/w;->y1()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lw3/r0;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1}, Ly3/w;->C1()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, -0x3e

    invoke-direct {p0, v2}, Lw3/i;->n(I)V

    invoke-virtual {v1}, Ly3/s0;->U0()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-direct {p0, v2}, Lw3/i;->u(I)V

    :cond_1
    invoke-virtual {v1}, Ly3/s0;->k1()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw3/i;->d:Lw3/r0;

    iput-boolean v0, v2, Lw3/r0;->w:Z

    :cond_2
    invoke-virtual {v1}, Ly3/w;->A1()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lw3/i;->d:Lw3/r0;

    iput-boolean v0, v2, Lw3/r0;->y:Z

    :cond_3
    iget-object v0, p0, Lw3/i;->d:Lw3/r0;

    invoke-virtual {v1}, Ly3/e;->l0()Ly3/e;

    move-result-object v2

    instance-of v2, v2, Ly3/c1;

    iput-boolean v2, v0, Lw3/r0;->F:Z

    invoke-virtual {v1}, Lw3/g2;->A()Lw3/g2;

    move-result-object v0

    invoke-direct {p0, v0}, Lw3/i;->D(Lw3/g2;)V

    return-void
.end method

.method private D(Lw3/g2;)V
    .locals 5

    invoke-direct {p0}, Lw3/i;->E()V

    invoke-direct {p0}, Lw3/i;->F()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lw3/i;->U(Lw3/g2;I)V

    invoke-direct {p0}, Lw3/i;->A()V

    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iget p1, p1, Lw3/r0;->d:I

    if-nez p1, :cond_0

    const/16 p1, 0x41

    invoke-direct {p0, p1}, Lw3/i;->t(I)V

    :cond_0
    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iget-object p1, p1, Lw3/r0;->i:[B

    array-length v1, p1

    iget v2, p0, Lw3/i;->f:I

    if-eq v1, v2, :cond_1

    new-array v1, v2, [B

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iput-object v1, p1, Lw3/r0;->i:[B

    :cond_1
    iget-object p1, p0, Lw3/i;->j:Lw3/k2;

    invoke-virtual {p1}, Lw3/k2;->m()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iput-object v1, p1, Lw3/r0;->e:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iget-object v2, p0, Lw3/i;->j:Lw3/k2;

    invoke-virtual {v2}, Lw3/k2;->m()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p1, Lw3/r0;->e:[Ljava/lang/String;

    iget-object p1, p0, Lw3/i;->j:Lw3/k2;

    invoke-virtual {p1}, Lw3/k2;->i()Lw3/k2$a;

    move-result-object p1

    invoke-virtual {p1}, Lw3/k2$a;->f()V

    :goto_0
    invoke-virtual {p1}, Lw3/k2$a;->a()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lw3/k2$a;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1}, Lw3/k2$a;->c()I

    move-result v3

    iget-object v4, p0, Lw3/i;->d:Lw3/r0;

    iget-object v4, v4, Lw3/r0;->e:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_3
    iget-object v4, p0, Lw3/i;->d:Lw3/r0;

    iget-object v4, v4, Lw3/r0;->e:[Ljava/lang/String;

    aput-object v2, v4, v3

    invoke-virtual {p1}, Lw3/k2$a;->e()V

    goto :goto_0

    :cond_4
    :goto_1
    iget p1, p0, Lw3/i;->i:I

    if-nez p1, :cond_5

    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iput-object v1, p1, Lw3/r0;->f:[D

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lw3/i;->d:Lw3/r0;

    iget-object v1, v1, Lw3/r0;->f:[D

    array-length v2, v1

    if-eq v2, p1, :cond_6

    new-array v2, p1, [D

    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iput-object v2, p1, Lw3/r0;->f:[D

    :cond_6
    :goto_2
    iget p1, p0, Lw3/i;->q:I

    if-eqz p1, :cond_7

    iget-object v1, p0, Lw3/i;->d:Lw3/r0;

    iget-object v1, v1, Lw3/r0;->j:[I

    array-length v2, v1

    if-eq v2, p1, :cond_7

    new-array v2, p1, [I

    invoke-static {v1, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iput-object v2, p1, Lw3/r0;->j:[I

    :cond_7
    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iget-object v0, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v0}, Ly3/s0;->d1()I

    move-result v0

    iput v0, p1, Lw3/r0;->k:I

    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iget v0, p1, Lw3/r0;->k:I

    iget v1, p1, Lw3/r0;->l:I

    add-int/2addr v0, v1

    iget v1, p1, Lw3/r0;->m:I

    add-int/2addr v0, v1

    iput v0, p1, Lw3/r0;->n:I

    iget-object v0, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v0}, Ly3/s0;->e1()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lw3/r0;->o:[Ljava/lang/String;

    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iget-object v0, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v0}, Ly3/s0;->c1()[Z

    move-result-object v0

    iput-object v0, p1, Lw3/r0;->p:[Z

    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iget-object v0, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v0}, Ly3/s0;->f1()I

    move-result v0

    iput v0, p1, Lw3/r0;->q:I

    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iget-object v0, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v0}, Ly3/s0;->X0()I

    move-result v0

    iput v0, p1, Lw3/r0;->t:I

    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iget-object v0, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v0}, Ly3/s0;->W0()I

    move-result v0

    iput v0, p1, Lw3/r0;->u:I

    iget-object p1, p0, Lw3/i;->p:Lw3/j2;

    invoke-virtual {p1}, Lw3/j2;->m()I

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iget-object v0, p0, Lw3/i;->p:Lw3/j2;

    invoke-virtual {v0}, Lw3/j2;->p()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lw3/r0;->z:[Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method private E()V
    .locals 7

    iget-object v0, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v0}, Ly3/s0;->Y0()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-array v1, v0, [Lw3/r0;

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_2

    iget-object v3, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v3, v2}, Ly3/s0;->Z0(I)Ly3/w;

    move-result-object v3

    new-instance v4, Lw3/i;

    invoke-direct {v4}, Lw3/i;-><init>()V

    iget-object v5, p0, Lw3/i;->a:Lw3/j;

    iput-object v5, v4, Lw3/i;->a:Lw3/j;

    iput-object v3, v4, Lw3/i;->e:Ly3/s0;

    new-instance v5, Lw3/r0;

    iget-object v6, p0, Lw3/i;->d:Lw3/r0;

    invoke-direct {v5, v6}, Lw3/r0;-><init>(Lw3/r0;)V

    iput-object v5, v4, Lw3/i;->d:Lw3/r0;

    invoke-direct {v4}, Lw3/i;->C()V

    iget-object v5, v4, Lw3/i;->d:Lw3/r0;

    aput-object v5, v1, v2

    invoke-virtual {v3}, Ly3/e;->l0()Ly3/e;

    move-result-object v3

    instance-of v5, v3, Ly3/f;

    if-nez v5, :cond_1

    instance-of v5, v3, Ly3/r0;

    if-nez v5, :cond_1

    instance-of v3, v3, Ly3/g;

    if-nez v3, :cond_1

    iget-object v3, v4, Lw3/i;->d:Lw3/r0;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lw3/r0;->G:Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lw3/i;->d:Lw3/r0;

    iput-object v1, v0, Lw3/r0;->g:[Lw3/r0;

    return-void
.end method

.method private F()V
    .locals 7

    iget-object v0, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v0}, Ly3/s0;->g1()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v1

    invoke-static {v1}, Lw3/u2;->i(Lw3/m;)Lw3/q2;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    :goto_0
    if-eq v4, v0, :cond_1

    iget-object v5, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v5, v4}, Ly3/s0;->i1(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v6, v4}, Ly3/s0;->h1(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v1, v5, v6}, Lw3/q2;->a(Lw3/m;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw3/i;->d:Lw3/r0;

    iput-object v3, v0, Lw3/r0;->h:[Ljava/lang/Object;

    return-void
.end method

.method private G(D)I
    .locals 4

    iget v0, p0, Lw3/i;->i:I

    iget-object v1, p0, Lw3/i;->d:Lw3/r0;

    if-nez v0, :cond_0

    const/16 v2, 0x40

    new-array v2, v2, [D

    iput-object v2, v1, Lw3/r0;->f:[D

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lw3/r0;->f:[D

    array-length v2, v1

    if-ne v2, v0, :cond_1

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [D

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lw3/i;->d:Lw3/r0;

    iput-object v2, v1, Lw3/r0;->f:[D

    :cond_1
    :goto_0
    iget-object v1, p0, Lw3/i;->d:Lw3/r0;

    iget-object v1, v1, Lw3/r0;->f:[D

    aput-wide p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    iput p1, p0, Lw3/i;->i:I

    return v0
.end method

.method private static H(Lw3/g2;)I
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lw3/g2;->E(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/g2;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lw3/g2;->w(I)I

    move-result p0

    return p0
.end method

.method private I(Lw3/g2;)I
    .locals 5

    invoke-virtual {p1}, Lw3/g2;->K()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lw3/i;->m:I

    iget-object v2, p0, Lw3/i;->l:[I

    if-eqz v2, :cond_1

    array-length v3, v2

    if-ne v0, v3, :cond_3

    :cond_1
    if-nez v2, :cond_2

    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, p0, Lw3/i;->l:[I

    goto :goto_0

    :cond_2
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lw3/i;->l:[I

    :cond_3
    :goto_0
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lw3/i;->m:I

    iget-object v2, p0, Lw3/i;->l:[I

    aput v1, v2, v0

    invoke-virtual {p1, v0}, Lw3/g2;->L(I)V

    return v0
.end method

.method private J(I)[B
    .locals 3

    iget-object v0, p0, Lw3/i;->d:Lw3/r0;

    iget-object v0, v0, Lw3/r0;->i:[B

    array-length v1, v0

    iget v2, p0, Lw3/i;->f:I

    add-int/2addr p1, v2

    if-le p1, v1, :cond_1

    mul-int/lit8 v1, v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    new-array p1, p1, [B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lw3/i;->d:Lw3/r0;

    iput-object p1, v0, Lw3/r0;->i:[B

    return-object p1

    :cond_1
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private K(Lw3/g2;)V
    .locals 2

    invoke-direct {p0, p1}, Lw3/i;->I(Lw3/g2;)I

    move-result p1

    iget-object v0, p0, Lw3/i;->l:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lw3/i;->l:[I

    iget v1, p0, Lw3/i;->f:I

    aput v1, v0, p1

    return-void
.end method

.method private L(I)V
    .locals 1

    iget v0, p0, Lw3/i;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lw3/i;->k:I

    if-eq p1, v0, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method private M(I)V
    .locals 2

    iget v0, p0, Lw3/i;->f:I

    add-int/lit8 v1, p1, 0x3

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Lw3/i;->N(II)V

    return-void

    :cond_0
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private N(II)V
    .locals 2

    sub-int v0, p2, p1

    if-ltz v0, :cond_1

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    int-to-short v1, v0

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lw3/i;->d:Lw3/r0;

    iget-object v1, v0, Lw3/r0;->A:Lw3/v3;

    if-nez v1, :cond_2

    new-instance v1, Lw3/v3;

    invoke-direct {v1}, Lw3/v3;-><init>()V

    iput-object v1, v0, Lw3/r0;->A:Lw3/v3;

    :cond_2
    iget-object v0, p0, Lw3/i;->d:Lw3/r0;

    iget-object v0, v0, Lw3/r0;->A:Lw3/v3;

    invoke-virtual {v0, p1, p2}, Lw3/v3;->f(II)V

    const/4 v0, 0x0

    :cond_3
    iget-object p2, p0, Lw3/i;->d:Lw3/r0;

    iget-object p2, p2, Lw3/r0;->i:[B

    shr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p1

    add-int/lit8 p1, p1, 0x1

    int-to-byte v0, v0

    aput-byte v0, p2, p1

    return-void
.end method

.method private O(I)V
    .locals 2

    iget v0, p0, Lw3/i;->g:I

    add-int/2addr v0, p1

    if-gtz p1, :cond_1

    :cond_0
    :goto_0
    iput v0, p0, Lw3/i;->g:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iget v1, p1, Lw3/r0;->m:I

    if-le v0, v1, :cond_0

    iput v0, p1, Lw3/r0;->m:I

    goto :goto_0

    :goto_1
    return-void
.end method

.method private P(Lw3/g2;)V
    .locals 2

    invoke-virtual {p1}, Lw3/g2;->C()I

    move-result p1

    iget v0, p0, Lw3/i;->h:I

    if-eq p1, v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lw3/i;->d:Lw3/r0;

    iget v1, v0, Lw3/r0;->B:I

    if-gez v1, :cond_0

    iput p1, v0, Lw3/r0;->B:I

    :cond_0
    iput p1, p0, Lw3/i;->h:I

    const/16 v0, -0x1a

    invoke-direct {p0, v0}, Lw3/i;->n(I)V

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-direct {p0, p1}, Lw3/i;->u(I)V

    :cond_1
    return-void
.end method

.method private Q(Lw3/g2;Lw3/g2;Lw3/g2;)V
    .locals 0

    iget p1, p0, Lw3/i;->g:I

    invoke-direct {p0, p2, p1}, Lw3/i;->U(Lw3/g2;I)V

    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lw3/i;->R(Lw3/g2;I)V

    return-void
.end method

.method private R(Lw3/g2;I)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lw3/g2;->H()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lw3/g2;->x()Lw3/g2;

    move-result-object v3

    iget v4, v1, Lw3/i;->g:I

    const/16 v5, 0x5b

    const/4 v6, -0x4

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v2, v5, :cond_23

    const/16 v5, 0x69

    const/4 v10, 0x7

    if-eq v2, v5, :cond_22

    const/16 v5, 0x70

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-eq v2, v5, :cond_1f

    const/16 v5, -0x32

    const/16 v13, 0x81

    if-eq v2, v13, :cond_1e

    const/16 v14, 0x91

    if-eq v2, v14, :cond_1c

    const/16 v15, 0x95

    if-eq v2, v15, :cond_1b

    const/16 v15, 0xa2

    if-eq v2, v15, :cond_1a

    const/16 v15, 0xa8

    const v16, 0xffff

    if-eq v2, v15, :cond_17

    packed-switch v2, :pswitch_data_0

    const/16 v11, 0x37

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    invoke-static/range {p1 .. p1}, Lw3/i;->y(Lw3/g2;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v2

    invoke-direct {v1, v0, v3, v2}, Lw3/i;->Q(Lw3/g2;Lw3/g2;Lw3/g2;)V

    goto/16 :goto_15

    :pswitch_1
    iget-object v0, v1, Lw3/i;->d:Lw3/r0;

    iget-boolean v0, v0, Lw3/r0;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, v1, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v0, v3}, Ly3/s0;->a1(Lw3/g2;)I

    move-result v0

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lw3/i;->R(Lw3/g2;I)V

    const/16 v2, 0x9f

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v3}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lw3/i;->R(Lw3/g2;I)V

    const/16 v2, -0x3b

    goto/16 :goto_c

    :pswitch_3
    iget-boolean v2, v1, Lw3/i;->b:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lw3/i;->d:Lw3/r0;

    iget-boolean v2, v2, Lw3/r0;->c:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v2, v0}, Ly3/s0;->a1(Lw3/g2;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    if-ne v2, v7, :cond_2

    const/16 v2, -0xe

    goto/16 :goto_4

    :cond_2
    invoke-direct {v1, v11, v2}, Lw3/i;->w(II)V

    invoke-direct {v1, v8}, Lw3/i;->O(I)V

    const/16 v0, 0x20

    goto/16 :goto_10

    :pswitch_4
    invoke-direct {v1, v0, v3}, Lw3/i;->S(Lw3/g2;Lw3/g2;)V

    goto/16 :goto_15

    :pswitch_5
    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-direct {v1, v7}, Lw3/i;->n(I)V

    invoke-direct {v1, v8}, Lw3/i;->O(I)V

    iget v0, v1, Lw3/i;->f:I

    const/16 v5, 0x6c

    if-ne v2, v5, :cond_3

    goto :goto_1

    :cond_3
    const/4 v10, 0x6

    :goto_1
    invoke-direct {v1, v10}, Lw3/i;->m(I)V

    invoke-direct {v1, v7}, Lw3/i;->O(I)V

    invoke-direct {v1, v6}, Lw3/i;->n(I)V

    invoke-direct {v1, v7}, Lw3/i;->O(I)V

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v2

    and-int/lit8 v3, p2, 0x1

    invoke-direct {v1, v2, v3}, Lw3/i;->R(Lw3/g2;I)V

    goto/16 :goto_13

    :pswitch_6
    const/16 v5, 0x10

    invoke-virtual {v0, v5, v9}, Lw3/g2;->z(II)I

    move-result v0

    const/4 v5, 0x0

    :cond_4
    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    add-int/2addr v5, v8

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-direct {v1, v2, v0}, Lw3/i;->o(II)V

    rsub-int/lit8 v0, v5, 0x1

    invoke-direct {v1, v0}, Lw3/i;->O(I)V

    goto/16 :goto_15

    :pswitch_7
    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lw3/g2;->E(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_6

    :pswitch_8
    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    :cond_5
    invoke-direct {v1, v2}, Lw3/i;->t(I)V

    goto/16 :goto_15

    :pswitch_9
    invoke-direct {v1, v0, v3}, Lw3/i;->T(Lw3/g2;Lw3/g2;)V

    goto/16 :goto_15

    :pswitch_a
    invoke-static/range {p1 .. p1}, Lw3/i;->H(Lw3/g2;)I

    move-result v0

    goto :goto_3

    :pswitch_b
    iget-object v0, v1, Lw3/i;->d:Lw3/r0;

    iget-boolean v0, v0, Lw3/r0;->c:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_6
    iget-object v0, v1, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v0, v3}, Ly3/s0;->a1(Lw3/g2;)I

    move-result v0

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lw3/i;->R(Lw3/g2;I)V

    const/16 v2, 0x38

    :goto_2
    invoke-direct {v1, v2, v0}, Lw3/i;->w(II)V

    goto/16 :goto_15

    :pswitch_c
    iget-object v2, v1, Lw3/i;->d:Lw3/r0;

    iget-boolean v2, v2, Lw3/r0;->c:Z

    if-eqz v2, :cond_7

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_7
    iget-object v2, v1, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v2, v0}, Ly3/s0;->a1(Lw3/g2;)I

    move-result v0

    invoke-direct {v1, v11, v0}, Lw3/i;->w(II)V

    goto :goto_5

    :pswitch_d
    invoke-static/range {p1 .. p1}, Lw3/i;->H(Lw3/g2;)I

    move-result v0

    const/16 v2, 0x36

    goto :goto_3

    :pswitch_e
    invoke-virtual {v0, v11}, Lw3/g2;->w(I)I

    move-result v0

    const/16 v2, 0x30

    :goto_3
    invoke-direct {v1, v2, v0}, Lw3/i;->o(II)V

    goto :goto_5

    :pswitch_f
    invoke-direct {v1, v2}, Lw3/i;->t(I)V

    goto :goto_5

    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Lw3/g2;->v()D

    move-result-wide v2

    double-to-int v0, v2

    int-to-double v5, v0

    cmpl-double v7, v5, v2

    if-nez v7, :cond_b

    if-nez v0, :cond_8

    const/16 v0, -0x33

    invoke-direct {v1, v0}, Lw3/i;->n(I)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v2

    const-wide/16 v2, 0x0

    cmpg-double v0, v5, v2

    if-gez v0, :cond_c

    const/16 v0, 0x1d

    invoke-direct {v1, v0}, Lw3/i;->t(I)V

    goto :goto_5

    :cond_8
    if-ne v0, v8, :cond_9

    const/16 v0, -0x34

    invoke-direct {v1, v0}, Lw3/i;->n(I)V

    goto :goto_5

    :cond_9
    int-to-short v2, v0

    if-ne v2, v0, :cond_a

    const/16 v2, -0x1b

    invoke-direct {v1, v2}, Lw3/i;->n(I)V

    and-int v0, v0, v16

    invoke-direct {v1, v0}, Lw3/i;->u(I)V

    goto :goto_5

    :cond_a
    const/16 v2, -0x1c

    invoke-direct {v1, v2}, Lw3/i;->n(I)V

    invoke-direct {v1, v0}, Lw3/i;->q(I)V

    goto :goto_5

    :cond_b
    invoke-direct {v1, v2, v3}, Lw3/i;->G(D)I

    move-result v0

    const/16 v2, 0x28

    goto :goto_3

    :goto_4
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lw3/i;->r(ILjava/lang/String;)V

    :cond_c
    :goto_5
    :pswitch_12
    invoke-direct {v1, v8}, Lw3/i;->O(I)V

    goto/16 :goto_15

    :pswitch_13
    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {v0}, Lw3/g2;->D()Lw3/g2;

    move-result-object v0

    const/16 v3, 0x8f

    const/4 v5, -0x2

    if-ne v2, v3, :cond_d

    invoke-direct {v1, v5}, Lw3/i;->n(I)V

    invoke-direct {v1, v12}, Lw3/i;->O(I)V

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Lw3/i;->t(I)V

    invoke-direct {v1, v7}, Lw3/i;->O(I)V

    invoke-direct {v1, v7}, Lw3/i;->O(I)V

    :cond_d
    invoke-direct {v1, v0, v9}, Lw3/i;->R(Lw3/g2;I)V

    const/16 v0, 0x25

    invoke-direct {v1, v0}, Lw3/i;->t(I)V

    invoke-direct {v1, v5}, Lw3/i;->O(I)V

    goto/16 :goto_15

    :pswitch_14
    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v0

    invoke-virtual {v0}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lw3/g2;->D()Lw3/g2;

    move-result-object v0

    const/16 v5, 0x8e

    if-ne v2, v5, :cond_e

    invoke-direct {v1, v7}, Lw3/i;->n(I)V

    invoke-direct {v1, v8}, Lw3/i;->O(I)V

    const/16 v2, 0x21

    invoke-direct {v1, v2, v3}, Lw3/i;->r(ILjava/lang/String;)V

    invoke-direct {v1, v7}, Lw3/i;->O(I)V

    :cond_e
    invoke-direct {v1, v0, v9}, Lw3/i;->R(Lw3/g2;I)V

    const/16 v0, 0x23

    invoke-direct {v1, v0, v3}, Lw3/i;->r(ILjava/lang/String;)V

    goto/16 :goto_d

    :pswitch_15
    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v0

    invoke-virtual {v0}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-direct {v1, v2, v0}, Lw3/i;->r(ILjava/lang/String;)V

    goto/16 :goto_15

    :pswitch_16
    invoke-virtual {v3}, Lw3/g2;->H()I

    move-result v0

    const/16 v2, 0x31

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :cond_f
    const/4 v0, 0x0

    :goto_7
    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lw3/i;->R(Lw3/g2;I)V

    if-eqz v0, :cond_10

    invoke-direct {v1, v9}, Lw3/i;->n(I)V

    goto/16 :goto_d

    :cond_10
    const/16 v0, 0x1f

    goto/16 :goto_11

    :pswitch_17
    const/16 v5, 0x1e

    if-ne v2, v5, :cond_11

    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    goto :goto_8

    :cond_11
    invoke-direct {v1, v3}, Lw3/i;->B(Lw3/g2;)V

    :goto_8
    const/4 v6, 0x0

    :goto_9
    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_12
    const/16 v3, 0xa

    invoke-virtual {v0, v3, v9}, Lw3/g2;->z(II)I

    move-result v0

    const/16 v3, 0x47

    if-eq v2, v3, :cond_14

    if-eqz v0, :cond_14

    const/16 v3, -0x15

    invoke-direct {v1, v3, v6}, Lw3/i;->o(II)V

    invoke-direct {v1, v0}, Lw3/i;->v(I)V

    if-ne v2, v5, :cond_13

    const/4 v9, 0x1

    :cond_13
    invoke-direct {v1, v9}, Lw3/i;->v(I)V

    iget v0, v1, Lw3/i;->h:I

    and-int v0, v0, v16

    invoke-direct {v1, v0}, Lw3/i;->u(I)V

    goto :goto_a

    :cond_14
    const/16 v0, 0x26

    if-ne v2, v0, :cond_15

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_15

    iget-object v0, v1, Lw3/i;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->g()Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, v1, Lw3/i;->c:Z

    if-nez v0, :cond_15

    const/16 v0, -0x37

    const/16 v2, -0x37

    :cond_15
    invoke-direct {v1, v2, v6}, Lw3/i;->o(II)V

    :goto_a
    if-ne v2, v5, :cond_16

    neg-int v0, v6

    goto :goto_b

    :cond_16
    rsub-int/lit8 v0, v6, -0x1

    :goto_b
    invoke-direct {v1, v0}, Lw3/i;->O(I)V

    iget-object v0, v1, Lw3/i;->d:Lw3/r0;

    iget v2, v0, Lw3/r0;->r:I

    if-le v6, v2, :cond_25

    iput v6, v0, Lw3/r0;->r:I

    goto/16 :goto_15

    :pswitch_18
    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-direct {v1, v2}, Lw3/i;->t(I)V

    goto :goto_d

    :pswitch_19
    invoke-virtual {v3}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v3

    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    :goto_c
    invoke-direct {v1, v2, v0}, Lw3/i;->r(ILjava/lang/String;)V

    :goto_d
    invoke-direct {v1, v7}, Lw3/i;->O(I)V

    goto/16 :goto_15

    :cond_17
    :pswitch_1a
    if-eqz v3, :cond_18

    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    goto :goto_e

    :cond_18
    invoke-direct {v1, v5}, Lw3/i;->n(I)V

    invoke-direct {v1, v8}, Lw3/i;->O(I)V

    :goto_e
    const/16 v3, 0x49

    if-ne v2, v3, :cond_19

    invoke-direct {v1, v3}, Lw3/i;->t(I)V

    goto :goto_f

    :cond_19
    const/16 v2, -0x42

    invoke-direct {v1, v2}, Lw3/i;->n(I)V

    :goto_f
    invoke-virtual/range {p1 .. p1}, Lw3/g2;->C()I

    move-result v0

    and-int v0, v0, v16

    invoke-direct {v1, v0}, Lw3/i;->u(I)V

    goto/16 :goto_15

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lw3/g2;->x()Lw3/g2;

    move-result-object v0

    invoke-virtual {v0}, Lw3/g2;->D()Lw3/g2;

    move-result-object v2

    invoke-virtual {v0}, Lw3/g2;->x()Lw3/g2;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-direct {v1, v12}, Lw3/i;->t(I)V

    invoke-direct {v1, v7}, Lw3/i;->O(I)V

    invoke-virtual {v2}, Lw3/g2;->x()Lw3/g2;

    move-result-object v0

    invoke-direct {v1, v0, v9}, Lw3/i;->R(Lw3/g2;I)V

    const/4 v0, 0x3

    :goto_10
    invoke-direct {v1, v0}, Lw3/i;->t(I)V

    goto/16 :goto_15

    :cond_1b
    invoke-direct/range {p0 .. p1}, Lw3/i;->P(Lw3/g2;)V

    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    const/16 v0, -0x35

    invoke-direct {v1, v0}, Lw3/i;->n(I)V

    invoke-direct {v1, v7}, Lw3/i;->O(I)V

    iget v0, v1, Lw3/i;->f:I

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Lw3/i;->R(Lw3/g2;I)V

    const/16 v2, -0x36

    invoke-direct {v1, v2, v0}, Lw3/i;->j(II)V

    goto/16 :goto_15

    :cond_1c
    :pswitch_1b
    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v0

    if-ne v2, v14, :cond_1d

    invoke-direct {v1, v7}, Lw3/i;->n(I)V

    invoke-direct {v1, v8}, Lw3/i;->O(I)V

    const/16 v2, 0x44

    invoke-direct {v1, v2}, Lw3/i;->t(I)V

    invoke-direct {v1, v7}, Lw3/i;->O(I)V

    :cond_1d
    invoke-direct {v1, v0, v9}, Lw3/i;->R(Lw3/g2;I)V

    const/16 v0, 0x45

    :goto_11
    invoke-direct {v1, v0}, Lw3/i;->t(I)V

    goto/16 :goto_d

    :cond_1e
    :pswitch_1c
    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    if-ne v2, v13, :cond_5

    invoke-direct {v1, v6}, Lw3/i;->n(I)V

    invoke-direct {v1, v5}, Lw3/i;->n(I)V

    goto :goto_15

    :cond_1f
    invoke-virtual {v0, v8}, Lw3/g2;->w(I)I

    move-result v0

    iget-object v2, v1, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v2, v0}, Ly3/s0;->Z0(I)Ly3/w;

    move-result-object v2

    invoke-virtual {v2}, Ly3/w;->v1()I

    move-result v3

    if-eq v3, v12, :cond_21

    invoke-virtual {v2}, Ly3/w;->v1()I

    move-result v2

    if-ne v2, v11, :cond_20

    goto :goto_12

    :cond_20
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_21
    :goto_12
    const/16 v2, -0x13

    goto/16 :goto_3

    :cond_22
    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v0

    invoke-virtual {v0}, Lw3/g2;->D()Lw3/g2;

    move-result-object v2

    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    iget v3, v1, Lw3/i;->f:I

    invoke-direct {v1, v10}, Lw3/i;->m(I)V

    invoke-direct {v1, v7}, Lw3/i;->O(I)V

    and-int/lit8 v5, p2, 0x1

    invoke-direct {v1, v0, v5}, Lw3/i;->R(Lw3/g2;I)V

    iget v0, v1, Lw3/i;->f:I

    const/4 v6, 0x5

    invoke-direct {v1, v6}, Lw3/i;->m(I)V

    invoke-direct {v1, v3}, Lw3/i;->M(I)V

    iput v4, v1, Lw3/i;->g:I

    invoke-direct {v1, v2, v5}, Lw3/i;->R(Lw3/g2;I)V

    :goto_13
    invoke-direct {v1, v0}, Lw3/i;->M(I)V

    goto :goto_15

    :cond_23
    invoke-virtual/range {p1 .. p1}, Lw3/g2;->A()Lw3/g2;

    move-result-object v0

    :goto_14
    if-eq v3, v0, :cond_24

    invoke-direct {v1, v3, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-direct {v1, v6}, Lw3/i;->n(I)V

    invoke-direct {v1, v7}, Lw3/i;->O(I)V

    invoke-virtual {v3}, Lw3/g2;->D()Lw3/g2;

    move-result-object v3

    goto :goto_14

    :cond_24
    and-int/lit8 v0, p2, 0x1

    :try_start_0
    invoke-direct {v1, v3, v0}, Lw3/i;->R(Lw3/g2;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_25
    :goto_15
    add-int/2addr v4, v8

    iget v0, v1, Lw3/i;->g:I

    if-eq v4, v0, :cond_26

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_26
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_17
        :pswitch_16
        :pswitch_1c
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_18
        :pswitch_13
        :pswitch_17
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_18
        :pswitch_18
        :pswitch_e
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_18
        :pswitch_18
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e
        :pswitch_a
        :pswitch_a
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x42
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_1b
        :pswitch_8
        :pswitch_17
        :pswitch_7
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6b
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x8c
        :pswitch_3
        :pswitch_12
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x9e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private S(Lw3/g2;Lw3/g2;)V
    .locals 5

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lw3/g2;->w(I)I

    move-result v0

    invoke-virtual {p2}, Lw3/g2;->H()I

    move-result v1

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    const/16 v2, 0x24

    if-eq v1, v2, :cond_4

    const/16 v2, 0x27

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3

    const/16 v2, 0x37

    if-eq v1, v2, :cond_1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lw3/g2;->x()Lw3/g2;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lw3/i;->R(Lw3/g2;I)V

    const/16 p1, -0xb

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lw3/i;->y(Lw3/g2;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    iget-boolean p1, p1, Lw3/r0;->c:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_2
    iget-object p1, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {p1, p2}, Ly3/s0;->a1(Lw3/g2;)I

    move-result p1

    const/4 p2, -0x7

    invoke-direct {p0, p2, p1}, Lw3/i;->w(II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x8

    invoke-direct {p0, p2, p1}, Lw3/i;->r(ILjava/lang/String;)V

    :goto_0
    invoke-direct {p0, v0}, Lw3/i;->v(I)V

    invoke-direct {p0, v4}, Lw3/i;->O(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Lw3/g2;->x()Lw3/g2;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {p1}, Lw3/g2;->D()Lw3/g2;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lw3/i;->R(Lw3/g2;I)V

    const/16 p1, -0xa

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    invoke-direct {p0, v0}, Lw3/i;->v(I)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lw3/i;->O(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lw3/g2;->x()Lw3/g2;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {p1}, Lw3/g2;->D()Lw3/g2;

    move-result-object p1

    invoke-virtual {p1}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object p1

    const/16 p2, -0x9

    invoke-direct {p0, p2, p1}, Lw3/i;->r(ILjava/lang/String;)V

    :goto_1
    invoke-direct {p0, v0}, Lw3/i;->v(I)V

    :goto_2
    return-void
.end method

.method private T(Lw3/g2;Lw3/g2;)V
    .locals 9

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x43

    const/4 v2, 0x0

    const/16 v3, 0x42

    if-ne v0, v3, :cond_1

    move-object v4, p2

    const/4 v5, 0x0

    :goto_0
    if-eqz v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4}, Lw3/g2;->D()Lw3/g2;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_8

    const/16 v4, 0xc

    invoke-virtual {p1, v4}, Lw3/g2;->E(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    :goto_1
    const/16 v6, -0x1d

    invoke-direct {p0, v6, v5}, Lw3/i;->o(II)V

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lw3/i;->O(I)V

    :goto_2
    const/4 v5, -0x1

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lw3/g2;->H()I

    move-result v6

    const/16 v7, 0x9a

    if-ne v6, v7, :cond_2

    invoke-virtual {p2}, Lw3/g2;->x()Lw3/g2;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lw3/i;->R(Lw3/g2;I)V

    const/16 v6, -0x39

    :goto_3
    invoke-direct {p0, v6}, Lw3/i;->n(I)V

    goto :goto_5

    :cond_2
    const/16 v7, 0x9b

    if-ne v6, v7, :cond_3

    invoke-virtual {p2}, Lw3/g2;->x()Lw3/g2;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lw3/i;->R(Lw3/g2;I)V

    const/16 v6, -0x3a

    goto :goto_3

    :cond_3
    const/16 v7, 0xa6

    const/16 v8, -0x1e

    if-ne v6, v7, :cond_4

    invoke-virtual {p2}, Lw3/g2;->x()Lw3/g2;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lw3/i;->R(Lw3/g2;I)V

    goto :goto_4

    :cond_4
    invoke-direct {p0, p2, v2}, Lw3/i;->R(Lw3/g2;I)V

    :goto_4
    invoke-direct {p0, v8}, Lw3/i;->n(I)V

    :goto_5
    invoke-direct {p0, v5}, Lw3/i;->O(I)V

    invoke-virtual {p2}, Lw3/g2;->D()Lw3/g2;

    move-result-object p2

    goto :goto_2

    :cond_5
    if-ne v0, v3, :cond_7

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lw3/g2;->E(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-nez p1, :cond_6

    invoke-direct {p0, v3}, Lw3/i;->t(I)V

    goto :goto_6

    :cond_6
    iget-object p2, p0, Lw3/i;->p:Lw3/j2;

    invoke-virtual {p2}, Lw3/j2;->m()I

    move-result p2

    iget-object v0, p0, Lw3/i;->p:Lw3/j2;

    invoke-virtual {v0, p1}, Lw3/j2;->a(Ljava/lang/Object;)V

    const/16 p1, -0x1f

    invoke-direct {p0, p1, p2}, Lw3/i;->o(II)V

    goto :goto_6

    :cond_7
    iget-object p1, p0, Lw3/i;->p:Lw3/j2;

    invoke-virtual {p1}, Lw3/j2;->m()I

    move-result p1

    iget-object p2, p0, Lw3/i;->p:Lw3/j2;

    invoke-virtual {p2, v4}, Lw3/j2;->a(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Lw3/i;->o(II)V

    :goto_6
    invoke-direct {p0, v5}, Lw3/i;->O(I)V

    return-void

    :cond_8
    invoke-static {p1}, Lw3/i;->y(Lw3/g2;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private U(Lw3/g2;I)V
    .locals 13

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    invoke-virtual {p1}, Lw3/g2;->x()Lw3/g2;

    move-result-object v1

    const/16 v2, -0x3e

    if-eq v0, v2, :cond_19

    const/16 v2, 0x41

    if-eq v0, v2, :cond_18

    const/16 v2, 0x53

    const/16 v3, -0x38

    const/4 v4, 0x1

    if-eq v0, v2, :cond_14

    const/16 v2, 0x70

    const/4 v5, -0x5

    const/4 v6, 0x3

    const/4 v7, -0x1

    if-eq v0, v2, :cond_11

    const/16 v2, 0x75

    const/4 v8, -0x4

    const/4 v9, 0x0

    if-eq v0, v2, :cond_e

    const/16 v2, 0x7e

    if-eq v0, v2, :cond_d

    const/16 v2, 0x80

    if-eq v0, v2, :cond_b

    const/16 v2, 0x90

    const/4 v10, 0x2

    if-eq v0, v2, :cond_9

    const/16 v2, 0xa3

    if-eq v0, v2, :cond_8

    const/16 v2, 0x32

    const v3, 0xffff

    if-eq v0, v2, :cond_7

    const/16 v2, 0x33

    if-eq v0, v2, :cond_6

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    invoke-static {p1}, Lw3/i;->y(Lw3/g2;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :pswitch_0
    check-cast p1, Ly3/c0;

    iget-object p1, p1, Ly3/c0;->m:Lw3/g2;

    const/16 v0, -0x17

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p1}, Lw3/i;->P(Lw3/g2;)V

    invoke-direct {p0, v1, v9}, Lw3/i;->R(Lw3/g2;I)V

    const/16 p1, 0x88

    if-ne v0, p1, :cond_0

    const/4 v5, -0x4

    :cond_0
    :goto_0
    invoke-direct {p0, v5}, Lw3/i;->n(I)V

    goto/16 :goto_4

    :pswitch_2
    invoke-direct {p0, p1}, Lw3/i;->K(Lw3/g2;)V

    goto/16 :goto_d

    :pswitch_3
    invoke-direct {p0, v1, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-static {p1}, Lw3/i;->H(Lw3/g2;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lw3/i;->o(II)V

    goto/16 :goto_4

    :pswitch_4
    invoke-static {p1}, Lw3/i;->H(Lw3/g2;)I

    move-result v0

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Lw3/g2;->w(I)I

    move-result p1

    invoke-virtual {v1}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lw3/g2;->D()Lw3/g2;

    move-result-object v1

    invoke-direct {p0, v1, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-direct {p0, v2}, Lw3/i;->s(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lw3/i;->p(I)V

    const/16 v0, 0x39

    invoke-direct {p0, v0}, Lw3/i;->t(I)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-direct {p0, v4}, Lw3/i;->v(I)V

    goto :goto_4

    :pswitch_5
    check-cast p1, Ly3/c0;

    iget-object p1, p1, Ly3/c0;->m:Lw3/g2;

    invoke-direct {p0, v1, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-direct {p0, p1, v0}, Lw3/i;->l(Lw3/g2;I)V

    goto :goto_4

    :pswitch_6
    check-cast p1, Ly3/c0;

    iget-object p1, p1, Ly3/c0;->m:Lw3/g2;

    :goto_2
    invoke-direct {p0, p1, v0}, Lw3/i;->l(Lw3/g2;I)V

    goto/16 :goto_d

    :pswitch_7
    invoke-direct {p0, p1}, Lw3/i;->P(Lw3/g2;)V

    const/16 v0, 0x14

    invoke-virtual {p1, v0, v9}, Lw3/g2;->z(II)I

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v1, :cond_3

    iget-object p1, p0, Lw3/i;->a:Lw3/j;

    invoke-virtual {p1}, Lw3/j;->c()I

    move-result p1

    const/16 v0, 0xc8

    if-ge p1, v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-direct {p0, v1, v4}, Lw3/i;->R(Lw3/g2;I)V

    const/16 p1, -0x41

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    goto :goto_5

    :cond_3
    :goto_3
    const/16 p1, -0x3f

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    iget p1, p0, Lw3/i;->h:I

    and-int/2addr p1, v3

    invoke-direct {p0, p1}, Lw3/i;->u(I)V

    goto/16 :goto_d

    :cond_4
    if-nez v1, :cond_5

    const/16 p1, -0x16

    goto :goto_6

    :cond_5
    invoke-direct {p0, v1, v4}, Lw3/i;->R(Lw3/g2;I)V

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lw3/i;->t(I)V

    goto :goto_4

    :pswitch_8
    invoke-direct {p0, v6}, Lw3/i;->t(I)V

    goto/16 :goto_d

    :pswitch_9
    invoke-direct {p0, v1, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-direct {p0, v10}, Lw3/i;->t(I)V

    :goto_4
    invoke-direct {p0, v7}, Lw3/i;->O(I)V

    goto/16 :goto_d

    :cond_6
    invoke-direct {p0, p1}, Lw3/i;->P(Lw3/g2;)V

    invoke-static {p1}, Lw3/i;->H(Lw3/g2;)I

    move-result p1

    invoke-direct {p0, v2, p1}, Lw3/i;->o(II)V

    goto/16 :goto_d

    :cond_7
    invoke-direct {p0, p1}, Lw3/i;->P(Lw3/g2;)V

    invoke-direct {p0, v1, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-direct {p0, v2}, Lw3/i;->t(I)V

    :goto_5
    iget p1, p0, Lw3/i;->h:I

    and-int/2addr p1, v3

    invoke-direct {p0, p1}, Lw3/i;->u(I)V

    goto :goto_4

    :cond_8
    const/16 p1, -0x40

    :goto_6
    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    goto/16 :goto_d

    :cond_9
    invoke-direct {p0}, Lw3/i;->x()I

    move-result v0

    invoke-virtual {p1, v10, v0}, Lw3/g2;->R(II)V

    invoke-direct {p0, p1}, Lw3/i;->P(Lw3/g2;)V

    :goto_7
    if-eqz v1, :cond_a

    invoke-direct {p0, v1, p2}, Lw3/i;->U(Lw3/g2;I)V

    invoke-virtual {v1}, Lw3/g2;->D()Lw3/g2;

    move-result-object v1

    goto :goto_7

    :cond_a
    invoke-direct {p0, v3, v0}, Lw3/i;->o(II)V

    invoke-direct {p0, v0}, Lw3/i;->L(I)V

    goto/16 :goto_d

    :cond_b
    invoke-direct {p0, v4}, Lw3/i;->O(I)V

    invoke-static {p1}, Lw3/i;->H(Lw3/g2;)I

    move-result p1

    const/16 v0, -0x18

    invoke-direct {p0, v0, p1}, Lw3/i;->o(II)V

    invoke-direct {p0, v7}, Lw3/i;->O(I)V

    :goto_8
    if-eqz v1, :cond_c

    invoke-direct {p0, v1, p2}, Lw3/i;->U(Lw3/g2;I)V

    invoke-virtual {v1}, Lw3/g2;->D()Lw3/g2;

    move-result-object v1

    goto :goto_8

    :cond_c
    const/16 v0, -0x19

    invoke-direct {p0, v0, p1}, Lw3/i;->o(II)V

    goto/16 :goto_d

    :cond_d
    :pswitch_a
    invoke-direct {p0, p1}, Lw3/i;->P(Lw3/g2;)V

    :goto_9
    :pswitch_b
    if-eqz v1, :cond_19

    invoke-direct {p0, v1, p2}, Lw3/i;->U(Lw3/g2;I)V

    invoke-virtual {v1}, Lw3/g2;->D()Lw3/g2;

    move-result-object v1

    goto :goto_9

    :cond_e
    invoke-direct {p0, p1}, Lw3/i;->P(Lw3/g2;)V

    invoke-direct {p0, v1, v9}, Lw3/i;->R(Lw3/g2;I)V

    invoke-virtual {v1}, Lw3/g2;->D()Lw3/g2;

    move-result-object p1

    :goto_a
    check-cast p1, Ly3/c0;

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lw3/g2;->x()Lw3/g2;

    move-result-object v0

    invoke-direct {p0, v7}, Lw3/i;->n(I)V

    invoke-direct {p0, v4}, Lw3/i;->O(I)V

    invoke-direct {p0, v0, v9}, Lw3/i;->R(Lw3/g2;I)V

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lw3/i;->t(I)V

    invoke-direct {p0, v7}, Lw3/i;->O(I)V

    iget-object v0, p1, Ly3/c0;->m:Lw3/g2;

    const/4 v1, -0x6

    invoke-direct {p0, v0, v1}, Lw3/i;->l(Lw3/g2;I)V

    invoke-direct {p0, v7}, Lw3/i;->O(I)V

    invoke-virtual {p1}, Lw3/g2;->D()Lw3/g2;

    move-result-object p1

    goto :goto_a

    :cond_f
    invoke-static {p1}, Lw3/i;->y(Lw3/g2;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_10
    invoke-direct {p0, v8}, Lw3/i;->n(I)V

    goto/16 :goto_4

    :cond_11
    invoke-virtual {p1, v4}, Lw3/g2;->w(I)I

    move-result p1

    iget-object v0, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v0, p1}, Ly3/s0;->Z0(I)Ly3/w;

    move-result-object v0

    invoke-virtual {v0}, Ly3/w;->v1()I

    move-result v0

    if-ne v0, v6, :cond_12

    const/16 v0, -0x14

    invoke-direct {p0, v0, p1}, Lw3/i;->o(II)V

    goto :goto_b

    :cond_12
    if-ne v0, v4, :cond_13

    :goto_b
    iget-boolean v0, p0, Lw3/i;->b:Z

    if-nez v0, :cond_19

    const/16 v0, -0x13

    invoke-direct {p0, v0, p1}, Lw3/i;->o(II)V

    invoke-direct {p0, v4}, Lw3/i;->O(I)V

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_14
    check-cast p1, Ly3/c0;

    invoke-static {p1}, Lw3/i;->H(Lw3/g2;)I

    move-result v0

    invoke-direct {p0}, Lw3/i;->x()I

    move-result v2

    const/16 v5, -0xd

    invoke-direct {p0, v5, v2}, Lw3/i;->o(II)V

    iget v12, p0, Lw3/i;->f:I

    iget-boolean v5, p0, Lw3/i;->c:Z

    iput-boolean v4, p0, Lw3/i;->c:Z

    :goto_c
    if-eqz v1, :cond_15

    invoke-direct {p0, v1, p2}, Lw3/i;->U(Lw3/g2;I)V

    invoke-virtual {v1}, Lw3/g2;->D()Lw3/g2;

    move-result-object v1

    goto :goto_c

    :cond_15
    iput-boolean v5, p0, Lw3/i;->c:Z

    iget-object v1, p1, Ly3/c0;->m:Lw3/g2;

    if-eqz v1, :cond_16

    iget-object v4, p0, Lw3/i;->l:[I

    invoke-direct {p0, v1}, Lw3/i;->I(Lw3/g2;)I

    move-result v1

    aget v8, v4, v1

    const/4 v9, 0x0

    move-object v5, p0

    move v6, v12

    move v7, v8

    move v10, v0

    move v11, v2

    invoke-direct/range {v5 .. v11}, Lw3/i;->k(IIIZII)V

    :cond_16
    invoke-virtual {p1}, Ly3/c0;->x0()Lw3/g2;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object v1, p0, Lw3/i;->l:[I

    invoke-direct {p0, p1}, Lw3/i;->I(Lw3/g2;)I

    move-result p1

    aget v8, v1, p1

    const/4 v9, 0x1

    move-object v5, p0

    move v6, v12

    move v7, v8

    move v10, v0

    move v11, v2

    invoke-direct/range {v5 .. v11}, Lw3/i;->k(IIIZII)V

    :cond_17
    invoke-direct {p0, v3, v2}, Lw3/i;->o(II)V

    invoke-direct {p0, v2}, Lw3/i;->L(I)V

    goto :goto_d

    :cond_18
    invoke-direct {p0, p1}, Lw3/i;->P(Lw3/g2;)V

    invoke-direct {p0, v2}, Lw3/i;->t(I)V

    :cond_19
    :goto_d
    iget p1, p0, Lw3/i;->g:I

    if-ne p1, p2, :cond_1a

    return-void

    :cond_1a
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x83
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_2
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private j(II)V
    .locals 1

    iget v0, p0, Lw3/i;->f:I

    if-le v0, p2, :cond_0

    invoke-direct {p0, p1}, Lw3/i;->m(I)V

    invoke-direct {p0, v0, p2}, Lw3/i;->N(II)V

    return-void

    :cond_0
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private k(IIIZII)V
    .locals 4

    iget v0, p0, Lw3/i;->q:I

    iget-object v1, p0, Lw3/i;->d:Lw3/r0;

    iget-object v1, v1, Lw3/r0;->j:[I

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    const/16 v1, 0xc

    new-array v1, v1, [I

    iget-object v2, p0, Lw3/i;->d:Lw3/r0;

    iput-object v1, v2, Lw3/r0;->j:[I

    goto :goto_0

    :cond_1
    array-length v2, v1

    if-ne v2, v0, :cond_2

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lw3/i;->d:Lw3/r0;

    iput-object v2, v1, Lw3/r0;->j:[I

    move-object v1, v2

    :cond_2
    :goto_0
    add-int/lit8 v2, v0, 0x0

    aput p1, v1, v2

    add-int/lit8 p1, v0, 0x1

    aput p2, v1, p1

    add-int/lit8 p1, v0, 0x2

    aput p3, v1, p1

    add-int/lit8 p1, v0, 0x3

    aput p4, v1, p1

    add-int/lit8 p1, v0, 0x4

    aput p5, v1, p1

    add-int/lit8 p1, v0, 0x5

    aput p6, v1, p1

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lw3/i;->q:I

    return-void
.end method

.method private l(Lw3/g2;I)V
    .locals 6

    invoke-direct {p0, p1}, Lw3/i;->I(Lw3/g2;)I

    move-result p1

    iget v0, p0, Lw3/i;->m:I

    if-lt p1, v0, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lw3/i;->l:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, p2, v0}, Lw3/i;->j(II)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lw3/i;->f:I

    invoke-direct {p0, p2}, Lw3/i;->m(I)V

    iget p2, p0, Lw3/i;->o:I

    iget-object v1, p0, Lw3/i;->n:[J

    if-eqz v1, :cond_2

    array-length v2, v1

    if-ne p2, v2, :cond_4

    :cond_2
    if-nez v1, :cond_3

    const/16 v1, 0x28

    new-array v1, v1, [J

    iput-object v1, p0, Lw3/i;->n:[J

    goto :goto_0

    :cond_3
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lw3/i;->n:[J

    :cond_4
    :goto_0
    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lw3/i;->o:I

    iget-object v1, p0, Lw3/i;->n:[J

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v2, p1

    int-to-long v4, v0

    or-long/2addr v2, v4

    aput-wide v2, v1, p2

    :goto_1
    return-void
.end method

.method private m(I)V
    .locals 4

    iget-object v0, p0, Lw3/i;->d:Lw3/r0;

    iget-object v0, v0, Lw3/r0;->i:[B

    iget v1, p0, Lw3/i;->f:I

    add-int/lit8 v2, v1, 0x3

    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lw3/i;->J(I)[B

    move-result-object v0

    :cond_0
    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lw3/i;->f:I

    return-void
.end method

.method private n(I)V
    .locals 1

    invoke-static {p1}, Lw3/j0;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit16 p1, p1, 0xff

    invoke-direct {p0, p1}, Lw3/i;->v(I)V

    return-void

    :cond_0
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private o(II)V
    .locals 0

    invoke-direct {p0, p2}, Lw3/i;->p(I)V

    invoke-static {p1}, Lw3/j0;->h(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lw3/i;->t(I)V

    :goto_0
    return-void
.end method

.method private p(I)V
    .locals 1

    if-gez p1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    rsub-int/lit8 p1, p1, -0x20

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    const/16 v0, -0x26

    invoke-direct {p0, v0}, Lw3/i;->n(I)V

    invoke-direct {p0, p1}, Lw3/i;->v(I)V

    goto :goto_0

    :cond_2
    const v0, 0xffff

    if-gt p1, v0, :cond_3

    const/16 v0, -0x27

    invoke-direct {p0, v0}, Lw3/i;->n(I)V

    invoke-direct {p0, p1}, Lw3/i;->u(I)V

    goto :goto_0

    :cond_3
    const/16 v0, -0x28

    invoke-direct {p0, v0}, Lw3/i;->n(I)V

    invoke-direct {p0, p1}, Lw3/i;->q(I)V

    :goto_0
    return-void
.end method

.method private q(I)V
    .locals 5

    iget-object v0, p0, Lw3/i;->d:Lw3/r0;

    iget-object v0, v0, Lw3/r0;->i:[B

    iget v1, p0, Lw3/i;->f:I

    add-int/lit8 v2, v1, 0x4

    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lw3/i;->J(I)[B

    move-result-object v0

    :cond_0
    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, p1, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, p1, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x3

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iput v2, p0, Lw3/i;->f:I

    return-void
.end method

.method private r(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lw3/i;->s(Ljava/lang/String;)V

    invoke-static {p1}, Lw3/j0;->h(I)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lw3/i;->t(I)V

    :goto_0
    return-void
.end method

.method private s(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lw3/i;->j:Lw3/k2;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lw3/k2;->d(Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lw3/i;->j:Lw3/k2;

    invoke-virtual {v0}, Lw3/k2;->m()I

    move-result v0

    iget-object v1, p0, Lw3/i;->j:Lw3/k2;

    invoke-virtual {v1, p1, v0}, Lw3/k2;->j(Ljava/lang/Object;I)V

    :cond_0
    const/4 p1, 0x4

    if-ge v0, p1, :cond_1

    rsub-int/lit8 p1, v0, -0x29

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xff

    if-gt v0, p1, :cond_2

    const/16 p1, -0x2d

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    invoke-direct {p0, v0}, Lw3/i;->v(I)V

    goto :goto_0

    :cond_2
    const p1, 0xffff

    if-gt v0, p1, :cond_3

    const/16 p1, -0x2e

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    invoke-direct {p0, v0}, Lw3/i;->u(I)V

    goto :goto_0

    :cond_3
    const/16 p1, -0x2f

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    invoke-direct {p0, v0}, Lw3/i;->q(I)V

    :goto_0
    return-void
.end method

.method private t(I)V
    .locals 1

    invoke-static {p1}, Lw3/j0;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lw3/i;->v(I)V

    return-void

    :cond_0
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private u(I)V
    .locals 4

    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lw3/i;->d:Lw3/r0;

    iget-object v0, v0, Lw3/r0;->i:[B

    iget v1, p0, Lw3/i;->f:I

    add-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-le v2, v3, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lw3/i;->J(I)[B

    move-result-object v0

    :cond_0
    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    iput v2, p0, Lw3/i;->f:I

    return-void

    :cond_1
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private v(I)V
    .locals 4

    and-int/lit16 v0, p1, -0x100

    if-nez v0, :cond_1

    iget-object v0, p0, Lw3/i;->d:Lw3/r0;

    iget-object v0, v0, Lw3/r0;->i:[B

    iget v1, p0, Lw3/i;->f:I

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v3}, Lw3/i;->J(I)[B

    move-result-object v0

    :cond_0
    int-to-byte p1, p1

    aput-byte p1, v0, v1

    add-int/2addr v1, v3

    iput v1, p0, Lw3/i;->f:I

    return-void

    :cond_1
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private w(II)V
    .locals 3

    const/4 v0, -0x7

    if-eq p1, v0, :cond_5

    const/16 v0, 0x9f

    const/16 v1, 0x80

    if-eq p1, v0, :cond_3

    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    const/16 v2, 0x38

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    if-ge p2, v1, :cond_5

    if-ne p1, v0, :cond_2

    const/16 p1, -0x30

    goto :goto_1

    :cond_2
    const/16 p1, -0x31

    :goto_1
    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    invoke-direct {p0, p2}, Lw3/i;->v(I)V

    return-void

    :cond_3
    if-ge p2, v1, :cond_4

    const/16 p1, -0x3d

    invoke-direct {p0, p1}, Lw3/i;->n(I)V

    invoke-direct {p0, p2}, Lw3/i;->v(I)V

    return-void

    :cond_4
    const/16 p1, -0x3c

    invoke-direct {p0, p1, p2}, Lw3/i;->o(II)V

    return-void

    :cond_5
    invoke-direct {p0, p1, p2}, Lw3/i;->o(II)V

    return-void
.end method

.method private x()I
    .locals 4

    iget v0, p0, Lw3/i;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lw3/i;->k:I

    iget-object v2, p0, Lw3/i;->d:Lw3/r0;

    iget v3, v2, Lw3/r0;->l:I

    if-le v1, v3, :cond_0

    iput v1, v2, Lw3/r0;->l:I

    :cond_0
    return v0
.end method

.method private static y(Lw3/g2;)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lw3/g2;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public z(Lw3/j;Ly3/s0;Ljava/lang/String;Z)Lw3/r0;
    .locals 2

    iput-object p1, p0, Lw3/i;->a:Lw3/j;

    new-instance v0, Lw3/i2;

    invoke-direct {v0}, Lw3/i2;-><init>()V

    invoke-virtual {v0, p2, p1}, Lw3/i2;->c(Ly3/s0;Lw3/j;)V

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ly3/s0;->Z0(I)Ly3/w;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lw3/i;->e:Ly3/s0;

    new-instance p2, Lw3/r0;

    invoke-virtual {p1}, Lw3/j;->c()I

    move-result p1

    iget-object v0, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v0}, Ly3/s0;->j1()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lw3/i;->e:Ly3/s0;

    invoke-virtual {v1}, Ly3/s0;->k1()Z

    move-result v1

    invoke-direct {p2, p1, v0, p3, v1}, Lw3/r0;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object p2, p0, Lw3/i;->d:Lw3/r0;

    const/4 p1, 0x1

    iput-boolean p1, p2, Lw3/r0;->x:Z

    if-eqz p4, :cond_1

    invoke-direct {p0}, Lw3/i;->C()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lw3/i;->e:Ly3/s0;

    invoke-direct {p0, p1}, Lw3/i;->D(Lw3/g2;)V

    :goto_0
    iget-object p1, p0, Lw3/i;->d:Lw3/r0;

    return-object p1
.end method
