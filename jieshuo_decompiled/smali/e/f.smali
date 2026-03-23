.class public Le/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field private c:I

.field private d:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(III)V
    .locals 4

    iget-object v0, p0, Le/f;->d:[I

    const/4 v1, 0x6

    if-nez v0, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Le/f;->d:[I

    :cond_0
    iget v0, p0, Le/f;->c:I

    iget-object v2, p0, Le/f;->d:[I

    array-length v3, v2

    if-lt v0, v3, :cond_1

    array-length v0, v2

    add-int/2addr v0, v1

    new-array v0, v0, [I

    array-length v1, v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Le/f;->d:[I

    :cond_1
    iget-object v0, p0, Le/f;->d:[I

    iget v1, p0, Le/f;->c:I

    add-int/lit8 v2, v1, 0x1

    aput p1, v0, v1

    add-int/lit8 p1, v2, 0x1

    iput p1, p0, Le/f;->c:I

    or-int p1, p2, p3

    aput p1, v0, v2

    return-void
.end method


# virtual methods
.method b(Le/i;Le/a;IZ)V
    .locals 1

    iget p1, p0, Le/f;->a:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-eqz p4, :cond_0

    iget p4, p2, Le/a;->b:I

    const/high16 v0, 0x20000000

    invoke-direct {p0, p3, p4, v0}, Le/f;->a(III)V

    goto :goto_0

    :cond_0
    iget p4, p2, Le/a;->b:I

    const/high16 v0, 0x10000000

    invoke-direct {p0, p3, p4, v0}, Le/f;->a(III)V

    goto :goto_1

    :cond_1
    iget p1, p0, Le/f;->b:I

    sub-int/2addr p1, p3

    if-eqz p4, :cond_2

    :goto_0
    invoke-virtual {p2, p1}, Le/a;->f(I)Le/a;

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p2, p1}, Le/a;->g(I)Le/a;

    :goto_2
    return-void
.end method

.method c(Le/i;I[B)V
    .locals 4

    iget p1, p0, Le/f;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Le/f;->a:I

    iput p2, p0, Le/f;->b:I

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Le/f;->c:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Le/f;->d:[I

    add-int/lit8 v1, p1, 0x1

    aget p1, v0, p1

    add-int/lit8 v2, v1, 0x1

    aget v0, v0, v1

    const v1, 0xfffffff

    and-int/2addr v1, v0

    sub-int p1, p2, p1

    const/high16 v3, -0x10000000

    and-int/2addr v0, v3

    const/high16 v3, 0x10000000

    if-ne v0, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    int-to-byte p1, p1

    aput-byte p1, p3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, p3, v0

    add-int/lit8 v0, v1, 0x1

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    int-to-byte p1, p1

    aput-byte p1, p3, v0

    :goto_1
    move p1, v2

    goto :goto_0

    :cond_1
    return-void
.end method
