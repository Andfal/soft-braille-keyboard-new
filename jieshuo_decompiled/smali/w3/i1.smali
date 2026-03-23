.class public abstract Lw3/i1;
.super Lw3/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw3/c;-><init>()V

    return-void
.end method


# virtual methods
.method final J1(II)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lw3/i1;->a2()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lw3/c;->J1(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Lw3/v3;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lw3/v3;-><init>(I)V

    invoke-virtual {v1, v2, p1}, Lw3/v3;->f(II)V

    invoke-static {v0, p2, v1}, Lw3/r;->i(Ljava/lang/String;ILw3/v3;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public L1()I
    .locals 1

    invoke-virtual {p0}, Lw3/i1;->d2()I

    move-result v0

    return v0
.end method

.method public O1()I
    .locals 3

    invoke-virtual {p0}, Lw3/i1;->d2()I

    move-result v0

    invoke-virtual {p0}, Lw3/i1;->b2()I

    move-result v1

    const/16 v2, 0x78

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object v1

    invoke-static {v1, p0}, Lw3/u2;->R(Lw3/m;Lw3/d0;)Lw3/b1;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v0, v1, Lw3/b1;->k:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public a2()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract b2()I
.end method

.method protected abstract c2()I
.end method

.method protected abstract d2()I
.end method

.method protected e2(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract f2(I)Ljava/lang/String;
.end method

.method public final g2(Lw3/m;Lw3/z2;Z)V
    .locals 0

    invoke-static {p0, p2, p3}, Lw3/u2;->x1(Lw3/c;Lw3/z2;Z)V

    return-void
.end method

.method public h2(Lw3/m;Lw3/z2;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Lw3/b0;

    const-string p2, "resumeGenerator() not implemented"

    invoke-direct {p1, p2}, Lw3/b0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
