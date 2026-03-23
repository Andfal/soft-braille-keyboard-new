.class public Lw3/n1;
.super Lw3/t1;
.source "SourceFile"


# instance fields
.field k:Ljava/lang/Object;

.field l:I

.field m:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lw3/z2;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lw3/u2;->j:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lw3/t1;-><init>(Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p2, p0, Lw3/n1;->k:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lw3/n1;->l:I

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lw3/n1;->m:Ljava/lang/Class;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Array expected"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static I(Lw3/z2;Ljava/lang/Object;)Lw3/n1;
    .locals 1

    new-instance v0, Lw3/n1;

    invoke-direct {v0, p0, p1}, Lw3/n1;-><init>(Lw3/z2;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;
    .locals 0

    sget-object p2, Lw3/j3;->f:Lw3/j3;

    invoke-virtual {p2, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1
.end method

.method public C(ILw3/z2;)Z
    .locals 0

    if-ltz p1, :cond_0

    iget p2, p0, Lw3/n1;->l:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public D(ILw3/z2;)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    iget p2, p0, Lw3/n1;->l:I

    if-ge p1, p2, :cond_0

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p2

    iget-object v0, p0, Lw3/n1;->k:Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lw3/m;->D()Lw3/z3;

    move-result-object v0

    iget-object v1, p0, Lw3/n1;->m:Ljava/lang/Class;

    invoke-virtual {v0, p2, p0, p1, v1}, Lw3/z3;->b(Lw3/m;Lw3/z2;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lw3/w3;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public b(Lw3/z2;)Z
    .locals 1

    instance-of v0, p1, Lw3/b4;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lw3/b4;

    invoke-interface {p1}, Lw3/b4;->c()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lw3/n1;->m:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/n1;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public d(ILw3/z2;Ljava/lang/Object;)V
    .locals 1

    if-ltz p1, :cond_0

    iget p2, p0, Lw3/n1;->l:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lw3/n1;->k:Ljava/lang/Object;

    iget-object v0, p0, Lw3/n1;->m:Ljava/lang/Class;

    invoke-static {p3, v0}, Lw3/m;->P(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p1, p3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    iget p1, p0, Lw3/n1;->l:I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, p3

    const-string p1, "msg.java.array.index.out.of.bounds"

    invoke-static {p1, p2}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1
.end method

.method public e(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_3

    sget-object v0, Lw3/u2;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lw3/u2;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    sget-object v0, Lw3/u2;->i:Ljava/lang/Class;

    if-ne p1, v0, :cond_2

    sget-object p1, Lw3/u2;->t:Ljava/lang/Double;

    return-object p1

    :cond_2
    return-object p0

    :cond_3
    :goto_0
    iget-object p1, p0, Lw3/n1;->k:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lw3/n1;->l:I

    new-array v1, v0, [Ljava/lang/Object;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public k(Lw3/i3;Lw3/z2;)Z
    .locals 0

    sget-object p2, Lw3/j3;->f:Lw3/j3;

    invoke-virtual {p2, p1}, Lw3/j3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l()Lw3/z2;
    .locals 1

    iget-object v0, p0, Lw3/t1;->a:Lw3/z2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lw3/t1;->i()Lw3/z2;

    move-result-object v0

    invoke-static {v0}, Lw3/a3;->k0(Lw3/z2;)Lw3/z2;

    move-result-object v0

    iput-object v0, p0, Lw3/t1;->a:Lw3/z2;

    :cond_0
    iget-object v0, p0, Lw3/t1;->a:Lw3/z2;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "JavaArray"

    return-object v0
.end method

.method public r(Ljava/lang/String;Lw3/z2;)Z
    .locals 1

    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lw3/t1;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V
    .locals 0

    const-string p2, "length"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const-string p1, "msg.java.array.member.not.found"

    invoke-static {p1, p2}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1
.end method

.method public w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;
    .locals 2

    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lw3/n1;->l:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1, p2}, Lw3/t1;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0}, Lw3/n1;->l()Lw3/z2;

    move-result-object v0

    invoke-static {v0, p1}, Lw3/a3;->K0(Lw3/z2;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lw3/n1;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "msg.java.member.not.found"

    invoke-static {p1, p2}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    return-object p2
.end method

.method public z(Lw3/i3;)V
    .locals 0

    return-void
.end method
