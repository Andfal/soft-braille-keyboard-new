.class public abstract Ls3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls3/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lu3/i;

.field private c:Lu3/b;

.field private d:Lu3/b;

.field private e:Lu3/f;

.field private f:Lu3/f;

.field private g:Lu3/f;

.field private h:Lo3/a;

.field private i:Lu3/f;

.field private j:Lu3/f;

.field private k:Lu3/f;

.field private l:Lu3/f;

.field private m:Lu3/f;

.field private n:Lu3/f;

.field private o:Lu3/f;

.field private p:[B

.field private q:I

.field private r:Ls3/a;

.field private s:Ls3/a;


# direct methods
.method protected constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Ls3/d;->p:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lu3/i;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Lu3/i;-><init>(I)V

    iput-object v0, p0, Ls3/d;->b:Lu3/i;

    new-instance v0, Lu3/b;

    const/16 v2, 0x42

    invoke-direct {v0, v2}, Lu3/b;-><init>(I)V

    iput-object v0, p0, Ls3/d;->c:Lu3/b;

    new-instance v0, Lu3/b;

    const/16 v2, 0x43

    invoke-direct {v0, v2}, Lu3/b;-><init>(I)V

    iput-object v0, p0, Ls3/d;->d:Lu3/b;

    new-instance v0, Lu3/f;

    iget-object v2, p0, Ls3/d;->p:[B

    const/16 v3, 0x44

    const/4 v4, -0x1

    invoke-direct {v0, v3, v4, v2}, Lu3/f;-><init>(II[B)V

    iput-object v0, p0, Ls3/d;->e:Lu3/f;

    new-instance v0, Lu3/f;

    const/16 v2, 0x48

    iget-object v3, p0, Ls3/d;->p:[B

    invoke-direct {v0, v2, v4, v3}, Lu3/f;-><init>(II[B)V

    iput-object v0, p0, Ls3/d;->f:Lu3/f;

    new-instance v0, Lu3/f;

    const/16 v2, 0x4c

    iget-object v3, p0, Ls3/d;->p:[B

    invoke-direct {v0, v2, v4, v3}, Lu3/f;-><init>(II[B)V

    iput-object v0, p0, Ls3/d;->g:Lu3/f;

    new-instance v0, Lo3/a;

    iget-object v2, p0, Ls3/d;->p:[B

    const/16 v3, 0x50

    invoke-direct {v0, v2, v3}, Lo3/a;-><init>([BI)V

    iput-object v0, p0, Ls3/d;->h:Lo3/a;

    new-instance v0, Lu3/f;

    const/16 v2, 0x60

    iget-object v3, p0, Ls3/d;->p:[B

    invoke-direct {v0, v2, v1, v3}, Lu3/f;-><init>(II[B)V

    iput-object v0, p0, Ls3/d;->i:Lu3/f;

    new-instance v0, Lu3/f;

    const/16 v2, 0x64

    iget-object v3, p0, Ls3/d;->p:[B

    invoke-direct {v0, v2, v1, v3}, Lu3/f;-><init>(II[B)V

    iput-object v0, p0, Ls3/d;->j:Lu3/f;

    new-instance v0, Lu3/f;

    const/16 v2, 0x68

    iget-object v3, p0, Ls3/d;->p:[B

    invoke-direct {v0, v2, v1, v3}, Lu3/f;-><init>(II[B)V

    iput-object v0, p0, Ls3/d;->k:Lu3/f;

    new-instance v0, Lu3/f;

    const/16 v2, 0x6c

    iget-object v3, p0, Ls3/d;->p:[B

    invoke-direct {v0, v2, v1, v3}, Lu3/f;-><init>(II[B)V

    iput-object v0, p0, Ls3/d;->l:Lu3/f;

    new-instance v0, Lu3/f;

    const/16 v2, 0x70

    iget-object v3, p0, Ls3/d;->p:[B

    invoke-direct {v0, v2, v1, v3}, Lu3/f;-><init>(II[B)V

    iput-object v0, p0, Ls3/d;->m:Lu3/f;

    new-instance v0, Lu3/f;

    const/16 v2, 0x74

    invoke-direct {v0, v2}, Lu3/f;-><init>(I)V

    iput-object v0, p0, Ls3/d;->n:Lu3/f;

    new-instance v0, Lu3/f;

    const/16 v2, 0x78

    iget-object v3, p0, Ls3/d;->p:[B

    invoke-direct {v0, v2, v1, v3}, Lu3/f;-><init>(II[B)V

    iput-object v0, p0, Ls3/d;->o:Lu3/f;

    iput v4, p0, Ls3/d;->q:I

    const-string v0, ""

    invoke-virtual {p0, v0}, Ls3/d;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ls3/d;->m(Ls3/a;)V

    invoke-virtual {p0, v0}, Ls3/d;->o(Ls3/a;)V

    return-void
.end method

.method protected constructor <init>(I[BI)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v1, v0, [B

    iput-object v1, p0, Ls3/d;->p:[B

    const/4 v2, 0x0

    invoke-static {p2, p3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, Lu3/i;

    const/16 p3, 0x40

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v0}, Lu3/i;-><init>(I[B)V

    iput-object p2, p0, Ls3/d;->b:Lu3/i;

    new-instance p2, Lu3/b;

    const/16 p3, 0x42

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v0}, Lu3/b;-><init>(I[B)V

    iput-object p2, p0, Ls3/d;->c:Lu3/b;

    new-instance p2, Lu3/b;

    const/16 p3, 0x43

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v0}, Lu3/b;-><init>(I[B)V

    iput-object p2, p0, Ls3/d;->d:Lu3/b;

    new-instance p2, Lu3/f;

    const/16 p3, 0x44

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v0}, Lu3/f;-><init>(I[B)V

    iput-object p2, p0, Ls3/d;->e:Lu3/f;

    new-instance p2, Lu3/f;

    const/16 p3, 0x48

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v0}, Lu3/f;-><init>(I[B)V

    iput-object p2, p0, Ls3/d;->f:Lu3/f;

    new-instance p2, Lu3/f;

    const/16 p3, 0x4c

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v0}, Lu3/f;-><init>(I[B)V

    iput-object p2, p0, Ls3/d;->g:Lu3/f;

    new-instance p2, Lo3/a;

    iget-object p3, p0, Ls3/d;->p:[B

    const/16 v0, 0x50

    invoke-direct {p2, p3, v0}, Lo3/a;-><init>([BI)V

    iput-object p2, p0, Ls3/d;->h:Lo3/a;

    new-instance p2, Lu3/f;

    const/16 p3, 0x60

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v2, v0}, Lu3/f;-><init>(II[B)V

    iput-object p2, p0, Ls3/d;->i:Lu3/f;

    new-instance p2, Lu3/f;

    const/16 p3, 0x64

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v0}, Lu3/f;-><init>(I[B)V

    iput-object p2, p0, Ls3/d;->j:Lu3/f;

    new-instance p2, Lu3/f;

    const/16 p3, 0x68

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v0}, Lu3/f;-><init>(I[B)V

    iput-object p2, p0, Ls3/d;->k:Lu3/f;

    new-instance p2, Lu3/f;

    const/16 p3, 0x6c

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v0}, Lu3/f;-><init>(I[B)V

    iput-object p2, p0, Ls3/d;->l:Lu3/f;

    new-instance p2, Lu3/f;

    const/16 p3, 0x70

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v0}, Lu3/f;-><init>(I[B)V

    iput-object p2, p0, Ls3/d;->m:Lu3/f;

    new-instance p2, Lu3/f;

    const/16 p3, 0x74

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v0}, Lu3/f;-><init>(I[B)V

    iput-object p2, p0, Ls3/d;->n:Lu3/f;

    new-instance p2, Lu3/f;

    const/16 p3, 0x78

    iget-object v0, p0, Ls3/d;->p:[B

    invoke-direct {p2, p3, v0}, Lu3/f;-><init>(I[B)V

    iput-object p2, p0, Ls3/d;->o:Lu3/f;

    iput p1, p0, Ls3/d;->q:I

    iget-object p1, p0, Ls3/d;->b:Lu3/i;

    invoke-virtual {p1}, Lu3/i;->a()S

    move-result p1

    div-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    if-ge p1, p2, :cond_0

    const-string p1, ""

    iput-object p1, p0, Ls3/d;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-array p2, p1, [C

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    new-instance v1, Lu3/i;

    iget-object v3, p0, Ls3/d;->p:[B

    invoke-direct {v1, v0, v3}, Lu3/i;-><init>(I[B)V

    invoke-virtual {v1}, Lu3/i;->a()S

    move-result v1

    int-to-char v1, v1

    aput-char v1, p2, p3

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2, v2, p1}, Ljava/lang/String;-><init>([CII)V

    iput-object p3, p0, Ls3/d;->a:Ljava/lang/String;

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Ls3/d;->r:Ls3/a;

    iput-object p1, p0, Ls3/d;->s:Ls3/a;

    return-void
.end method

.method public static j(I)Z
    .locals 1

    const/16 v0, 0x1000

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static k(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget-object v0, p0, Ls3/d;->g:Lu3/f;

    invoke-virtual {v0}, Lu3/f;->a()I

    move-result v0

    return v0
.end method

.method protected b()I
    .locals 1

    iget v0, p0, Ls3/d;->q:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ls3/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method d()I
    .locals 1

    iget-object v0, p0, Ls3/d;->f:Lu3/f;

    invoke-virtual {v0}, Lu3/f;->a()I

    move-result v0

    return v0
.end method

.method e()I
    .locals 1

    iget-object v0, p0, Ls3/d;->e:Lu3/f;

    invoke-virtual {v0}, Lu3/f;->a()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Ls3/d;->o:Lu3/f;

    invoke-virtual {v0}, Lu3/f;->a()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Ls3/d;->n:Lu3/f;

    invoke-virtual {v0}, Lu3/f;->a()I

    move-result v0

    return v0
.end method

.method public h()Lo3/a;
    .locals 1

    iget-object v0, p0, Ls3/d;->h:Lo3/a;

    return-object v0
.end method

.method public abstract i()Z
.end method

.method protected final l(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Ls3/d;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v4, Lu3/i;

    aget-char v5, p1, v1

    int-to-short v5, v5

    iget-object v6, p0, Ls3/d;->p:[B

    invoke-direct {v4, v3, v5, v6}, Lu3/i;-><init>(IS[B)V

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 p1, 0x20

    if-ge v1, p1, :cond_1

    new-instance p1, Lu3/i;

    iget-object v4, p0, Ls3/d;->p:[B

    invoke-direct {p1, v3, v2, v4}, Lu3/i;-><init>(IS[B)V

    add-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ls3/d;->b:Lu3/i;

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iget-object v1, p0, Ls3/d;->p:[B

    invoke-virtual {p1, v0, v1}, Lu3/i;->c(S[B)V

    return-void
.end method

.method public m(Ls3/a;)V
    .locals 2

    iput-object p1, p0, Ls3/d;->r:Ls3/a;

    iget-object v0, p0, Ls3/d;->f:Lu3/f;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    check-cast p1, Ls3/d;

    invoke-virtual {p1}, Ls3/d;->b()I

    move-result p1

    :goto_0
    iget-object v1, p0, Ls3/d;->p:[B

    invoke-virtual {v0, p1, v1}, Lu3/f;->c(I[B)V

    return-void
.end method

.method protected n(B)V
    .locals 2

    iget-object v0, p0, Ls3/d;->d:Lu3/b;

    iget-object v1, p0, Ls3/d;->p:[B

    invoke-virtual {v0, p1, v1}, Lu3/b;->c(B[B)V

    return-void
.end method

.method public o(Ls3/a;)V
    .locals 2

    iput-object p1, p0, Ls3/d;->s:Ls3/a;

    iget-object v0, p0, Ls3/d;->e:Lu3/f;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    check-cast p1, Ls3/d;

    invoke-virtual {p1}, Ls3/d;->b()I

    move-result p1

    :goto_0
    iget-object v1, p0, Ls3/d;->p:[B

    invoke-virtual {v0, p1, v1}, Lu3/f;->c(I[B)V

    return-void
.end method

.method protected p(B)V
    .locals 2

    iget-object v0, p0, Ls3/d;->c:Lu3/b;

    iget-object v1, p0, Ls3/d;->p:[B

    invoke-virtual {v0, p1, v1}, Lu3/b;->c(B[B)V

    return-void
.end method

.method protected q(I)V
    .locals 2

    iget-object v0, p0, Ls3/d;->o:Lu3/f;

    iget-object v1, p0, Ls3/d;->p:[B

    invoke-virtual {v0, p1, v1}, Lu3/f;->c(I[B)V

    return-void
.end method

.method public r(I)V
    .locals 2

    iget-object v0, p0, Ls3/d;->n:Lu3/f;

    iget-object v1, p0, Ls3/d;->p:[B

    invoke-virtual {v0, p1, v1}, Lu3/f;->c(I[B)V

    return-void
.end method

.method public s(Lo3/a;)V
    .locals 3

    iput-object p1, p0, Ls3/d;->h:Lo3/a;

    const/16 v0, 0x50

    if-nez p1, :cond_0

    iget-object p1, p0, Ls3/d;->p:[B

    const/16 v1, 0x60

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ls3/d;->p:[B

    invoke-virtual {p1, v1, v0}, Lo3/a;->b([BI)V

    :goto_0
    return-void
.end method

.method public t()Z
    .locals 1

    iget-object v0, p0, Ls3/d;->o:Lu3/f;

    invoke-virtual {v0}, Lu3/f;->a()I

    move-result v0

    invoke-static {v0}, Ls3/d;->j(I)Z

    move-result v0

    return v0
.end method
