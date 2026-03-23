.class public Lw3/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient a:[I

.field private transient b:[Ljava/lang/Object;

.field private c:I

.field private d:I

.field private transient e:I

.field private transient f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lw3/v3;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    mul-int/lit8 p1, p1, 0x4

    div-int/lit8 p1, p1, 0x3

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    if-ge v1, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lw3/v3;->c:I

    return-void
.end method

.method private a(IZ)I
    .locals 9

    iget-object v0, p0, Lw3/v3;->a:[I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    const v3, -0x61c88647

    mul-int v3, v3, p1

    iget v4, p0, Lw3/v3;->c:I

    rsub-int/lit8 v5, v4, 0x20

    ushr-int v5, v3, v5

    aget v6, v0, v5

    if-ne v6, p1, :cond_0

    return v5

    :cond_0
    if-eq v6, v2, :cond_6

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    const/4 v6, -0x1

    :goto_0
    shl-int v8, v1, v4

    sub-int/2addr v8, v1

    invoke-static {v3, v8, v4}, Lw3/v3;->h(III)I

    move-result v3

    :cond_2
    add-int/2addr v5, v3

    and-int/2addr v5, v8

    aget v4, v0, v5

    if-ne v4, p1, :cond_3

    return v5

    :cond_3
    if-ne v4, v7, :cond_4

    if-gez v6, :cond_4

    move v6, v5

    :cond_4
    if-ne v4, v2, :cond_2

    move v2, v6

    goto :goto_1

    :cond_5
    const/4 v5, -0x1

    :cond_6
    :goto_1
    if-ltz v2, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_9

    iget v2, p0, Lw3/v3;->e:I

    mul-int/lit8 v3, v2, 0x4

    iget v4, p0, Lw3/v3;->c:I

    shl-int v4, v1, v4

    mul-int/lit8 v4, v4, 0x3

    if-lt v3, v4, :cond_8

    goto :goto_3

    :cond_8
    add-int/2addr v2, v1

    iput v2, p0, Lw3/v3;->e:I

    move v2, v5

    :goto_2
    aput p1, v0, v2

    iget p1, p0, Lw3/v3;->d:I

    add-int/2addr p1, v1

    iput p1, p0, Lw3/v3;->d:I

    return v2

    :cond_9
    :goto_3
    invoke-direct {p0, p2}, Lw3/v3;->g(Z)V

    invoke-direct {p0, p1}, Lw3/v3;->e(I)I

    move-result p1

    return p1
.end method

.method private b(I)I
    .locals 7

    iget-object v0, p0, Lw3/v3;->a:[I

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    const v2, -0x61c88647

    mul-int v2, v2, p1

    iget v3, p0, Lw3/v3;->c:I

    rsub-int/lit8 v4, v3, 0x20

    ushr-int v4, v2, v4

    aget v5, v0, v4

    if-ne v5, p1, :cond_0

    return v4

    :cond_0
    if-eq v5, v1, :cond_3

    const/4 v5, 0x1

    shl-int v6, v5, v3

    sub-int/2addr v6, v5

    invoke-static {v2, v6, v3}, Lw3/v3;->h(III)I

    move-result v2

    :cond_1
    add-int/2addr v4, v2

    and-int/2addr v4, v6

    aget v3, v0, v4

    if-ne v3, p1, :cond_2

    return v4

    :cond_2
    if-ne v3, v1, :cond_1

    :cond_3
    return v1
.end method

.method private e(I)I
    .locals 7

    iget-object v0, p0, Lw3/v3;->a:[I

    const v1, -0x61c88647

    mul-int v1, v1, p1

    iget v2, p0, Lw3/v3;->c:I

    rsub-int/lit8 v3, v2, 0x20

    ushr-int v3, v1, v3

    aget v4, v0, v3

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    shl-int v4, v5, v2

    sub-int/2addr v4, v5

    invoke-static {v1, v4, v2}, Lw3/v3;->h(III)I

    move-result v1

    :cond_0
    add-int/2addr v3, v1

    and-int/2addr v3, v4

    aget v2, v0, v3

    if-ne v2, v6, :cond_0

    :cond_1
    aput p1, v0, v3

    iget p1, p0, Lw3/v3;->e:I

    add-int/2addr p1, v5

    iput p1, p0, Lw3/v3;->e:I

    iget p1, p0, Lw3/v3;->d:I

    add-int/2addr p1, v5

    iput p1, p0, Lw3/v3;->d:I

    return v3
.end method

.method private g(Z)V
    .locals 8

    iget-object v0, p0, Lw3/v3;->a:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, p0, Lw3/v3;->d:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lw3/v3;->e:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lw3/v3;->c:I

    add-int/2addr v2, v1

    iput v2, p0, Lw3/v3;->c:I

    :cond_0
    iget v2, p0, Lw3/v3;->c:I

    shl-int/2addr v1, v2

    iget v2, p0, Lw3/v3;->f:I

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-array p1, v1, [I

    iput-object p1, p0, Lw3/v3;->a:[I

    goto :goto_0

    :cond_1
    iput v1, p0, Lw3/v3;->f:I

    mul-int/lit8 p1, v1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lw3/v3;->a:[I

    :goto_0
    const/4 p1, 0x0

    const/4 v3, 0x0

    :goto_1
    const/4 v4, -0x1

    if-eq v3, v1, :cond_2

    iget-object v5, p0, Lw3/v3;->a:[I

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lw3/v3;->b:[Ljava/lang/Object;

    if-eqz v3, :cond_3

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lw3/v3;->b:[Ljava/lang/Object;

    :cond_3
    iget v1, p0, Lw3/v3;->d:I

    iput p1, p0, Lw3/v3;->e:I

    if-eqz v1, :cond_7

    iput p1, p0, Lw3/v3;->d:I

    :goto_2
    if-eqz v1, :cond_7

    aget v5, v0, p1

    if-eq v5, v4, :cond_6

    const/4 v6, -0x2

    if-eq v5, v6, :cond_6

    invoke-direct {p0, v5}, Lw3/v3;->e(I)I

    move-result v5

    if-eqz v3, :cond_4

    iget-object v6, p0, Lw3/v3;->b:[Ljava/lang/Object;

    aget-object v7, v3, p1

    aput-object v7, v6, v5

    :cond_4
    if-eqz v2, :cond_5

    iget-object v6, p0, Lw3/v3;->a:[I

    iget v7, p0, Lw3/v3;->f:I

    add-int/2addr v7, v5

    add-int v5, v2, p1

    aget v5, v0, v5

    aput v5, v6, v7

    :cond_5
    add-int/lit8 v1, v1, -0x1

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method private static h(III)I
    .locals 0

    mul-int/lit8 p2, p2, 0x2

    rsub-int/lit8 p2, p2, 0x20

    if-ltz p2, :cond_0

    ushr-int/2addr p0, p2

    :goto_0
    and-int/2addr p0, p1

    or-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    neg-int p2, p2

    ushr-int/2addr p1, p2

    goto :goto_0
.end method


# virtual methods
.method public c(I)I
    .locals 2

    if-gez p1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0, p1}, Lw3/v3;->b(I)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    iget v1, p0, Lw3/v3;->f:I

    if-eqz v1, :cond_1

    iget-object v0, p0, Lw3/v3;->a:[I

    add-int/2addr v1, p1

    aget p1, v0, v1

    return p1

    :cond_1
    return v0

    :cond_2
    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    return v0
.end method

.method public d(II)I
    .locals 1

    if-gez p1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    invoke-direct {p0, p1}, Lw3/v3;->b(I)I

    move-result p1

    if-ltz p1, :cond_2

    iget p2, p0, Lw3/v3;->f:I

    if-eqz p2, :cond_1

    iget-object v0, p0, Lw3/v3;->a:[I

    add-int/2addr p2, p1

    aget p1, v0, p2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return p2
.end method

.method public f(II)V
    .locals 4

    if-gez p1, :cond_0

    invoke-static {}, Lw3/v0;->b()Ljava/lang/RuntimeException;

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lw3/v3;->a(IZ)I

    move-result p1

    iget v1, p0, Lw3/v3;->f:I

    if-nez v1, :cond_2

    iget v1, p0, Lw3/v3;->c:I

    shl-int/2addr v0, v1

    iget-object v1, p0, Lw3/v3;->a:[I

    array-length v2, v1

    mul-int/lit8 v3, v0, 0x2

    if-eq v2, v3, :cond_1

    new-array v2, v3, [I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lw3/v3;->a:[I

    :cond_1
    iput v0, p0, Lw3/v3;->f:I

    :cond_2
    iget-object v0, p0, Lw3/v3;->a:[I

    iget v1, p0, Lw3/v3;->f:I

    add-int/2addr v1, p1

    aput p2, v0, v1

    return-void
.end method
