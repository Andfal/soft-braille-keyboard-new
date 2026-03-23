.class public final Lm3/z;
.super Lm3/h;
.source "SourceFile"


# instance fields
.field private final transient f:[[B

.field private final transient g:[I


# direct methods
.method public constructor <init>([[B[I)V
    .locals 1

    const-string v0, "segments"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm3/h;->d:Lm3/h;

    invoke-virtual {v0}, Lm3/h;->f()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lm3/h;-><init>([B)V

    iput-object p1, p0, Lm3/z;->f:[[B

    iput-object p2, p0, Lm3/z;->g:[I

    return-void
.end method

.method private final B()Lm3/h;
    .locals 2

    new-instance v0, Lm3/h;

    invoke-virtual {p0}, Lm3/z;->w()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lm3/h;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final A()[[B
    .locals 1

    iget-object v0, p0, Lm3/z;->f:[[B

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lm3/z;->B()Lm3/h;

    move-result-object v0

    invoke-virtual {v0}, Lm3/h;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lm3/h;
    .locals 6

    const-string v0, "algorithm"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v3

    add-int v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v4

    aget v4, v4, v1

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v5

    aget-object v5, v5, v1

    sub-int v2, v4, v2

    invoke-virtual {p1, v5, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_0
    new-instance v0, Lm3/h;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const-string v1, "digest.digest()"

    invoke-static {p1, v1}, Lt2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lm3/h;-><init>([B)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lm3/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lm3/h;

    invoke-virtual {p1}, Lm3/h;->t()I

    move-result v1

    invoke-virtual {p0}, Lm3/h;->t()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lm3/h;->t()I

    move-result v1

    invoke-virtual {p0, v2, p1, v2, v1}, Lm3/z;->n(ILm3/h;II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()I
    .locals 2

    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v0

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 8

    invoke-virtual {p0}, Lm3/h;->g()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v4

    add-int v5, v0, v1

    aget v4, v4, v5

    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v5

    aget v5, v5, v1

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v6

    aget-object v6, v6, v1

    sub-int v3, v5, v3

    add-int/2addr v3, v4

    :goto_1
    if-ge v4, v3, :cond_1

    mul-int/lit8 v2, v2, 0x1f

    aget-byte v7, v6, v4

    add-int/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v3, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lm3/h;->p(I)V

    move v0, v2

    :goto_2
    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lm3/z;->B()Lm3/h;

    move-result-object v0

    invoke-virtual {v0}, Lm3/h;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()[B
    .locals 1

    invoke-virtual {p0}, Lm3/z;->w()[B

    move-result-object v0

    return-object v0
.end method

.method public l(I)B
    .locals 7

    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v0

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v1, v0

    int-to-long v3, p1

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v6}, Lm3/c;->b(JJJ)V

    invoke-static {p0, p1}, Ln3/c;->b(Lm3/z;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    :goto_0
    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v2

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v3, v0

    aget v2, v2, v3

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v3

    aget-object v0, v3, v0

    sub-int/2addr p1, v1

    add-int/2addr p1, v2

    aget-byte p1, v0, p1

    return p1
.end method

.method public n(ILm3/h;II)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lm3/h;->t()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p1, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p4, p1

    invoke-static {p0, p1}, Ln3/c;->b(Lm3/z;I)I

    move-result v1

    :goto_0
    if-ge p1, p4, :cond_3

    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    :goto_1
    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v3

    aget v3, v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v4

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    add-int/2addr v3, v2

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, p1

    sub-int v2, p1, v2

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {p2, p3, v2, v4, v3}, Lm3/h;->o(I[BII)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p3, v3

    add-int/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0
.end method

.method public o(I[BII)Z
    .locals 6

    const-string v0, "other"

    invoke-static {p2, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p1, :cond_4

    invoke-virtual {p0}, Lm3/h;->t()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_4

    if-ltz p3, :cond_4

    array-length v1, p2

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_0

    goto :goto_2

    :cond_0
    add-int/2addr p4, p1

    invoke-static {p0, p1}, Ln3/c;->b(Lm3/z;I)I

    move-result v1

    :goto_0
    if-ge p1, p4, :cond_3

    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    :goto_1
    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v3

    aget v3, v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v4

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v5, v1

    aget v4, v4, v5

    add-int/2addr v3, v2

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int/2addr v3, p1

    sub-int v2, p1, v2

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2, v4, p2, p3, v3}, Lm3/c;->a([BI[BII)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/2addr p3, v3

    add-int/2addr p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lm3/z;->B()Lm3/h;

    move-result-object v0

    invoke-virtual {v0}, Lm3/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lm3/h;
    .locals 1

    invoke-direct {p0}, Lm3/z;->B()Lm3/h;

    move-result-object v0

    invoke-virtual {v0}, Lm3/h;->v()Lm3/h;

    move-result-object v0

    return-object v0
.end method

.method public w()[B
    .locals 9

    invoke-virtual {p0}, Lm3/h;->t()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v5

    add-int v6, v1, v2

    aget v5, v5, v6

    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v7

    aget-object v7, v7, v2

    sub-int v3, v6, v3

    add-int v8, v5, v3

    invoke-static {v7, v0, v4, v5, v8}, Lo2/d;->c([B[BIII)[B

    add-int/2addr v4, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public y(Lm3/e;II)V
    .locals 10

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lt2/f;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr p3, p2

    invoke-static {p0, p2}, Ln3/c;->b(Lm3/z;I)I

    move-result v0

    :goto_0
    if-ge p2, p3, :cond_2

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    :goto_1
    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v2

    aget v2, v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lm3/z;->z()[I

    move-result-object v3

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v4, v0

    aget v3, v3, v4

    add-int/2addr v2, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v2, p2

    sub-int v1, p2, v1

    add-int v6, v3, v1

    invoke-virtual {p0}, Lm3/z;->A()[[B

    move-result-object v1

    aget-object v5, v1, v0

    new-instance v1, Lm3/w;

    add-int v7, v6, v2

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lm3/w;-><init>([BIIZZ)V

    iget-object v3, p1, Lm3/e;->a:Lm3/w;

    if-nez v3, :cond_1

    iput-object v1, v1, Lm3/w;->g:Lm3/w;

    iput-object v1, v1, Lm3/w;->f:Lm3/w;

    iput-object v1, p1, Lm3/e;->a:Lm3/w;

    goto :goto_2

    :cond_1
    invoke-static {v3}, Lt2/f;->b(Ljava/lang/Object;)V

    iget-object v3, v3, Lm3/w;->g:Lm3/w;

    invoke-static {v3}, Lt2/f;->b(Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Lm3/w;->c(Lm3/w;)Lm3/w;

    :goto_2
    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lm3/e;->size()J

    move-result-wide p2

    invoke-virtual {p0}, Lm3/h;->t()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Lm3/e;->M(J)V

    return-void
.end method

.method public final z()[I
    .locals 1

    iget-object v0, p0, Lm3/z;->g:[I

    return-object v0
.end method
