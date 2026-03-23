.class public Lw3/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/z2;
.implements Lw3/k3;
.implements Lw3/k0;
.implements Ljava/io/Serializable;


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field protected a:Lw3/z2;

.field protected b:Lw3/z2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "With"

    sput-object v0, Lw3/f2;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lw3/z2;Lw3/z2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/f2;->b:Lw3/z2;

    iput-object p2, p0, Lw3/f2;->a:Lw3/z2;

    return-void
.end method

.method static c(Lw3/z2;Z)V
    .locals 9

    new-instance v7, Lw3/f2;

    invoke-direct {v7}, Lw3/f2;-><init>()V

    invoke-virtual {v7, p0}, Lw3/f2;->h(Lw3/z2;)V

    invoke-static {p0}, Lw3/a3;->z0(Lw3/z2;)Lw3/z2;

    move-result-object v0

    invoke-virtual {v7, v0}, Lw3/f2;->A(Lw3/z2;)V

    new-instance v8, Lw3/l0;

    sget-object v2, Lw3/f2;->c:Ljava/lang/Object;

    const/4 v3, 0x1

    const-string v4, "With"

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lw3/l0;-><init>(Lw3/k0;Ljava/lang/Object;ILjava/lang/String;ILw3/z2;)V

    invoke-virtual {v8, v7}, Lw3/l0;->g2(Lw3/z2;)V

    if-eqz p1, :cond_0

    invoke-virtual {v8}, Lw3/a3;->c1()V

    :cond_0
    invoke-virtual {v8}, Lw3/l0;->c2()V

    return-void
.end method

