.class public Lo3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lo3/a;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lo3/a;->a:[B

    aput-byte v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lo3/a;->a([BI)[B

    return-void
.end method


# virtual methods
.method public a([BI)[B
    .locals 4

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lo3/a;->a:[B

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    add-int/lit8 v2, p2, 0x0

    aget-byte v2, p1, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    const/4 v3, 0x4

    aput-byte v2, v1, v3

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    const/4 v3, 0x5

    aput-byte v2, v1, v3

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    const/4 v3, 0x6

    aput-byte v2, v1, v3

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    const/4 v3, 0x7

    aput-byte v2, v1, v3

    const/16 v1, 0x8

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lo3/a;->a:[B

    add-int v3, v1, p2

    aget-byte v3, p1, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lo3/a;->a:[B

    return-object p1
.end method

.method public b([BI)V
    .locals 4

    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x0

    iget-object v2, p0, Lo3/a;->a:[B

    const/4 v3, 0x3

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, p2, 0x1

    const/4 v3, 0x2

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, p2, 0x2

    const/4 v3, 0x1

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, p2, 0x3

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, p2, 0x4

    const/4 v3, 0x5

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, p2, 0x5

    const/4 v3, 0x4

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, p2, 0x6

    const/4 v3, 0x7

    aget-byte v3, v2, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, p2, 0x7

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    aput-byte v2, p1, v0

    const/16 v0, 0x8

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, v0, p2

    iget-object v3, p0, Lo3/a;->a:[B

    aget-byte v3, v3, v0

    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p2, Ljava/lang/ArrayStoreException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Destination byte[] must have room for at least 16 bytes, but has a length of only "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArrayStoreException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    instance-of v1, p1, Lo3/a;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lo3/a;

    iget-object v1, p0, Lo3/a;->a:[B

    array-length v1, v1

    iget-object v2, p1, Lo3/a;->a:[B

    array-length v2, v2

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo3/a;->a:[B

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-byte v2, v2, v1

    iget-object v3, p1, Lo3/a;->a:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lo3/a;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x26

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lo3/a;->a:[B

    aget-byte v2, v2, v1

    invoke-static {v2}, Lu3/c;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
