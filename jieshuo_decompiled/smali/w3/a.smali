.class final Lw3/a;
.super Lw3/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/a$b;
    }
.end annotation


# static fields
.field private static r:Lw3/c;


# instance fields
.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:I

.field private n:I

.field private o:I

.field private p:Lw3/b1;

.field private q:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw3/a$a;

    invoke-direct {v0}, Lw3/a$a;-><init>()V

    sput-object v0, Lw3/a;->r:Lw3/c;

    return-void
.end method

.method public constructor <init>(Lw3/b1;)V
    .locals 2

    invoke-direct {p0}, Lw3/n0;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lw3/a;->m:I

    iput v0, p0, Lw3/a;->n:I

    iput v0, p0, Lw3/a;->o:I

    iput-object p1, p0, Lw3/a;->p:Lw3/b1;

    invoke-virtual {p1}, Lw3/a3;->i()Lw3/z2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/a3;->h(Lw3/z2;)V

    invoke-static {v1}, Lw3/a3;->z0(Lw3/z2;)Lw3/z2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/a3;->A(Lw3/z2;)V

    iget-object v1, p1, Lw3/b1;->k:[Ljava/lang/Object;

    iput-object v1, p0, Lw3/a;->q:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lw3/a;->l:Ljava/lang/Object;

    iget-object p1, p1, Lw3/b1;->j:Lw3/i1;

    iput-object p1, p0, Lw3/a;->k:Ljava/lang/Object;

    invoke-virtual {p1}, Lw3/i1;->b2()I

    move-result p1

    const/16 v1, 0x82

    if-gt p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    :goto_0
    iput-object p1, p0, Lw3/a;->j:Ljava/lang/Object;

    sget-object p1, Lw3/j3;->b:Lw3/j3;

    sget-object v1, Lw3/a;->r:Lw3/c;

    invoke-virtual {p0, p1, v1, v0}, Lw3/a3;->a0(Lw3/i3;Ljava/lang/Object;I)V

    return-void
.end method

.method private I1(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_1

    iget-object v0, p0, Lw3/a;->q:[Ljava/lang/Object;

    array-length v1, v0

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1
.end method

.method private K1(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/a;->p:Lw3/b1;

    iget-object v0, v0, Lw3/b1;->j:Lw3/i1;

    invoke-virtual {v0, p1}, Lw3/i1;->f2(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lw3/a;->p:Lw3/b1;

    invoke-virtual {v0, p1, v0}, Lw3/n0;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private L1(ILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lw3/a;->p:Lw3/b1;

    iget-object v0, v0, Lw3/b1;->j:Lw3/i1;

    invoke-virtual {v0, p1}, Lw3/i1;->f2(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lw3/a;->p:Lw3/b1;

    invoke-virtual {v0, p1, v0, p2}, Lw3/n0;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method private M1(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw3/a;->q:[Ljava/lang/Object;

    aget-object v1, v0, p1

    sget-object v2, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lw3/a;->p:Lw3/b1;

    iget-object v1, v1, Lw3/b1;->k:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lw3/a;->q:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lw3/a;->q:[Ljava/lang/Object;

    aput-object v2, v0, p1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private N1(ILjava/lang/Object;)V
    .locals 2

    invoke-direct {p0, p1}, Lw3/a;->O1(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lw3/a;->L1(ILjava/lang/Object;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw3/a;->q:[Ljava/lang/Object;

    iget-object v1, p0, Lw3/a;->p:Lw3/b1;

    iget-object v1, v1, Lw3/b1;->k:[Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lw3/a;->q:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lw3/a;->q:[Ljava/lang/Object;

    aput-object p2, v0, p1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private O1(I)Z
    .locals 6

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v0

    invoke-virtual {v0}, Lw3/m;->L()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lw3/a;->p:Lw3/b1;

    iget-object v0, v0, Lw3/b1;->j:Lw3/i1;

    invoke-virtual {v0}, Lw3/i1;->d2()I

    move-result v2

    if-ge p1, v2, :cond_3

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x1

    if-ge p1, v3, :cond_2

    invoke-virtual {v0, p1}, Lw3/i1;->f2(I)Ljava/lang/String;

    move-result-object v3

    add-int/2addr p1, v4

    :goto_0
    if-ge p1, v2, :cond_2

    invoke-virtual {v0, p1}, Lw3/i1;->f2(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    return v1
.end method


# virtual methods
.method protected A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;
    .locals 6

    invoke-static {p2}, Lw3/u2;->H0(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    instance-of v0, p2, Lw3/z2;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide v0

    double-to-int v2, v0

    int-to-double v3, v2

    cmpl-double v5, v0, v3

    if-eqz v5, :cond_1

    invoke-super {p0, p1, p2}, Lw3/n0;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, v2}, Lw3/a;->I1(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    invoke-super {p0, p1, p2}, Lw3/n0;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0, v2}, Lw3/a;->O1(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v2}, Lw3/a;->K1(I)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    invoke-super {p0, v2, p0}, Lw3/a3;->C(ILw3/z2;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-super {p0, p1, p2}, Lw3/n0;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object p1

    const-string p2, "value"

    invoke-virtual {p1, p2, p1, v0}, Lw3/a3;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lw3/a3;->i()Lw3/z2;

    move-result-object p1

    if-nez p1, :cond_5

    move-object p1, p0

    :cond_5
    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Lw3/a3;->L(Lw3/z2;Ljava/lang/Object;I)Lw3/a3;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    invoke-super {p0, p1, p2}, Lw3/n0;->A0(Lw3/m;Ljava/lang/Object;)Lw3/a3;

    move-result-object p1

    return-object p1
.end method

.method public C(ILw3/z2;)Z
    .locals 2

    invoke-direct {p0, p1}, Lw3/a;->I1(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/a3;->C(ILw3/z2;)Z

    move-result p1

    return p1
.end method

.method public D(ILw3/z2;)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Lw3/a;->I1(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lw3/a3;->D(ILw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lw3/a;->O1(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lw3/a;->K1(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method protected G1(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lw3/n0;->G1(II)V

    return-void

    :cond_0
    iput p2, p0, Lw3/a;->m:I

    return-void

    :cond_1
    iput p2, p0, Lw3/a;->o:I

    return-void

    :cond_2
    iput p2, p0, Lw3/a;->n:I

    return-void
.end method

.method protected H1(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lw3/n0;->H1(ILjava/lang/Object;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Lw3/x3;->c:Lw3/x3;

    :goto_0
    iput-object p2, p0, Lw3/a;->j:Ljava/lang/Object;

    return-void

    :cond_2
    iput-object p2, p0, Lw3/a;->l:Ljava/lang/Object;

    return-void

    :cond_3
    iput-object p2, p0, Lw3/a;->k:Ljava/lang/Object;

    return-void
.end method

.method J1()V
    .locals 5

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v0

    invoke-virtual {v0}, Lw3/m;->L()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lw3/a$b;

    const-string v1, "caller"

    invoke-direct {v0, v1}, Lw3/a$b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v0, v3}, Lw3/a3;->f1(Ljava/lang/String;ILw3/f;Z)V

    new-instance v0, Lw3/a$b;

    invoke-direct {v0, v1}, Lw3/a$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v0, v2}, Lw3/a3;->f1(Ljava/lang/String;ILw3/f;Z)V

    new-instance v0, Lw3/a$b;

    const-string v4, "callee"

    invoke-direct {v0, v4}, Lw3/a$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v2, v0, v3}, Lw3/a3;->f1(Ljava/lang/String;ILw3/f;Z)V

    new-instance v0, Lw3/a$b;

    invoke-direct {v0, v4}, Lw3/a$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v2, v0, v2}, Lw3/a3;->f1(Ljava/lang/String;ILw3/f;Z)V

    const/4 v0, 0x6

    invoke-virtual {p0, v1, v0}, Lw3/n0;->d1(Ljava/lang/String;I)V

    invoke-virtual {p0, v4, v0}, Lw3/n0;->d1(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lw3/a;->j:Ljava/lang/Object;

    iput-object v0, p0, Lw3/a;->k:Ljava/lang/Object;

    return-void
.end method

.method protected W(Lw3/m;Ljava/lang/Object;Lw3/a3;Z)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lw3/a3;->W(Lw3/m;Ljava/lang/Object;Lw3/a3;Z)V

    invoke-static {p2}, Lw3/u2;->H0(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lw3/u2;->Y1(Ljava/lang/Object;)D

    move-result-wide p1

    double-to-int p4, p1

    int-to-double v0, p4

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p4}, Lw3/a;->I1(I)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne p1, p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p3}, Lw3/a3;->M0(Lw3/a3;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p4}, Lw3/a;->M1(I)V

    return-void

    :cond_3
    const-string p1, "value"

    invoke-static {p3, p1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_4

    return-void

    :cond_4
    invoke-direct {p0, p4, p1}, Lw3/a;->N1(ILjava/lang/Object;)V

    const-string p1, "writable"

    invoke-static {p3, p1}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lw3/a3;->P0(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p4}, Lw3/a;->M1(I)V

    :cond_5
    return-void
.end method

.method public d(ILw3/z2;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0, p1}, Lw3/a;->I1(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Lw3/a3;->d(ILw3/z2;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lw3/a;->N1(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lw3/a;->q:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1}, Lw3/a;->M1(I)V

    :cond_0
    invoke-super {p0, p1}, Lw3/a3;->f(I)V

    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Arguments"

    return-object v0
.end method

.method protected p1(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "caller"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "callee"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const/4 v0, 0x3

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x2

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v4

    invoke-virtual {v4}, Lw3/m;->L()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eq v1, v3, :cond_3

    if-ne v1, v0, :cond_4

    :cond_3
    invoke-super {p0, p1}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_4
    if-nez v1, :cond_5

    invoke-super {p0, p1}, Lw3/n0;->p1(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_5
    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_7

    if-ne v1, v0, :cond_6

    iget p1, p0, Lw3/a;->m:I

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_7
    iget p1, p0, Lw3/a;->o:I

    goto :goto_2

    :cond_8
    iget p1, p0, Lw3/a;->n:I

    :goto_2
    invoke-static {p1, v1}, Lw3/n0;->E1(II)I

    move-result p1

    return p1

    :sswitch_data_0
    .sparse-switch
        -0x51869882 -> :sswitch_2
        -0x51869875 -> :sswitch_1
        -0x41f1c51a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lw3/n0;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method protected v1(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "caller"

    return-object p1

    :cond_1
    const-string p1, "length"

    return-object p1

    :cond_2
    const-string p1, "callee"

    return-object p1
.end method

.method protected w1(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lw3/n0;->w1(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lw3/a;->j:Ljava/lang/Object;

    sget-object v0, Lw3/x3;->c:Lw3/x3;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lw3/a;->p:Lw3/b1;

    iget-object v0, v0, Lw3/b1;->n:Lw3/b1;

    if-eqz v0, :cond_2

    const-string p1, "arguments"

    invoke-virtual {v0, p1, v0}, Lw3/n0;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    iget-object p1, p0, Lw3/a;->l:Ljava/lang/Object;

    return-object p1

    :cond_4
    iget-object p1, p0, Lw3/a;->k:Ljava/lang/Object;

    return-object p1
.end method

.method protected x1()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method y0(ZZ)[Ljava/lang/Object;
    .locals 8

    invoke-super {p0, p1, p2}, Lw3/n0;->y0(ZZ)[Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lw3/a;->q:[Ljava/lang/Object;

    array-length v1, v0

    if-eqz v1, :cond_7

    array-length v1, v0

    new-array v2, v1, [Z

    array-length v0, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p2

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    aget-object v5, p2, v4

    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_0

    iget-object v7, p0, Lw3/a;->q:[Ljava/lang/Object;

    array-length v7, v7

    if-ge v5, v7, :cond_0

    aget-boolean v7, v2, v5

    if-nez v7, :cond_0

    aput-boolean v6, v2, v5

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v1, :cond_3

    aget-boolean v4, v2, p1

    if-nez v4, :cond_2

    invoke-super {p0, p1, p0}, Lw3/a3;->C(ILw3/z2;)Z

    move-result v4

    if-eqz v4, :cond_2

    aput-boolean v6, v2, p1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_7

    array-length p1, p2

    add-int/2addr p1, v0

    new-array p1, p1, [Ljava/lang/Object;

    array-length v1, p2

    invoke-static {p2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p2, 0x0

    :goto_2
    iget-object v1, p0, Lw3/a;->q:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v3, v1, :cond_5

    aget-boolean v1, v2, v3

    if-nez v1, :cond_4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    if-eq p2, v0, :cond_6

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_6
    move-object p2, p1

    :cond_7
    return-object p2
.end method
