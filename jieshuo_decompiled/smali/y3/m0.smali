.class public Ly3/m0;
.super Ly3/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ly3/b0;-><init>()V

    const/16 v0, 0x6a

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ly3/b0;-><init>(I)V

    const/16 p1, 0x6a

    iput p1, p0, Lw3/g2;->a:I

    return-void
.end method


# virtual methods
.method public B0()Z
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x9a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C0()Z
    .locals 1

    invoke-virtual {p0}, Ly3/m0;->B0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ly3/m0;->E0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ly3/m0;->D0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public D0()Z
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E0()Z
    .locals 2

    iget v0, p0, Lw3/g2;->a:I

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public F0()V
    .locals 1

    const/16 v0, 0x9a

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public G0()V
    .locals 1

    const/16 v0, 0xa6

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method

.method public H0()V
    .locals 1

    const/16 v0, 0x9b

    iput v0, p0, Lw3/g2;->a:I

    return-void
.end method
