.class public final Lw3/u;
.super Lw3/n0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/u$b;,
        Lw3/u$a;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/Object;


# instance fields
.field private j:Lw3/i1;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Lw3/u$a;

.field private o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Generator"

    sput-object v0, Lw3/u;->p:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lw3/n0;-><init>()V

    sget-object v0, Lw3/u$a;->a:Lw3/u$a;

    iput-object v0, p0, Lw3/u;->n:Lw3/u$a;

    return-void
.end method

.method public constructor <init>(Lw3/z2;Lw3/i1;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lw3/n0;-><init>()V

    sget-object v0, Lw3/u$a;->a:Lw3/u$a;

    iput-object v0, p0, Lw3/u;->n:Lw3/u$a;

    iput-object p2, p0, Lw3/u;->j:Lw3/i1;

    iput-object p3, p0, Lw3/u;->k:Ljava/lang/Object;

    invoke-static {p1}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lw3/a3;->h(Lw3/z2;)V

    sget-object p2, Lw3/u;->p:Ljava/lang/Object;

    invoke-static {p1, p2}, Lw3/a3;->H0(Lw3/z2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/u;

    invoke-virtual {p0, p1}, Lw3/a3;->A(Lw3/z2;)V

    return-void
.end method

.method private I1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lw3/w3;->a:Ljava/lang/Object;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    sget-object p3, Lw3/u2;->y:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v2

    move-object p3, v1

    :goto_0
    iget-object v1, p0, Lw3/u;->o:Ljava/lang/Object;

    const-string v4, "return"

    invoke-static {v1, v4, p1, p2}, Lw3/u2;->i0(Ljava/lang/Object;Ljava/lang/String;Lw3/m;Lw3/z2;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v1, Lw3/f;

    if-eqz v0, :cond_1

    check-cast v1, Lw3/f;

    iget-object v0, p0, Lw3/u;->o:Ljava/lang/Object;

    invoke-static {v0}, Lw3/a3;->b0(Ljava/lang/Object;)Lw3/z2;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0, p3}, Lw3/f;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v4, p1, v2

    invoke-static {v1}, Lw3/u2;->r2(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "msg.isnt.function"

    invoke-static {p2, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static J1(Lw3/a3;Z)Lw3/u;
    .locals 2

    new-instance v0, Lw3/u;

    invoke-direct {v0}, Lw3/u;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lw3/a3;->h(Lw3/z2;)V

    invoke-static {p0}, Lw3/a3;->z0(Lw3/z2;)Lw3/z2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/a3;->A(Lw3/z2;)V

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lw3/n0;->h1(I)V

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lw3/a3;->c1()V

    :cond_1
    if-eqz p0, :cond_2

    sget-object p1, Lw3/u;->p:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lw3/a3;->I(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method private K1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Lw3/z2;
    .locals 13

    move-object v1, p0

    move-object v0, p1

    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v2, p4

    const-string v8, "value"

    iget-object v3, v1, Lw3/u;->n:Lw3/u$a;

    sget-object v6, Lw3/u$a;->c:Lw3/u$a;

    if-eq v3, v6, :cond_a

    sget-object v7, Lw3/u$a;->a:Lw3/u$a;

    if-ne v3, v7, :cond_0

    sget-object v3, Lw3/u$a;->d:Lw3/u$a;

    iput-object v3, v1, Lw3/u;->n:Lw3/u$a;

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v3}, Lw3/v;->L1(Lw3/m;Lw3/z2;Ljava/lang/Boolean;)Lw3/z2;

    move-result-object v9

    iget-object v3, v1, Lw3/u;->n:Lw3/u$a;

    sget-object v10, Lw3/u$a;->d:Lw3/u$a;

    const-string v11, "done"

    if-ne v3, v10, :cond_2

    const/4 v0, 0x1

    if-eq v5, v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v11, v0}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v9

    :cond_1
    new-instance v0, Lw3/u0;

    iget-object v3, v1, Lw3/u;->l:Ljava/lang/String;

    iget v4, v1, Lw3/u;->m:I

    invoke-direct {v0, v2, v3, v4}, Lw3/u0;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    throw v0

    :cond_2
    iput-object v6, v1, Lw3/u;->n:Lw3/u$a;

    const/4 v3, 0x2

    if-ne v5, v3, :cond_3

    instance-of v3, v2, Lw3/j1$a;

    if-nez v3, :cond_5

    new-instance v2, Lw3/j1$a;

    invoke-direct {v2}, Lw3/j1$a;-><init>()V

    goto :goto_0

    :cond_3
    instance-of v3, v2, Lw3/u0;

    if-eqz v3, :cond_4

    check-cast v2, Lw3/u0;

    invoke-virtual {v2}, Lw3/u0;->m()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_4
    instance-of v3, v2, Lw3/s2;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2, p2, p1}, Lw3/u2;->B2(Ljava/lang/Throwable;Lw3/z2;Lw3/m;)Lw3/z2;

    move-result-object v2

    :cond_5
    :goto_0
    move-object v7, v2

    const/4 v12, 0x0

    :try_start_0
    iget-object v2, v1, Lw3/u;->j:Lw3/i1;

    iget-object v6, v1, Lw3/u;->k:Ljava/lang/Object;

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lw3/i1;->h2(Lw3/m;Lw3/z2;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lw3/u$a;->b:Lw3/u$a;

    iput-object v0, v1, Lw3/u;->n:Lw3/u$a;
    :try_end_0
    .catch Lw3/j1$a; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lw3/u0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lw3/s2; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v10, :cond_8

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v2, Lw3/u$a;->d:Lw3/u$a;

    iput-object v2, v1, Lw3/u;->n:Lw3/u$a;

    invoke-virtual {v0}, Lw3/s2;->i()I

    move-result v2

    iput v2, v1, Lw3/u;->m:I

    invoke-virtual {v0}, Lw3/s2;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lw3/u;->l:Ljava/lang/String;

    throw v0

    :catch_1
    move-exception v0

    sget-object v2, Lw3/u$a;->d:Lw3/u$a;

    iput-object v2, v1, Lw3/u;->n:Lw3/u$a;

    invoke-virtual {v0}, Lw3/u0;->m()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lw3/l1$a;

    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lw3/u0;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/l1$a;

    invoke-virtual {v0}, Lw3/l1$a;->K1()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v9, v8, v0}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lw3/u;->n:Lw3/u$a;

    if-ne v0, v2, :cond_8

    goto :goto_1

    :cond_6
    :try_start_2
    invoke-virtual {v0}, Lw3/s2;->i()I

    move-result v2

    iput v2, v1, Lw3/u;->m:I

    invoke-virtual {v0}, Lw3/s2;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lw3/u;->l:Ljava/lang/String;

    invoke-virtual {v0}, Lw3/u0;->m()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lw3/s2;

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lw3/u0;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/s2;

    throw v0

    :cond_7
    throw v0

    :catch_2
    sget-object v0, Lw3/u$a;->d:Lw3/u$a;

    iput-object v0, v1, Lw3/u;->n:Lw3/u$a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iput-object v12, v1, Lw3/u;->o:Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v11, v0}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    return-object v9

    :goto_2
    iget-object v2, v1, Lw3/u;->n:Lw3/u$a;

    sget-object v3, Lw3/u$a;->d:Lw3/u$a;

    if-ne v2, v3, :cond_9

    iput-object v12, v1, Lw3/u;->o:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v9, v11, v2}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    throw v0

    :cond_a
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "msg.generator.executing"

    invoke-static {v2, v0}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object v0

    throw v0
