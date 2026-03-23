.class final Lw3/n0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/n0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Lw3/n0;

.field private b:I

.field private c:[Ljava/lang/Object;

.field private d:[S

.field e:I

.field private f:Lw3/l0;

.field private g:S


# direct methods
.method constructor <init>(Lw3/n0;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    iput-object p1, p0, Lw3/n0$a;->a:Lw3/n0;

    iput p2, p0, Lw3/n0$a;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private c(I)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lw3/n0$a;->c:[Ljava/lang/Object;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw3/n0$a;->c:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lw3/n0$a;->b:I

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lw3/n0$a;->c:[Ljava/lang/Object;

    new-array v0, v0, [S

    iput-object v0, p0, Lw3/n0$a;->d:[S

    move-object v0, v1

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 v1, p1, -0x1

    mul-int/lit8 v1, v1, 0x2

    aget-object v2, v0, v1

    if-nez v2, :cond_4

    iget v2, p0, Lw3/n0$a;->e:I

    if-ne p1, v2, :cond_2

    const-string v3, "constructor"

    iget-object v4, p0, Lw3/n0$a;->f:Lw3/l0;

    iget-short v5, p0, Lw3/n0$a;->g:S

    invoke-direct {p0, v2, v3, v4, v5}, Lw3/n0$a;->j(ILjava/lang/Object;Ljava/lang/Object;I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lw3/n0$a;->f:Lw3/l0;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lw3/n0$a;->a:Lw3/n0;

    invoke-virtual {v2, p1}, Lw3/n0;->y1(I)V

    :goto_1
    aget-object v2, v0, v1

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lw3/n0$a;->a:Lw3/n0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".initPrototypeId(int id) did not initialize id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    return-object v2
.end method

.method private j(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    iget-object v0, p0, Lw3/n0$a;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    if-nez p3, :cond_0

    sget-object p3, Lw3/x3;->c:Lw3/x3;

    :cond_0
    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 v1, p1, 0x2

    monitor-enter p0

    :try_start_0
    aget-object v2, v0, v1

    if-nez v2, :cond_1

    aput-object p3, v0, v1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    iget-object p2, p0, Lw3/n0$a;->d:[S

    int-to-short p3, p4

    aput-short p3, p2, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    aget-object p1, v0, v1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method final a()Lw3/l0;
    .locals 3

    iget v0, p0, Lw3/n0$a;->e:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lw3/n0$a;->a:Lw3/n0;

    const-string v1, "constructor"

    invoke-virtual {v0, v1}, Lw3/n0;->r1(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lw3/n0$a;->e:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lw3/n0$a;->a:Lw3/n0;

    invoke-virtual {v1, v0}, Lw3/n0;->y1(I)V

    iget-object v0, p0, Lw3/n0$a;->f:Lw3/l0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lw3/n0$a;->a:Lw3/n0;

    invoke-virtual {v1}, Lw3/a3;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lw3/n0$a;->a:Lw3/n0;

    invoke-static {v2}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lw3/l0;->f2(Ljava/lang/String;Lw3/z2;)V

    iget-object v0, p0, Lw3/n0$a;->f:Lw3/l0;

    iget-object v1, p0, Lw3/n0$a;->a:Lw3/n0;

    invoke-virtual {v0, v1}, Lw3/l0;->g2(Lw3/z2;)V

    iget-object v0, p0, Lw3/n0$a;->f:Lw3/l0;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lw3/n0$a;->a:Lw3/n0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".initPrototypeId() did not initialize id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lw3/n0$a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No id for constructor property"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method final b(I)V
    .locals 4

    invoke-direct {p0, p1}, Lw3/n0$a;->c(I)Ljava/lang/Object;

    iget-object v0, p0, Lw3/n0$a;->d:[S

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    aget-short v0, v0, p1

    and-int/lit8 v0, v0, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v0

    invoke-virtual {v0}, Lw3/m;->L()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    iget-object v0, p0, Lw3/n0$a;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "msg.delete.property.with.configurable.false"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_1
    mul-int/lit8 v0, p1, 0x2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lw3/n0$a;->c:[Ljava/lang/Object;

    sget-object v3, Lw3/z2;->a0:Ljava/lang/Object;

    aput-object v3, v1, v0

    iget-object v0, p0, Lw3/n0$a;->d:[S

    aput-short v2, v0, p1

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final d(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lw3/n0$a;->a:Lw3/n0;

    invoke-virtual {v0, p1}, Lw3/n0;->r1(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method final e(Lw3/i3;)I
    .locals 1

    iget-object v0, p0, Lw3/n0$a;->a:Lw3/n0;

    invoke-virtual {v0, p1}, Lw3/n0;->s1(Lw3/i3;)I

    move-result p1

    return p1
.end method

.method final f(I)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lw3/n0$a;->c(I)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lw3/x3;->c:Lw3/x3;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method final g(I)I
    .locals 1

    invoke-direct {p0, p1}, Lw3/n0$a;->c(I)Ljava/lang/Object;

    iget-object v0, p0, Lw3/n0$a;->d:[S

    add-int/lit8 p1, p1, -0x1

    aget-short p1, v0, p1

    return p1
.end method

.method final h(ZZ[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Lw3/n0$a;->b:I

    if-gt v3, v5, :cond_5

    invoke-direct {p0, v3}, Lw3/n0$a;->c(I)Ljava/lang/Object;

    move-result-object v5

    if-nez p1, :cond_0

    iget-object v6, p0, Lw3/n0$a;->d:[S

    add-int/lit8 v7, v3, -0x1

    aget-short v6, v6, v7

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_4

    :cond_0
    sget-object v6, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq v5, v6, :cond_4

    add-int/lit8 v5, v3, -0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    iget-object v6, p0, Lw3/n0$a;->c:[Ljava/lang/Object;

    aget-object v5, v6, v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    if-nez v0, :cond_1

    iget v0, p0, Lw3/n0$a;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    :cond_1
    add-int/lit8 v6, v4, 0x1

    aput-object v5, v0, v4

    :goto_1
    move v4, v6

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_4

    instance-of v6, v5, Lw3/i3;

    if-eqz v6, :cond_4

    if-nez v0, :cond_3

    iget v0, p0, Lw3/n0$a;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    :cond_3
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-nez v4, :cond_6

    return-object p3

    :cond_6
    if-eqz p3, :cond_8

    array-length p1, p3

    if-nez p1, :cond_7

    goto :goto_3

    :cond_7
    array-length p1, p3

    add-int p2, p1, v4

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p3, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0, v1, p2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_8
    :goto_3
    array-length p1, v0

    if-eq v4, p1, :cond_9

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    :cond_9
    return-object v0
.end method

.method final i(I)Z
    .locals 2

    iget-object v0, p0, Lw3/n0$a;->c:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-int/2addr p1, v1

    mul-int/lit8 p1, p1, 0x2

    aget-object p1, v0, p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method final k(ILjava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_5

    iget v0, p0, Lw3/n0$a;->b:I

    if-gt p1, v0, :cond_5

    if-eqz p2, :cond_4

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p3, v0, :cond_3

    invoke-static {p4}, Lw3/a3;->Q(I)V

    iget-object v0, p0, Lw3/n0$a;->a:Lw3/n0;

    invoke-virtual {v0, p2}, Lw3/n0;->r1(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_2

    iget v0, p0, Lw3/n0$a;->e:I

    if-ne p1, v0, :cond_1

    instance-of p1, p3, Lw3/l0;

    if-eqz p1, :cond_0

    check-cast p3, Lw3/l0;

    iput-object p3, p0, Lw3/n0$a;->f:Lw3/l0;

    int-to-short p1, p4

    iput-short p1, p0, Lw3/n0$a;->g:S

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "consructor should be initialized with IdFunctionObject"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lw3/n0$a;->j(ILjava/lang/Object;Ljava/lang/Object;I)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method final l(ILw3/i3;Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x1

    if-gt v0, p1, :cond_5

    iget v0, p0, Lw3/n0$a;->b:I

    if-gt p1, v0, :cond_5

    if-eqz p2, :cond_4

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p3, v0, :cond_3

    invoke-static {p4}, Lw3/a3;->Q(I)V

    iget-object v0, p0, Lw3/n0$a;->a:Lw3/n0;

    invoke-virtual {v0, p2}, Lw3/n0;->s1(Lw3/i3;)I

    move-result v0

    if-ne v0, p1, :cond_2

    iget v0, p0, Lw3/n0$a;->e:I

    if-ne p1, v0, :cond_1

    instance-of p1, p3, Lw3/l0;

    if-eqz p1, :cond_0

    check-cast p3, Lw3/l0;

    iput-object p3, p0, Lw3/n0$a;->f:Lw3/l0;

    int-to-short p1, p4

    iput-short p1, p0, Lw3/n0$a;->g:S

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "consructor should be initialized with IdFunctionObject"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lw3/n0$a;->j(ILjava/lang/Object;Ljava/lang/Object;I)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method final m(ILw3/z2;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-eq p3, v0, :cond_4

    invoke-direct {p0, p1}, Lw3/n0$a;->c(I)Ljava/lang/Object;

    iget-object v0, p0, Lw3/n0$a;->d:[S

    add-int/lit8 p1, p1, -0x1

    aget-short v0, v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lw3/n0$a;->a:Lw3/n0;

    if-ne p2, v0, :cond_1

    if-nez p3, :cond_0

    sget-object p3, Lw3/x3;->c:Lw3/x3;

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lw3/n0$a;->c:[Ljava/lang/Object;

    aput-object p3, p2, p1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lw3/n0$a;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    instance-of v0, p1, Lw3/i3;

    if-eqz v0, :cond_2

    instance-of v0, p2, Lw3/k3;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Lw3/k3;

    check-cast p1, Lw3/i3;

    invoke-interface {v0, p1, p2, p3}, Lw3/k3;->F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1, p2, p3}, Lw3/z2;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method final n(II)V
    .locals 1

    invoke-static {p2}, Lw3/a3;->Q(I)V

    invoke-direct {p0, p1}, Lw3/n0$a;->c(I)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw3/n0$a;->d:[S

    add-int/lit8 p1, p1, -0x1

    int-to-short p2, p2

    aput-short p2, v0, p1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
