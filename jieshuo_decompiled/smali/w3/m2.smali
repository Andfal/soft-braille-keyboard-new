.class public Lw3/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/m2$c;,
        Lw3/m2$a;,
        Lw3/m2$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field a:Lw3/j;

.field private b:Lw3/z;

.field private c:Ly3/z;

.field private d:Ljava/lang/String;

.field private e:[C

.field f:Z

.field private g:Z

.field private h:Lw3/t3;

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/j;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ly3/j;

.field protected n:I

.field private o:Ly3/f0;

.field private p:Z

.field protected q:Z

.field r:Ly3/s0;

.field s:Ly3/r0;

.field private t:I

.field private u:Z

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ly3/f0;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/h0;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly3/c0;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lw3/j;Lw3/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lw3/m2;->i:I

    const-string v0, ""

    iput-object v0, p0, Lw3/m2;->z:Ljava/lang/String;

    iput-object p1, p0, Lw3/m2;->a:Lw3/j;

    iput-object p2, p0, Lw3/m2;->b:Lw3/z;

    instance-of p1, p2, Ly3/z;

    if-eqz p1, :cond_0

    check-cast p2, Ly3/z;

    iput-object p2, p0, Lw3/m2;->c:Ly3/z;

    :cond_0
    return-void
.end method

.method private A(Ly3/e;I)Ly3/e;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lw3/m2;->B()Ly3/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    sub-int/2addr v1, p2

    invoke-direct {p0}, Lw3/m2;->T()Lw3/m2$a;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_1
    const-string v3, "msg.no.bracket.arg"

    const/4 v4, 0x1

    const/16 v5, 0x56

    invoke-direct {p0, v5, v3, v4}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    new-instance v3, Ly3/a;

    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    iget v4, v4, Lw3/t3;->z:I

    sub-int/2addr v4, p2

    invoke-direct {v3, p2, v4}, Ly3/a;-><init>(II)V

    invoke-virtual {v3, p1}, Ly3/a;->Z0(Ly3/e;)V

    invoke-virtual {v3, v0}, Ly3/a;->Y0(Ljava/util/List;)V

    if-eqz v2, :cond_2

    invoke-virtual {v3, v1}, Ly3/a;->X0(I)V

    iget-object p1, v2, Lw3/m2$a;->a:Ly3/e;

    invoke-virtual {v3, p1}, Ly3/a;->U0(Ly3/e;)V

    iget p1, v2, Lw3/m2$a;->b:I

    sub-int/2addr p1, p2

    invoke-virtual {v3, p1}, Ly3/a;->V0(I)V

    iget p1, v2, Lw3/m2$a;->c:I

    sub-int/2addr p1, p2

    invoke-virtual {v3, p1}, Ly3/a;->W0(I)V

    :cond_2
    return-object v3
.end method

.method private A0()Ly3/y;
    .locals 10

    invoke-direct {p0}, Lw3/m2;->a1()I

    move-result v0

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    new-instance v1, Ly3/y;

    invoke-direct {v1, v0}, Ly3/y;-><init>(I)V

    invoke-virtual {p0, v1}, Lw3/m2;->u1(Ly3/r0;)V

    :try_start_0
    const-string v2, "msg.no.paren.for"

    const/4 v3, 0x1

    const/16 v4, 0x59

    invoke-direct {p0, v4, v2, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    sub-int/2addr v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v5

    const/16 v6, 0x27

    if-eq v5, v6, :cond_3

    const/16 v7, 0x55

    if-eq v5, v7, :cond_2

    const/16 v7, 0x57

    if-eq v5, v7, :cond_2

    const-string v5, "msg.bad.var"

    invoke-virtual {p0, v5}, Lw3/m2;->z1(Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lw3/m2;->l0()Ly3/e;

    move-result-object v5

    invoke-virtual {p0, v5}, Lw3/m2;->O0(Ly3/e;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->Z()Ly3/i0;

    move-result-object v5

    :goto_1
    invoke-virtual {v5}, Lw3/g2;->H()I

    move-result v7

    if-ne v7, v6, :cond_4

    iget-object v6, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v6}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x9c

    invoke-virtual {p0, v7, v6, v3}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    :cond_4
    const-string v6, "msg.in.after.for.name"

    const/16 v7, 0x34

    invoke-direct {p0, v7, v6, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lw3/m2;->h:Lw3/t3;

    iget v6, v6, Lw3/t3;->y:I

    sub-int/2addr v6, v0

    goto :goto_2

    :cond_5
    const/4 v6, -0x1

    :goto_2
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v7

    const-string v8, "msg.no.paren.for.ctrl"

    const/16 v9, 0x5a

    invoke-direct {p0, v9, v8, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v3, Lw3/t3;->y:I

    sub-int v4, v3, v0

    :cond_6
    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v3, Lw3/t3;->z:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ly3/e;->r0(I)V

    invoke-virtual {v1, v5}, Ly3/t;->c1(Ly3/e;)V

    invoke-virtual {v1, v7}, Ly3/t;->b1(Ly3/e;)V

    invoke-virtual {v1, v6}, Ly3/t;->Y0(I)V

    invoke-virtual {v1, v2, v4}, Ly3/h0;->S0(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lw3/m2;->q1()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lw3/m2;->q1()V

    throw v0
.end method

.method private B()Ly3/b;
    .locals 13

    invoke-direct {p0}, Lw3/m2;->a1()I

    move-result v0

    const/16 v1, 0x7a

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    new-instance v1, Ly3/b;

    invoke-direct {v1, v0}, Ly3/b;-><init>(I)V

    invoke-virtual {p0, v1}, Lw3/m2;->u1(Ly3/r0;)V

    const/16 v2, 0x27

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2, v3}, Lw3/m2;->Q0(IZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "msg.no.paren.for"

    const/4 v6, -0x1

    if-eqz v4, :cond_2

    :try_start_1
    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v4}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v4

    const-string v7, "each"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    iget v4, v4, Lw3/t3;->y:I

    sub-int/2addr v4, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v5}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_2
    const/4 v4, -0x1

    :goto_0
    const/16 v7, 0x59

    invoke-direct {p0, v7, v5, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lw3/m2;->h:Lw3/t3;

    iget v5, v5, Lw3/t3;->y:I

    sub-int/2addr v5, v0

    goto :goto_1

    :cond_3
    const/4 v5, -0x1

    :goto_1
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v7

    if-eq v7, v2, :cond_5

    const/16 v8, 0x55

    if-eq v7, v8, :cond_4

    const/16 v8, 0x57

    if-eq v7, v8, :cond_4

    const-string v7, "msg.bad.var"

    invoke-virtual {p0, v7}, Lw3/m2;->z1(Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lw3/m2;->l0()Ly3/e;

    move-result-object v7

    invoke-virtual {p0, v7}, Lw3/m2;->O0(Ly3/e;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->Z()Ly3/i0;

    move-result-object v7

    :goto_2
    invoke-virtual {v7}, Lw3/g2;->H()I

    move-result v8

    if-ne v8, v2, :cond_6

    iget-object v8, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v8}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9c

    invoke-virtual {p0, v9, v8, v3}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    :cond_6
    invoke-direct {p0}, Lw3/m2;->a1()I

    move-result v8

    const/4 v9, 0x0

    if-eq v8, v2, :cond_8

    const/16 v2, 0x34

    if-eq v8, v2, :cond_7

    goto :goto_3

    :cond_7
    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    sub-int/2addr v2, v0

    goto :goto_4

    :cond_8
    const-string v2, "of"

    iget-object v8, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v8}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eq v4, v6, :cond_9

    const-string v2, "msg.invalid.for.each"

    invoke-virtual {p0, v2}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    sub-int/2addr v2, v0

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    :goto_3
    const-string v2, "msg.in.after.for.name"

    invoke-virtual {p0, v2}, Lw3/m2;->z1(Ljava/lang/String;)V

    const/4 v2, -0x1

    :goto_4
    const/4 v8, 0x0

    :goto_5
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v10

    const-string v11, "msg.no.paren.for.ctrl"

    const/16 v12, 0x5a

    invoke-direct {p0, v12, v11, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lw3/m2;->h:Lw3/t3;

    iget v11, v11, Lw3/t3;->y:I

    sub-int/2addr v11, v0

    goto :goto_6

    :cond_b
    const/4 v11, -0x1

    :goto_6
    iget-object v12, p0, Lw3/m2;->h:Lw3/t3;

    iget v12, v12, Lw3/t3;->z:I

    sub-int/2addr v12, v0

    invoke-virtual {v1, v12}, Ly3/e;->r0(I)V

    invoke-virtual {v1, v7}, Ly3/t;->c1(Ly3/e;)V

    invoke-virtual {v1, v10}, Ly3/t;->b1(Ly3/e;)V

    invoke-virtual {v1, v2}, Ly3/t;->Y0(I)V

    invoke-virtual {v1, v4}, Ly3/t;->X0(I)V

    if-eq v4, v6, :cond_c

    goto :goto_7

    :cond_c
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v1, v3}, Ly3/t;->Z0(Z)V

    invoke-virtual {v1, v5, v11}, Ly3/h0;->S0(II)V

    invoke-virtual {v1, v8}, Ly3/t;->a1(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lw3/m2;->q1()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lw3/m2;->q1()V

    throw v0
.end method

.method private B0()Ly3/j;
    .locals 2

    iget-object v0, p0, Lw3/m2;->m:Ly3/j;

    const/4 v1, 0x0

    iput-object v1, p0, Lw3/m2;->m:Ly3/j;

    return-object v0
.end method

.method private C()Ly3/e;
    .locals 12

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ly3/c;

    invoke-direct {v3, v1}, Ly3/c;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_0
    const/4 v9, -0x1

    :goto_1
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v10

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_2

    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v9, p0, Lw3/m2;->h:Lw3/t3;

    iget v9, v9, Lw3/t3;->z:I

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    new-instance v10, Ly3/p;

    iget-object v11, p0, Lw3/m2;->h:Lw3/t3;

    iget v11, v11, Lw3/t3;->y:I

    invoke-direct {v10, v11, v6}, Ly3/p;-><init>(II)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/16 v11, 0xa4

    if-ne v10, v11, :cond_3

    invoke-direct {p0}, Lw3/m2;->U()V

    goto :goto_1

    :cond_3
    const/16 v11, 0x56

    if-ne v10, v11, :cond_4

    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->z:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v3, v4}, Ly3/c;->y0(I)V

    invoke-virtual {v3, v8}, Ly3/c;->z0(I)V

    if-eq v9, v5, :cond_6

    invoke-direct {p0, v1, v2, v9}, Lw3/m2;->V1(ILjava/util/List;I)V

    goto :goto_2

    :cond_4
    const/16 v9, 0x7a

    if-ne v10, v9, :cond_5

    if-nez v7, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v6, :cond_5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/e;

    invoke-direct {p0, v0, v1}, Lw3/m2;->A(Ly3/e;I)Ly3/e;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v9, "msg.no.bracket.arg"

    if-nez v10, :cond_8

    invoke-virtual {p0, v9}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly3/e;

    invoke-virtual {v3, v4}, Ly3/c;->v0(Ly3/e;)V

    goto :goto_3

    :cond_7
    sub-int/2addr v0, v1

    invoke-virtual {v3, v0}, Ly3/e;->r0(I)V

    return-object v3

    :cond_8
    if-nez v7, :cond_9

    invoke-virtual {p0, v9}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lw3/m2;->F()Ly3/e;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method private static C0(Ly3/e;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, Ly3/s;

    if-eqz v0, :cond_0

    check-cast p0, Ly3/s;

    invoke-virtual {p0}, Ly3/s;->v0()Ly3/e;

    move-result-object p0

    instance-of v0, p0, Ly3/t0;

    if-eqz v0, :cond_0

    check-cast p0, Ly3/t0;

    invoke-virtual {p0}, Ly3/t0;->v0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private D(Ly3/e;)Ly3/e;
    .locals 9

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->r:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ly3/e;->m0()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    new-instance v2, Ly3/w;

    invoke-direct {v2, v1}, Ly3/w;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ly3/w;->J1(I)V

    invoke-direct {p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v4

    invoke-virtual {v2, v4}, Lw3/g2;->Z(Ly3/j;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Lw3/m2$c;

    invoke-direct {v6, p0, v2}, Lw3/m2$c;-><init>(Lw3/m2;Ly3/w;)V

    :try_start_0
    instance-of v7, p1, Ly3/n0;

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Ly3/e;->k0()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v7}, Ly3/w;->P1(II)V

    check-cast p1, Ly3/n0;

    invoke-virtual {p1}, Ly3/n0;->v0()Ly3/e;

    move-result-object p1

    instance-of v7, p1, Ly3/p;

    if-nez v7, :cond_2

    :cond_1
    invoke-direct {p0, v2, p1, v4, v5}, Lw3/m2;->E(Ly3/w;Ly3/e;Ljava/util/Map;Ljava/util/Set;)V

    :cond_2
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    new-instance p1, Lw3/g2;

    const/16 v5, 0x5b

    invoke-direct {p1, v5}, Lw3/g2;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lw3/g2;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v5

    const/16 v8, 0x7d

    invoke-virtual {p0, v8, v7, v5}, Lw3/m2;->W(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v5

    invoke-virtual {p1, v5}, Lw3/g2;->f(Lw3/g2;)V

    goto :goto_1

    :cond_3
    const/16 v4, 0x17

    invoke-virtual {v2, v4, p1}, Lw3/g2;->S(ILjava/lang/Object;)V

    :cond_4
    invoke-direct {p0, v3, v2}, Lw3/m2;->j1(ILy3/w;)Ly3/e;

    move-result-object p1

    invoke-virtual {v2, p1}, Ly3/w;->E1(Ly3/e;)V

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    iget p1, p1, Lw3/t3;->z:I

    invoke-virtual {v2, v1, p1}, Ly3/s0;->n1(II)V

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    iget p1, p1, Lw3/t3;->z:I

    sub-int/2addr p1, v1

    invoke-virtual {v2, p1}, Ly3/e;->r0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v6}, Lw3/m2$c;->a()V

    invoke-virtual {v2}, Ly3/w;->C1()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "msg.arrowfunction.generator"

    invoke-virtual {p0, p1}, Lw3/m2;->z1(Ljava/lang/String;)V

    invoke-direct {p0}, Lw3/m2;->N0()Ly3/r;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p1, p0, Lw3/m2;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ly3/s0;->q1(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ly3/s0;->l1(I)V

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    iget p1, p1, Lw3/t3;->r:I

    invoke-virtual {v2, p1}, Ly3/s0;->o1(I)V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-virtual {v6}, Lw3/m2$c;->a()V

    throw p1
.end method

.method private D0(Ly3/e;)Ly3/e;
    .locals 3

    invoke-direct {p0}, Lw3/m2;->L1()Ly3/e;

    move-result-object v0

    invoke-virtual {v0}, Lw3/g2;->H()I

    move-result v1

    const/16 v2, 0xa4

    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Lw3/m2;->L1()Ly3/e;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ly3/e;->q0(Ly3/e;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ly3/e;->q0(Ly3/e;)V

    :goto_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private D1(Ly3/h0;)V
    .locals 1

    invoke-virtual {p1}, Ly3/e;->l0()Ly3/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ly3/e;->l0()Ly3/e;

    move-result-object v0

    invoke-virtual {v0}, Ly3/e;->m0()I

    move-result v0

    invoke-virtual {p1, v0}, Ly3/e;->u0(I)V

    :cond_0
    return-void
.end method

.method private E(Ly3/w;Ly3/e;Ljava/util/Map;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/w;",
            "Ly3/e;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw3/g2;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p2, Ly3/c;

    const/16 v1, 0x59

    if-nez v0, :cond_6

    instance-of v0, p2, Ly3/l0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p2, Ly3/b0;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lw3/g2;->H()I

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_1

    check-cast p2, Ly3/b0;

    invoke-virtual {p2}, Ly3/b0;->v0()Ly3/e;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lw3/m2;->E(Ly3/w;Ly3/e;Ljava/util/Map;Ljava/util/Set;)V

    invoke-virtual {p2}, Ly3/b0;->w0()Ly3/e;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lw3/m2;->E(Ly3/w;Ly3/e;Ljava/util/Map;Ljava/util/Set;)V

    goto :goto_1

    :cond_1
    instance-of p3, p2, Ly3/i0;

    if-eqz p3, :cond_5

    invoke-virtual {p1, p2}, Ly3/w;->r1(Ly3/e;)V

    check-cast p2, Ly3/i0;

    invoke-virtual {p2}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lw3/m2;->g0(ILjava/lang/String;)V

    iget-boolean p2, p0, Lw3/m2;->q:Z

    if-eqz p2, :cond_7

    const-string p2, "eval"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "arguments"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const-string p2, "msg.bad.id.strict"

    invoke-virtual {p0, p2, p1}, Lw3/m2;->B1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "msg.dup.param.strict"

    invoke-virtual {p0, p2, p1}, Lw3/m2;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Ly3/e;->m0()I

    move-result p3

    invoke-virtual {p2}, Ly3/e;->k0()I

    move-result p2

    const-string p4, "msg.no.parm"

    invoke-virtual {p0, p4, p3, p2}, Lw3/m2;->A1(Ljava/lang/String;II)V

    invoke-direct {p0}, Lw3/m2;->N0()Ly3/r;

    move-result-object p2

    invoke-virtual {p1, p2}, Ly3/w;->r1(Ly3/e;)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {p0, p2}, Lw3/m2;->O0(Ly3/e;)V

    invoke-virtual {p1, p2}, Ly3/w;->r1(Ly3/e;)V

    iget-object p1, p0, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {p1}, Ly3/s0;->b1()Ljava/lang/String;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p0, v1, p1, p4}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_1
    return-void
.end method

.method private static E0(Ly3/e;)I
    .locals 1

    invoke-virtual {p0}, Ly3/e;->m0()I

    move-result v0

    invoke-virtual {p0}, Ly3/e;->k0()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private E1(IZ)Ly3/e;
    .locals 12

    invoke-virtual {p0}, Lw3/m2;->H0()Z

    move-result v0

    const-string v1, "msg.bad.yield"

    const/4 v2, 0x4

    if-nez v0, :cond_1

    if-ne p1, v2, :cond_0

    const-string v0, "msg.bad.return"

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v0, Lw3/t3;->r:I

    iget v4, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    const/16 v5, 0xc8

    const/4 v6, 0x1

    const/16 v7, 0x49

    if-ne p1, v7, :cond_2

    iget-object v8, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v8}, Lw3/j;->c()I

    move-result v8

    if-lt v8, v5, :cond_2

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v8

    const/16 v9, 0x17

    if-ne v8, v9, :cond_2

    invoke-direct {p0}, Lw3/m2;->U()V

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    :goto_1
    invoke-direct {p0}, Lw3/m2;->n1()I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_5

    if-eqz v9, :cond_5

    if-eq v9, v6, :cond_5

    if-eq v9, v7, :cond_3

    const/16 v5, 0x54

    if-eq v9, v5, :cond_5

    const/16 v5, 0x56

    if-eq v9, v5, :cond_5

    const/16 v5, 0x58

    if-eq v9, v5, :cond_5

    const/16 v5, 0x5a

    if-eq v9, v5, :cond_5

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v6}, Lw3/j;->c()I

    move-result v6

    if-ge v6, v5, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v0

    invoke-static {v0}, Lw3/m2;->E0(Ly3/e;)I

    move-result v5

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v5, 0x0

    move-object v11, v5

    move v5, v0

    move-object v0, v11

    :goto_4
    iget v6, p0, Lw3/m2;->t:I

    const-string v7, ""

    if-ne p1, v2, :cond_7

    if-nez v0, :cond_6

    const/4 v2, 0x2

    :cond_6
    or-int p1, v6, v2

    iput p1, p0, Lw3/m2;->t:I

    new-instance p1, Ly3/q0;

    sub-int/2addr v5, v4

    invoke-direct {p1, v4, v5, v0}, Ly3/q0;-><init>(IILy3/e;)V

    iget p2, p0, Lw3/m2;->t:I

    const/4 v0, 0x6

    invoke-static {v6, p2, v0}, Lw3/m2;->c1(III)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "msg.return.inconsistent"

    invoke-virtual {p0, p2, v7, v4, v5}, Lw3/m2;->s(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lw3/m2;->H0()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0, v1}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_8
    iget p1, p0, Lw3/m2;->t:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lw3/m2;->t:I

    new-instance p1, Ly3/o1;

    sub-int/2addr v5, v4

    invoke-direct {p1, v4, v5, v0, v8}, Ly3/o1;-><init>(IILy3/e;Z)V

    invoke-virtual {p0}, Lw3/m2;->I1()V

    invoke-virtual {p0}, Lw3/m2;->H1()V

    if-nez p2, :cond_9

    new-instance p2, Ly3/s;

    invoke-direct {p2, p1}, Ly3/s;-><init>(Ly3/e;)V

    move-object p1, p2

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lw3/m2;->H0()Z

    move-result p2

    if-eqz p2, :cond_c

    iget p2, p0, Lw3/m2;->t:I

    const/16 v0, 0xc

    invoke-static {v6, p2, v0}, Lw3/m2;->c1(III)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lw3/m2;->r:Ly3/s0;

    check-cast p2, Ly3/w;

    invoke-virtual {p2}, Ly3/w;->A1()Z

    move-result p2

    if-nez p2, :cond_c

    iget-object p2, p0, Lw3/m2;->r:Ly3/s0;

    check-cast p2, Ly3/w;

    invoke-virtual {p2}, Ly3/w;->u1()Ly3/i0;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ly3/i0;->w0()I

    move-result v0

    if-nez v0, :cond_a

    goto :goto_6

    :cond_a
    const-string v0, "msg.generator.returns"

    invoke-virtual {p2}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lw3/m2;->n(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_b
    :goto_6
    const-string p2, "msg.anon.generator.returns"

    invoke-virtual {p0, p2, v7}, Lw3/m2;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_7
    invoke-virtual {p1, v3}, Lw3/g2;->a0(I)V

    return-object p1
.end method

.method private F()Ly3/e;
    .locals 6

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v0

    const/16 v1, 0x49

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v0, v2}, Lw3/m2;->E1(IZ)Ly3/e;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lw3/m2;->S()Ly3/e;

    move-result-object v0

    invoke-direct {p0}, Lw3/m2;->n1()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x5c

    if-gt v3, v1, :cond_4

    const/16 v3, 0x68

    if-gt v1, v3, :cond_4

    iget-boolean v2, p0, Lw3/m2;->p:Z

    if-eqz v2, :cond_2

    const-string v2, "msg.destruct.default.vals"

    invoke-virtual {p0, v2}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v2

    invoke-virtual {p0, v0}, Lw3/m2;->O0(Ly3/e;)V

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v3, Lw3/t3;->y:I

    new-instance v4, Ly3/d;

    invoke-direct {p0}, Lw3/m2;->F()Ly3/e;

    move-result-object v5

    invoke-direct {v4, v1, v0, v5, v3}, Ly3/d;-><init>(ILy3/e;Ly3/e;I)V

    if-eqz v2, :cond_3

    invoke-virtual {v4, v2}, Lw3/g2;->Z(Ly3/j;)V

    :cond_3
    move-object v0, v4

    goto :goto_1

    :cond_4
    const/16 v3, 0x54

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lw3/m2;->m:Ly3/j;

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/g2;->Z(Ly3/j;)V

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    const/16 v2, 0xa7

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0, v0}, Lw3/m2;->D(Ly3/e;)Ly3/e;

    move-result-object v0

    :cond_6
    :goto_1
    return-object v0
.end method

.method private F0()Ly3/a0;
    .locals 8

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x73

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->r:I

    new-instance v2, Ly3/a0;

    invoke-direct {v2, v1}, Ly3/a0;-><init>(I)V

    invoke-direct {p0}, Lw3/m2;->T()Lw3/m2$a;

    move-result-object v3

    invoke-direct {p0, v2}, Lw3/m2;->D0(Ly3/e;)Ly3/e;

    move-result-object v4

    const/16 v5, 0x74

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lw3/m2;->Q0(IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v5

    const/16 v7, 0xa4

    if-ne v5, v7, :cond_1

    iget-object v5, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly3/e;

    invoke-virtual {v2, v5}, Ly3/a0;->z0(Ly3/e;)V

    invoke-direct {p0}, Lw3/m2;->U()V

    :cond_1
    iget-object v5, p0, Lw3/m2;->h:Lw3/t3;

    iget v5, v5, Lw3/t3;->y:I

    sub-int/2addr v5, v1

    invoke-direct {p0}, Lw3/m2;->L1()Ly3/e;

    move-result-object v6

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    move-object v7, v6

    goto :goto_1

    :cond_3
    move-object v7, v4

    :goto_1
    invoke-static {v7}, Lw3/m2;->E0(Ly3/e;)I

    move-result v7

    sub-int/2addr v7, v1

    invoke-virtual {v2, v7}, Ly3/e;->r0(I)V

    iget-object v7, v3, Lw3/m2$a;->a:Ly3/e;

    invoke-virtual {v2, v7}, Ly3/a0;->y0(Ly3/e;)V

    iget v7, v3, Lw3/m2$a;->b:I

    sub-int/2addr v7, v1

    iget v3, v3, Lw3/m2$a;->c:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v7, v3}, Ly3/a0;->C0(II)V

    invoke-virtual {v2, v4}, Ly3/a0;->D0(Ly3/e;)V

    invoke-virtual {v2, v6}, Ly3/a0;->A0(Ly3/e;)V

    invoke-virtual {v2, v5}, Ly3/a0;->B0(I)V

    invoke-virtual {v2, v0}, Lw3/g2;->a0(I)V

    return-object v2
.end method

.method private F1(ILjava/lang/String;I)V
    .locals 0

    iput p1, p0, Lw3/m2;->y:I

    iput-object p2, p0, Lw3/m2;->z:Ljava/lang/String;

    iput p3, p0, Lw3/m2;->A:I

    return-void
.end method

.method private G()Ly3/e;
    .locals 5

    invoke-direct {p0}, Lw3/m2;->a1()I

    move-result v0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v1, Lw3/t3;->y:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x55

    if-eq v0, v1, :cond_0

    const-string v0, "msg.no.name.after.xmlAttr"

    invoke-virtual {p0, v0}, Lw3/m2;->z1(Ljava/lang/String;)V

    invoke-direct {p0}, Lw3/m2;->N0()Ly3/r;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v2, v0, v1}, Lw3/m2;->Y1(ILy3/i0;I)Ly3/g1;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0, v2, v4}, Lw3/m2;->t1(II)Ly3/e;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "*"

    iget v1, v1, Lw3/t3;->r:I

    invoke-direct {p0, v2, v0, v1}, Lw3/m2;->F1(ILjava/lang/String;I)V

    invoke-direct {p0, v2, v4}, Lw3/m2;->t1(II)Ly3/e;

    move-result-object v0

    return-object v0
.end method

.method private H(Ly3/e;)V
    .locals 4

    invoke-direct {p0}, Lw3/m2;->l1()I

    move-result v0

    invoke-virtual {p1}, Ly3/e;->m0()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v2, v0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_1

    const/16 v3, 0x58

    if-eq v2, v3, :cond_2

    const/high16 v2, 0x10000

    and-int/2addr v0, v2

    if-nez v0, :cond_0

    const-string p1, "msg.no.semi.stmt"

    invoke-virtual {p0, p1}, Lw3/m2;->z1(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lw3/m2;->b1(Ly3/e;)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->z:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ly3/e;->r0(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    invoke-static {p1}, Lw3/m2;->b1(Ly3/e;)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    invoke-direct {p0, v1, p1}, Lw3/m2;->U1(II)V

    :goto_1
    return-void
.end method

.method private I()Ly3/e;
    .locals 5

    invoke-direct {p0}, Lw3/m2;->p0()Ly3/e;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0xb

    invoke-direct {p0, v2, v1}, Lw3/m2;->Q0(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    new-instance v3, Ly3/b0;

    invoke-direct {p0}, Lw3/m2;->p0()Ly3/e;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private I0(ZI)Ly3/e;
    .locals 6

    new-instance v0, Ly3/g0;

    invoke-direct {v0, p2}, Ly3/g0;-><init>(I)V

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->r:I

    invoke-virtual {v0, v1}, Lw3/g2;->a0(I)V

    const/16 v1, 0x59

    const-string v2, "msg.no.paren.after.let"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ly3/g0;->T0(I)V

    :cond_0
    invoke-virtual {p0, v0}, Lw3/m2;->u1(Ly3/r0;)V

    :try_start_0
    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    const/16 v2, 0x9c

    invoke-direct {p0, v2, v1, p1}, Lw3/m2;->T1(IIZ)Ly3/b1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ly3/g0;->V0(Ly3/b1;)V

    const-string v1, "msg.no.paren.let"

    const/16 v4, 0x5a

    invoke-direct {p0, v4, v1, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ly3/g0;->U0(I)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    const/16 v4, 0x57

    if-ne v1, v4, :cond_2

    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    iget p1, p1, Lw3/t3;->y:I

    invoke-direct {p0}, Lw3/m2;->N1()Ly3/e;

    move-result-object v1

    const-string v4, "msg.no.curly.let"

    const/16 v5, 0x58

    invoke-direct {p0, v5, v4, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v3, Lw3/t3;->z:I

    sub-int/2addr v3, p1

    invoke-virtual {v1, v3}, Ly3/e;->r0(I)V

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    iget p1, p1, Lw3/t3;->z:I

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ly3/e;->r0(I)V

    invoke-virtual {v0, v1}, Ly3/g0;->S0(Ly3/e;)V

    invoke-virtual {v0, v2}, Lw3/g2;->d0(I)Lw3/g2;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v1

    invoke-static {v1}, Lw3/m2;->E0(Ly3/e;)I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {v0, v2}, Ly3/e;->r0(I)V

    invoke-virtual {v0, v1}, Ly3/g0;->S0(Ly3/e;)V

    if-eqz p1, :cond_4

    new-instance p1, Ly3/s;

    invoke-virtual {p0}, Lw3/m2;->H0()Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p1, v0, v3}, Ly3/s;-><init>(Ly3/e;Z)V

    invoke-virtual {v0}, Ly3/e;->C()I

    move-result p2

    invoke-virtual {p1, p2}, Lw3/g2;->a0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lw3/m2;->q1()V

    return-object p1

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lw3/m2;->q1()V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lw3/m2;->q1()V

    throw p1
.end method

.method private J()Ly3/e;
    .locals 5

    invoke-direct {p0}, Lw3/m2;->K()Ly3/e;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0x9

    invoke-direct {p0, v2, v1}, Lw3/m2;->Q0(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    new-instance v3, Ly3/b0;

    invoke-direct {p0}, Lw3/m2;->K()Ly3/e;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private J0()Ly3/e;
    .locals 6

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x9c

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v0, Lw3/t3;->r:I

    iget v0, v0, Lw3/t3;->y:I

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v3

    const/16 v4, 0x59

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0, v5, v0}, Lw3/m2;->I0(ZI)Ly3/e;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, v0, v5}, Lw3/m2;->T1(IIZ)Ly3/b1;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v2}, Lw3/g2;->a0(I)V

    return-object v0
.end method

.method private J1()Ly3/e;
    .locals 5

    invoke-direct {p0}, Lw3/m2;->q()Ly3/e;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lw3/m2;->U()V

    new-instance v3, Ly3/b0;

    invoke-direct {p0}, Lw3/m2;->q()Ly3/e;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    move-object v0, v3

    goto :goto_0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private K()Ly3/e;
    .locals 5

    invoke-direct {p0}, Lw3/m2;->I()Ly3/e;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {p0, v2, v1}, Lw3/m2;->Q0(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    new-instance v3, Ly3/b0;

    invoke-direct {p0}, Lw3/m2;->I()Ly3/e;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private K0(I)I
    .locals 4

    iget-object v0, p0, Lw3/m2;->e:[C

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-gtz p1, :cond_1

    return v2

    :cond_1
    array-length v3, v0

    if-lt p1, v3, :cond_2

    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    :cond_2
    add-int/2addr p1, v1

    if-ltz p1, :cond_3

    aget-char v3, v0, p1

    invoke-static {v3}, Lw3/u2;->A0(I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_3
    return v2
.end method

.method private L()Ly3/e;
    .locals 5

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x57

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    new-instance v1, Ly3/r0;

    invoke-direct {v1, v0}, Ly3/r0;-><init>(I)V

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->r:I

    invoke-virtual {v1, v2}, Lw3/g2;->a0(I)V

    invoke-virtual {p0, v1}, Lw3/m2;->u1(Ly3/r0;)V

    :try_start_0
    invoke-direct {p0, v1}, Lw3/m2;->O1(Ly3/e;)Ly3/e;

    const-string v2, "msg.no.brace.block"

    const/4 v3, 0x1

    const/16 v4, 0x58

    invoke-direct {p0, v4, v2, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->z:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ly3/e;->r0(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lw3/m2;->q1()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lw3/m2;->q1()V

    throw v0
.end method

.method private L1()Ly3/e;
    .locals 7

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0}, Lw3/m2;->M1()Ly3/e;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v3}, Lw3/j;->m()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ly3/e;->n0()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ly3/e;->m0()I

    move-result v3

    invoke-direct {p0, v3}, Lw3/m2;->K0(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    instance-of v4, v2, Ly3/q;

    if-eqz v4, :cond_0

    const-string v4, "msg.extra.trailing.semi"

    goto :goto_0

    :cond_0
    const-string v4, "msg.no.side.effects"

    :goto_0
    const-string v5, ""

    invoke-static {v2}, Lw3/m2;->b1(Ly3/e;)I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p0, v4, v5, v3, v6}, Lw3/m2;->s(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_1
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v3

    const/16 v4, 0xa4

    if-ne v3, v4, :cond_2

    invoke-virtual {v2}, Ly3/e;->C()I

    move-result v3

    iget-object v4, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly3/j;

    invoke-virtual {v4}, Ly3/e;->C()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly3/e;

    invoke-virtual {v2, v3}, Ly3/e;->q0(Ly3/e;)V

    invoke-direct {p0}, Lw3/m2;->U()V
    :try_end_0
    .catch Lw3/m2$b; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v2

    :catch_0
    :cond_3
    :goto_1
    invoke-direct {p0}, Lw3/m2;->n1()I

    move-result v2

    invoke-direct {p0}, Lw3/m2;->U()V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    if-eqz v2, :cond_4

    if-eq v2, v1, :cond_4

    const/16 v3, 0x54

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Ly3/q;

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    sub-int/2addr v2, v0

    invoke-direct {v1, v0, v2}, Ly3/q;-><init>(II)V

    return-object v1
.end method

.method private M()Ly3/h;
    .locals 7

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->r:I

    iget v2, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    invoke-direct {p0}, Lw3/m2;->n1()I

    move-result v3

    const/16 v4, 0x27

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lw3/m2;->Z()Ly3/i0;

    move-result-object v0

    invoke-static {v0}, Lw3/m2;->E0(Ly3/e;)I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v0

    move-object v0, v5

    :goto_0
    invoke-direct {p0}, Lw3/m2;->P0()Ly3/f0;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ly3/f0;->w0()Ly3/e0;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_5

    if-nez v0, :cond_5

    iget-object v4, p0, Lw3/m2;->x:Ljava/util/List;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lw3/m2;->x:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ly3/c0;

    goto :goto_3

    :cond_4
    :goto_2
    const-string v4, "msg.bad.break"

    sub-int v6, v3, v2

    invoke-virtual {p0, v4, v2, v6}, Lw3/m2;->A1(Ljava/lang/String;II)V

    :cond_5
    :goto_3
    new-instance v4, Ly3/h;

    sub-int/2addr v3, v2

    invoke-direct {v4, v2, v3}, Ly3/h;-><init>(II)V

    invoke-virtual {v4, v0}, Ly3/h;->F0(Ly3/i0;)V

    if-eqz v5, :cond_6

    invoke-virtual {v4, v5}, Ly3/h;->G0(Ly3/c0;)V

    :cond_6
    invoke-virtual {v4, v1}, Lw3/g2;->a0(I)V

    return-object v4
.end method

.method private M1()Ly3/e;
    .locals 5

    iget-object v0, p0, Lw3/m2;->o:Ly3/f0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly3/f0;->z0()Ly3/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lw3/m2;->o:Ly3/f0;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v1, Lw3/t3;->y:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    const/4 v2, 0x4

    if-eq v0, v2, :cond_10

    const/16 v2, 0x27

    if-eq v0, v2, :cond_e

    const/16 v2, 0x32

    if-eq v0, v2, :cond_d

    const/16 v2, 0x49

    if-eq v0, v2, :cond_10

    const/16 v2, 0x57

    if-eq v0, v2, :cond_c

    const/16 v2, 0x70

    if-eq v0, v2, :cond_b

    const/16 v2, 0x73

    if-eq v0, v2, :cond_a

    const/16 v2, 0x75

    if-eq v0, v2, :cond_9

    const/16 v2, 0x53

    if-eq v0, v2, :cond_8

    const/16 v2, 0x54

    if-eq v0, v2, :cond_7

    const/16 v3, 0x9c

    if-eq v0, v3, :cond_5

    const/16 v2, 0x9d

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    const/16 v2, 0xa3

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa4

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    iget v0, v1, Lw3/t3;->r:I

    new-instance v1, Ly3/s;

    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v2

    invoke-virtual {p0}, Lw3/m2;->H0()Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Ly3/s;-><init>(Ly3/e;Z)V

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lw3/m2;->q:Z

    if-eqz v0, :cond_1

    const-string v0, "msg.no.with.strict"

    invoke-virtual {p0, v0}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lw3/m2;->X1()Ly3/e1;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lw3/m2;->V()Ly3/l;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0}, Lw3/m2;->M()Ly3/h;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lw3/m2;->u0()Ly3/h0;

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-direct {p0}, Lw3/m2;->m0()Ly3/n;

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-direct {p0}, Lw3/m2;->W1()Ly3/d1;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-direct {p0}, Lw3/m2;->f0()Ly3/e;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly3/e;

    return-object v0

    :cond_3
    invoke-direct {p0}, Lw3/m2;->U()V

    new-instance v1, Ly3/d0;

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v2, Lw3/t3;->y:I

    iget v2, v2, Lw3/t3;->z:I

    sub-int/2addr v2, v3

    invoke-direct {v1, v3, v2, v0}, Ly3/d0;-><init>(III)V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->r:I

    :goto_0
    invoke-virtual {v1, v0}, Lw3/g2;->a0(I)V

    goto :goto_1

    :cond_4
    :pswitch_7
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->r:I

    iget v2, p0, Lw3/m2;->j:I

    iget v0, v0, Lw3/t3;->y:I

    invoke-direct {p0, v2, v0, v3}, Lw3/m2;->T1(IIZ)Ly3/b1;

    move-result-object v0

    invoke-virtual {v0, v1}, Lw3/g2;->a0(I)V

    move-object v1, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lw3/m2;->J0()Ly3/e;

    move-result-object v1

    instance-of v0, v1, Ly3/b1;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v0

    if-ne v0, v2, :cond_6

    goto :goto_1

    :cond_6
    return-object v1

    :cond_7
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    new-instance v1, Ly3/q;

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->z:I

    sub-int/2addr v2, v0

    invoke-direct {v1, v0, v2}, Ly3/q;-><init>(II)V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->r:I

    invoke-virtual {v1, v0}, Lw3/g2;->a0(I)V

    return-object v1

    :cond_8
    invoke-direct {p0}, Lw3/m2;->R1()Ly3/y0;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-direct {p0}, Lw3/m2;->P1()Ly3/v0;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-direct {p0}, Lw3/m2;->F0()Ly3/a0;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-direct {p0}, Lw3/m2;->U()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lw3/m2;->w0(I)Ly3/w;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-direct {p0}, Lw3/m2;->L()Ly3/e;

    move-result-object v0

    return-object v0

    :cond_d
    invoke-direct {p0}, Lw3/m2;->Q1()Ly3/x0;

    move-result-object v1

    goto :goto_1

    :cond_e
    invoke-direct {p0}, Lw3/m2;->Z0()Ly3/e;

    move-result-object v1

    instance-of v0, v1, Ly3/s;

    if-eqz v0, :cond_f

    goto :goto_1

    :cond_f
    return-object v1

    :cond_10
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lw3/m2;->E1(IZ)Ly3/e;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v1}, Lw3/m2;->H(Ly3/e;)V

    return-object v1

    :cond_11
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->N0()Ly3/r;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method

.method private N0()Ly3/r;
    .locals 3

    new-instance v0, Ly3/r;

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v1, Lw3/t3;->y:I

    iget v1, v1, Lw3/t3;->z:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v2, v1}, Ly3/r;-><init>(II)V

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->r:I

    invoke-virtual {v0, v1}, Lw3/g2;->a0(I)V

    return-object v0
.end method

.method private N1()Ly3/e;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lw3/m2;->O1(Ly3/e;)Ly3/e;

    move-result-object v0

    return-object v0
.end method

.method private O(Ly3/a1;)V
    .locals 2

    invoke-virtual {p1}, Ly3/a1;->v0()Ly3/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw3/m2;->y1(Ly3/e;)Ly3/e;

    move-result-object v0

    invoke-virtual {v0}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x24

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-eq v0, v1, :cond_1

    const/16 v1, 0x26

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result p1

    const/16 v0, 0x6d

    if-ne p1, v0, :cond_0

    const-string p1, "msg.bad.incr"

    goto :goto_0

    :cond_0
    const-string p1, "msg.bad.decr"

    :goto_0
    invoke-virtual {p0, p1}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private O1(Ly3/e;)Ly3/e;
    .locals 3

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x57

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->i()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ly3/g;

    invoke-direct {p1, v0}, Ly3/g;-><init>(I)V

    :goto_0
    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->r:I

    invoke-virtual {p1, v1}, Lw3/g2;->a0(I)V

    :goto_1
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    if-lez v1, :cond_2

    const/16 v2, 0x58

    if-eq v1, v2, :cond_2

    invoke-direct {p0}, Lw3/m2;->L1()Ly3/e;

    move-result-object v1

    invoke-virtual {p1, v1}, Ly3/e;->e0(Ly3/e;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ly3/e;->r0(I)V

    return-object p1
.end method

.method private P(Ly3/e;)V
    .locals 3

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x27

    const-string v2, "eval"

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Ly3/i0;

    invoke-virtual {v0}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    check-cast p1, Ly3/o0;

    invoke-virtual {p1}, Ly3/o0;->B0()Ly3/i0;

    move-result-object p1

    invoke-virtual {p1}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lw3/m2;->I1()V

    :cond_2
    return-void
.end method

.method private P0()Ly3/f0;
    .locals 3

    invoke-direct {p0}, Lw3/m2;->n1()I

    move-result v0

    const/16 v1, 0x27

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->v:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v1}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ly3/f0;

    :cond_0
    if-nez v2, :cond_1

    const-string v0, "msg.undef.label"

    invoke-virtual {p0, v0}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method

.method private P1()Ly3/v0;
    .locals 14

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x75

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    new-instance v1, Ly3/v0;

    invoke-direct {v1, v0}, Ly3/v0;-><init>(I)V

    const/16 v2, 0x59

    const-string v3, "msg.no.paren.switch"

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ly3/v0;->I0(I)V

    :cond_1
    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->r:I

    invoke-virtual {v1, v2}, Lw3/g2;->a0(I)V

    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ly3/v0;->H0(Ly3/e;)V

    invoke-direct {p0, v1}, Lw3/m2;->o0(Ly3/v0;)V

    :try_start_0
    const-string v2, "msg.no.paren.after.switch"

    const/16 v3, 0x5a

    invoke-direct {p0, v3, v2, v4}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ly3/v0;->J0(I)V

    :cond_2
    const-string v2, "msg.no.brace.switch"

    const/16 v3, 0x57

    invoke-direct {p0, v3, v2, v4}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0}, Lw3/m2;->a1()I

    move-result v3

    iget-object v5, p0, Lw3/m2;->h:Lw3/t3;

    iget v6, v5, Lw3/t3;->y:I

    iget v7, v5, Lw3/t3;->r:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x58

    if-eq v3, v8, :cond_a

    const/16 v5, 0xa4

    if-eq v3, v5, :cond_9

    const-string v9, "msg.no.colon.case"

    const/16 v10, 0x6a

    const/16 v11, 0x77

    const/16 v12, 0x76

    if-eq v3, v12, :cond_5

    if-eq v3, v11, :cond_3

    :try_start_1
    const-string v0, "msg.bad.switch"

    invoke-virtual {p0, v0}, Lw3/m2;->z1(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    if-eqz v2, :cond_4

    const-string v2, "msg.double.switch.default"

    invoke-virtual {p0, v2}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v10, v9, v4}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v3

    invoke-direct {p0, v10, v9, v4}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-object v13, v3

    move v3, v2

    move-object v2, v13

    :goto_1
    new-instance v9, Ly3/u0;

    invoke-direct {v9, v6}, Ly3/u0;-><init>(I)V

    invoke-virtual {v9, v2}, Ly3/u0;->y0(Ly3/e;)V

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->z:I

    sub-int/2addr v2, v0

    invoke-virtual {v9, v2}, Ly3/e;->r0(I)V

    invoke-virtual {v9, v7}, Lw3/g2;->a0(I)V

    :goto_2
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v2

    if-eq v2, v8, :cond_8

    if-eq v2, v12, :cond_8

    if-eq v2, v11, :cond_8

    if-eqz v2, :cond_8

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/j;

    invoke-virtual {v9}, Ly3/e;->j0()Ly3/e;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {v2}, Ly3/e;->C()I

    move-result v6

    invoke-virtual {v9}, Ly3/e;->C()I

    move-result v7

    if-ne v6, v7, :cond_6

    invoke-virtual {v9, v2}, Ly3/e;->q0(Ly3/e;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v9, v2}, Ly3/u0;->v0(Ly3/e;)V

    :goto_3
    invoke-direct {p0}, Lw3/m2;->U()V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lw3/m2;->L1()Ly3/e;

    move-result-object v2

    invoke-virtual {v9, v2}, Ly3/u0;->v0(Ly3/e;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v1, v9}, Ly3/v0;->E0(Ly3/u0;)V

    move v2, v3

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly3/e;

    invoke-virtual {v1, v3}, Ly3/e;->e0(Ly3/e;)V

    goto/16 :goto_0

    :cond_a
    iget v2, v5, Lw3/t3;->z:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ly3/e;->r0(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-direct {p0}, Lw3/m2;->r0()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lw3/m2;->r0()V

    throw v0
.end method

.method private Q0(IZ)Z
    .locals 2

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v0

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lw3/m2;->U()V

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-direct {p0}, Lw3/m2;->U()V

    const/4 p1, 0x1

    return p1
.end method

.method private Q1()Ly3/x0;
    .locals 4

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->r:I

    invoke-direct {p0}, Lw3/m2;->n1()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string v2, "msg.bad.throw.eol"

    invoke-virtual {p0, v2}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v2

    new-instance v3, Ly3/x0;

    invoke-direct {v3, v1, v2}, Ly3/x0;-><init>(ILy3/e;)V

    invoke-virtual {v3, v0}, Lw3/g2;->a0(I)V

    return-object v3
.end method

.method private R()Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ts.cursor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ts.tokenBeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lw3/m2;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/v0;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private R0(Z)Ly3/e;
    .locals 8

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->r:I

    const/16 v2, 0x1e

    if-eq v0, v2, :cond_0

    invoke-direct {p0}, Lw3/m2;->r1()Ly3/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    new-instance v2, Ly3/j0;

    invoke-direct {v2, v0}, Ly3/j0;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lw3/m2;->R0(Z)Ly3/e;

    move-result-object v3

    invoke-static {v3}, Lw3/m2;->E0(Ly3/e;)I

    move-result v4

    invoke-virtual {v2, v3}, Ly3/v;->C0(Ly3/e;)V

    const/16 v3, 0x59

    const/4 v5, 0x1

    invoke-direct {p0, v3, v5}, Lw3/m2;->Q0(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v3, Lw3/t3;->y:I

    invoke-direct {p0}, Lw3/m2;->z()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/high16 v7, 0x10000

    if-le v6, v7, :cond_1

    const-string v6, "msg.too.many.constructor.args"

    invoke-virtual {p0, v6}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_1
    iget-object v6, p0, Lw3/m2;->h:Lw3/t3;

    iget v7, v6, Lw3/t3;->y:I

    iget v6, v6, Lw3/t3;->z:I

    if-eqz v4, :cond_2

    invoke-virtual {v2, v4}, Ly3/v;->y0(Ljava/util/List;)V

    :cond_2
    sub-int/2addr v3, v0

    sub-int/2addr v7, v0

    invoke-virtual {v2, v3, v7}, Ly3/v;->A0(II)V

    move v4, v6

    :cond_3
    const/16 v3, 0x57

    invoke-direct {p0, v3, v5}, Lw3/m2;->Q0(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lw3/m2;->d1()Ly3/l0;

    move-result-object v3

    invoke-static {v3}, Lw3/m2;->E0(Ly3/e;)I

    move-result v4

    invoke-virtual {v2, v3}, Ly3/j0;->E0(Ly3/l0;)V

    :cond_4
    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ly3/e;->r0(I)V

    move-object v0, v2

    :goto_0
    invoke-virtual {v0, v1}, Lw3/g2;->a0(I)V

    invoke-direct {p0, p1, v0}, Lw3/m2;->S0(ZLy3/e;)Ly3/e;

    move-result-object p1

    return-object p1
.end method

.method private R1()Ly3/y0;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lw3/m2;->j:I

    const/16 v2, 0x53

    if-eq v1, v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct/range {p0 .. p0}, Lw3/m2;->U()V

    invoke-direct/range {p0 .. p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v1

    iget-object v2, v0, Lw3/m2;->h:Lw3/t3;

    iget v3, v2, Lw3/t3;->y:I

    iget v2, v2, Lw3/t3;->r:I

    new-instance v4, Ly3/y0;

    invoke-direct {v4, v3}, Ly3/y0;-><init>(I)V

    :goto_0
    invoke-direct/range {p0 .. p0}, Lw3/m2;->m1()I

    move-result v5

    const/16 v6, 0xa4

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, v0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly3/j;

    invoke-virtual {v4, v5}, Ly3/e;->q0(Ly3/e;)V

    invoke-direct/range {p0 .. p0}, Lw3/m2;->U()V

    goto :goto_0

    :cond_1
    const/16 v8, 0x57

    if-eq v5, v8, :cond_2

    const-string v5, "msg.no.brace.try"

    invoke-virtual {v0, v5}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_2
    invoke-direct {v0, v4}, Lw3/m2;->D0(Ly3/e;)Ly3/e;

    move-result-object v5

    invoke-static {v5}, Lw3/m2;->E0(Ly3/e;)I

    move-result v9

    :goto_1
    invoke-direct/range {p0 .. p0}, Lw3/m2;->m1()I

    move-result v10

    if-ne v10, v6, :cond_3

    iget-object v10, v0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ly3/j;

    invoke-virtual {v4, v10}, Ly3/e;->q0(Ly3/e;)V

    invoke-direct/range {p0 .. p0}, Lw3/m2;->U()V

    goto :goto_1

    :cond_3
    const/16 v6, 0x7f

    if-ne v10, v6, :cond_f

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_2
    invoke-direct {v0, v6, v7}, Lw3/m2;->Q0(IZ)Z

    move-result v15

    if-eqz v15, :cond_e

    iget-object v9, v0, Lw3/m2;->h:Lw3/t3;

    iget v9, v9, Lw3/t3;->r:I

    if-eqz v10, :cond_4

    const-string v15, "msg.catch.unreachable"

    invoke-virtual {v0, v15}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_4
    iget-object v15, v0, Lw3/m2;->h:Lw3/t3;

    iget v15, v15, Lw3/t3;->y:I

    const/16 v6, 0x59

    const-string v12, "msg.no.paren.catch"

    invoke-direct {v0, v6, v12, v7}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v0, Lw3/m2;->h:Lw3/t3;

    iget v6, v6, Lw3/t3;->y:I

    goto :goto_3

    :cond_5
    const/4 v6, -0x1

    :goto_3
    const/16 v12, 0x27

    const-string v11, "msg.bad.catchcond"

    invoke-direct {v0, v12, v11, v7}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    invoke-direct/range {p0 .. p0}, Lw3/m2;->Z()Ly3/i0;

    move-result-object v12

    invoke-direct/range {p0 .. p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v13

    if-eqz v13, :cond_6

    invoke-virtual {v12, v13}, Lw3/g2;->Z(Ly3/j;)V

    :cond_6
    invoke-virtual {v12}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v13

    iget-boolean v8, v0, Lw3/m2;->q:Z

    if-eqz v8, :cond_8

    const-string v8, "eval"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "arguments"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    const-string v8, "msg.bad.id.strict"

    invoke-virtual {v0, v8, v13}, Lw3/m2;->B1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 v8, 0x73

    invoke-direct {v0, v8, v7}, Lw3/m2;->Q0(IZ)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, v0, Lw3/m2;->h:Lw3/t3;

    iget v8, v8, Lw3/t3;->y:I

    invoke-direct/range {p0 .. p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v13

    move/from16 v17, v10

    goto :goto_4

    :cond_9
    const/4 v8, -0x1

    const/4 v13, 0x0

    const/16 v17, 0x1

    :goto_4
    const/16 v10, 0x5a

    invoke-direct {v0, v10, v11, v7}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v0, Lw3/m2;->h:Lw3/t3;

    iget v10, v10, Lw3/t3;->y:I

    goto :goto_5

    :cond_a
    const/4 v10, -0x1

    :goto_5
    const-string v11, "msg.no.brace.catchblock"

    move-object/from16 v18, v1

    const/16 v1, 0x57

    invoke-direct {v0, v1, v11, v7}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    invoke-direct/range {p0 .. p0}, Lw3/m2;->N1()Ly3/e;

    move-result-object v11

    check-cast v11, Ly3/g;

    invoke-static {v11}, Lw3/m2;->E0(Ly3/e;)I

    move-result v16

    new-instance v1, Ly3/i;

    invoke-direct {v1, v15}, Ly3/i;-><init>(I)V

    invoke-virtual {v1, v12}, Ly3/i;->C0(Ly3/i0;)V

    invoke-virtual {v1, v13}, Ly3/i;->z0(Ly3/e;)V

    invoke-virtual {v1, v11}, Ly3/i;->y0(Ly3/g;)V

    const/4 v11, -0x1

    if-eq v8, v11, :cond_b

    sub-int/2addr v8, v15

    invoke-virtual {v1, v8}, Ly3/i;->A0(I)V

    :cond_b
    invoke-virtual {v1, v6, v10}, Ly3/i;->B0(II)V

    invoke-virtual {v1, v9}, Lw3/g2;->a0(I)V

    const/16 v6, 0x58

    const-string v8, "msg.no.brace.after.body"

    invoke-direct {v0, v6, v8, v7}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lw3/m2;->h:Lw3/t3;

    iget v6, v6, Lw3/t3;->z:I

    move v9, v6

    goto :goto_6

    :cond_c
    move/from16 v9, v16

    :goto_6
    sub-int v6, v9, v15

    invoke-virtual {v1, v6}, Ly3/e;->r0(I)V

    if-nez v14, :cond_d

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    :cond_d
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v10, v17

    move-object/from16 v1, v18

    const/16 v6, 0x7f

    const/16 v8, 0x57

    goto/16 :goto_2

    :cond_e
    move-object/from16 v18, v1

    const/16 v1, 0x80

    goto :goto_7

    :cond_f
    move-object/from16 v18, v1

    const/16 v1, 0x80

    if-eq v10, v1, :cond_10

    const-string v6, "msg.try.no.catchfinally"

    invoke-direct {v0, v1, v6, v7}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    :cond_10
    const/4 v14, 0x0

    :goto_7
    invoke-direct {v0, v1, v7}, Lw3/m2;->Q0(IZ)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lw3/m2;->h:Lw3/t3;

    iget v11, v1, Lw3/t3;->y:I

    invoke-direct/range {p0 .. p0}, Lw3/m2;->L1()Ly3/e;

    move-result-object v12

    invoke-static {v12}, Lw3/m2;->E0(Ly3/e;)I

    move-result v9

    goto :goto_8

    :cond_11
    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_8
    sub-int/2addr v9, v3

    invoke-virtual {v4, v9}, Ly3/e;->r0(I)V

    invoke-virtual {v4, v5}, Ly3/y0;->C0(Ly3/e;)V

    invoke-virtual {v4, v14}, Ly3/y0;->z0(Ljava/util/List;)V

    invoke-virtual {v4, v12}, Ly3/y0;->A0(Ly3/e;)V

    const/4 v1, -0x1

    if-eq v11, v1, :cond_12

    sub-int/2addr v11, v3

    invoke-virtual {v4, v11}, Ly3/y0;->B0(I)V

    :cond_12
    invoke-virtual {v4, v2}, Lw3/g2;->a0(I)V

    if-eqz v18, :cond_13

    move-object/from16 v1, v18

    invoke-virtual {v4, v1}, Lw3/g2;->Z(Ly3/j;)V

    :cond_13
    return-object v4
.end method

.method private S()Ly3/e;
    .locals 9

    invoke-direct {p0}, Lw3/m2;->f1()Ly3/e;

    move-result-object v0

    const/16 v1, 0x69

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lw3/m2;->Q0(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v1, Lw3/t3;->r:I

    iget v1, v1, Lw3/t3;->y:I

    iget-boolean v4, p0, Lw3/m2;->u:Z

    const/4 v5, 0x0

    iput-boolean v5, p0, Lw3/m2;->u:Z

    :try_start_0
    invoke-direct {p0}, Lw3/m2;->F()Ly3/e;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v4, p0, Lw3/m2;->u:Z

    const/16 v4, 0x6a

    const-string v6, "msg.no.colon.cond"

    invoke-direct {p0, v4, v6, v2}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-direct {p0}, Lw3/m2;->F()Ly3/e;

    move-result-object v4

    invoke-virtual {v0}, Ly3/e;->m0()I

    move-result v6

    invoke-static {v4}, Lw3/m2;->E0(Ly3/e;)I

    move-result v7

    sub-int/2addr v7, v6

    new-instance v8, Ly3/k;

    invoke-direct {v8, v6, v7}, Ly3/k;-><init>(II)V

    invoke-virtual {v8, v3}, Lw3/g2;->a0(I)V

    invoke-virtual {v8, v0}, Ly3/k;->B0(Ly3/e;)V

    invoke-virtual {v8, v5}, Ly3/k;->C0(Ly3/e;)V

    invoke-virtual {v8, v4}, Ly3/k;->z0(Ly3/e;)V

    sub-int/2addr v1, v6

    invoke-virtual {v8, v1}, Ly3/k;->A0(I)V

    sub-int/2addr v2, v6

    invoke-virtual {v8, v2}, Ly3/k;->y0(I)V

    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    iput-boolean v4, p0, Lw3/m2;->u:Z

    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private S0(ZLy3/e;)Ly3/e;
    .locals 9

    if-nez p2, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-virtual {p2}, Ly3/e;->m0()I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    const/16 v2, 0x55

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v2, :cond_9

    const/16 v2, 0x59

    const/high16 v5, 0x10000

    if-eq v1, v2, :cond_6

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_5

    const/16 v2, 0x92

    if-eq v1, v2, :cond_5

    const/16 v2, 0x95

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa4

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p0, Lw3/m2;->i:I

    invoke-direct {p0, v1}, Lw3/m2;->o1(I)I

    iget v1, p0, Lw3/m2;->i:I

    and-int v3, v1, v5

    if-eqz v3, :cond_2

    move v2, v1

    :cond_2
    iput v2, p0, Lw3/m2;->i:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v1, Lw3/t3;->y:I

    iget v1, v1, Lw3/t3;->r:I

    invoke-direct {p0}, Lw3/m2;->V0()V

    invoke-virtual {p0}, Lw3/m2;->I1()V

    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v5

    invoke-static {v5}, Lw3/m2;->E0(Ly3/e;)I

    move-result v6

    const/16 v7, 0x5a

    const-string v8, "msg.no.paren"

    invoke-direct {p0, v7, v8, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v4, v3, Lw3/t3;->y:I

    iget v6, v3, Lw3/t3;->z:I

    :cond_4
    new-instance v3, Ly3/f1;

    sub-int/2addr v6, v0

    invoke-direct {v3, v0, v6}, Ly3/f1;-><init>(II)V

    invoke-virtual {v3, p2}, Ly3/b0;->x0(Ly3/e;)V

    invoke-virtual {v3, v5}, Ly3/b0;->A0(Ly3/e;)V

    invoke-virtual {v3, v2}, Ly3/b0;->z0(I)V

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Ly3/f1;->B0(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->r:I

    invoke-direct {p0, v1, p2}, Lw3/m2;->s1(ILy3/e;)Ly3/e;

    move-result-object p2

    invoke-virtual {p2, v2}, Lw3/g2;->a0(I)V

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    :goto_1
    return-object p2

    :cond_7
    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->r:I

    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0, p2}, Lw3/m2;->P(Ly3/e;)V

    new-instance v2, Ly3/v;

    invoke-direct {v2, v0}, Ly3/v;-><init>(I)V

    invoke-virtual {v2, p2}, Ly3/v;->C0(Ly3/e;)V

    invoke-virtual {v2, v1}, Lw3/g2;->a0(I)V

    iget-object p2, p0, Lw3/m2;->h:Lw3/t3;

    iget p2, p2, Lw3/t3;->y:I

    sub-int/2addr p2, v0

    invoke-virtual {v2, p2}, Ly3/v;->z0(I)V

    invoke-direct {p0}, Lw3/m2;->z()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_8

    const-string v1, "msg.too.many.function.args"

    invoke-virtual {p0, v1}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2, p2}, Ly3/v;->y0(Ljava/util/List;)V

    iget-object p2, p0, Lw3/m2;->h:Lw3/t3;

    iget p2, p2, Lw3/t3;->y:I

    sub-int/2addr p2, v0

    invoke-virtual {v2, p2}, Ly3/v;->B0(I)V

    iget-object p2, p0, Lw3/m2;->h:Lw3/t3;

    iget p2, p2, Lw3/t3;->z:I

    sub-int/2addr p2, v0

    invoke-virtual {v2, p2}, Ly3/e;->r0(I)V

    move-object p2, v2

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v1, Lw3/t3;->y:I

    iget v1, v1, Lw3/t3;->r:I

    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v5

    invoke-static {v5}, Lw3/m2;->E0(Ly3/e;)I

    move-result v6

    const/16 v7, 0x56

    const-string v8, "msg.no.bracket.index"

    invoke-direct {p0, v7, v8, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v4, v3, Lw3/t3;->y:I

    iget v6, v3, Lw3/t3;->z:I

    :cond_a
    new-instance v3, Ly3/o;

    sub-int/2addr v6, v0

    invoke-direct {v3, v0, v6}, Ly3/o;-><init>(II)V

    invoke-virtual {v3, p2}, Ly3/o;->z0(Ly3/e;)V

    invoke-virtual {v3, v5}, Ly3/o;->x0(Ly3/e;)V

    invoke-virtual {v3, v2, v4}, Ly3/o;->y0(II)V

    :goto_2
    invoke-virtual {v3, v1}, Lw3/g2;->a0(I)V

    move-object p2, v3

    goto/16 :goto_0
.end method

.method private S1()Ly3/e;
    .locals 6

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v0

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0, v0}, Lw3/m2;->o1(I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->r:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    const/16 v2, 0xe

    const/16 v3, 0x6e

    const/16 v4, 0x6d

    const/4 v5, 0x1

    if-eq v0, v2, :cond_6

    const/16 v2, 0x81

    if-eq v0, v2, :cond_5

    const/16 v2, 0x15

    if-eq v0, v2, :cond_4

    const/16 v2, 0x16

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0}, Lw3/m2;->U()V

    new-instance v2, Ly3/a1;

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v3, Lw3/t3;->y:I

    invoke-direct {p0, v5}, Lw3/m2;->R0(Z)Ly3/e;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Ly3/a1;-><init>(IILy3/e;)V

    invoke-virtual {v2, v1}, Lw3/g2;->a0(I)V

    invoke-direct {p0, v2}, Lw3/m2;->O(Ly3/a1;)V

    return-object v2

    :cond_2
    invoke-direct {p0}, Lw3/m2;->U()V

    new-instance v2, Ly3/z0;

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v3, Lw3/t3;->y:I

    invoke-direct {p0}, Lw3/m2;->S1()Ly3/e;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Ly3/z0;-><init>(IILy3/e;)V

    invoke-virtual {v2, v1}, Lw3/g2;->a0(I)V

    return-object v2

    :cond_3
    invoke-direct {p0}, Lw3/m2;->U()V

    new-instance v0, Ly3/z0;

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    invoke-direct {p0}, Lw3/m2;->S1()Ly3/e;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-direct {v0, v4, v2, v3}, Ly3/z0;-><init>(IILy3/e;)V

    invoke-virtual {v0, v1}, Lw3/g2;->a0(I)V

    return-object v0

    :cond_4
    invoke-direct {p0}, Lw3/m2;->U()V

    new-instance v0, Ly3/z0;

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    invoke-direct {p0}, Lw3/m2;->S1()Ly3/e;

    move-result-object v3

    const/16 v4, 0x1c

    invoke-direct {v0, v4, v2, v3}, Ly3/z0;-><init>(IILy3/e;)V

    invoke-virtual {v0, v1}, Lw3/g2;->a0(I)V

    return-object v0

    :cond_5
    invoke-direct {p0}, Lw3/m2;->U()V

    new-instance v2, Ly3/z0;

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v3, Lw3/t3;->y:I

    invoke-direct {p0}, Lw3/m2;->S1()Ly3/e;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Ly3/z0;-><init>(IILy3/e;)V

    invoke-virtual {v2, v1}, Lw3/g2;->a0(I)V

    return-object v2

    :cond_6
    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->n()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->Z1()Ly3/e;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lw3/m2;->S0(ZLy3/e;)Ly3/e;

    move-result-object v0

    return-object v0

    :cond_7
    :goto_0
    invoke-direct {p0, v5}, Lw3/m2;->R0(Z)Ly3/e;

    move-result-object v0

    invoke-direct {p0}, Lw3/m2;->n1()I

    move-result v2

    if-eq v2, v4, :cond_8

    if-eq v2, v3, :cond_8

    return-object v0

    :cond_8
    invoke-direct {p0}, Lw3/m2;->U()V

    new-instance v3, Ly3/a1;

    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    iget v4, v4, Lw3/t3;->y:I

    invoke-direct {v3, v2, v4, v0, v5}, Ly3/a1;-><init>(IILy3/e;Z)V

    invoke-virtual {v3, v1}, Lw3/g2;->a0(I)V

    invoke-direct {p0, v3}, Lw3/m2;->O(Ly3/a1;)V

    return-object v3

    :cond_9
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->N0()Ly3/r;

    move-result-object v0

    return-object v0
.end method

.method private T()Lw3/m2$a;
    .locals 5

    new-instance v0, Lw3/m2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw3/m2$a;-><init>(Lw3/l2;)V

    const/16 v1, 0x59

    const-string v2, "msg.no.paren.cond"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    iput v1, v0, Lw3/m2$a;->b:I

    :cond_0
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v1

    iput-object v1, v0, Lw3/m2$a;->a:Ly3/e;

    const/16 v1, 0x5a

    const-string v2, "msg.no.paren.after.cond"

    invoke-direct {p0, v1, v2, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    iput v1, v0, Lw3/m2$a;->c:I

    :cond_1
    iget-object v1, v0, Lw3/m2$a;->a:Ly3/e;

    instance-of v2, v1, Ly3/d;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ly3/e;->m0()I

    move-result v1

    iget-object v2, v0, Lw3/m2$a;->a:Ly3/e;

    invoke-virtual {v2}, Ly3/e;->k0()I

    move-result v2

    const-string v3, "msg.equal.as.assign"

    const-string v4, ""

    invoke-virtual {p0, v3, v4, v1, v2}, Lw3/m2;->s(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_2
    return-object v0
.end method

.method private T0(ILy3/e;I)Ly3/m0;
    .locals 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lw3/m2;->w0(I)Ly3/w;

    move-result-object v1

    invoke-virtual {v1}, Ly3/w;->u1()Ly3/i0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ly3/i0;->w0()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "msg.bad.prop"

    invoke-virtual {p0, v2}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ly3/m0;

    invoke-direct {v2, p1}, Ly3/m0;-><init>(I)V

    if-eq p3, v0, :cond_3

    const/4 v0, 0x4

    if-eq p3, v0, :cond_2

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ly3/m0;->G0()V

    invoke-virtual {v1}, Ly3/w;->G1()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ly3/m0;->H0()V

    invoke-virtual {v1}, Ly3/w;->H1()V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ly3/m0;->F0()V

    invoke-virtual {v1}, Ly3/w;->F1()V

    :goto_0
    invoke-static {v1}, Lw3/m2;->E0(Ly3/e;)I

    move-result p3

    invoke-virtual {v2, p2}, Ly3/b0;->x0(Ly3/e;)V

    invoke-virtual {v2, v1}, Ly3/b0;->A0(Ly3/e;)V

    sub-int/2addr p3, p1

    invoke-virtual {v2, p3}, Ly3/e;->r0(I)V

    return-object v2
.end method

.method private T1(IIZ)Ly3/b1;
    .locals 11

    new-instance v0, Ly3/b1;

    invoke-direct {v0, p2}, Ly3/b1;-><init>(I)V

    invoke-virtual {v0, p1}, Ly3/b1;->d0(I)Lw3/g2;

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->r:I

    invoke-virtual {v0, v1}, Lw3/g2;->a0(I)V

    invoke-direct {p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lw3/g2;->Z(Ly3/j;)V

    :cond_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v2, Lw3/t3;->y:I

    iget v2, v2, Lw3/t3;->z:I

    const/16 v4, 0x55

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v4, :cond_4

    const/16 v4, 0x57

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x27

    const-string v4, "msg.bad.var"

    invoke-direct {p0, v1, v4, v5}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    invoke-direct {p0}, Lw3/m2;->Z()Ly3/i0;

    move-result-object v1

    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v4}, Lw3/t3;->m()I

    move-result v4

    invoke-virtual {v1, v4}, Lw3/g2;->a0(I)V

    iget-boolean v4, p0, Lw3/m2;->q:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v4}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v4

    const-string v7, "eval"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v7}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v7

    const-string v8, "arguments"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const-string v7, "msg.bad.id.strict"

    invoke-virtual {p0, v7, v4}, Lw3/m2;->B1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v4}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v4

    iget-boolean v7, p0, Lw3/m2;->u:Z

    invoke-virtual {p0, p1, v4, v7}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    move v4, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0}, Lw3/m2;->l0()Ly3/e;

    move-result-object v1

    invoke-static {v1}, Lw3/m2;->E0(Ly3/e;)I

    move-result v2

    instance-of v4, v1, Ly3/m;

    if-nez v4, :cond_5

    const-string v4, "msg.bad.assign.left"

    sub-int v7, v2, v3

    invoke-virtual {p0, v4, v3, v7}, Lw3/m2;->A1(Ljava/lang/String;II)V

    :cond_5
    invoke-virtual {p0, v1}, Lw3/m2;->O0(Ly3/e;)V

    move v4, v2

    move-object v2, v6

    :goto_1
    iget-object v7, p0, Lw3/m2;->h:Lw3/t3;

    iget v7, v7, Lw3/t3;->r:I

    invoke-direct {p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v8

    const/16 v9, 0x5c

    invoke-direct {p0, v9, v5}, Lw3/m2;->Q0(IZ)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-direct {p0}, Lw3/m2;->F()Ly3/e;

    move-result-object v6

    invoke-static {v6}, Lw3/m2;->E0(Ly3/e;)I

    move-result v4

    :cond_6
    new-instance v9, Ly3/c1;

    sub-int v10, v4, v3

    invoke-direct {v9, v3, v10}, Ly3/c1;-><init>(II)V

    if-eqz v1, :cond_8

    if-nez v6, :cond_7

    iget-boolean v2, p0, Lw3/m2;->u:Z

    if-nez v2, :cond_7

    const-string v2, "msg.destruct.assign.no.init"

    invoke-virtual {p0, v2}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v9, v1}, Ly3/c1;->y0(Ly3/e;)V

    goto :goto_2

    :cond_8
    invoke-virtual {v9, v2}, Ly3/c1;->y0(Ly3/e;)V

    :goto_2
    invoke-virtual {v9, v6}, Ly3/c1;->x0(Ly3/e;)V

    invoke-virtual {v9, p1}, Lw3/g2;->d0(I)Lw3/g2;

    invoke-virtual {v9, v8}, Lw3/g2;->Z(Ly3/j;)V

    invoke-virtual {v9, v7}, Lw3/g2;->a0(I)V

    invoke-virtual {v0, v9}, Ly3/b1;->v0(Ly3/c1;)V

    const/16 v1, 0x5b

    invoke-direct {p0, v1, v5}, Lw3/m2;->Q0(IZ)Z

    move-result v1

    if-nez v1, :cond_0

    sub-int/2addr v4, p2

    invoke-virtual {v0, v4}, Ly3/e;->r0(I)V

    invoke-virtual {v0, p3}, Ly3/b1;->x0(Z)V

    return-object v0
.end method

.method private U()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lw3/m2;->i:I

    return-void
.end method

.method private U0()Ly3/e;
    .locals 5

    invoke-direct {p0}, Lw3/m2;->s0()Ly3/e;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lw3/m2;->U()V

    new-instance v3, Ly3/b0;

    invoke-direct {p0}, Lw3/m2;->s0()Ly3/e;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    move-object v0, v3

    goto :goto_0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private U1(II)V
    .locals 10

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v1, p2, v0}, Lw3/t3;->l(I[I)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v1}, Lw3/j;->i()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget v1, v0, v2

    sub-int v1, p2, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    move v5, p1

    if-eqz v8, :cond_1

    const-string v3, "msg.missing.semi"

    const-string v4, ""

    sub-int v6, p2, v5

    const/4 p1, 0x0

    aget v7, v0, p1

    aget v9, v0, v2

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lw3/m2;->t(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string p1, ""

    sub-int/2addr p2, v5

    const-string v0, "msg.missing.semi"

    invoke-virtual {p0, v0, p1, v5, p2}, Lw3/m2;->s(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private V()Ly3/l;
    .locals 8

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->r:I

    iget v2, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    invoke-direct {p0}, Lw3/m2;->n1()I

    move-result v3

    const/16 v4, 0x27

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lw3/m2;->Z()Ly3/i0;

    move-result-object v0

    invoke-static {v0}, Lw3/m2;->E0(Ly3/e;)I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v0

    move-object v0, v5

    :goto_0
    invoke-direct {p0}, Lw3/m2;->P0()Ly3/f0;

    move-result-object v4

    if-nez v4, :cond_4

    if-nez v0, :cond_4

    iget-object v4, p0, Lw3/m2;->w:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lw3/m2;->w:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ly3/h0;

    goto :goto_2

    :cond_3
    :goto_1
    const-string v4, "msg.continue.outside"

    invoke-virtual {p0, v4}, Lw3/m2;->z1(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ly3/f0;->z0()Ly3/e;

    move-result-object v6

    instance-of v6, v6, Ly3/h0;

    if-nez v6, :cond_6

    :cond_5
    const-string v6, "msg.continue.nonloop"

    sub-int v7, v3, v2

    invoke-virtual {p0, v6, v2, v7}, Lw3/m2;->A1(Ljava/lang/String;II)V

    :cond_6
    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v4}, Ly3/f0;->z0()Ly3/e;

    move-result-object v4

    check-cast v4, Ly3/h0;

    move-object v5, v4

    :goto_2
    new-instance v4, Ly3/l;

    sub-int/2addr v3, v2

    invoke-direct {v4, v2, v3}, Ly3/l;-><init>(II)V

    if-eqz v5, :cond_8

    invoke-virtual {v4, v5}, Ly3/l;->G0(Ly3/h0;)V

    :cond_8
    invoke-virtual {v4, v0}, Ly3/l;->F0(Ly3/i0;)V

    invoke-virtual {v4, v1}, Lw3/g2;->a0(I)V

    return-object v4
.end method

.method private V0()V
    .locals 1

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->n()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "msg.XML.not.available"

    invoke-virtual {p0, v0}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private V1(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly3/e;

    invoke-virtual {p1}, Ly3/e;->m0()I

    move-result p1

    :cond_0
    invoke-direct {p0, p3}, Lw3/m2;->K0(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-string p2, "msg.extra.trailing.comma"

    sub-int/2addr p3, p1

    invoke-virtual {p0, p2, p1, p3}, Lw3/m2;->u(Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method private W0(ILjava/lang/String;IIZ)Z
    .locals 0

    invoke-direct {p0, p1, p5}, Lw3/m2;->Q0(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lw3/m2;->A1(Ljava/lang/String;II)V

    const/4 p1, 0x0

    return p1
.end method

.method private W1()Ly3/d1;
    .locals 4

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    new-instance v1, Ly3/d1;

    invoke-direct {v1, v0}, Ly3/d1;-><init>(I)V

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->r:I

    invoke-virtual {v1, v2}, Lw3/g2;->a0(I)V

    invoke-direct {p0, v1}, Lw3/m2;->n0(Ly3/h0;)V

    :try_start_0
    invoke-direct {p0}, Lw3/m2;->T()Lw3/m2$a;

    move-result-object v2

    iget-object v3, v2, Lw3/m2$a;->a:Ly3/e;

    invoke-virtual {v1, v3}, Ly3/d1;->U0(Ly3/e;)V

    iget v3, v2, Lw3/m2$a;->b:I

    sub-int/2addr v3, v0

    iget v2, v2, Lw3/m2$a;->c:I

    sub-int/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Ly3/h0;->S0(II)V

    invoke-direct {p0, v1}, Lw3/m2;->D0(Ly3/e;)Ly3/e;

    move-result-object v2

    invoke-static {v2}, Lw3/m2;->E0(Ly3/e;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ly3/e;->r0(I)V

    invoke-direct {p0, v1}, Lw3/m2;->D1(Ly3/h0;)V

    invoke-virtual {v1, v2}, Ly3/h0;->R0(Ly3/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lw3/m2;->q0()V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lw3/m2;->q0()V

    throw v0
.end method

.method private X0(ILjava/lang/String;Z)Z
    .locals 7

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v4, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    sub-int v5, v0, v4

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lw3/m2;->W0(ILjava/lang/String;IIZ)Z

    move-result p1

    return p1
.end method

.method private X1()Ly3/e1;
    .locals 9

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v1, Lw3/t3;->r:I

    iget v1, v1, Lw3/t3;->y:I

    const/16 v3, 0x59

    const-string v4, "msg.no.paren.with"

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v5}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v3, Lw3/t3;->y:I

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_0
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v6

    const/16 v7, 0x5a

    const-string v8, "msg.no.paren.after.with"

    invoke-direct {p0, v7, v8, v5}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    iget v4, v4, Lw3/t3;->y:I

    :cond_2
    new-instance v5, Ly3/e1;

    invoke-direct {v5, v1}, Ly3/e1;-><init>(I)V

    invoke-direct {p0, v5}, Lw3/m2;->D0(Ly3/e;)Ly3/e;

    move-result-object v7

    invoke-static {v7}, Lw3/m2;->E0(Ly3/e;)I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v5, v8}, Ly3/e;->r0(I)V

    invoke-virtual {v5, v0}, Lw3/g2;->Z(Ly3/j;)V

    invoke-virtual {v5, v6}, Ly3/e1;->x0(Ly3/e;)V

    invoke-virtual {v5, v7}, Ly3/e1;->z0(Ly3/e;)V

    invoke-virtual {v5, v3, v4}, Ly3/e1;->y0(II)V

    invoke-virtual {v5, v2}, Lw3/g2;->a0(I)V

    return-object v5
.end method

.method private Y0(II)Ly3/e;
    .locals 3

    iget-object p2, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {p2}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->r:I

    const/high16 v2, 0x20000

    and-int/2addr p1, v2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result p1

    const/16 v2, 0x6a

    if-ne p1, v2, :cond_0

    new-instance p1, Ly3/e0;

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->z:I

    sub-int/2addr v0, v1

    invoke-direct {p1, v1, v0}, Ly3/e0;-><init>(II)V

    invoke-virtual {p1, p2}, Ly3/e0;->F0(Ljava/lang/String;)V

    iget-object p2, p0, Lw3/m2;->h:Lw3/t3;

    iget p2, p2, Lw3/t3;->r:I

    invoke-virtual {p1, p2}, Lw3/g2;->a0(I)V

    return-object p1

    :cond_0
    invoke-direct {p0, v1, p2, v0}, Lw3/m2;->F1(ILjava/lang/String;I)V

    iget-object p1, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {p1}, Lw3/j;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lw3/m2;->t1(II)Ly3/e;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x1

    const/16 p2, 0x27

    invoke-direct {p0, p1, p2}, Lw3/m2;->a0(ZI)Ly3/i0;

    move-result-object p1

    return-object p1
.end method

.method private Y1(ILy3/i0;I)Ly3/g1;
    .locals 9

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v3

    invoke-static {v3}, Lw3/m2;->E0(Ly3/e;)I

    move-result v4

    const-string v5, "msg.no.bracket.index"

    const/4 v6, 0x1

    const/16 v7, 0x56

    invoke-direct {p0, v7, v5, v6}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v4, v1, Lw3/t3;->y:I

    iget v1, v1, Lw3/t3;->z:I

    move v8, v4

    move v4, v1

    move v1, v8

    :cond_1
    new-instance v5, Ly3/g1;

    sub-int/2addr v4, v2

    invoke-direct {v5, v2, v4}, Ly3/g1;-><init>(II)V

    invoke-virtual {v5, p2}, Ly3/m1;->z0(Ly3/i0;)V

    invoke-virtual {v5, p3}, Ly3/m1;->y0(I)V

    invoke-virtual {v5, p1}, Ly3/m1;->x0(I)V

    invoke-virtual {v5, v3}, Ly3/g1;->C0(Ly3/e;)V

    invoke-virtual {v5, v0, v1}, Ly3/g1;->B0(II)V

    return-object v5
.end method

.method private Z()Ly3/i0;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x27

    invoke-direct {p0, v0, v1}, Lw3/m2;->a0(ZI)Ly3/i0;

    move-result-object v0

    return-object v0
.end method

.method private Z0()Ly3/e;
    .locals 8

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x27

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    iget v2, p0, Lw3/m2;->i:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, p0, Lw3/m2;->i:I

    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v2

    invoke-virtual {v2}, Lw3/g2;->H()I

    move-result v4

    const/16 v5, 0x85

    if-eq v4, v5, :cond_0

    new-instance v0, Ly3/s;

    invoke-virtual {p0}, Lw3/m2;->H0()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v2, v1}, Ly3/s;-><init>(Ly3/e;Z)V

    iget v1, v2, Lw3/g2;->e:I

    iput v1, v0, Lw3/g2;->e:I

    return-object v0

    :cond_0
    new-instance v4, Ly3/f0;

    invoke-direct {v4, v0}, Ly3/f0;-><init>(I)V

    check-cast v2, Ly3/e0;

    invoke-direct {p0, v2, v4}, Lw3/m2;->w1(Ly3/e0;Ly3/f0;)V

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->r:I

    invoke-virtual {v4, v2}, Lw3/g2;->a0(I)V

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v2

    const/4 v6, 0x0

    if-ne v2, v1, :cond_2

    iget v2, p0, Lw3/m2;->i:I

    or-int/2addr v2, v3

    iput v2, p0, Lw3/m2;->i:I

    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v2

    invoke-virtual {v2}, Lw3/g2;->H()I

    move-result v7

    if-eq v7, v5, :cond_1

    new-instance v1, Ly3/s;

    invoke-virtual {p0}, Lw3/m2;->H0()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3}, Ly3/s;-><init>(Ly3/e;Z)V

    invoke-direct {p0, v1}, Lw3/m2;->H(Ly3/e;)V

    goto :goto_1

    :cond_1
    check-cast v2, Ly3/e0;

    invoke-direct {p0, v2, v4}, Lw3/m2;->w1(Ly3/e0;Ly3/f0;)V

    goto :goto_0

    :cond_2
    move-object v1, v6

    :goto_1
    :try_start_0
    iput-object v4, p0, Lw3/m2;->o:Ly3/f0;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lw3/m2;->M1()Ly3/e;

    move-result-object v1

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v2

    const/16 v3, 0xa4

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Ly3/e;->C()I

    move-result v2

    iget-object v3, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly3/j;

    invoke-virtual {v3}, Ly3/e;->C()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/e;

    invoke-virtual {v1, v2}, Ly3/e;->q0(Ly3/e;)V

    invoke-direct {p0}, Lw3/m2;->U()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iput-object v6, p0, Lw3/m2;->o:Ly3/f0;

    invoke-virtual {v4}, Ly3/f0;->y0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly3/e0;

    iget-object v5, p0, Lw3/m2;->v:Ljava/util/Map;

    invoke-virtual {v3}, Ly3/e0;->E0()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ly3/e;->l0()Ly3/e;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lw3/m2;->E0(Ly3/e;)I

    move-result v2

    sub-int/2addr v2, v0

    goto :goto_3

    :cond_5
    invoke-static {v1}, Lw3/m2;->E0(Ly3/e;)I

    move-result v2

    :goto_3
    invoke-virtual {v4, v2}, Ly3/e;->r0(I)V

    invoke-virtual {v4, v1}, Ly3/f0;->A0(Ly3/e;)V

    return-object v4

    :catchall_0
    move-exception v0

    iput-object v6, p0, Lw3/m2;->o:Ly3/f0;

    invoke-virtual {v4}, Ly3/f0;->y0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/e0;

    iget-object v3, p0, Lw3/m2;->v:Ljava/util/Map;

    invoke-virtual {v2}, Ly3/e0;->E0()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    throw v0

    :cond_7
    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private Z1()Ly3/e;
    .locals 9

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->y:I

    invoke-virtual {v0}, Lw3/t3;->j()I

    move-result v0

    const/16 v2, 0x97

    const/16 v3, 0x94

    const-string v4, "msg.syntax"

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    :goto_0
    invoke-virtual {p0, v4}, Lw3/m2;->z1(Ljava/lang/String;)V

    invoke-direct {p0}, Lw3/m2;->N0()Ly3/r;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v5, Ly3/j1;

    invoke-direct {v5, v1}, Ly3/j1;-><init>(I)V

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->r:I

    invoke-virtual {v5, v1}, Lw3/g2;->a0(I)V

    :goto_1
    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ly3/n1;

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v1, Lw3/t3;->y:I

    invoke-virtual {v1}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ly3/n1;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Ly3/j1;->v0(Ly3/i1;)V

    return-object v5

    :cond_3
    new-instance v0, Ly3/n1;

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v6, v1, Lw3/t3;->y:I

    invoke-virtual {v1}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Ly3/n1;-><init>(ILjava/lang/String;)V

    invoke-virtual {v5, v0}, Ly3/j1;->v0(Ly3/i1;)V

    const/16 v0, 0x57

    const/4 v1, 0x1

    invoke-direct {p0, v0, v4, v1}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v6

    const/16 v7, 0x58

    if-ne v6, v7, :cond_4

    new-instance v6, Ly3/p;

    iget-object v8, p0, Lw3/m2;->h:Lw3/t3;

    iget v8, v8, Lw3/t3;->z:I

    sub-int/2addr v8, v0

    invoke-direct {v6, v0, v8}, Ly3/p;-><init>(II)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v6

    :goto_2
    invoke-direct {p0, v7, v4, v1}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    new-instance v1, Ly3/h1;

    invoke-direct {v1, v0, v6}, Ly3/h1;-><init>(ILy3/e;)V

    iget-object v6, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v6}, Lw3/t3;->F()Z

    move-result v6

    invoke-virtual {v1, v6}, Ly3/h1;->y0(Z)V

    iget-object v6, p0, Lw3/m2;->h:Lw3/t3;

    iget v6, v6, Lw3/t3;->z:I

    sub-int/2addr v6, v0

    invoke-virtual {v1, v6}, Ly3/e;->r0(I)V

    invoke-virtual {v5, v1}, Ly3/j1;->v0(Ly3/i1;)V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v0}, Lw3/t3;->n()I

    move-result v0

    goto :goto_1
.end method

.method static bridge synthetic a(Lw3/m2;)I
    .locals 0

    iget p0, p0, Lw3/m2;->t:I

    return p0
.end method

.method private a0(ZI)Ly3/i0;
    .locals 5

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->y:I

    invoke-virtual {v0}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->r:I

    iget-object v3, p0, Lw3/m2;->z:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget v1, p0, Lw3/m2;->y:I

    iget-object v0, p0, Lw3/m2;->z:Ljava/lang/String;

    iget v2, p0, Lw3/m2;->A:I

    const/4 v3, 0x0

    iput v3, p0, Lw3/m2;->y:I

    iput-object v4, p0, Lw3/m2;->z:Ljava/lang/String;

    iput v3, p0, Lw3/m2;->A:I

    :cond_0
    if-nez v0, :cond_2

    iget-object v3, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v3}, Lw3/j;->i()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_2
    move-object v4, v0

    :goto_0
    new-instance v0, Ly3/i0;

    invoke-direct {v0, v1, v4}, Ly3/i0;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lw3/g2;->a0(I)V

    if-eqz p1, :cond_3

    invoke-virtual {p0, v4, p2}, Lw3/m2;->N(Ljava/lang/String;I)V

    :cond_3
    return-object v0
.end method

.method private a1()I
    .locals 1

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v0

    invoke-direct {p0}, Lw3/m2;->U()V

    return v0
.end method

.method static bridge synthetic b(Lw3/m2;)Z
    .locals 0

    iget-boolean p0, p0, Lw3/m2;->u:Z

    return p0
.end method

.method private static b1(Ly3/e;)I
    .locals 1

    invoke-virtual {p0}, Ly3/e;->m0()I

    move-result v0

    invoke-virtual {p0}, Ly3/e;->k0()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method static bridge synthetic c(Lw3/m2;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lw3/m2;->v:Ljava/util/Map;

    return-object p0
.end method

.method private c0(Z)Ly3/k0;
    .locals 5

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v0}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lw3/m2;->q:Z

    const/16 v2, 0xc8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v1}, Lw3/t3;->E()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v1}, Lw3/j;->c()I

    move-result v1

    if-ge v1, v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v1, "msg.no.old.octal.strict"

    invoke-virtual {p0, v1}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v1}, Lw3/j;->c()I

    move-result v1

    if-ge v1, v2, :cond_2

    if-nez p1, :cond_6

    :cond_2
    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {p1}, Lw3/t3;->B()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0b"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {p1}, Lw3/t3;->E()Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {p1}, Lw3/t3;->D()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0o"

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {p1}, Lw3/t3;->C()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    goto :goto_0

    :cond_6
    :goto_1
    new-instance p1, Ly3/k0;

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v1, Lw3/t3;->y:I

    invoke-virtual {v1}, Lw3/t3;->o()D

    move-result-wide v3

    invoke-direct {p1, v2, v0, v3, v4}, Ly3/k0;-><init>(ILjava/lang/String;D)V

    return-object p1
.end method

.method private static final c1(III)Z
    .locals 0

    and-int/2addr p0, p2

    if-eq p0, p2, :cond_0

    and-int p0, p1, p2

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static bridge synthetic d(Lw3/m2;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lw3/m2;->x:Ljava/util/List;

    return-object p0
.end method

.method private d1()Ly3/l0;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lw3/m2;->h:Lw3/t3;

    iget v2, v1, Lw3/t3;->y:I

    iget v1, v1, Lw3/t3;->r:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v4, v0, Lw3/m2;->q:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    invoke-direct/range {p0 .. p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_1
    invoke-direct/range {p0 .. p0}, Lw3/m2;->m1()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v11

    const/16 v12, 0xa4

    if-ne v10, v12, :cond_1

    invoke-direct/range {p0 .. p0}, Lw3/m2;->U()V

    invoke-direct {v0, v10}, Lw3/m2;->o1(I)I

    move-result v10

    :cond_1
    const/16 v12, 0x58

    if-ne v10, v12, :cond_3

    if-eq v9, v8, :cond_2

    invoke-direct {v0, v2, v3, v9}, Lw3/m2;->V1(ILjava/util/List;I)V

    :cond_2
    const/4 v8, 0x1

    goto/16 :goto_7

    :cond_3
    invoke-direct/range {p0 .. p0}, Lw3/m2;->e1()Ly3/e;

    move-result-object v9

    const-string v15, "msg.bad.prop"

    const/16 v5, 0x5b

    if-nez v9, :cond_4

    invoke-virtual {v0, v15}, Lw3/m2;->z1(Ljava/lang/String;)V

    const/4 v5, 0x1

    :goto_2
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_4
    iget-object v13, v0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v13}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v13

    iget-object v8, v0, Lw3/m2;->h:Lw3/t3;

    iget v8, v8, Lw3/t3;->y:I

    invoke-direct/range {p0 .. p0}, Lw3/m2;->U()V

    invoke-direct/range {p0 .. p0}, Lw3/m2;->m1()I

    move-result v14

    if-eq v14, v5, :cond_c

    const/16 v5, 0x6a

    if-eq v14, v5, :cond_c

    if-eq v14, v12, :cond_c

    const/16 v5, 0x59

    if-ne v14, v5, :cond_5

    const/16 v5, 0x8

    goto :goto_3

    :cond_5
    invoke-virtual {v9}, Lw3/g2;->H()I

    move-result v5

    const/16 v10, 0x27

    if-ne v5, v10, :cond_7

    const-string v5, "get"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x2

    goto :goto_3

    :cond_6
    const-string v5, "set"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x4

    goto :goto_3

    :cond_7
    const/4 v5, 0x1

    :goto_3
    const/4 v10, 0x2

    if-eq v5, v10, :cond_8

    const/4 v10, 0x4

    if-ne v5, v10, :cond_a

    :cond_8
    invoke-direct/range {p0 .. p0}, Lw3/m2;->e1()Ly3/e;

    move-result-object v9

    if-nez v9, :cond_9

    invoke-virtual {v0, v15}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Lw3/m2;->U()V

    :cond_a
    if-nez v9, :cond_b

    goto :goto_2

    :cond_b
    iget-object v10, v0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v10}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v8, v9, v5}, Lw3/m2;->T0(ILy3/e;I)Ly3/m0;

    move-result-object v8

    invoke-virtual {v9, v11}, Lw3/g2;->Z(Ly3/j;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    invoke-virtual {v9, v11}, Lw3/g2;->Z(Ly3/j;)V

    invoke-direct {v0, v9, v10}, Lw3/m2;->p1(Ly3/e;I)Ly3/m0;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :goto_4
    iget-boolean v8, v0, Lw3/m2;->q:Z

    if-eqz v8, :cond_14

    if-eqz v13, :cond_14

    const-string v8, "msg.dup.obj.lit.prop.strict"

    const/4 v9, 0x1

    if-eq v5, v9, :cond_11

    const/4 v9, 0x2

    if-eq v5, v9, :cond_f

    const/4 v9, 0x4

    if-eq v5, v9, :cond_d

    const/16 v9, 0x8

    if-eq v5, v9, :cond_11

    goto :goto_6

    :cond_d
    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v0, v8, v13}, Lw3/m2;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    :goto_5
    invoke-interface {v6, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    invoke-interface {v4, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v0, v8, v13}, Lw3/m2;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    invoke-interface {v4, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    :cond_12
    invoke-virtual {v0, v8, v13}, Lw3/m2;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_14
    :goto_6
    invoke-direct/range {p0 .. p0}, Lw3/m2;->B0()Ly3/j;

    const/16 v5, 0x5b

    const/4 v8, 0x1

    invoke-direct {v0, v5, v8}, Lw3/m2;->Q0(IZ)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-object v5, v0, Lw3/m2;->h:Lw3/t3;

    iget v9, v5, Lw3/t3;->z:I

    const/4 v8, -0x1

    goto/16 :goto_1

    :cond_15
    :goto_7
    const-string v4, "msg.no.brace.prop"

    invoke-direct {v0, v12, v4, v8}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    new-instance v4, Ly3/l0;

    iget-object v5, v0, Lw3/m2;->h:Lw3/t3;

    iget v5, v5, Lw3/t3;->z:I

    sub-int/2addr v5, v2

    invoke-direct {v4, v2, v5}, Ly3/l0;-><init>(II)V

    if-eqz v7, :cond_16

    invoke-virtual {v4, v7}, Lw3/g2;->Z(Ly3/j;)V

    :cond_16
    invoke-virtual {v4, v3}, Ly3/l0;->x0(Ljava/util/List;)V

    invoke-virtual {v4, v1}, Lw3/g2;->a0(I)V

    return-object v4
.end method

.method static bridge synthetic e(Lw3/m2;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lw3/m2;->w:Ljava/util/List;

    return-object p0
.end method

.method private e0()Ly3/t0;
    .locals 3

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    new-instance v2, Ly3/t0;

    sub-int/2addr v0, v1

    invoke-direct {v2, v1, v0}, Ly3/t0;-><init>(II)V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->r:I

    invoke-virtual {v2, v0}, Lw3/g2;->a0(I)V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v0}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ly3/t0;->x0(Ljava/lang/String;)V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v0}, Lw3/t3;->q()C

    move-result v0

    invoke-virtual {v2, v0}, Ly3/t0;->w0(C)V

    return-object v2
.end method

.method private e1()Ly3/e;
    .locals 3

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v0}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v1}, Lw3/j;->c()I

    move-result v1

    iget-boolean v2, p0, Lw3/m2;->q:Z

    invoke-static {v0, v1, v2}, Lw3/t3;->z(Ljava/lang/String;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lw3/m2;->e0()Ly3/t0;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lw3/m2;->c0(Z)Ly3/k0;

    move-result-object v0

    goto :goto_1

    :goto_0
    :pswitch_2
    invoke-direct {p0}, Lw3/m2;->Z()Ly3/i0;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static bridge synthetic f(Lw3/m2;I)V
    .locals 0

    iput p1, p0, Lw3/m2;->t:I

    return-void
.end method

.method private f0()Ly3/e;
    .locals 7

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x77

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->V0()V

    invoke-virtual {p0}, Lw3/m2;->I1()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->r:I

    iget v0, v0, Lw3/t3;->y:I

    const/16 v2, 0x27

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lw3/m2;->Q0(IZ)Z

    move-result v4

    const-string v5, "msg.bad.namespace"

    if-eqz v4, :cond_1

    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v4}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v4

    const-string v6, "xml"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {p0, v5}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v2, v3}, Lw3/m2;->Q0(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v2}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v2

    const-string v4, "namespace"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p0, v5}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_4
    const/16 v2, 0x5c

    invoke-direct {p0, v2, v3}, Lw3/m2;->Q0(IZ)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, v5}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v2

    new-instance v4, Ly3/z0;

    invoke-static {v2}, Lw3/m2;->E0(Ly3/e;)I

    move-result v5

    sub-int/2addr v5, v0

    invoke-direct {v4, v0, v5}, Ly3/z0;-><init>(II)V

    const/16 v0, 0x4c

    invoke-virtual {v4, v0}, Ly3/z0;->x0(I)V

    invoke-virtual {v4, v2}, Ly3/z0;->w0(Ly3/e;)V

    invoke-virtual {v4, v1}, Lw3/g2;->a0(I)V

    new-instance v0, Ly3/s;

    invoke-direct {v0, v4, v3}, Ly3/s;-><init>(Ly3/e;Z)V

    return-object v0
.end method

.method private f1()Ly3/e;
    .locals 5

    invoke-direct {p0}, Lw3/m2;->y()Ly3/e;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x6b

    invoke-direct {p0, v2, v1}, Lw3/m2;->Q0(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    new-instance v3, Ly3/b0;

    invoke-direct {p0}, Lw3/m2;->f1()Ly3/e;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    move-object v0, v3

    :cond_0
    return-object v0
.end method

.method static bridge synthetic g(Lw3/m2;Z)V
    .locals 0

    iput-boolean p1, p0, Lw3/m2;->u:Z

    return-void
.end method

.method private g1()Ly3/e;
    .locals 8

    iget-boolean v0, p0, Lw3/m2;->u:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lw3/m2;->u:Z

    :try_start_0
    invoke-direct {p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v1

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v2, Lw3/t3;->r:I

    iget v2, v2, Lw3/t3;->y:I

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v4

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_0

    new-instance v4, Ly3/p;

    invoke-direct {v4, v2}, Ly3/p;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v4

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v6

    const/16 v7, 0x7a

    if-ne v6, v7, :cond_1

    invoke-direct {p0, v4, v2}, Lw3/m2;->y0(Ly3/e;I)Ly3/e;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lw3/m2;->u:Z

    return-object v1

    :cond_1
    :try_start_1
    const-string v6, "msg.no.paren"

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    invoke-virtual {v4}, Lw3/g2;->H()I

    move-result v5

    const/16 v6, 0x83

    if-ne v5, v6, :cond_2

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v5

    const/16 v6, 0xa7

    if-eq v5, v6, :cond_2

    const-string v1, "msg.syntax"

    invoke-virtual {p0, v1}, Lw3/m2;->z1(Ljava/lang/String;)V

    invoke-direct {p0}, Lw3/m2;->N0()Ly3/r;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v0, p0, Lw3/m2;->u:Z

    return-object v1

    :cond_2
    :try_start_2
    iget-object v5, p0, Lw3/m2;->h:Lw3/t3;

    iget v5, v5, Lw3/t3;->z:I

    sub-int/2addr v5, v2

    new-instance v6, Ly3/n0;

    invoke-direct {v6, v2, v5, v4}, Ly3/n0;-><init>(IILy3/e;)V

    invoke-virtual {v6, v3}, Lw3/g2;->a0(I)V

    if-nez v1, :cond_3

    invoke-direct {p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v6, v1}, Lw3/g2;->Z(Ly3/j;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    iput-boolean v0, p0, Lw3/m2;->u:Z

    return-object v6

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lw3/m2;->u:Z

    throw v1
.end method

.method static bridge synthetic h(Lw3/m2;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lw3/m2;->v:Ljava/util/Map;

    return-void
.end method

.method private h1()Ly3/f;
    .locals 10

    new-instance v0, Ly3/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ly3/f;-><init>(I)V

    iput-object v0, p0, Lw3/m2;->r:Ly3/s0;

    iput-object v0, p0, Lw3/m2;->s:Ly3/r0;

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v6, v2, Lw3/t3;->r:I

    iget-boolean v2, p0, Lw3/m2;->q:Z

    iget-boolean v3, p0, Lw3/m2;->B:Z

    iput-boolean v3, p0, Lw3/m2;->q:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Ly3/s0;->p1(Z)V

    :cond_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v7

    if-gtz v7, :cond_1

    goto :goto_2

    :cond_1
    const/16 v8, 0x70

    if-ne v7, v8, :cond_3

    invoke-direct {p0}, Lw3/m2;->U()V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v7, p0, Lw3/m2;->f:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x2

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    :goto_1
    invoke-direct {p0, v7}, Lw3/m2;->w0(I)Ly3/w;

    move-result-object v7
    :try_end_1
    .catch Lw3/m2$b; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    :goto_2
    iput-boolean v2, p0, Lw3/m2;->q:Z

    goto :goto_4

    :cond_3
    const/16 v8, 0xa4

    if-ne v7, v8, :cond_4

    :try_start_2
    iget-object v7, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly3/e;

    invoke-direct {p0}, Lw3/m2;->U()V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lw3/m2;->L1()Ly3/e;

    move-result-object v7

    if-eqz v3, :cond_6

    invoke-static {v7}, Lw3/m2;->C0(Ly3/e;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    const-string v9, "use strict"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iput-boolean v4, p0, Lw3/m2;->q:Z

    invoke-virtual {v0, v4}, Ly3/s0;->p1(Z)V

    :cond_6
    :goto_3
    invoke-static {v7}, Lw3/m2;->E0(Ly3/e;)I

    move-result v5

    invoke-virtual {v0, v7}, Lw3/g2;->f(Lw3/g2;)V

    invoke-virtual {v7, v0}, Ly3/e;->s0(Ly3/e;)V
    :try_end_2
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    :try_start_3
    const-string v3, "msg.too.deep.parser.recursion"

    invoke-virtual {p0, v3}, Lw3/m2;->L0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v7}, Lw3/j;->i()Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_a

    goto :goto_2

    :goto_4
    iget v2, p0, Lw3/m2;->k:I

    if-eqz v2, :cond_8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "msg.got.syntax.errors"

    invoke-virtual {p0, v3, v2}, Lw3/m2;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v3}, Lw3/j;->i()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    iget-object v3, p0, Lw3/m2;->b:Lw3/z;

    iget-object v5, p0, Lw3/m2;->d:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-interface/range {v3 .. v8}, Lw3/z;->e(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lw3/b0;

    move-result-object v0

    throw v0

    :cond_8
    :goto_5
    iget-object v2, p0, Lw3/m2;->l:Ljava/util/List;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    iget-object v3, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/e;

    invoke-static {v2}, Lw3/m2;->E0(Ly3/e;)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v2, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly3/j;

    invoke-virtual {v0, v3}, Ly3/f;->r1(Ly3/j;)V

    goto :goto_6

    :cond_9
    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Ly3/e;->r0(I)V

    iget-object v1, p0, Lw3/m2;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ly3/s0;->q1(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ly3/s0;->l1(I)V

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->r:I

    invoke-virtual {v0, v1}, Ly3/s0;->o1(I)V

    return-object v0

    :cond_a
    :try_start_4
    iget-object v0, p0, Lw3/m2;->d:Ljava/lang/String;

    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    iget v4, v4, Lw3/t3;->r:I

    const/4 v5, 0x0

    invoke-static {v3, v0, v4, v5, v1}, Lw3/m;->c0(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lw3/b0;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_7
    iput-boolean v2, p0, Lw3/m2;->q:Z

    throw v0
.end method

.method static bridge synthetic i(Lw3/m2;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lw3/m2;->x:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic j(Lw3/m2;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lw3/m2;->w:Ljava/util/List;

    return-void
.end method

.method private j1(ILy3/w;)Ly3/e;
    .locals 10

    const/16 v0, 0x57

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lw3/m2;->Q0(IZ)Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->c()I

    move-result v0

    const/16 v4, 0xb4

    if-ge v0, v4, :cond_0

    if-eq p1, v2, :cond_0

    const-string v0, "msg.no.brace.body"

    invoke-virtual {p0, v0}, Lw3/m2;->z1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ne p1, v2, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iget v2, p0, Lw3/m2;->n:I

    add-int/2addr v2, v1

    iput v2, p0, Lw3/m2;->n:I

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    new-instance v4, Ly3/g;

    invoke-direct {v4, v2}, Ly3/g;-><init>(I)V

    iget-boolean v5, p0, Lw3/m2;->q:Z

    iput-boolean v3, p0, Lw3/m2;->q:Z

    iget-object v6, p0, Lw3/m2;->h:Lw3/t3;

    iget v6, v6, Lw3/t3;->r:I

    invoke-virtual {v4, v6}, Lw3/g2;->a0(I)V

    const/16 v6, 0x58

    if-eqz v0, :cond_4

    :try_start_0
    invoke-direct {p0}, Lw3/m2;->F()Ly3/e;

    move-result-object p2

    new-instance v3, Ly3/q0;

    invoke-virtual {p2}, Ly3/e;->m0()I

    move-result v7

    invoke-virtual {p2}, Ly3/e;->k0()I

    move-result v8

    invoke-direct {v3, v7, v8, p2}, Ly3/q0;-><init>(IILy3/e;)V

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v7, 0x19

    invoke-virtual {v3, v7, p2}, Lw3/g2;->S(ILjava/lang/Object;)V

    invoke-virtual {v4, v7, p2}, Lw3/g2;->S(ILjava/lang/Object;)V

    if-eqz p1, :cond_3

    const/16 p1, 0x1b

    invoke-virtual {v3, p1, p2}, Lw3/g2;->S(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {v4, v3}, Ly3/g;->v0(Ly3/e;)V

    goto :goto_5

    :cond_4
    const/4 p1, 0x1

    :goto_3
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    if-eqz v7, :cond_9

    if-eq v7, v6, :cond_9

    const/16 v8, 0x70

    if-eq v7, v8, :cond_7

    const/16 v8, 0xa4

    if-eq v7, v8, :cond_6

    invoke-direct {p0}, Lw3/m2;->L1()Ly3/e;

    move-result-object v7

    if-eqz p1, :cond_8

    invoke-static {v7}, Lw3/m2;->C0(Ly3/e;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    const/4 p1, 0x0

    goto :goto_4

    :cond_5
    const-string v9, "use strict"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iput-boolean v1, p0, Lw3/m2;->q:Z

    invoke-virtual {p2, v1}, Ly3/s0;->p1(Z)V

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lw3/m2;->I1()V

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v7, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ly3/e;

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0, v1}, Lw3/m2;->w0(I)Ly3/w;

    move-result-object v7

    :cond_8
    :goto_4
    invoke-virtual {v4, v7}, Ly3/g;->v0(Ly3/e;)V
    :try_end_0
    .catch Lw3/m2$b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    iget p2, p0, Lw3/m2;->n:I

    sub-int/2addr p2, v1

    iput p2, p0, Lw3/m2;->n:I

    iput-boolean v5, p0, Lw3/m2;->q:Z

    throw p1

    :catch_0
    :cond_9
    :goto_5
    iget p1, p0, Lw3/m2;->n:I

    sub-int/2addr p1, v1

    iput p1, p0, Lw3/m2;->n:I

    iput-boolean v5, p0, Lw3/m2;->q:Z

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    iget p1, p1, Lw3/t3;->z:I

    invoke-direct {p0}, Lw3/m2;->B0()Ly3/j;

    if-nez v0, :cond_a

    const-string p2, "msg.no.brace.after.body"

    invoke-direct {p0, v6, p2, v1}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    iget p1, p1, Lw3/t3;->z:I

    :cond_a
    sub-int/2addr p1, v2

    invoke-virtual {v4, p1}, Ly3/e;->r0(I)V

    return-object v4
.end method

.method private k1(Ly3/w;)V
    .locals 8

    const/16 v0, 0x5a

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lw3/m2;->Q0(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    invoke-virtual {p1}, Ly3/e;->m0()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ly3/w;->R1(I)V

    return-void

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :cond_1
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v4

    const/16 v5, 0x55

    const/16 v6, 0x59

    if-eq v4, v5, :cond_8

    const/16 v5, 0x57

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/16 v4, 0x27

    const-string v5, "msg.no.parm"

    invoke-direct {p0, v4, v5, v1}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lw3/m2;->Z()Ly3/i0;

    move-result-object v4

    invoke-direct {p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Lw3/g2;->Z(Ly3/j;)V

    :cond_3
    invoke-virtual {p1, v4}, Ly3/w;->r1(Ly3/e;)V

    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v4}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lw3/m2;->g0(ILjava/lang/String;)V

    iget-boolean v5, p0, Lw3/m2;->q:Z

    if-eqz v5, :cond_a

    const-string v5, "eval"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "arguments"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const-string v5, "msg.bad.id.strict"

    invoke-virtual {p0, v5, v4}, Lw3/m2;->B1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "msg.dup.param.strict"

    invoke-virtual {p0, v5, v4}, Lw3/m2;->n(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lw3/m2;->N0()Ly3/r;

    move-result-object v4

    invoke-virtual {p1, v4}, Ly3/w;->r1(Ly3/e;)V

    goto :goto_1

    :cond_8
    :goto_0
    invoke-direct {p0}, Lw3/m2;->l0()Ly3/e;

    move-result-object v4

    invoke-virtual {p0, v4}, Lw3/m2;->O0(Ly3/e;)V

    invoke-virtual {p1, v4}, Ly3/w;->r1(Ly3/e;)V

    if-nez v3, :cond_9

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_9
    iget-object v5, p0, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {v5}, Ly3/s0;->b1()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v5, v7}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_1
    const/16 v4, 0x5b

    invoke-direct {p0, v4, v1}, Lw3/m2;->Q0(IZ)Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v3, :cond_c

    new-instance v2, Lw3/g2;

    invoke-direct {v2, v4}, Lw3/g2;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw3/g2;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v4

    const/16 v6, 0x7d

    invoke-virtual {p0, v6, v5, v4}, Lw3/m2;->W(ILw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object v4

    invoke-virtual {v2, v4}, Lw3/g2;->f(Lw3/g2;)V

    goto :goto_2

    :cond_b
    const/16 v3, 0x17

    invoke-virtual {p1, v3, v2}, Lw3/g2;->S(ILjava/lang/Object;)V

    :cond_c
    const-string v2, "msg.no.paren.after.parms"

    invoke-direct {p0, v0, v2, v1}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    invoke-virtual {p1}, Ly3/e;->m0()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ly3/w;->R1(I)V

    :cond_d
    return-void
.end method

.method private l0()Ly3/e;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lw3/m2;->p:Z

    invoke-direct {p0}, Lw3/m2;->r1()Ly3/e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lw3/m2;->p:Z

    return-object v0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lw3/m2;->p:Z

    throw v0
.end method

.method private l1()I
    .locals 1

    invoke-direct {p0}, Lw3/m2;->m1()I

    iget v0, p0, Lw3/m2;->i:I

    return v0
.end method

.method private m0()Ly3/n;
    .locals 6

    iget v0, p0, Lw3/m2;->j:I

    const/16 v1, 0x79

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    new-instance v1, Ly3/n;

    invoke-direct {v1, v0}, Ly3/n;-><init>(I)V

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->r:I

    invoke-virtual {v1, v2}, Lw3/g2;->a0(I)V

    invoke-direct {p0, v1}, Lw3/m2;->n0(Ly3/h0;)V

    :try_start_0
    invoke-direct {p0, v1}, Lw3/m2;->D0(Ly3/e;)Ly3/e;

    move-result-object v2

    const-string v3, "msg.no.while.do"

    const/4 v4, 0x1

    const/16 v5, 0x78

    invoke-direct {p0, v5, v3, v4}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v3, Lw3/t3;->y:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ly3/n;->V0(I)V

    invoke-direct {p0}, Lw3/m2;->T()Lw3/m2$a;

    move-result-object v3

    iget-object v5, v3, Lw3/m2$a;->a:Ly3/e;

    invoke-virtual {v1, v5}, Ly3/n;->U0(Ly3/e;)V

    iget v5, v3, Lw3/m2$a;->b:I

    sub-int/2addr v5, v0

    iget v3, v3, Lw3/m2$a;->c:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v5, v3}, Ly3/h0;->S0(II)V

    invoke-static {v2}, Lw3/m2;->E0(Ly3/e;)I

    move-result v3

    invoke-direct {p0, v1}, Lw3/m2;->D1(Ly3/h0;)V

    invoke-virtual {v1, v2}, Ly3/h0;->R0(Ly3/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lw3/m2;->q0()V

    const/16 v2, 0x54

    invoke-direct {p0, v2, v4}, Lw3/m2;->Q0(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v2, Lw3/t3;->z:I

    :cond_1
    sub-int/2addr v3, v0

    invoke-virtual {v1, v3}, Ly3/e;->r0(I)V

    return-object v1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lw3/m2;->q0()V

    throw v0
.end method

.method private m1()I
    .locals 6

    iget v0, p0, Lw3/m2;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lw3/m2;->j:I

    return v0

    :cond_0
    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v0}, Lw3/t3;->m()I

    move-result v0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v1}, Lw3/t3;->t()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    const/16 v5, 0xa4

    if-ne v1, v5, :cond_3

    :cond_1
    if-ne v1, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v1}, Lw3/t3;->t()I

    move-result v1

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v4}, Lw3/j;->j()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v4}, Lw3/t3;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lw3/m2;->v1(ILjava/lang/String;)V

    :cond_3
    iput v1, p0, Lw3/m2;->j:I

    if-eqz v3, :cond_4

    const/high16 v2, 0x10000

    :cond_4
    or-int v0, v1, v2

    iput v0, p0, Lw3/m2;->i:I

    return v1

    :cond_5
    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v1}, Lw3/t3;->t()I

    move-result v1

    goto :goto_0
.end method

.method private n0(Ly3/h0;)V
    .locals 1

    iget-object v0, p0, Lw3/m2;->w:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw3/m2;->w:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lw3/m2;->w:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lw3/m2;->x:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw3/m2;->x:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lw3/m2;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lw3/m2;->u1(Ly3/r0;)V

    iget-object v0, p0, Lw3/m2;->o:Ly3/f0;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ly3/f0;->A0(Ly3/e;)V

    iget-object v0, p0, Lw3/m2;->o:Ly3/f0;

    invoke-virtual {v0}, Ly3/f0;->w0()Ly3/e0;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly3/c0;->D0(Ly3/c0;)V

    iget-object v0, p0, Lw3/m2;->o:Ly3/f0;

    invoke-virtual {v0}, Ly3/e;->m0()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p1, v0}, Ly3/e;->u0(I)V

    :cond_2
    return-void
.end method

.method private n1()I
    .locals 3

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v0

    iget v1, p0, Lw3/m2;->i:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private o0(Ly3/v0;)V
    .locals 1

    iget-object v0, p0, Lw3/m2;->x:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw3/m2;->x:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lw3/m2;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private o1(I)I
    .locals 1

    :goto_0
    const/16 v0, 0xa4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private p(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 7

    iget v0, p0, Lw3/m2;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw3/m2;->k:I

    invoke-virtual {p0, p1, p2}, Lw3/m2;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lw3/m2;->c:Ly3/z;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lw3/m2;->d:Ljava/lang/String;

    invoke-interface {p1, v2, p2, p3, p4}, Ly3/z;->b(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lw3/m2;->b:Lw3/z;

    iget-object v3, p0, Lw3/m2;->d:Ljava/lang/String;

    move v4, p5

    move-object v5, p6

    move v6, p7

    invoke-interface/range {v1 .. v6}, Lw3/z;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private p0()Ly3/e;
    .locals 9

    invoke-direct {p0}, Lw3/m2;->x1()Ly3/e;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    const/16 v5, 0xd

    const/16 v6, 0xc

    if-eq v1, v6, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v7, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v7}, Lw3/j;->c()I

    move-result v7

    const/16 v8, 0x78

    if-ne v7, v8, :cond_2

    if-ne v1, v6, :cond_1

    const/16 v1, 0x2e

    goto :goto_1

    :cond_1
    if-ne v1, v5, :cond_2

    const/16 v1, 0x2f

    :cond_2
    :goto_1
    new-instance v3, Ly3/b0;

    invoke-direct {p0}, Lw3/m2;->x1()Ly3/e;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    move-object v0, v3

    goto :goto_0
.end method

.method private p1(Ly3/e;I)Ly3/m0;
    .locals 3

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x58

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v0, 0x27

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {p2}, Lw3/j;->c()I

    move-result p2

    const/16 v0, 0xb4

    if-lt p2, v0, :cond_2

    iget-boolean p2, p0, Lw3/m2;->p:Z

    if-nez p2, :cond_1

    const-string p2, "msg.bad.object.init"

    invoke-virtual {p0, p2}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_1
    new-instance p2, Ly3/i0;

    invoke-virtual {p1}, Ly3/e;->m0()I

    move-result v0

    invoke-virtual {p1}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ly3/i0;-><init>(ILjava/lang/String;)V

    new-instance v0, Ly3/m0;

    invoke-direct {v0}, Ly3/m0;-><init>()V

    const/16 v1, 0x1a

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lw3/g2;->S(ILjava/lang/Object;)V

    invoke-virtual {v0, p1, p2}, Ly3/b0;->y0(Ly3/e;Ly3/e;)V

    return-object v0

    :cond_2
    const-string p2, "msg.no.colon.prop"

    const/4 v0, 0x1

    const/16 v1, 0x6a

    invoke-direct {p0, v1, p2, v0}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    new-instance p2, Ly3/m0;

    invoke-direct {p2}, Ly3/m0;-><init>()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    invoke-virtual {p2, v0}, Ly3/b0;->z0(I)V

    invoke-direct {p0}, Lw3/m2;->F()Ly3/e;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ly3/b0;->y0(Ly3/e;Ly3/e;)V

    return-object p2
.end method

.method private q()Ly3/e;
    .locals 5

    invoke-direct {p0}, Lw3/m2;->U0()Ly3/e;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    const/16 v3, 0x15

    if-eq v1, v3, :cond_1

    const/16 v3, 0x16

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lw3/m2;->U()V

    new-instance v3, Ly3/b0;

    invoke-direct {p0}, Lw3/m2;->U0()Ly3/e;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    move-object v0, v3

    goto :goto_0
.end method

.method private q0()V
    .locals 2

    iget-object v0, p0, Lw3/m2;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lw3/m2;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lw3/m2;->q1()V

    return-void
.end method

.method private r0()V
    .locals 2

    iget-object v0, p0, Lw3/m2;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private r1()Ly3/e;
    .locals 4

    invoke-direct {p0}, Lw3/m2;->l1()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    if-eqz v1, :cond_8

    const/16 v2, 0x18

    if-eq v1, v2, :cond_7

    const/16 v2, 0x55

    if-eq v1, v2, :cond_6

    const/16 v2, 0x57

    if-eq v1, v2, :cond_5

    const/16 v2, 0x59

    if-eq v1, v2, :cond_4

    const/16 v2, 0x66

    if-eq v1, v2, :cond_7

    const/16 v2, 0x70

    if-eq v1, v2, :cond_3

    const/16 v2, 0x82

    if-eq v1, v2, :cond_2

    const/16 v2, 0x96

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9c

    const/4 v3, 0x0

    invoke-direct {p0}, Lw3/m2;->U()V

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    const-string v0, "msg.syntax"

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    new-instance v3, Ly3/d0;

    sub-int/2addr v0, v2

    invoke-direct {v3, v2, v0, v1}, Ly3/d0;-><init>(III)V

    return-object v3

    :pswitch_1
    invoke-direct {p0}, Lw3/m2;->e0()Ly3/t0;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-direct {p0, v3}, Lw3/m2;->c0(Z)Ly3/k0;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-direct {p0, v0, v1}, Lw3/m2;->Y0(II)Ly3/e;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    invoke-direct {p0, v3, v0}, Lw3/m2;->I0(ZI)Ly3/e;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->V0()V

    invoke-direct {p0}, Lw3/m2;->G()Ly3/e;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v0}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.reserved.id"

    invoke-virtual {p0, v1, v0}, Lw3/m2;->B1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lw3/m2;->U()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lw3/m2;->w0(I)Ly3/w;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->g1()Ly3/e;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->d1()Ly3/l0;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->C()Ly3/e;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v0, v1}, Lw3/t3;->P(I)V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    new-instance v2, Ly3/p0;

    sub-int/2addr v0, v1

    invoke-direct {v2, v1, v0}, Ly3/p0;-><init>(II)V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v0}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ly3/p0;->y0(Ljava/lang/String;)V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v0}, Lw3/t3;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ly3/p0;->x0(Ljava/lang/String;)V

    return-object v2

    :cond_8
    invoke-direct {p0}, Lw3/m2;->U()V

    const-string v0, "msg.unexpected.eof"

    :goto_0
    invoke-virtual {p0, v0}, Lw3/m2;->z1(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lw3/m2;->U()V

    :goto_1
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-direct {p0}, Lw3/m2;->N0()Ly3/r;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private s0()Ly3/e;
    .locals 5

    invoke-direct {p0}, Lw3/m2;->S1()Ly3/e;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    const/16 v3, 0x4b

    if-eq v1, v3, :cond_0

    return-object v0

    :cond_0
    instance-of v3, v0, Ly3/z0;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lw3/g2;->H()I

    move-result v0

    invoke-static {v0}, Ly3/e;->o0(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg.no.unary.expr.on.left.exp"

    invoke-virtual {p0, v1, v0}, Lw3/m2;->B1(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lw3/m2;->N0()Ly3/r;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Lw3/m2;->U()V

    new-instance v3, Ly3/b0;

    invoke-direct {p0}, Lw3/m2;->s0()Ly3/e;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    move-object v0, v3

    goto :goto_0
.end method

.method private s1(ILy3/e;)Ly3/e;
    .locals 7

    if-nez p2, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->r:I

    iget v0, v0, Lw3/t3;->y:I

    invoke-direct {p0}, Lw3/m2;->U()V

    const/16 v2, 0x92

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lw3/m2;->V0()V

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v3}, Lw3/j;->n()Z

    move-result v3

    const-string v4, "msg.no.name.after.dot"

    const/16 v5, 0x27

    if-nez v3, :cond_4

    invoke-direct {p0}, Lw3/m2;->a1()I

    move-result p1

    if-eq p1, v5, :cond_3

    iget-object p1, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {p1}, Lw3/j;->l()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {p1}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v2}, Lw3/j;->c()I

    move-result v2

    iget-boolean v3, p0, Lw3/m2;->q:Z

    invoke-static {p1, v2, v3}, Lw3/t3;->z(Ljava/lang/String;IZ)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p0, v4}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_3
    const/4 p1, 0x1

    const/16 v2, 0x21

    invoke-direct {p0, p1, v2}, Lw3/m2;->a0(ZI)Ly3/i0;

    move-result-object p1

    new-instance v2, Ly3/o0;

    invoke-direct {v2, p2, p1, v0}, Ly3/o0;-><init>(Ly3/e;Ly3/i0;I)V

    invoke-virtual {v2, v1}, Lw3/g2;->a0(I)V

    return-object v2

    :cond_4
    invoke-direct {p0}, Lw3/m2;->a1()I

    move-result v1

    const/16 v3, 0x17

    const/4 v6, -0x1

    if-eq v1, v3, :cond_9

    if-eq v1, v5, :cond_a

    const/16 v3, 0x32

    if-eq v1, v3, :cond_8

    const/16 v3, 0x82

    if-eq v1, v3, :cond_7

    const/16 v3, 0x96

    if-eq v1, v3, :cond_6

    iget-object v3, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v3}, Lw3/j;->l()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Lw3/s3;->b(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Lw3/m2;->z1(Ljava/lang/String;)V

    invoke-direct {p0}, Lw3/m2;->N0()Ly3/r;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-direct {p0}, Lw3/m2;->G()Ly3/e;

    move-result-object v1

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v1}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v4, v3, Lw3/t3;->y:I

    iget v3, v3, Lw3/t3;->r:I

    invoke-direct {p0, v4, v1, v3}, Lw3/m2;->F1(ILjava/lang/String;I)V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v1, Lw3/t3;->y:I

    const-string v4, "throw"

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v1, Lw3/t3;->y:I

    const-string v4, "*"

    :goto_2
    iget v1, v1, Lw3/t3;->r:I

    invoke-direct {p0, v3, v4, v1}, Lw3/m2;->F1(ILjava/lang/String;I)V

    :cond_a
    :goto_3
    invoke-direct {p0, v6, v2}, Lw3/m2;->t1(II)Ly3/e;

    move-result-object v1

    :goto_4
    instance-of v2, v1, Ly3/m1;

    if-eqz v2, :cond_b

    new-instance v3, Ly3/k1;

    invoke-direct {v3}, Ly3/k1;-><init>()V

    goto :goto_5

    :cond_b
    new-instance v3, Ly3/o0;

    invoke-direct {v3}, Ly3/o0;-><init>()V

    :goto_5
    if-eqz v2, :cond_c

    const/16 v2, 0x6f

    if-ne p1, v2, :cond_c

    invoke-virtual {v3, v2}, Lw3/g2;->d0(I)Lw3/g2;

    :cond_c
    invoke-virtual {p2}, Ly3/e;->m0()I

    move-result p1

    invoke-virtual {v3, p1}, Ly3/e;->t0(I)V

    invoke-static {v1}, Lw3/m2;->E0(Ly3/e;)I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v3, v2}, Ly3/e;->r0(I)V

    sub-int/2addr v0, p1

    invoke-virtual {v3, v0}, Ly3/b0;->z0(I)V

    invoke-virtual {p2}, Ly3/e;->C()I

    move-result p1

    invoke-virtual {v3, p1}, Lw3/g2;->a0(I)V

    invoke-virtual {v3, p2}, Ly3/b0;->x0(Ly3/e;)V

    invoke-virtual {v3, v1}, Ly3/b0;->A0(Ly3/e;)V

    return-object v3
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p7}, Lw3/m2;->x(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private t0()Ly3/e;
    .locals 7

    invoke-direct {p0}, Lw3/m2;->F()Ly3/e;

    move-result-object v0

    invoke-virtual {v0}, Ly3/e;->m0()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    const/16 v3, 0x5b

    invoke-direct {p0, v3, v2}, Lw3/m2;->Q0(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    iget-object v4, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v4}, Lw3/j;->m()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ly3/e;->n0()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Lw3/m2;->b1(Ly3/e;)I

    move-result v4

    sub-int/2addr v4, v1

    const-string v5, "msg.no.side.effects"

    const-string v6, ""

    invoke-virtual {p0, v5, v6, v1, v4}, Lw3/m2;->s(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_1

    const-string v4, "msg.yield.parenthesized"

    invoke-virtual {p0, v4}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_1
    new-instance v4, Ly3/b0;

    invoke-direct {p0}, Lw3/m2;->F()Ly3/e;

    move-result-object v5

    invoke-direct {v4, v3, v0, v5, v2}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    move-object v0, v4

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private t1(II)Ly3/e;
    .locals 8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    :goto_0
    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->r:I

    iget v3, p0, Lw3/m2;->j:I

    const/4 v4, 0x1

    invoke-direct {p0, v4, v3}, Lw3/m2;->a0(ZI)Ly3/i0;

    move-result-object v3

    const/16 v5, 0x93

    invoke-direct {p0, v5, v4}, Lw3/m2;->Q0(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    iget v4, v4, Lw3/t3;->y:I

    invoke-direct {p0}, Lw3/m2;->a1()I

    move-result v5

    const/16 v6, 0x17

    if-eq v5, v6, :cond_3

    const/16 v6, 0x27

    if-eq v5, v6, :cond_2

    const/16 p2, 0x55

    if-eq v5, p2, :cond_1

    const-string p1, "msg.no.name.after.coloncolon"

    invoke-virtual {p0, p1}, Lw3/m2;->z1(Ljava/lang/String;)V

    invoke-direct {p0}, Lw3/m2;->N0()Ly3/r;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-direct {p0, p1, v3, v4}, Lw3/m2;->Y1(ILy3/i0;I)Ly3/g1;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-direct {p0}, Lw3/m2;->Z()Ly3/i0;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lw3/m2;->h:Lw3/t3;

    iget v6, v5, Lw3/t3;->y:I

    const-string v7, "*"

    iget v5, v5, Lw3/t3;->r:I

    invoke-direct {p0, v6, v7, v5}, Lw3/m2;->F1(ILjava/lang/String;I)V

    const/4 v5, 0x0

    invoke-direct {p0, v5, v0}, Lw3/m2;->a0(ZI)Ly3/i0;

    move-result-object v5

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    move-object v5, v3

    move-object v3, v4

    const/4 v4, -0x1

    :goto_1
    if-nez v3, :cond_5

    if-nez p2, :cond_5

    if-ne p1, v0, :cond_5

    return-object v5

    :cond_5
    new-instance p2, Ly3/l1;

    invoke-static {v5}, Lw3/m2;->E0(Ly3/e;)I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p2, v1, v0}, Ly3/l1;-><init>(II)V

    invoke-virtual {p2, p1}, Ly3/m1;->x0(I)V

    invoke-virtual {p2, v3}, Ly3/m1;->z0(Ly3/i0;)V

    invoke-virtual {p2, v4}, Ly3/m1;->y0(I)V

    invoke-virtual {p2, v5}, Ly3/l1;->B0(Ly3/i0;)V

    invoke-virtual {p2, v2}, Lw3/g2;->a0(I)V

    return-object p2
.end method

.method private u0()Ly3/h0;
    .locals 16

    move-object/from16 v1, p0

    iget v0, v1, Lw3/m2;->j:I

    const/16 v2, 0x7a

    if-eq v0, v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct/range {p0 .. p0}, Lw3/m2;->U()V

    iget-object v0, v1, Lw3/m2;->h:Lw3/t3;

    iget v2, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->r:I

    new-instance v3, Ly3/r0;

    invoke-direct {v3}, Ly3/r0;-><init>()V

    invoke-virtual {v1, v3}, Lw3/m2;->u1(Ly3/r0;)V

    const/16 v4, 0x27

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {v1, v4, v5}, Lw3/m2;->Q0(IZ)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v7, "msg.no.paren.for"

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    :try_start_1
    const-string v6, "each"

    iget-object v10, v1, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v10}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v1, Lw3/m2;->h:Lw3/t3;

    iget v6, v6, Lw3/t3;->y:I

    sub-int/2addr v6, v2

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v7}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_2
    const/4 v6, -0x1

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x59

    invoke-direct {v1, v11, v7, v5}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v1, Lw3/m2;->h:Lw3/t3;

    iget v7, v7, Lw3/t3;->y:I

    sub-int/2addr v7, v2

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    :goto_1
    invoke-direct/range {p0 .. p0}, Lw3/m2;->m1()I

    move-result v11

    invoke-direct {v1, v11}, Lw3/m2;->v0(I)Ly3/e;

    move-result-object v11

    const/16 v12, 0x34

    invoke-direct {v1, v12, v5}, Lw3/m2;->Q0(IZ)Z

    move-result v12

    const/16 v13, 0x5a

    const/4 v14, 0x0

    if-eqz v12, :cond_4

    iget-object v4, v1, Lw3/m2;->h:Lw3/t3;

    iget v4, v4, Lw3/t3;->y:I

    sub-int/2addr v4, v2

    invoke-direct/range {p0 .. p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v12

    move-object v15, v14

    const/4 v8, 0x1

    move-object v14, v12

    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_4
    iget-object v12, v1, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v12}, Lw3/j;->c()I

    move-result v12

    const/16 v15, 0xc8

    if-lt v12, v15, :cond_5

    invoke-direct {v1, v4, v5}, Lw3/m2;->Q0(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "of"

    iget-object v12, v1, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {v12}, Lw3/t3;->r()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v1, Lw3/m2;->h:Lw3/t3;

    iget v4, v4, Lw3/t3;->y:I

    sub-int/2addr v4, v2

    invoke-direct/range {p0 .. p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v12

    move-object v15, v14

    move-object v14, v12

    const/4 v12, 0x1

    goto :goto_4

    :cond_5
    const-string v4, "msg.no.semi.for"

    const/16 v12, 0x54

    invoke-direct {v1, v12, v4, v5}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    invoke-direct/range {p0 .. p0}, Lw3/m2;->m1()I

    move-result v4

    if-ne v4, v12, :cond_6

    new-instance v4, Ly3/p;

    iget-object v14, v1, Lw3/m2;->h:Lw3/t3;

    iget v14, v14, Lw3/t3;->y:I

    invoke-direct {v4, v14, v5}, Ly3/p;-><init>(II)V

    iget-object v14, v1, Lw3/m2;->h:Lw3/t3;

    iget v14, v14, Lw3/t3;->r:I

    invoke-virtual {v4, v14}, Lw3/g2;->a0(I)V

    goto :goto_2

    :cond_6
    invoke-direct/range {p0 .. p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v4

    :goto_2
    const-string v14, "msg.no.semi.for.cond"

    invoke-direct {v1, v12, v14, v5}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    iget-object v12, v1, Lw3/m2;->h:Lw3/t3;

    iget v12, v12, Lw3/t3;->z:I

    invoke-direct/range {p0 .. p0}, Lw3/m2;->m1()I

    move-result v14

    if-ne v14, v13, :cond_7

    new-instance v14, Ly3/p;

    invoke-direct {v14, v12, v5}, Ly3/p;-><init>(II)V

    iget-object v12, v1, Lw3/m2;->h:Lw3/t3;

    iget v12, v12, Lw3/t3;->r:I

    invoke-virtual {v14, v12}, Lw3/g2;->a0(I)V

    goto :goto_3

    :cond_7
    invoke-direct/range {p0 .. p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object v14

    :goto_3
    move-object v15, v14

    const/4 v12, 0x0

    move-object v14, v4

    const/4 v4, -0x1

    :goto_4
    const-string v9, "msg.no.paren.for.ctrl"

    invoke-direct {v1, v13, v9, v5}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v1, Lw3/m2;->h:Lw3/t3;

    iget v9, v9, Lw3/t3;->y:I

    sub-int/2addr v9, v2

    goto :goto_5

    :cond_8
    const/4 v9, -0x1

    :goto_5
    if-nez v8, :cond_a

    if-eqz v12, :cond_9

    goto :goto_6

    :cond_9
    new-instance v4, Ly3/u;

    invoke-direct {v4, v2}, Ly3/u;-><init>(I)V

    invoke-virtual {v4, v11}, Ly3/u;->Y0(Ly3/e;)V

    invoke-virtual {v4, v14}, Ly3/u;->W0(Ly3/e;)V

    invoke-virtual {v4, v15}, Ly3/u;->X0(Ly3/e;)V

    goto :goto_7

    :cond_a
    :goto_6
    new-instance v8, Ly3/t;

    invoke-direct {v8, v2}, Ly3/t;-><init>(I)V

    instance-of v13, v11, Ly3/b1;

    if-eqz v13, :cond_b

    move-object v13, v11

    check-cast v13, Ly3/b1;

    invoke-virtual {v13}, Ly3/b1;->w0()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-le v13, v5, :cond_b

    const-string v5, "msg.mult.index"

    invoke-virtual {v1, v5}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_b
    if-eqz v12, :cond_c

    if-eqz v10, :cond_c

    const-string v5, "msg.invalid.for.each"

    invoke-virtual {v1, v5}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v8, v11}, Ly3/t;->c1(Ly3/e;)V

    invoke-virtual {v8, v14}, Ly3/t;->b1(Ly3/e;)V

    invoke-virtual {v8, v4}, Ly3/t;->Y0(I)V

    invoke-virtual {v8, v10}, Ly3/t;->Z0(Z)V

    invoke-virtual {v8, v6}, Ly3/t;->X0(I)V

    invoke-virtual {v8, v12}, Ly3/t;->a1(Z)V

    move-object v4, v8

    :goto_7
    iget-object v5, v1, Lw3/m2;->s:Ly3/r0;

    invoke-virtual {v5, v4}, Ly3/r0;->M0(Ly3/r0;)V

    invoke-virtual/range {p0 .. p0}, Lw3/m2;->q1()V

    invoke-direct {v1, v4}, Lw3/m2;->n0(Ly3/h0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {v1, v4}, Lw3/m2;->D0(Ly3/e;)Ly3/e;

    move-result-object v5

    invoke-static {v5}, Lw3/m2;->E0(Ly3/e;)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v4, v6}, Ly3/e;->r0(I)V

    invoke-direct {v1, v4}, Lw3/m2;->D1(Ly3/h0;)V

    invoke-virtual {v4, v5}, Ly3/h0;->R0(Ly3/e;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lw3/m2;->q0()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v2, v1, Lw3/m2;->s:Ly3/r0;

    if-ne v2, v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lw3/m2;->q1()V

    :cond_d
    invoke-virtual {v4, v7, v9}, Ly3/h0;->S0(II)V

    invoke-virtual {v4, v0}, Lw3/g2;->a0(I)V

    return-object v4

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-direct/range {p0 .. p0}, Lw3/m2;->q0()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v2, v1, Lw3/m2;->s:Ly3/r0;

    if-ne v2, v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lw3/m2;->q1()V

    :cond_e
    throw v0
.end method

.method private v0(I)Ly3/e;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lw3/m2;->u:Z

    const/16 v2, 0x54

    if-ne p1, v2, :cond_0

    new-instance p1, Ly3/p;

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    invoke-direct {p1, v2, v0}, Ly3/p;-><init>(II)V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->r:I

    invoke-virtual {p1, v0}, Lw3/g2;->a0(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x7d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9c

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lw3/m2;->t0()Ly3/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw3/m2;->O0(Ly3/e;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v0, v0, Lw3/t3;->y:I

    invoke-direct {p0, p1, v0, v1}, Lw3/m2;->T1(IIZ)Ly3/b1;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-boolean v1, p0, Lw3/m2;->u:Z

    return-object p1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lw3/m2;->u:Z

    throw p1
.end method

.method private v1(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lw3/m2;->l:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw3/m2;->l:Ljava/util/List;

    :cond_0
    new-instance v0, Ly3/j;

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v1, Lw3/t3;->y:I

    invoke-virtual {v1}, Lw3/t3;->u()I

    move-result v1

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget-object v3, v3, Lw3/t3;->A:Lw3/s3$a;

    invoke-direct {v0, v2, v1, v3, p2}, Ly3/j;-><init>(IILw3/s3$a;Ljava/lang/String;)V

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget-object v1, v1, Lw3/t3;->A:Lw3/s3$a;

    sget-object v2, Lw3/s3$a;->c:Lw3/s3$a;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v1}, Lw3/j;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ly3/j;

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v2, Lw3/t3;->y:I

    invoke-virtual {v2}, Lw3/t3;->u()I

    move-result v2

    iget-object v4, p0, Lw3/m2;->h:Lw3/t3;

    iget-object v4, v4, Lw3/t3;->A:Lw3/s3$a;

    invoke-direct {v1, v3, v2, v4, p2}, Ly3/j;-><init>(IILw3/s3$a;Ljava/lang/String;)V

    iput-object v1, p0, Lw3/m2;->m:Ly3/j;

    invoke-virtual {v1, p1}, Lw3/g2;->a0(I)V

    :cond_1
    invoke-virtual {v0, p1}, Lw3/g2;->a0(I)V

    iget-object p1, p0, Lw3/m2;->l:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private w0(I)Ly3/w;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lw3/m2;->x0(IZ)Ly3/w;

    move-result-object p1

    return-object p1
.end method

.method private w1(Ly3/e0;Ly3/f0;)V
    .locals 4

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0}, Lw3/m2;->U()V

    invoke-virtual {p1}, Ly3/e0;->E0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lw3/m2;->v:Ljava/util/Map;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lw3/m2;->v:Ljava/util/Map;

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly3/f0;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v2}, Lw3/j;->i()Z

    move-result v2

    const-string v3, "msg.dup.label"

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ly3/f0;->x0(Ljava/lang/String;)Ly3/e0;

    move-result-object v1

    invoke-virtual {v1}, Ly3/e;->i0()I

    move-result v2

    invoke-virtual {v1}, Ly3/e;->k0()I

    move-result v1

    invoke-virtual {p0, v3, v2, v1}, Lw3/m2;->A1(Ljava/lang/String;II)V

    :cond_2
    invoke-virtual {p1}, Ly3/e;->m0()I

    move-result v1

    invoke-virtual {p1}, Ly3/e;->k0()I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Lw3/m2;->A1(Ljava/lang/String;II)V

    :cond_3
    :goto_0
    invoke-virtual {p2, p1}, Ly3/f0;->v0(Ly3/e0;)V

    iget-object p1, p0, Lw3/m2;->v:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private x(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lw3/m2;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p7}, Lw3/m2;->p(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lw3/m2;->c:Ly3/z;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lw3/m2;->d:Ljava/lang/String;

    invoke-interface {p1, v1, p2, p3, p4}, Ly3/z;->c(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw3/m2;->b:Lw3/z;

    iget-object v2, p0, Lw3/m2;->d:Ljava/lang/String;

    move v3, p5

    move-object v4, p6

    move v5, p7

    invoke-interface/range {v0 .. v5}, Lw3/z;->d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private x0(IZ)Ly3/w;
    .locals 11

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->r:I

    iget v0, v0, Lw3/t3;->y:I

    const/16 v2, 0x27

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lw3/m2;->Q0(IZ)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "msg.no.paren.parms"

    const/16 v7, 0x59

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    invoke-direct {p0, v3, v2}, Lw3/m2;->a0(ZI)Ly3/i0;

    move-result-object v2

    iget-boolean v4, p0, Lw3/m2;->q:Z

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v4

    const-string v9, "eval"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "arguments"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const-string v9, "msg.bad.id.strict"

    invoke-virtual {p0, v9, v4}, Lw3/m2;->B1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, v7, v3}, Lw3/m2;->Q0(IZ)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v4}, Lw3/j;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v5, v2}, Lw3/m2;->S0(ZLy3/e;)Ly3/e;

    move-result-object v2

    move-object v10, v8

    move-object v8, v2

    move-object v2, v10

    :cond_2
    invoke-direct {p0, v7, v6, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, v7, v3}, Lw3/m2;->Q0(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v8

    goto :goto_1

    :cond_4
    const/16 v2, 0x17

    invoke-direct {p0, v2, v3}, Lw3/m2;->Q0(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v2}, Lw3/j;->c()I

    move-result v2

    const/16 v4, 0xc8

    if-lt v2, v4, :cond_5

    invoke-direct {p0, p1, v3}, Lw3/m2;->x0(IZ)Ly3/w;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object v2, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v2}, Lw3/j;->f()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v5}, Lw3/m2;->R0(Z)Ly3/e;

    move-result-object v2

    goto :goto_0

    :cond_6
    move-object v2, v8

    :goto_0
    invoke-direct {p0, v7, v6, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    move-object v10, v8

    move-object v8, v2

    move-object v2, v10

    :cond_7
    :goto_1
    iget v3, p0, Lw3/m2;->j:I

    const/4 v4, -0x1

    if-ne v3, v7, :cond_8

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v3, Lw3/t3;->y:I

    goto :goto_2

    :cond_8
    const/4 v3, -0x1

    :goto_2
    const/4 v5, 0x2

    if-eqz v8, :cond_9

    const/4 v6, 0x2

    goto :goto_3

    :cond_9
    move v6, p1

    :goto_3
    if-eq v6, v5, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ly3/i0;->w0()I

    move-result v5

    if-lez v5, :cond_a

    const/16 v5, 0x70

    invoke-virtual {v2}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lw3/m2;->g0(ILjava/lang/String;)V

    :cond_a
    new-instance v5, Ly3/w;

    invoke-direct {v5, v0, v2}, Ly3/w;-><init>(ILy3/i0;)V

    invoke-virtual {v5, p1}, Ly3/w;->J1(I)V

    if-eqz p2, :cond_b

    invoke-virtual {v5}, Ly3/w;->K1()V

    :cond_b
    if-eq v3, v4, :cond_c

    sub-int/2addr v3, v0

    invoke-virtual {v5, v3}, Ly3/w;->N1(I)V

    :cond_c
    invoke-direct {p0}, Lw3/m2;->B0()Ly3/j;

    move-result-object p2

    invoke-virtual {v5, p2}, Lw3/g2;->Z(Ly3/j;)V

    new-instance p2, Lw3/m2$c;

    invoke-direct {p2, p0, v5}, Lw3/m2$c;-><init>(Lw3/m2;Ly3/w;)V

    :try_start_0
    invoke-direct {p0, v5}, Lw3/m2;->k1(Ly3/w;)V

    invoke-direct {p0, p1, v5}, Lw3/m2;->j1(ILy3/w;)Ly3/e;

    move-result-object p1

    invoke-virtual {v5, p1}, Ly3/w;->E1(Ly3/e;)V

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    iget p1, p1, Lw3/t3;->z:I

    invoke-virtual {v5, v0, p1}, Ly3/s0;->n1(II)V

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    iget p1, p1, Lw3/t3;->z:I

    sub-int/2addr p1, v0

    invoke-virtual {v5, p1}, Ly3/e;->r0(I)V

    iget-object p1, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {p1}, Lw3/j;->m()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v5}, Ly3/w;->t1()Ly3/e;

    move-result-object p1

    invoke-virtual {p1}, Lw3/g2;->J()Z

    move-result p1

    if-nez p1, :cond_f

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ly3/i0;->w0()I

    move-result p1

    if-lez p1, :cond_d

    const-string p1, "msg.no.return.value"

    goto :goto_4

    :cond_d
    const-string p1, "msg.anon.no.return.value"

    :goto_4
    if-nez v2, :cond_e

    const-string v0, ""

    goto :goto_5

    :cond_e
    invoke-virtual {v2}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {p0, p1, v0}, Lw3/m2;->r(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    invoke-virtual {p2}, Lw3/m2$c;->a()V

    if-eqz v8, :cond_10

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    invoke-virtual {v5, v8}, Ly3/w;->O1(Ly3/e;)V

    :cond_10
    iget-object p1, p0, Lw3/m2;->d:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ly3/s0;->q1(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ly3/s0;->l1(I)V

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    iget p1, p1, Lw3/t3;->r:I

    invoke-virtual {v5, p1}, Ly3/s0;->o1(I)V

    iget-object p1, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {p1}, Lw3/j;->i()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lw3/m2;->s:Ly3/r0;

    invoke-virtual {v5, p1}, Ly3/r0;->N0(Ly3/r0;)V

    :cond_11
    return-object v5

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lw3/m2$c;->a()V

    throw p1
.end method

.method private x1()Ly3/e;
    .locals 5

    invoke-direct {p0}, Lw3/m2;->J1()Ly3/e;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    iget-object v2, p0, Lw3/m2;->h:Lw3/t3;

    iget v2, v2, Lw3/t3;->y:I

    const/16 v3, 0x34

    if-eq v1, v3, :cond_0

    const/16 v3, 0x35

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Lw3/m2;->u:Z

    if-eqz v3, :cond_1

    :goto_1
    return-object v0

    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lw3/m2;->U()V

    new-instance v3, Ly3/b0;

    invoke-direct {p0}, Lw3/m2;->J1()Ly3/e;

    move-result-object v4

    invoke-direct {v3, v1, v0, v4, v2}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    move-object v0, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private y()Ly3/e;
    .locals 5

    invoke-direct {p0}, Lw3/m2;->J()Ly3/e;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x6c

    invoke-direct {p0, v2, v1}, Lw3/m2;->Q0(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    new-instance v3, Ly3/b0;

    invoke-direct {p0}, Lw3/m2;->y()Ly3/e;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, v1}, Ly3/b0;-><init>(ILy3/e;Ly3/e;I)V

    move-object v0, v3

    :cond_0
    return-object v0
.end method

.method private y0(Ly3/e;I)Ly3/e;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lw3/m2;->z0(Ly3/e;IZ)Ly3/e;

    move-result-object p1

    return-object p1
.end method

.method private z()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly3/e;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x5a

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lw3/m2;->Q0(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lw3/m2;->u:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lw3/m2;->u:Z

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v5

    if-ne v5, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v5

    const/16 v6, 0x49

    if-ne v5, v6, :cond_3

    const-string v5, "msg.yield.parenthesized"

    invoke-virtual {p0, v5}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lw3/m2;->F()Ly3/e;

    move-result-object v5

    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0x7a

    if-ne v6, v7, :cond_4

    :try_start_1
    invoke-direct {p0, v5, v4, v1}, Lw3/m2;->z0(Ly3/e;IZ)Ly3/e;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    :goto_0
    const/16 v5, 0x5b

    invoke-direct {p0, v5, v1}, Lw3/m2;->Q0(IZ)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_1

    :goto_1
    iput-boolean v3, p0, Lw3/m2;->u:Z

    const-string v3, "msg.no.paren.arg"

    invoke-direct {p0, v0, v3, v1}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    return-object v2

    :catchall_0
    move-exception v0

    iput-boolean v3, p0, Lw3/m2;->u:Z

    throw v0
.end method

.method private z0(Ly3/e;IZ)Ly3/e;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lw3/m2;->A0()Ly3/y;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lw3/m2;->m1()I

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lw3/m2;->U()V

    iget-object v1, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v1, Lw3/t3;->y:I

    sub-int/2addr v1, p2

    invoke-direct {p0}, Lw3/m2;->T()Lw3/m2$a;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_1
    if-nez p3, :cond_2

    const-string p3, "msg.no.paren.let"

    const/4 v3, 0x1

    const/16 v4, 0x5a

    invoke-direct {p0, v4, p3, v3}, Lw3/m2;->X0(ILjava/lang/String;Z)Z

    :cond_2
    new-instance p3, Ly3/x;

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    iget v3, v3, Lw3/t3;->z:I

    sub-int/2addr v3, p2

    invoke-direct {p3, p2, v3}, Ly3/x;-><init>(II)V

    invoke-virtual {p3, p1}, Ly3/x;->Z0(Ly3/e;)V

    invoke-virtual {p3, v0}, Ly3/x;->Y0(Ljava/util/List;)V

    if-eqz v2, :cond_3

    invoke-virtual {p3, v1}, Ly3/x;->X0(I)V

    iget-object p1, v2, Lw3/m2$a;->a:Ly3/e;

    invoke-virtual {p3, p1}, Ly3/x;->U0(Ly3/e;)V

    iget p1, v2, Lw3/m2$a;->b:I

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ly3/x;->V0(I)V

    iget p1, v2, Lw3/m2$a;->c:I

    sub-int/2addr p1, p2

    invoke-virtual {p3, p1}, Ly3/x;->W0(I)V

    :cond_3
    return-object p3
.end method


# virtual methods
.method A1(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lw3/m2;->C1(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method B1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, v0}, Lw3/m2;->C1(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lw3/m2;->C1(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method C1(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lw3/m2;->o(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object p1, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {p1}, Lw3/j;->o()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lw3/m2$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lw3/m2$b;-><init>(Lw3/n2;)V

    throw p1
.end method

.method public G0()Z
    .locals 1

    iget-boolean v0, p0, Lw3/m2;->q:Z

    return v0
.end method

.method public G1(Z)V
    .locals 0

    iput-boolean p1, p0, Lw3/m2;->B:Z

    return-void
.end method

.method H0()Z
    .locals 1

    iget v0, p0, Lw3/m2;->n:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected H1()V
    .locals 1

    invoke-virtual {p0}, Lw3/m2;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/m2;->r:Ly3/s0;

    check-cast v0, Ly3/w;

    invoke-virtual {v0}, Ly3/w;->M1()V

    :cond_0
    return-void
.end method

.method protected I1()V
    .locals 1

    invoke-virtual {p0}, Lw3/m2;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw3/m2;->r:Ly3/s0;

    check-cast v0, Ly3/w;

    invoke-virtual {v0}, Ly3/w;->Q1()V

    :cond_0
    return-void
.end method

.method protected K1(Lw3/g2;Lw3/g2;)Lw3/g2;
    .locals 3

    invoke-virtual {p1}, Lw3/g2;->H()I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_4

    const/16 v2, 0x24

    if-eq v0, v2, :cond_4

    const/16 v1, 0x27

    if-eq v0, v1, :cond_1

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lw3/g2;->x()Lw3/g2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw3/m2;->Q(Lw3/g2;)V

    new-instance v0, Lw3/g2;

    const/16 v1, 0x45

    invoke-direct {v0, v1, p1, p2}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    return-object v0

    :cond_0
    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    move-object v0, p1

    check-cast v0, Ly3/i0;

    invoke-virtual {v0}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lw3/m2;->q:Z

    if-eqz v1, :cond_3

    const-string v1, "eval"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "arguments"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "msg.bad.id.strict"

    invoke-virtual {p0, v1, v0}, Lw3/m2;->B1(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lw3/g2;->d0(I)Lw3/g2;

    new-instance v0, Lw3/g2;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1, p2}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    return-object v0

    :cond_4
    instance-of v2, p1, Ly3/o0;

    if-eqz v2, :cond_5

    check-cast p1, Ly3/o0;

    invoke-virtual {p1}, Ly3/o0;->C0()Ly3/e;

    move-result-object v2

    invoke-virtual {p1}, Ly3/o0;->B0()Ly3/i0;

    move-result-object p1

    goto :goto_0

    :cond_5
    instance-of v2, p1, Ly3/o;

    if-eqz v2, :cond_6

    check-cast p1, Ly3/o;

    invoke-virtual {p1}, Ly3/o;->w0()Ly3/e;

    move-result-object v2

    invoke-virtual {p1}, Ly3/o;->v0()Ly3/e;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lw3/g2;->x()Lw3/g2;

    move-result-object v2

    invoke-virtual {p1}, Lw3/g2;->A()Lw3/g2;

    move-result-object p1

    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Lw3/g2;->d0(I)Lw3/g2;

    const/16 v0, 0x23

    goto :goto_1

    :cond_7
    const/16 v0, 0x25

    :goto_1
    new-instance v1, Lw3/g2;

    invoke-direct {v1, v0, v2, p1, p2}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;Lw3/g2;)V

    return-object v1
.end method

.method L0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lw3/m2;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lw3/u2;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-static {p1, v1}, Lw3/u2;->a0(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected N(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p0}, Lw3/m2;->H0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "arguments"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lw3/m2;->r:Ly3/s0;

    check-cast v0, Ly3/w;

    invoke-virtual {v0}, Ly3/w;->v1()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->a()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x21

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {p1}, Lw3/j;->c()I

    move-result p1

    const/16 p2, 0x78

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lw3/m2;->I1()V

    :cond_4
    return-void
.end method

.method O0(Ly3/e;)V
    .locals 1

    instance-of v0, p1, Ly3/m;

    if-eqz v0, :cond_0

    check-cast p1, Ly3/m;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ly3/m;->a(Z)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ly3/n0;

    if-eqz v0, :cond_1

    check-cast p1, Ly3/n0;

    invoke-virtual {p1}, Ly3/n0;->v0()Ly3/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw3/m2;->O0(Ly3/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected Q(Lw3/g2;)V
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lw3/g2;->z(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const-string p1, "msg.bad.assign.left"

    invoke-virtual {p0, p1}, Lw3/m2;->z1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method W(ILw3/g2;Lw3/g2;)Lw3/g2;
    .locals 1

    iget-object v0, p0, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {v0}, Ly3/s0;->b1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lw3/m2;->j0(ILw3/g2;Lw3/g2;Ljava/lang/String;)Lw3/g2;

    move-result-object p1

    invoke-virtual {p1}, Lw3/g2;->A()Lw3/g2;

    move-result-object p2

    invoke-virtual {p0, v0}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object p3

    invoke-virtual {p2, p3}, Lw3/g2;->f(Lw3/g2;)V

    return-object p1
.end method

.method protected X(ILjava/lang/String;Lw3/g2;)Lw3/g2;
    .locals 0

    invoke-virtual {p0, p2}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lw3/g2;->d0(I)Lw3/g2;

    if-eqz p3, :cond_0

    invoke-virtual {p2, p3}, Lw3/g2;->f(Lw3/g2;)V

    :cond_0
    return-object p2
.end method

.method protected Y(Ljava/lang/String;)Lw3/g2;
    .locals 1

    const/16 v0, 0x27

    invoke-virtual {p0, p1, v0}, Lw3/m2;->N(Ljava/lang/String;I)V

    invoke-static {v0, p1}, Lw3/g2;->O(ILjava/lang/String;)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method protected b0(D)Lw3/g2;
    .locals 0

    invoke-static {p1, p2}, Lw3/g2;->N(D)Lw3/g2;

    move-result-object p1

    return-object p1
.end method

.method protected d0(II)Ly3/r0;
    .locals 1

    new-instance v0, Ly3/r0;

    invoke-direct {v0}, Ly3/r0;-><init>()V

    invoke-virtual {v0, p1}, Lw3/g2;->d0(I)Lw3/g2;

    invoke-virtual {v0, p2}, Lw3/g2;->a0(I)V

    return-object v0
.end method

.method g0(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    return-void
.end method

.method h0(ILjava/lang/String;Z)V
    .locals 9

    if-nez p2, :cond_1

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    :cond_1
    iget-object v0, p0, Lw3/m2;->s:Ly3/r0;

    invoke-virtual {v0, p2}, Ly3/r0;->G0(Ljava/lang/String;)Ly3/r0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ly3/r0;->I0(Ljava/lang/String;)Ly3/w0;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ly3/w0;->b()I

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_1
    const-string v3, "msg.var.redecl"

    const/16 v4, 0x70

    const/16 v5, 0x9c

    const/16 v6, 0x7d

    const/16 v7, 0x9d

    if-eqz v1, :cond_9

    if-eq v2, v7, :cond_4

    if-eq p1, v7, :cond_4

    iget-object v8, p0, Lw3/m2;->s:Ly3/r0;

    if-ne v0, v8, :cond_9

    if-ne v2, v5, :cond_9

    :cond_4
    if-ne v2, v7, :cond_5

    const-string v3, "msg.const.redecl"

    goto :goto_2

    :cond_5
    if-ne v2, v5, :cond_6

    const-string v3, "msg.let.redecl"

    goto :goto_2

    :cond_6
    if-ne v2, v6, :cond_7

    goto :goto_2

    :cond_7
    if-ne v2, v4, :cond_8

    const-string v3, "msg.fn.redecl"

    goto :goto_2

    :cond_8
    const-string v3, "msg.parm.redecl"

    :goto_2
    invoke-virtual {p0, v3, p2}, Lw3/m2;->n(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const/16 v0, 0x59

    if-eq p1, v0, :cond_12

    if-eq p1, v4, :cond_e

    if-eq p1, v6, :cond_e

    if-eq p1, v5, :cond_b

    if-ne p1, v7, :cond_a

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_b
    if-nez p3, :cond_d

    iget-object p3, p0, Lw3/m2;->s:Ly3/r0;

    invoke-virtual {p3}, Lw3/g2;->H()I

    move-result p3

    const/16 v0, 0x73

    if-eq p3, v0, :cond_c

    iget-object p3, p0, Lw3/m2;->s:Ly3/r0;

    instance-of p3, p3, Ly3/h0;

    if-eqz p3, :cond_d

    :cond_c
    const-string p1, "msg.let.decl.not.in.block"

    invoke-virtual {p0, p1}, Lw3/m2;->k(Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object p3, p0, Lw3/m2;->s:Ly3/r0;

    new-instance v0, Ly3/w0;

    invoke-direct {v0, p1, p2}, Ly3/w0;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Ly3/r0;->L0(Ly3/w0;)V

    return-void

    :cond_e
    :goto_3
    if-eqz v1, :cond_10

    if-ne v2, v6, :cond_f

    invoke-virtual {p0, v3, p2}, Lw3/m2;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    if-ne v2, v0, :cond_11

    const-string p1, "msg.var.hides.arg"

    invoke-virtual {p0, p1, p2}, Lw3/m2;->r(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    iget-object p3, p0, Lw3/m2;->r:Ly3/s0;

    new-instance v0, Ly3/w0;

    invoke-direct {v0, p1, p2}, Ly3/w0;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Ly3/r0;->L0(Ly3/w0;)V

    :cond_11
    :goto_4
    return-void

    :cond_12
    if-eqz v1, :cond_13

    const-string p3, "msg.dup.parms"

    invoke-virtual {p0, p3, p2}, Lw3/m2;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iget-object p3, p0, Lw3/m2;->r:Ly3/s0;

    new-instance v0, Ly3/w0;

    invoke-direct {v0, p1, p2}, Ly3/w0;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, v0}, Ly3/r0;->L0(Ly3/w0;)V

    return-void
.end method

.method i0(Ly3/c;ILjava/lang/String;Lw3/g2;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/c;",
            "I",
            "Ljava/lang/String;",
            "Lw3/g2;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0x9d

    if-ne p2, v0, :cond_0

    const/16 v0, 0x9e

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1}, Ly3/c;->x0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly3/e;

    invoke-virtual {v5}, Lw3/g2;->H()I

    move-result v6

    const/16 v7, 0x83

    if-ne v6, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lw3/g2;

    invoke-virtual {p0, p3}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v6

    int-to-double v7, v4

    invoke-virtual {p0, v7, v8}, Lw3/m2;->b0(D)Lw3/g2;

    move-result-object v7

    const/16 v8, 0x24

    invoke-direct {v3, v8, v6, v7}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    invoke-virtual {v5}, Lw3/g2;->H()I

    move-result v6

    const/16 v7, 0x27

    if-ne v6, v7, :cond_2

    invoke-virtual {v5}, Lw3/g2;->G()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lw3/g2;

    const/16 v7, 0x31

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v5, v8}, Lw3/m2;->X(ILjava/lang/String;Lw3/g2;)Lw3/g2;

    move-result-object v7

    invoke-direct {v6, v0, v7, v3}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    invoke-virtual {p4, v6}, Lw3/g2;->f(Lw3/g2;)V

    const/4 v3, -0x1

    if-eq p2, v3, :cond_3

    invoke-virtual {p0, p2, v5, v2}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    invoke-interface {p5, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {v6}, Ly3/s0;->b1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v5, v3, v6}, Lw3/m2;->j0(ILw3/g2;Lw3/g2;Ljava/lang/String;)Lw3/g2;

    move-result-object v3

    invoke-virtual {p4, v3}, Lw3/g2;->f(Lw3/g2;)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    return v3
.end method

.method public i1(Ljava/lang/String;Ljava/lang/String;I)Ly3/f;
    .locals 1

    iget-boolean v0, p0, Lw3/m2;->g:Z

    if-nez v0, :cond_1

    iput-object p2, p0, Lw3/m2;->d:Ljava/lang/String;

    iget-object p2, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {p2}, Lw3/j;->i()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iput-object p2, p0, Lw3/m2;->e:[C

    :cond_0
    new-instance p2, Lw3/t3;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, p1, p3}, Lw3/t3;-><init>(Lw3/m2;Ljava/io/Reader;Ljava/lang/String;I)V

    iput-object p2, p0, Lw3/m2;->h:Lw3/t3;

    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lw3/m2;->h1()Ly3/f;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p1, p0, Lw3/m2;->g:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean p1, p0, Lw3/m2;->g:Z

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "parser reused"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method j0(ILw3/g2;Lw3/g2;Ljava/lang/String;)Lw3/g2;
    .locals 10

    invoke-virtual {p2}, Lw3/g2;->C()I

    move-result v0

    const/16 v1, 0xa1

    invoke-virtual {p0, v1, v0}, Lw3/m2;->d0(II)Ly3/r0;

    move-result-object v0

    new-instance v1, Lw3/g2;

    const/16 v2, 0x27

    invoke-virtual {p0, v2, p4, p3}, Lw3/m2;->X(ILjava/lang/String;Lw3/g2;)Lw3/g2;

    move-result-object p3

    const/16 v2, 0x9c

    invoke-direct {v1, v2, p3}, Lw3/g2;-><init>(ILw3/g2;)V

    invoke-virtual {v0, v1}, Lw3/g2;->h(Lw3/g2;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lw3/m2;->u1(Ly3/r0;)V

    const/4 p3, 0x1

    invoke-virtual {p0, v2, p4, p3}, Lw3/m2;->h0(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lw3/m2;->q1()V

    new-instance v1, Lw3/g2;

    const/16 v3, 0x5b

    invoke-direct {v1, v3}, Lw3/g2;-><init>(I)V

    invoke-virtual {v0, v1}, Lw3/g2;->f(Lw3/g2;)V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lw3/g2;->H()I

    move-result v3

    const/16 v4, 0x21

    const-string v5, "msg.bad.assign.left"

    if-eq v3, v4, :cond_2

    const/16 v4, 0x24

    if-eq v3, v4, :cond_2

    const/16 v2, 0x42

    if-eq v3, v2, :cond_1

    const/16 v2, 0x43

    if-eq v3, v2, :cond_0

    invoke-virtual {p0, v5}, Lw3/m2;->z1(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v4, p2

    check-cast v4, Ly3/l0;

    move-object v3, p0

    move v5, p1

    move-object v6, p4

    move-object v7, v1

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lw3/m2;->k0(Ly3/l0;ILjava/lang/String;Lw3/g2;Ljava/util/List;)Z

    move-result p3

    goto :goto_1

    :cond_1
    move-object v4, p2

    check-cast v4, Ly3/c;

    move-object v3, p0

    move v5, p1

    move-object v6, p4

    move-object v7, v1

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lw3/m2;->i0(Ly3/c;ILjava/lang/String;Lw3/g2;Ljava/util/List;)Z

    move-result p3

    goto :goto_1

    :cond_2
    const/16 v3, 0x7d

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_3

    const/16 v2, 0x9d

    if-eq p1, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5}, Lw3/m2;->z1(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p4}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lw3/m2;->K1(Lw3/g2;Lw3/g2;)Lw3/g2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lw3/g2;->f(Lw3/g2;)V

    :goto_1
    if-eqz p3, :cond_4

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lw3/m2;->b0(D)Lw3/g2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lw3/g2;->f(Lw3/g2;)V

    :cond_4
    const/16 p1, 0x16

    invoke-virtual {v0, p1, v9}, Lw3/g2;->S(ILjava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lw3/m2;->q1()V

    throw p1
.end method

.method k(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v1, v0}, Lw3/m2;->m(Ljava/lang/String;II)V

    return-void
.end method

.method k0(Ly3/l0;ILjava/lang/String;Lw3/g2;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly3/l0;",
            "I",
            "Ljava/lang/String;",
            "Lw3/g2;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/16 v0, 0x9d

    if-ne p2, v0, :cond_0

    const/16 v0, 0x9e

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1}, Ly3/l0;->w0()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ly3/m0;

    iget-object v3, p0, Lw3/m2;->h:Lw3/t3;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget v3, v3, Lw3/t3;->r:I

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2}, Ly3/b0;->v0()Ly3/e;

    move-result-object v5

    instance-of v6, v5, Ly3/i0;

    const/16 v7, 0x21

    if-eqz v6, :cond_2

    check-cast v5, Ly3/i0;

    invoke-virtual {v5}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lw3/g2;->P(Ljava/lang/String;)Lw3/g2;

    move-result-object v5

    new-instance v6, Lw3/g2;

    invoke-virtual {p0, p3}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    goto :goto_3

    :cond_2
    instance-of v6, v5, Ly3/t0;

    if-eqz v6, :cond_3

    check-cast v5, Ly3/t0;

    invoke-virtual {v5}, Ly3/t0;->v0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lw3/g2;->P(Ljava/lang/String;)Lw3/g2;

    move-result-object v5

    new-instance v6, Lw3/g2;

    invoke-virtual {p0, p3}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    goto :goto_3

    :cond_3
    instance-of v6, v5, Ly3/k0;

    if-eqz v6, :cond_6

    check-cast v5, Ly3/k0;

    invoke-virtual {v5}, Ly3/k0;->v0()D

    move-result-wide v5

    double-to-int v5, v5

    int-to-double v5, v5

    invoke-virtual {p0, v5, v6}, Lw3/m2;->b0(D)Lw3/g2;

    move-result-object v5

    new-instance v6, Lw3/g2;

    const/16 v7, 0x24

    invoke-virtual {p0, p3}, Lw3/m2;->Y(Ljava/lang/String;)Lw3/g2;

    move-result-object v8

    invoke-direct {v6, v7, v8, v5}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    :goto_3
    invoke-virtual {v6, v3}, Lw3/g2;->a0(I)V

    invoke-virtual {v2}, Ly3/b0;->w0()Ly3/e;

    move-result-object v2

    invoke-virtual {v2}, Lw3/g2;->H()I

    move-result v3

    const/16 v5, 0x27

    if-ne v3, v5, :cond_4

    check-cast v2, Ly3/i0;

    invoke-virtual {v2}, Ly3/i0;->v0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lw3/g2;

    const/16 v5, 0x31

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v2, v7}, Lw3/m2;->X(ILjava/lang/String;Lw3/g2;)Lw3/g2;

    move-result-object v5

    invoke-direct {v3, v0, v5, v6}, Lw3/g2;-><init>(ILw3/g2;Lw3/g2;)V

    invoke-virtual {p4, v3}, Lw3/g2;->f(Lw3/g2;)V

    const/4 v3, -0x1

    if-eq p2, v3, :cond_5

    invoke-virtual {p0, p2, v2, v1}, Lw3/m2;->h0(ILjava/lang/String;Z)V

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lw3/m2;->r:Ly3/s0;

    invoke-virtual {v3}, Ly3/s0;->b1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v6, v3}, Lw3/m2;->j0(ILw3/g2;Lw3/g2;Ljava/lang/String;)Lw3/g2;

    move-result-object v2

    invoke-virtual {p4, v2}, Lw3/g2;->f(Lw3/g2;)V

    :cond_5
    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_7
    return v2
.end method

.method l(Ljava/lang/String;I)V
    .locals 2

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lw3/m2;->o(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method m(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lw3/m2;->o(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    iget v1, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lw3/m2;->o(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method o(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    iget v0, p0, Lw3/m2;->k:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lw3/m2;->k:I

    invoke-virtual {p0, p1, p2}, Lw3/m2;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lw3/m2;->c:Ly3/z;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lw3/m2;->d:Ljava/lang/String;

    invoke-interface {p1, v3, p2, p3, p4}, Ly3/z;->b(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lw3/t3;->m()I

    move-result v1

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {p1}, Lw3/t3;->k()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {p2}, Lw3/t3;->p()I

    move-result p2

    move-object v6, p1

    move v7, p2

    move v5, v1

    goto :goto_0

    :cond_1
    const-string p1, ""

    move-object v6, p1

    const/4 v5, 0x1

    const/4 v7, 0x1

    :goto_0
    iget-object v2, p0, Lw3/m2;->b:Lw3/z;

    iget-object v4, p0, Lw3/m2;->d:Ljava/lang/String;

    invoke-interface/range {v2 .. v7}, Lw3/z;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_1
    return-void
.end method

.method q1()V
    .locals 1

    iget-object v0, p0, Lw3/m2;->s:Ly3/r0;

    invoke-virtual {v0}, Ly3/r0;->H0()Ly3/r0;

    move-result-object v0

    iput-object v0, p0, Lw3/m2;->s:Ly3/r0;

    return-void
.end method

.method r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    if-eqz v0, :cond_0

    iget v1, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Lw3/m2;->s(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method s(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lw3/m2;->w(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method u(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lw3/m2;->w(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method u1(Ly3/r0;)V
    .locals 2

    invoke-virtual {p1}, Ly3/r0;->H0()Ly3/r0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lw3/m2;->s:Ly3/r0;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lw3/m2;->R()Ljava/lang/RuntimeException;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw3/m2;->s:Ly3/r0;

    invoke-virtual {v0, p1}, Ly3/r0;->E0(Ly3/r0;)V

    :cond_1
    :goto_0
    iput-object p1, p0, Lw3/m2;->s:Ly3/r0;

    return-void
.end method

.method v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lw3/m2;->h:Lw3/t3;

    if-eqz v0, :cond_0

    iget v1, v0, Lw3/t3;->y:I

    iget v0, v0, Lw3/t3;->z:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v1, v0}, Lw3/m2;->w(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method w(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    invoke-virtual {p0, p1, p2}, Lw3/m2;->M0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lw3/m2;->a:Lw3/j;

    invoke-virtual {v0}, Lw3/j;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lw3/m2;->o(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lw3/m2;->c:Ly3/z;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lw3/m2;->d:Ljava/lang/String;

    invoke-interface {p1, v1, p2, p3, p4}, Ly3/z;->c(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lw3/m2;->b:Lw3/z;

    iget-object v2, p0, Lw3/m2;->d:Ljava/lang/String;

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {p1}, Lw3/t3;->m()I

    move-result v3

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {p1}, Lw3/t3;->k()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lw3/m2;->h:Lw3/t3;

    invoke-virtual {p1}, Lw3/t3;->p()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lw3/z;->d(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method protected y1(Ly3/e;)Ly3/e;
    .locals 1

    :goto_0
    instance-of v0, p1, Ly3/n0;

    if-eqz v0, :cond_0

    check-cast p1, Ly3/n0;

    invoke-virtual {p1}, Ly3/n0;->v0()Ly3/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method z1(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lw3/m2;->B1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