.end method

.method private L1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lw3/w3;->a:Ljava/lang/Object;

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p3, Lw3/u2;->y:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    move-object p3, v2

    :goto_0
    iget-object v2, p0, Lw3/u;->o:Ljava/lang/Object;

    const-string v3, "next"

    invoke-static {v2, v3, p1, p2}, Lw3/u2;->j0(Ljava/lang/Object;Ljava/lang/String;Lw3/m;Lw3/z2;)Lw3/f;

    move-result-object v2

    invoke-static {p1}, Lw3/u2;->L0(Lw3/m;)Lw3/z2;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3, p3}, Lw3/f;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lw3/a3;->b0(Ljava/lang/Object;)Lw3/z2;

    move-result-object p3

    invoke-static {p1, p3}, Lw3/u2;->z0(Lw3/m;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lw3/u;->o:Ljava/lang/Object;

    const-string v2, "value"

    invoke-static {p3, v2}, Lw3/a3;->C0(Lw3/z2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lw3/u;->O1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1
    :try_end_0
    .catch Lw3/s2; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object p3

    :catch_0
    move-exception p3

    iput-object v1, p0, Lw3/u;->o:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, p3}, Lw3/u;->K1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1
.end method

.method private M1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lw3/u;->I1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-static {p1, v1}, Lw3/u2;->z0(Lw3/m;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object v0, p0, Lw3/u;->o:Ljava/lang/Object;

    const-string p3, "value"

    invoke-static {v1, p3, p1, p2}, Lw3/u2;->i0(Ljava/lang/Object;Ljava/lang/String;Lw3/m;Lw3/z2;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, v2, p3}, Lw3/u;->K1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {v1}, Lw3/a3;->b0(Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :cond_1
    iput-object v0, p0, Lw3/u;->o:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v2, p3}, Lw3/u;->K1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Lw3/z2;

    move-result-object p1
    :try_end_0
    .catch Lw3/s2; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p3

    iput-object v0, p0, Lw3/u;->o:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lw3/u;->K1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1
.end method

.method private N1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lw3/u;->o:Ljava/lang/Object;

    const-string v4, "throw"

    invoke-static {v3, v4, p1, p2}, Lw3/u2;->j0(Ljava/lang/Object;Ljava/lang/String;Lw3/m;Lw3/z2;)Lw3/f;

    move-result-object v3

    invoke-static {p1}, Lw3/u2;->L0(Lw3/m;)Lw3/z2;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p3, v5, v2

    invoke-interface {v3, p1, p2, v4, v5}, Lw3/f;->a(Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p1, p3}, Lw3/u2;->z0(Lw3/m;Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lw3/s2; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    sget-object v2, Lw3/w3;->a:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v2}, Lw3/u;->I1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iput-object v1, p0, Lw3/u;->o:Ljava/lang/Object;

    const-string v2, "value"

    invoke-static {p3, v2, p1, p2}, Lw3/u2;->g0(Ljava/lang/Object;Ljava/lang/String;Lw3/m;Lw3/z2;)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lw3/u;->O1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p3

    iput-object v1, p0, Lw3/u;->o:Ljava/lang/Object;

    throw p3
    :try_end_2
    .catch Lw3/s2; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p3

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_3
    invoke-static {p3}, Lw3/a3;->b0(Ljava/lang/Object;)Lw3/z2;

    move-result-object p1
    :try_end_3
    .catch Lw3/s2; {:try_start_3 .. :try_end_3} :catch_1

    return-object p1

    :catch_1
    move-exception p3

    :goto_0
    if-nez v2, :cond_1

    :try_start_4
    sget-object v2, Lw3/w3;->a:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v2}, Lw3/u;->I1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lw3/s2; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p3

    :try_start_5
    invoke-direct {p0, p1, p2, v0, p3}, Lw3/u;->K1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Lw3/z2;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iput-object v1, p0, Lw3/u;->o:Ljava/lang/Object;

    return-object p1

    :goto_1
    iput-object v1, p0, Lw3/u;->o:Ljava/lang/Object;

    throw p1

    :cond_1
    :goto_2
    iput-object v1, p0, Lw3/u;->o:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0, p3}, Lw3/u;->K1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1
