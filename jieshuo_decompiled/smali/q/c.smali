.class public final Lq/c;
.super Lq/h0;
.source "SourceFile"


# instance fields
.field private final e:[Lq/b;


# virtual methods
.method public a(Lq/m;)V
    .locals 4

    invoke-virtual {p1}, Lq/m;->e()Lq/g0;

    move-result-object p1

    iget-object v0, p0, Lq/c;->e:[Lq/b;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lq/c;->e:[Lq/b;

    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Lq/g0;->r(Lq/h0;)Lq/h0;

    move-result-object v3

    check-cast v3, Lq/b;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Lq/z;
    .locals 1

    sget-object v0, Lq/z;->n:Lq/z;

    return-object v0
.end method

.method protected g(Lq/h0;)I
    .locals 0

    check-cast p1, Lq/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected m(Lq/l0;I)V
    .locals 0

    iget-object p1, p0, Lq/c;->e:[Lq/b;

    invoke-static {p1}, Lq/b;->s([Lq/b;)V

    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method protected p(Lq/m;Lx/a;)V
    .locals 6

    invoke-interface {p2}, Lx/a;->k()Z

    move-result p1

    iget-object v0, p0, Lq/c;->e:[Lq/b;

    array-length v0, v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lq/h0;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " annotation set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lx/a;->d(ILjava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1, v3}, Lx/a;->d(ILjava/lang/String;)V

    :cond_0
    invoke-interface {p2, v0}, Lx/q;->writeInt(I)V

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lq/c;->e:[Lq/b;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lq/h0;->h()I

    move-result v3

    if-eqz p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  entries["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lx/i;->h(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v4}, Lx/a;->d(ILjava/lang/String;)V

    iget-object v4, p0, Lq/c;->e:[Lq/b;

    aget-object v4, v4, v2

    const-string v5, "    "

    invoke-virtual {v4, p2, v5}, Lq/b;->r(Lx/a;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p2, v3}, Lx/q;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
