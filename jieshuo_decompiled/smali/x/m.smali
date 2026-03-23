.class public Lx/m;
.super Lx/h;
.source "SourceFile"


# instance fields
.field private final c:Lx/k;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lx/h;-><init>(I)V

    new-instance v0, Lx/k;

    invoke-direct {v0, p1}, Lx/k;-><init>(I)V

    iput-object v0, p0, Lx/m;->c:Lx/k;

    return-void
.end method

.method private p(II)V
    .locals 4

    iget-object v0, p0, Lx/m;->c:Lx/k;

    invoke-virtual {v0}, Lx/k;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    sub-int v2, p1, v0

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lx/m;->c:Lx/k;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lx/k;->i(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx/m;->c:Lx/k;

    invoke-virtual {v0, p1, p2}, Lx/k;->o(II)V

    return-void
.end method

.method private s(I)V
    .locals 2

    iget-object v0, p0, Lx/m;->c:Lx/k;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lx/k;->o(II)V

    return-void
.end method


# virtual methods
.method public final q()I
    .locals 2

    iget-object v0, p0, Lx/m;->c:Lx/k;

    invoke-virtual {v0}, Lx/k;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lx/m;->c:Lx/k;

    invoke-virtual {v1, v0}, Lx/k;->l(I)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lx/m;->c:Lx/k;

    invoke-virtual {v1, v0}, Lx/k;->p(I)V

    return v0
.end method

.method public final r(I)I
    .locals 1

    iget-object v0, p0, Lx/m;->c:Lx/k;

    invoke-virtual {v0}, Lx/k;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lx/m;->c:Lx/k;

    invoke-virtual {v0, p1}, Lx/k;->l(I)I

    move-result p1

    return p1
.end method

.method protected t(ILx/l;)V
    .locals 1

    invoke-virtual {p0, p1}, Lx/h;->j(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/l;

    invoke-virtual {p0, p1, p2}, Lx/h;->k(ILjava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lx/l;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lx/m;->s(I)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lx/l;->a()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lx/m;->p(II)V

    :cond_1
    return-void
.end method