.end method

.method private O1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;
    .locals 11

    const-string v0, "value"

    const-string v1, "done"

    iget-object v2, p0, Lw3/u;->n:Lw3/u$a;

    sget-object v3, Lw3/u$a;->d:Lw3/u$a;

    if-ne v2, v3, :cond_0

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2, p3}, Lw3/v;->L1(Lw3/m;Lw3/z2;Ljava/lang/Boolean;)Lw3/z2;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v4, Lw3/u$a;->c:Lw3/u$a;

    if-eq v2, v4, :cond_9

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v2}, Lw3/v;->L1(Lw3/m;Lw3/z2;Ljava/lang/Boolean;)Lw3/z2;

    move-result-object v2

    iput-object v4, p0, Lw3/u;->n:Lw3/u$a;

    :try_start_0
    iget-object v5, p0, Lw3/u;->j:Lw3/i1;

    const/4 v8, 0x0

    iget-object v9, p0, Lw3/u;->k:Ljava/lang/Object;

    move-object v6, p1

    move-object v7, p2

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Lw3/i1;->h2(Lw3/m;Lw3/z2;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    instance-of v5, p3, Lw3/u$b;

    if-eqz v5, :cond_4

    sget-object v5, Lw3/u$a;->b:Lw3/u$a;

    iput-object v5, p0, Lw3/u;->n:Lw3/u$a;

    check-cast p3, Lw3/u$b;
    :try_end_0
    .catch Lw3/j1$a; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lw3/u0; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lw3/s2; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p3}, Lw3/u$b;->a()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lw3/u2;->d(Ljava/lang/Object;Lw3/m;Lw3/z2;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lw3/u;->o:Ljava/lang/Object;
    :try_end_1
    .catch Lw3/s2; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lw3/j1$a; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object p3, Lw3/w3;->a:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lw3/u;->L1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iput-object v4, p0, Lw3/u;->n:Lw3/u$a;

    invoke-static {p1, p2}, Lw3/u2;->z0(Lw3/m;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-object v3, p0, Lw3/u;->n:Lw3/u$a;
    :try_end_3
    .catch Lw3/j1$a; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lw3/u0; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lw3/s2; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    iget-object p1, p0, Lw3/u;->n:Lw3/u$a;

    if-ne p1, v3, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1, p1}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iput-object v5, p0, Lw3/u;->n:Lw3/u$a;

    :goto_0
    return-object p2

    :catchall_0
    move-exception p1

    :try_start_4
    sget-object p2, Lw3/u$a;->c:Lw3/u$a;

    iput-object p2, p0, Lw3/u;->n:Lw3/u$a;

    throw p1

    :catch_0
    move-exception p3

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3, p3}, Lw3/u;->K1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Lw3/z2;

    move-result-object p1
    :try_end_4
    .catch Lw3/j1$a; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lw3/u0; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lw3/s2; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object p2, p0, Lw3/u;->n:Lw3/u$a;

    sget-object p3, Lw3/u$a;->d:Lw3/u$a;

    if-ne p2, p3, :cond_3

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1, p2}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    sget-object p2, Lw3/u$a;->b:Lw3/u$a;

    iput-object p2, p0, Lw3/u;->n:Lw3/u$a;

    :goto_1
    return-object p1

    :cond_4
    :try_start_5
    invoke-static {v2, v0, p3}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lw3/j1$a; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lw3/u0; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lw3/s2; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    iget-object p1, p0, Lw3/u;->n:Lw3/u$a;

    if-ne p1, v3, :cond_5

    goto :goto_2

    :cond_5
    sget-object p1, Lw3/u$a;->b:Lw3/u$a;

    iput-object p1, p0, Lw3/u;->n:Lw3/u$a;

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :try_start_6
    invoke-virtual {p1}, Lw3/s2;->i()I

    move-result p2

    iput p2, p0, Lw3/u;->m:I

    invoke-virtual {p1}, Lw3/s2;->j()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lw3/u;->l:Ljava/lang/String;

    throw p1

    :catch_2
    move-exception p1

    sget-object p2, Lw3/u$a;->d:Lw3/u$a;

    iput-object p2, p0, Lw3/u;->n:Lw3/u$a;

    invoke-virtual {p1}, Lw3/u0;->m()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lw3/l1$a;

    if-eqz p3, :cond_6

    invoke-virtual {p1}, Lw3/u0;->m()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/l1$a;

    invoke-virtual {p1}, Lw3/l1$a;->K1()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    iget-object p1, p0, Lw3/u;->n:Lw3/u$a;

    if-ne p1, p2, :cond_5

    goto :goto_2

    :cond_6
    :try_start_7
    invoke-virtual {p1}, Lw3/s2;->i()I

    move-result p2

    iput p2, p0, Lw3/u;->m:I

    invoke-virtual {p1}, Lw3/s2;->j()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lw3/u;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lw3/u0;->m()Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lw3/s2;

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lw3/u0;->m()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/s2;

    throw p1

    :cond_7
    throw p1

    :catch_3
    sget-object p1, Lw3/u$a;->d:Lw3/u$a;

    iput-object p1, p0, Lw3/u;->n:Lw3/u$a;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1, p1}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-object v2

    :goto_4
    iget-object p2, p0, Lw3/u;->n:Lw3/u$a;

    sget-object p3, Lw3/u$a;->d:Lw3/u$a;

    if-ne p2, p3, :cond_8

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1, p2}, Lw3/a3;->Y0(Lw3/z2;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    sget-object p2, Lw3/u$a;->b:Lw3/u$a;

    iput-object p2, p0, Lw3/u;->n:Lw3/u$a;

    :goto_5
    throw p1

    :cond_9
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "msg.generator.executing"

    invoke-static {p2, p1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Generator"

    return-object v0
.end method

.method protected r1(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "next"

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const-string v0, "throw"

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const-string v0, "return"

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    return v2
.end method

.method protected s1(Lw3/i3;)I
    .locals 1

    sget-object v0, Lw3/j3;->b:Lw3/j3;

    invoke-virtual {v0, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lw3/u;->p:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lw3/n0;->t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result v0

    const-class v1, Lw3/u;

    invoke-static {p4, v1, p1}, Lw3/n0;->m1(Ljava/lang/Object;Ljava/lang/Class;Lw3/l0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw3/u;

    array-length v1, p5

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object p5, p5, v1

    goto :goto_0

    :cond_1
    sget-object p5, Lw3/w3;->a:Ljava/lang/Object;

    :goto_0
    if-eq v0, v2, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 p1, 0x4

    if-ne v0, p1, :cond_2

    return-object p4

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object p4, p1, Lw3/u;->o:Ljava/lang/Object;

    if-nez p4, :cond_4

    invoke-direct {p1, p2, p3, v2, p5}, Lw3/u;->K1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-direct {p1, p2, p3, p5}, Lw3/u;->N1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :cond_5
    iget-object p4, p1, Lw3/u;->o:Ljava/lang/Object;

    if-nez p4, :cond_6

    invoke-direct {p1, p2, p3, v1, p5}, Lw3/u;->K1(Lw3/m;Lw3/z2;ILjava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-direct {p1, p2, p3, p5}, Lw3/u;->M1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object p4, p1, Lw3/u;->o:Ljava/lang/Object;

    if-nez p4, :cond_8

    invoke-direct {p1, p2, p3, p5}, Lw3/u;->O1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1

    :cond_8
    invoke-direct {p1, p2, p3, p5}, Lw3/u;->L1(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p1

    return-object p1
.end method

.method protected y1(I)V
    .locals 7

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object v2, Lw3/u;->p:Ljava/lang/Object;

    sget-object v4, Lw3/j3;->b:Lw3/j3;

    const-string v5, "[Symbol.iterator]"

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lw3/n0;->B1(Ljava/lang/Object;ILw3/i3;Ljava/lang/String;I)Lw3/l0;

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const-string v1, "throw"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v1, "return"

    goto :goto_0

    :cond_3
    const-string v1, "next"

    :goto_0
    sget-object v2, Lw3/u;->p:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lw3/n0;->z1(Ljava/lang/Object;ILjava/lang/String;I)Lw3/l0;

    return-void
.end method
