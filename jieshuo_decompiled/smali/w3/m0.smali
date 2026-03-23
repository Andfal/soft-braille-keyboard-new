.class public Lw3/m0;
.super Lw3/l0;
.source "SourceFile"


# instance fields
.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>(Lw3/k0;Ljava/lang/Object;ILjava/lang/String;ILw3/z2;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lw3/l0;-><init>(Lw3/k0;Ljava/lang/Object;ILjava/lang/String;ILw3/z2;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lw3/m0;->v:Z

    iput-boolean p1, p0, Lw3/m0;->w:Z

    return-void
.end method


# virtual methods
.method protected H1(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    iput-boolean v1, p0, Lw3/m0;->v:Z

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    sget-object v0, Lw3/z2;->a0:Ljava/lang/Object;

    if-ne p2, v0, :cond_1

    iput-boolean v1, p0, Lw3/m0;->w:Z

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lw3/c;->H1(ILjava/lang/Object;)V

    return-void
.end method

.method protected p1(Ljava/lang/String;)I
    .locals 2

    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-static {v1, p1}, Lw3/n0;->E1(II)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1, v1}, Lw3/n0;->E1(II)I

    move-result p1

    return p1

    :cond_1
    invoke-super {p0, p1}, Lw3/c;->p1(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected w1(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lw3/m0;->v:Z

    if-nez v0, :cond_0

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lw3/m0;->w:Z

    if-nez v0, :cond_1

    sget-object p1, Lw3/z2;->a0:Ljava/lang/Object;

    return-object p1

    :cond_1
    invoke-super {p0, p1}, Lw3/c;->w1(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
