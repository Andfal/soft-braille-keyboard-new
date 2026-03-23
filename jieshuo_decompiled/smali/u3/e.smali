.class public Lu3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lu3/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lu3/e;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput p2, p0, Lu3/e;->c:I

    new-array p1, p1, [I

    iput-object p1, p0, Lu3/e;->a:[I

    iput p2, p0, Lu3/e;->b:I

    return-void
.end method

.method private b(I[II)V
    .locals 1

    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_0

    aput p1, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 3

    iget-object v0, p0, Lu3/e;->a:[I

    array-length v1, v0

    if-ne p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    new-array p1, p1, [I

    iget v1, p0, Lu3/e;->c:I

    if-eqz v1, :cond_1

    array-length v0, v0

    invoke-direct {p0, v1, p1, v0}, Lu3/e;->b(I[II)V

    :cond_1
    iget-object v0, p0, Lu3/e;->a:[I

    iget v1, p0, Lu3/e;->b:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lu3/e;->a:[I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 3

    iget v0, p0, Lu3/e;->b:I

    iget-object v1, p0, Lu3/e;->a:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lu3/e;->d(I)V

    :cond_0
    iget-object v0, p0, Lu3/e;->a:[I

    iget v1, p0, Lu3/e;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lu3/e;->b:I

    aput p1, v0, v1

    const/4 p1, 0x1

    return p1
.end method

.method public c(I)I
    .locals 1

    iget v0, p0, Lu3/e;->b:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lu3/e;->a:[I

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lu3/e;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_2

    check-cast p1, Lu3/e;

    iget v3, p1, Lu3/e;->b:I

    iget v4, p0, Lu3/e;->b:I

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_1
    if-eqz v2, :cond_2

    iget v4, p0, Lu3/e;->b:I

    if-ge v3, v4, :cond_2

    iget-object v2, p0, Lu3/e;->a:[I

    aget v2, v2, v3

    iget-object v4, p1, Lu3/e;->a:[I

    aget v4, v4, v3

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lu3/e;->b:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lu3/e;->a:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method
