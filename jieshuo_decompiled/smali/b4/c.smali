.class public final Lb4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(D)I
    .locals 4

    double-to-int v0, p0

    int-to-double v1, v0

    cmpl-double v3, v1, p0

    if-nez v3, :cond_0

    return v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    invoke-static {p0, p1}, Lb4/c;->b(J)I

    move-result v0

    const/16 v1, -0x35

    if-le v0, v1, :cond_3

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lb4/c;->e(J)J

    move-result-wide v1

    invoke-static {p0, p1}, Lb4/c;->d(J)I

    move-result p0

    if-gez v0, :cond_2

    neg-int p1, v0

    shr-long v0, v1, p1

    goto :goto_0

    :cond_2
    shl-long v0, v1, v0

    :goto_0
    long-to-int p1, v0

    mul-int p0, p0, p1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private static b(J)I
    .locals 2

    invoke-static {p0, p1}, Lb4/c;->c(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, -0x432

    return p0

    :cond_0
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr p0, v0

    const/16 v0, 0x34

    shr-long/2addr p0, v0

    long-to-int p1, p0

    add-int/lit16 p1, p1, -0x433

    return p1
.end method

.method private static c(J)Z
    .locals 3

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(J)I
    .locals 3

    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static e(J)J
    .locals 2

    const-wide v0, 0xfffffffffffffL

    and-long/2addr v0, p0

    invoke-static {p0, p1}, Lb4/c;->c(J)Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/high16 p0, 0x10000000000000L

    add-long/2addr v0, p0

    :cond_0
    return-wide v0
.end method
