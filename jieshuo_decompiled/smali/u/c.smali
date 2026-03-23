.class public final Lu/c;
.super Lx/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/c$a;
    }
.end annotation


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lx/m;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lu/c;->d:I

    return-void
.end method


# virtual methods
.method public A(ILu/b;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lx/m;->t(ILx/l;)V

    const/4 p1, -0x1

    iput p1, p0, Lu/c;->d:I

    return-void
.end method

.method public u(Lu/f$b;)V
    .locals 3

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lu/c;->v(I)Lu/b;

    move-result-object v2

    invoke-virtual {v2}, Lu/b;->c()Lu/g;

    move-result-object v2

    invoke-virtual {v2, p1}, Lu/g;->p(Lu/f$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v(I)Lu/b;
    .locals 0

    invoke-virtual {p0, p1}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu/b;

    return-object p1
.end method

.method public w()I
    .locals 4

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lx/h;->j(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu/b;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lu/b;->c()Lu/g;

    move-result-object v3

    invoke-virtual {v3}, Lx/h;->size()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public x()I
    .locals 2

    iget v0, p0, Lu/c;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lu/c$a;

    invoke-direct {v0}, Lu/c$a;-><init>()V

    invoke-virtual {p0, v0}, Lu/c;->u(Lu/f$b;)V

    invoke-virtual {v0}, Lu/c$a;->e()I

    move-result v0

    iput v0, p0, Lu/c;->d:I

    :cond_0
    iget v0, p0, Lu/c;->d:I

    return v0
.end method

.method public y(I)Lu/b;
    .locals 3

    invoke-virtual {p0, p1}, Lx/m;->r(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lu/c;->v(I)Lu/b;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no such label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lx/i;->e(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z(Lu/b;)Lu/b;
    .locals 4

    invoke-virtual {p1}, Lu/b;->e()I

    move-result v0

    invoke-virtual {p1}, Lu/b;->g()Lx/k;

    move-result-object p1

    invoke-virtual {p1}, Lx/k;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lu/c;->y(I)Lu/b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, v3}, Lx/k;->l(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lu/c;->y(I)Lu/b;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
