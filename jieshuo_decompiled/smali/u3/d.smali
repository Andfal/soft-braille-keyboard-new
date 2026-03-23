.class public Lu3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/InputStream;[B)I
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lu3/d;->b(Ljava/io/InputStream;[BII)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/io/InputStream;[BII)I
    .locals 3

    const/4 v0, 0x0

    :cond_0
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gez v1, :cond_2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    add-int/2addr v0, v1

    if-ne v0, p3, :cond_0

    return v0
.end method
