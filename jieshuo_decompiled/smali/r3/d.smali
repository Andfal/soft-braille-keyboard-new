.class public Lr3/d;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lr3/h;

.field private f:[B


# direct methods
.method public constructor <init>(Lr3/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lr3/d;->a:I

    iput v0, p0, Lr3/d;->b:I

    invoke-interface {p1}, Lr3/c;->getSize()I

    move-result v1

    iput v1, p0, Lr3/d;->c:I

    iput-boolean v0, p0, Lr3/d;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lr3/d;->f:[B

    instance-of v0, p1, Lr3/e;

    if-eqz v0, :cond_0

    check-cast p1, Lr3/e;

    invoke-virtual {p1}, Lr3/e;->d()Lr3/h;

    move-result-object p1

    iput-object p1, p0, Lr3/d;->e:Lr3/h;

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot open internal document storage"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b()Z
    .locals 2

    iget v0, p0, Lr3/d;->a:I

    iget v1, p0, Lr3/d;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lr3/d;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot perform requested operation on a closed stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()I
    .locals 2

    invoke-direct {p0}, Lr3/d;->c()V

    iget v0, p0, Lr3/d;->c:I

    iget v1, p0, Lr3/d;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr3/d;->d:Z

    return-void
.end method

.method public mark(I)V
    .locals 0

    iget p1, p0, Lr3/d;->a:I

    iput p1, p0, Lr3/d;->b:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4

    invoke-direct {p0}, Lr3/d;->c()V

    invoke-direct {p0}, Lr3/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lr3/d;->f:[B

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lr3/d;->f:[B

    :cond_1
    iget-object v0, p0, Lr3/d;->e:Lr3/h;

    iget-object v1, p0, Lr3/d;->f:[B

    iget v2, p0, Lr3/d;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lr3/d;->a:I

    invoke-virtual {v0, v1, v2}, Lr3/h;->b([BI)V

    iget-object v0, p0, Lr3/d;->f:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lr3/d;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4

    invoke-direct {p0}, Lr3/d;->c()V

    if-eqz p1, :cond_4

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lr3/d;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    invoke-virtual {p0}, Lr3/d;->available()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-nez p2, :cond_2

    array-length v1, p1

    if-ne p3, v1, :cond_2

    iget-object p2, p0, Lr3/d;->e:Lr3/h;

    iget v0, p0, Lr3/d;->a:I

    invoke-virtual {p2, p1, v0}, Lr3/h;->b([BI)V

    goto :goto_0

    :cond_2
    new-array v1, p3, [B

    iget-object v2, p0, Lr3/d;->e:Lr3/h;

    iget v3, p0, Lr3/d;->a:I

    invoke-virtual {v2, v1, v3}, Lr3/h;->b([BI)V

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lr3/d;->a:I

    add-int/2addr p1, p3

    iput p1, p0, Lr3/d;->a:I

    return p3

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "can\'t read past buffer boundaries"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lr3/d;->b:I

    iput v0, p0, Lr3/d;->a:I

    return-void
.end method

.method public skip(J)J
    .locals 3

    invoke-direct {p0}, Lr3/d;->c()V

    const/4 v0, 0x0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    iget v0, p0, Lr3/d;->a:I

    long-to-int p2, p1

    add-int/2addr p2, v0

    if-ge p2, v0, :cond_1

    iget p2, p0, Lr3/d;->c:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lr3/d;->c:I

    if-le p2, p1, :cond_2

    move p2, p1

    :cond_2
    :goto_0
    sub-int p1, p2, v0

    int-to-long v0, p1

    iput p2, p0, Lr3/d;->a:I

    return-wide v0
.end method
