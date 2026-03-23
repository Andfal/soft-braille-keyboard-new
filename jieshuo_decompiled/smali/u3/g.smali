.class public Lu3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([B)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lu3/g;->b([BI)I

    move-result p0

    return p0
.end method

.method public static b([BI)I
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lu3/g;->d([BII)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static c([BI)J
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lu3/g;->d([BII)J

    move-result-wide p0

    return-wide p0
.end method

.method private static d([BII)J
    .locals 4

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    const-wide/16 v0, 0x0

    :goto_0
    if-lt p2, p1, :cond_0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    aget-byte v2, p0, p2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    or-long/2addr v0, v2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static e([B)S
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lu3/g;->f([BI)S

    move-result p0

    return p0
.end method

.method public static f([BI)S
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lu3/g;->d([BII)J

    move-result-wide p0

    long-to-int p1, p0

    int-to-short p0, p1

    return p0
.end method

.method public static g([BI)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lu3/g;->d([BII)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static h([BII)V
    .locals 2

    int-to-long v0, p2

    const/4 p2, 0x4

    invoke-static {p0, p1, v0, v1, p2}, Lu3/g;->i([BIJI)V

    return-void
.end method

.method private static i([BIJI)V
    .locals 2

    add-int/2addr p4, p1

    :goto_0
    if-ge p1, p4, :cond_0

    const/16 v0, 0xff

    int-to-long v0, v0

    and-long/2addr v0, p2

    long-to-int v1, v0

    int-to-byte v0, v1

    aput-byte v0, p0, p1

    const/16 v0, 0x8

    shr-long/2addr p2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static j([BIS)V
    .locals 2

    int-to-long v0, p2

    const/4 p2, 0x2

    invoke-static {p0, p1, v0, v1, p2}, Lu3/g;->i([BIJI)V

    return-void
.end method