.method static g(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p0, Lw3/l0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lw3/l0;

    sget-object v0, Lw3/f2;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lw3/l0;->h2()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static j(Lw3/m;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "With"

    invoke-static {p0, v0}, Lw3/u2;->g(Lw3/m;Ljava/lang/String;)V

    invoke-static {p1}, Lw3/a3;->G0(Lw3/z2;)Lw3/z2;

    move-result-object p1

    new-instance v0, Lw3/f2;

    invoke-direct {v0}, Lw3/f2;-><init>()V

    array-length v1, p2

    if-nez v1, :cond_0

    invoke-static {p1}, Lw3/a3;->z0(Lw3/z2;)Lw3/z2;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object p2, p2, v1

    invoke-static {p0, p1, p2}, Lw3/u2;->b2(Lw3/m;Lw3/z2;Ljava/lang/Object;)Lw3/z2;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Lw3/f2;->A(Lw3/z2;)V

    invoke-virtual {v0, p1}, Lw3/f2;->h(Lw3/z2;)V

    return-object v0
.end method


# virtual methods
.method public A(Lw3/z2;)V
    .locals 0

    iput-object p1, p0, Lw3/f2;->a:Lw3/z2;

    return-void
.end method

.method public B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;
    .locals 2

    if-ne p2, p0, :cond_0

    iget-object p2, p0, Lw3/f2;->a:Lw3/z2;

    :cond_0
    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    instance-of v1, v0, Lw3/k3;

    if-eqz v1, :cond_1

    check-cast v0, Lw3/k3;

    invoke-interface {v0, p1, p2}, Lw3/k3;->B(Lw3/i3;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1
.end method

.method public C(ILw3/z2;)Z
    .locals 0

    iget-object p2, p0, Lw3/f2;->a:Lw3/z2;

    invoke-interface {p2, p1, p2}, Lw3/z2;->C(ILw3/z2;)Z

    move-result p1

    return p1
.end method

.method public D(ILw3/z2;)Ljava/lang/Object;
    .locals 1

    if-ne p2, p0, :cond_0

    iget-object p2, p0, Lw3/f2;->a:Lw3/z2;

    :cond_0
    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    invoke-interface {v0, p1, p2}, Lw3/z2;->D(ILw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V
    .locals 2

    if-ne p2, p0, :cond_0

    iget-object p2, p0, Lw3/f2;->a:Lw3/z2;

    :cond_0
    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    instance-of v1, v0, Lw3/k3;

    if-eqz v1, :cond_1

    check-cast v0, Lw3/k3;

    invoke-interface {v0, p1, p2, p3}, Lw3/k3;->F(Lw3/i3;Lw3/z2;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(Lw3/z2;)Z
    .locals 1

    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    invoke-interface {v0, p1}, Lw3/z2;->b(Lw3/z2;)Z

    move-result p1

    return p1
.end method

.method public d(ILw3/z2;Ljava/lang/Object;)V
    .locals 1

    if-ne p2, p0, :cond_0

    iget-object p2, p0, Lw3/f2;->a:Lw3/z2;

    :cond_0
    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    invoke-interface {v0, p1, p2, p3}, Lw3/z2;->d(ILw3/z2;Ljava/lang/Object;)V

    return-void
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

    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    invoke-interface {v0, p1}, Lw3/z2;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(I)V
    .locals 1

    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    invoke-interface {v0, p1}, Lw3/z2;->f(I)V

    return-void
.end method

.method public getIds()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    invoke-interface {v0}, Lw3/z2;->getIds()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h(Lw3/z2;)V
    .locals 0

    iput-object p1, p0, Lw3/f2;->b:Lw3/z2;

    return-void
.end method

.method public i()Lw3/z2;
    .locals 1

    iget-object v0, p0, Lw3/f2;->b:Lw3/z2;

    return-object v0
.end method

.method public k(Lw3/i3;Lw3/z2;)Z
    .locals 1

    iget-object p2, p0, Lw3/f2;->a:Lw3/z2;

    instance-of v0, p2, Lw3/k3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lw3/k3;

    invoke-interface {v0, p1, p2}, Lw3/k3;->k(Lw3/i3;Lw3/z2;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public l()Lw3/z2;
    .locals 1

    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "With"

    return-object v0
.end method

.method protected n(Z)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public o(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    invoke-interface {v0, p1}, Lw3/z2;->o(Ljava/lang/String;)V

    return-void
.end method

.method public r(Ljava/lang/String;Lw3/z2;)Z
    .locals 0

    iget-object p2, p0, Lw3/f2;->a:Lw3/z2;

    invoke-interface {p2, p1, p2}, Lw3/z2;->r(Ljava/lang/String;Lw3/z2;)Z

    move-result p1

    return p1
.end method

.method public t(Lw3/l0;Lw3/m;Lw3/z2;Lw3/z2;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p2, Lw3/f2;->c:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lw3/l0;->e2(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lw3/l0;->h2()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    new-array p1, p3, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "With"

    aput-object p3, p1, p2

    const-string p2, "msg.cant.call.indirect"

    invoke-static {p2, p1}, Lw3/m;->d0(Ljava/lang/String;[Ljava/lang/Object;)Lw3/b0;

    move-result-object p1

    throw p1

    :cond_0
    invoke-virtual {p1}, Lw3/l0;->i2()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V
    .locals 1

    if-ne p2, p0, :cond_0

    iget-object p2, p0, Lw3/f2;->a:Lw3/z2;

    :cond_0
    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    invoke-interface {v0, p1, p2, p3}, Lw3/z2;->v(Ljava/lang/String;Lw3/z2;Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;
    .locals 1

    if-ne p2, p0, :cond_0

    iget-object p2, p0, Lw3/f2;->a:Lw3/z2;

    :cond_0
    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    invoke-interface {v0, p1, p2}, Lw3/z2;->w(Ljava/lang/String;Lw3/z2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z(Lw3/i3;)V
    .locals 2

    iget-object v0, p0, Lw3/f2;->a:Lw3/z2;

    instance-of v1, v0, Lw3/k3;

    if-eqz v1, :cond_0

    check-cast v0, Lw3/k3;

    invoke-interface {v0, p1}, Lw3/k3;->z(Lw3/i3;)V

    :cond_0
    return-void
.end method
