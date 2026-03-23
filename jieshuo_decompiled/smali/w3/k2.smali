.class public Lw3/k2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/k2$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private transient a:[Ljava/lang/Object;

.field private transient b:[I

.field private c:I

.field private d:I

.field private transient e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw3/k2;->f:Ljava/lang/Object;

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
    iput v0, p0, Lw3/k2;->c:I

    return-void
.end method

.method static bridge synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lw3/k2;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)I
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lw3/k2;->a:[Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_6

    const v4, -0x61c88647

    mul-int v4, v4, v0

    iget v5, p0, Lw3/k2;->c:I

    rsub-int/lit8 v6, v5, 0x20

    ushr-int v6, v4, v6

    aget-object v1, v1, v6

    if-eqz v1, :cond_7

    shl-int v5, v2, v5

    if-eq v1, p1, :cond_5

    iget-object v7, p0, Lw3/k2;->b:[I

    add-int v8, v5, v6

    aget v7, v7, v8

    if-ne v7, v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    sget-object v7, Lw3/k2;->f:Ljava/lang/Object;

    if-ne v1, v7, :cond_1

    move v3, v6

    :cond_1
    add-int/lit8 v1, v5, -0x1

    iget v7, p0, Lw3/k2;->c:I

    invoke-static {v4, v1, v7}, Lw3/k2;->n(III)I

    move-result v4

    :cond_2
    :goto_0
    add-int/2addr v6, v4

    and-int/2addr v6, v1

    iget-object v7, p0, Lw3/k2;->a:[Ljava/lang/Object;

    aget-object v7, v7, v6

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    if-eq v7, p1, :cond_5

    iget-object v8, p0, Lw3/k2;->b:[I

    add-int v9, v5, v6

    aget v8, v8, v9

    if-ne v8, v0, :cond_4

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    sget-object v8, Lw3/k2;->f:Ljava/lang/Object;

    if-ne v7, v8, :cond_2

    if-gez v3, :cond_2

    move v3, v6

    goto :goto_0

    :cond_5
    :goto_1
    return v6

    :cond_6
    const/4 v6, -0x1

    :cond_7
    :goto_2
    if-ltz v3, :cond_8

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lw3/k2;->a:[Ljava/lang/Object;

    if-eqz v1, :cond_a

    iget v1, p0, Lw3/k2;->e:I

    mul-int/lit8 v3, v1, 0x4

    iget v4, p0, Lw3/k2;->c:I

    shl-int v4, v2, v4

    mul-int/lit8 v4, v4, 0x3

    if-lt v3, v4, :cond_9

    goto :goto_4

    :cond_9
    add-int/2addr v1, v2

    iput v1, p0, Lw3/k2;->e:I

    move v3, v6

    :goto_3
    iget-object v1, p0, Lw3/k2;->a:[Ljava/lang/Object;

    aput-object p1, v1, v3

    iget-object p1, p0, Lw3/k2;->b:[I

    iget v1, p0, Lw3/k2;->c:I

    shl-int v1, v2, v1

    add-int/2addr v1, v3

    aput v0, p1, v1

    iget p1, p0, Lw3/k2;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lw3/k2;->d:I

    return v3

    :cond_a
    :goto_4
    invoke-direct {p0}, Lw3/k2;->k()V

    invoke-direct {p0, p1, v0}, Lw3/k2;->g(Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method private c(Ljava/lang/Object;)I
    .locals 8

    iget-object v0, p0, Lw3/k2;->a:[Ljava/lang/Object;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x61c88647

    mul-int v1, v1, v0

    iget v2, p0, Lw3/k2;->c:I

    rsub-int/lit8 v3, v2, 0x20

    ushr-int v3, v1, v3

    iget-object v4, p0, Lw3/k2;->a:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    shl-int v2, v5, v2

    if-eq v4, p1, :cond_3

    iget-object v5, p0, Lw3/k2;->b:[I

    add-int v6, v2, v3

    aget v5, v5, v6

    if-ne v5, v0, :cond_0

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v2, -0x1

    iget v5, p0, Lw3/k2;->c:I

    invoke-static {v1, v4, v5}, Lw3/k2;->n(III)I

    move-result v1

    :cond_1
    add-int/2addr v3, v1

    and-int/2addr v3, v4

    iget-object v5, p0, Lw3/k2;->a:[Ljava/lang/Object;

    aget-object v5, v5, v3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    if-eq v5, p1, :cond_3

    iget-object v6, p0, Lw3/k2;->b:[I

    add-int v7, v2, v3

    aget v6, v6, v7

    if-ne v6, v0, :cond_1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_3
    :goto_0
    return v3

    :cond_4
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private g(Ljava/lang/Object;I)I
    .locals 6

    const v0, -0x61c88647

    mul-int v0, v0, p2

    iget v1, p0, Lw3/k2;->c:I

    rsub-int/lit8 v2, v1, 0x20

    ushr-int v2, v0, v2

    const/4 v3, 0x1

    shl-int v4, v3, v1

    iget-object v5, p0, Lw3/k2;->a:[Ljava/lang/Object;

    aget-object v5, v5, v2

    if-eqz v5, :cond_1

    add-int/lit8 v5, v4, -0x1

    invoke-static {v0, v5, v1}, Lw3/k2;->n(III)I

    move-result v0

    :cond_0
    add-int/2addr v2, v0

    and-int/2addr v2, v5

    iget-object v1, p0, Lw3/k2;->a:[Ljava/lang/Object;

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    :cond_1
    iget-object v0, p0, Lw3/k2;->a:[Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-object p1, p0, Lw3/k2;->b:[I

    add-int/2addr v4, v2

    aput p2, p1, v4

    iget p1, p0, Lw3/k2;->e:I

    add-int/2addr p1, v3

    iput p1, p0, Lw3/k2;->e:I

    iget p1, p0, Lw3/k2;->d:I

    add-int/2addr p1, v3

    iput p1, p0, Lw3/k2;->d:I

    return v2
.end method

.method private k()V
    .locals 8

    iget-object v0, p0, Lw3/k2;->a:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lw3/k2;->c:I

    shl-int v0, v1, v0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lw3/k2;->a:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lw3/k2;->b:[I

    goto :goto_1

    :cond_0
    iget v2, p0, Lw3/k2;->d:I

    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Lw3/k2;->e:I

    if-lt v3, v4, :cond_1

    iget v3, p0, Lw3/k2;->c:I

    add-int/2addr v3, v1

    iput v3, p0, Lw3/k2;->c:I

    :cond_1
    iget v3, p0, Lw3/k2;->c:I

    shl-int/2addr v1, v3

    iget-object v3, p0, Lw3/k2;->b:[I

    array-length v4, v0

    new-array v5, v1, [Ljava/lang/Object;

    iput-object v5, p0, Lw3/k2;->a:[Ljava/lang/Object;

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lw3/k2;->b:[I

    const/4 v1, 0x0

    iput v1, p0, Lw3/k2;->d:I

    iput v1, p0, Lw3/k2;->e:I

    :goto_0
    if-eqz v2, :cond_3

    aget-object v5, v0, v1

    if-eqz v5, :cond_2

    sget-object v6, Lw3/k2;->f:Ljava/lang/Object;

    if-eq v5, v6, :cond_2

    add-int v6, v4, v1

    aget v6, v3, v6

    invoke-direct {p0, v5, v6}, Lw3/k2;->g(Ljava/lang/Object;I)I

    move-result v5

    iget-object v6, p0, Lw3/k2;->b:[I

    aget v7, v3, v1

    aput v7, v6, v5

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static n(III)I
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
.method public d(Ljava/lang/Object;I)I
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lw3/x3;->c:Lw3/x3;

    :cond_0
    invoke-direct {p0, p1}, Lw3/k2;->c(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p2, p0, Lw3/k2;->b:[I

    aget p1, p2, p1

    return p1

    :cond_1
    return p2
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lw3/x3;->c:Lw3/x3;

    :cond_0
    invoke-direct {p0, p1}, Lw3/k2;->c(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final f(Lw3/k2$a;)V
    .locals 3

    iget-object v0, p0, Lw3/k2;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lw3/k2;->b:[I

    iget v2, p0, Lw3/k2;->d:I

    invoke-virtual {p1, v0, v1, v2}, Lw3/k2$a;->d([Ljava/lang/Object;[II)V

    return-void
.end method

.method public h(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lw3/x3;->c:Lw3/x3;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lw3/k2;->b(Ljava/lang/Object;)I

    move-result p1

    iget-object v2, p0, Lw3/k2;->b:[I

    aput v0, v2, p1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lw3/k2;->a:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_1
    return-object p1
.end method

.method public i()Lw3/k2$a;
    .locals 1

    new-instance v0, Lw3/k2$a;

    invoke-direct {v0, p0}, Lw3/k2$a;-><init>(Lw3/k2;)V

    return-object v0
.end method

.method public j(Ljava/lang/Object;I)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lw3/x3;->c:Lw3/x3;

    :cond_0
    invoke-direct {p0, p1}, Lw3/k2;->b(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lw3/k2;->b:[I

    aput p2, v0, p1

    return-void
.end method

.method public l(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lw3/x3;->c:Lw3/x3;

    :cond_0
    invoke-direct {p0, p1}, Lw3/k2;->c(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lw3/k2;->a:[Ljava/lang/Object;

    sget-object v1, Lw3/k2;->f:Ljava/lang/Object;

    aput-object v1, v0, p1

    iget p1, p0, Lw3/k2;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lw3/k2;->d:I

    :cond_1
    return-void
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lw3/k2;->d:I

    return v0
.end method
