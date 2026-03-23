.class public Ld2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private a:I

.field private final b:Ld2/e;


# direct methods
.method public constructor <init>(Ld2/e$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld2/f;->a:I

    new-instance v0, Ld2/e;

    invoke-direct {v0, p1}, Ld2/e;-><init>(Ld2/e$a;)V

    iput-object v0, p0, Ld2/f;->b:Ld2/e;

    return-void
.end method

.method public constructor <init>(Ld2/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld2/f;->a:I

    iput-object p1, p0, Ld2/f;->b:Ld2/e;

    return-void
.end method

.method public constructor <init>(Ld2/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ld2/f;->a:I

    iget-object p1, p1, Ld2/f;->b:Ld2/e;

    iput-object p1, p0, Ld2/f;->b:Ld2/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/e;->H()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/p;->a()V

    return-void
.end method

.method public c(IIJ)V
    .locals 7

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/p;->t(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/p;->n()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v1, p0, Ld2/f;->b:Ld2/e;

    const/4 v6, 0x1

    move v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Ld2/e;->c(IIJZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/p;->t(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/p;->charAt(I)C

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clearSpans()V
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/p;->clearSpans()V

    return-void
.end method

.method public d(IJ)V
    .locals 7

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/p;->t(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ld2/f;->b:Ld2/e;

    const/4 v3, 0x1

    const/4 v6, 0x1

    move v2, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Ld2/e;->c(IIJZ)V

    return-void
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/p;->n()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/p;->d()V

    return-void
.end method

.method public g(I)I
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/p;->g(I)I

    move-result p1

    return p1
.end method

.method public h(I)I
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/e;->K(I)I

    move-result p1

    return p1
.end method

.method public i(I)I
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/p;->l(I)I

    move-result p1

    return p1
.end method

.method public j(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/e;->L(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/e;->M()I

    move-result v0

    return v0
.end method

.method public l(I)I
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/e;->N(I)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/p;->length()I

    move-result v0

    return v0
.end method

.method public m(I)I
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/e;->O(I)I

    move-result p1

    return p1
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ld2/n;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/p;->m()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Ld2/f;->a:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v1}, Ld2/p;->n()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(CIJ)V
    .locals 7

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p2}, Ld2/p;->t(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v2, v0, [C

    const/4 v0, 0x0

    aput-char p1, v2, v0

    iget-object v1, p0, Ld2/f;->b:Ld2/e;

    const/4 v6, 0x1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Ld2/e;->q([CIJZ)V

    return-void
.end method

.method public q([CIJ)V
    .locals 7

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p2}, Ld2/p;->t(I)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ld2/f;->b:Ld2/e;

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Ld2/e;->q([CIJZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/p;->r()Z

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/e;->R()Z

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1, p2}, Ld2/p;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public t()C
    .locals 2

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    iget v1, p0, Ld2/f;->a:I

    invoke-virtual {v0, v1}, Ld2/p;->charAt(I)C

    move-result v0

    iget v1, p0, Ld2/f;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ld2/f;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/p;->z()I

    move-result v0

    return v0
.end method

.method public v(I)I
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/p;->t(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Ld2/f;->a:I

    iget p1, p0, Ld2/f;->a:I

    return p1
.end method

.method public w(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld2/n;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/p;->B(Ljava/util/List;)V

    return-void
.end method

.method public x(Z)V
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0, p1}, Ld2/e;->V(Z)V

    return-void
.end method

.method public y()I
    .locals 1

    iget-object v0, p0, Ld2/f;->b:Ld2/e;

    invoke-virtual {v0}, Ld2/p;->F()I

    move-result v0

    return v0
.end method
