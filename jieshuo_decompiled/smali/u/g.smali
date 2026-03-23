.class public final Lu/g;
.super Lx/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lx/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public p(Lu/f$b;)V
    .locals 3

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lu/g;->q(I)Lu/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lu/f;->d(Lu/f$b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q(I)Lu/f;
    .locals 0

    invoke-virtual {p0, p1}, Lx/h;->i(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lu/f;

    return-object p1
.end method

.method public r()Lu/f;
    .locals 1

    invoke-virtual {p0}, Lx/h;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lu/g;->q(I)Lu/f;

    move-result-object v0

    return-object v0
.end method

.method public s(ILu/f;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lx/h;->k(ILjava/lang/Object;)V

    return-void
.end method
