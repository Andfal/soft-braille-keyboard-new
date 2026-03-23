.class public Lt3/g;
.super Lt3/b;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lt3/b;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lt3/g;->a:[B

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public constructor <init>(Lt3/j;)V
    .locals 0

    invoke-direct {p0}, Lt3/b;-><init>()V

    invoke-virtual {p1}, Lt3/j;->getData()[B

    move-result-object p1

    iput-object p1, p0, Lt3/g;->a:[B

    array-length p1, p1

    iput p1, p0, Lt3/g;->b:I

    return-void
.end method

.method public static a([Lt3/g;[BI)V
    .locals 6

    div-int/lit16 v0, p2, 0x200

    rem-int/lit16 v1, p2, 0x200

    array-length v2, p1

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x1

    const/16 v2, 0x200

    div-int/2addr p2, v2

    const/4 v3, 0x0

    if-ne v0, p2, :cond_0

    aget-object p0, p0, v0

    iget-object p0, p0, Lt3/g;->a:[B

    array-length p2, p1

    invoke-static {p0, v1, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    aget-object v4, p0, v0

    iget-object v4, v4, Lt3/g;->a:[B

    rsub-int v5, v1, 0x200

    invoke-static {v4, v1, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v3

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    iget-object v1, v1, Lt3/g;->a:[B

    invoke-static {v1, v3, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit16 v5, v5, 0x200

    goto :goto_0

    :cond_1
    aget-object p0, p0, p2

    iget-object p0, p0, Lt3/g;->a:[B

    array-length p2, p1

    sub-int/2addr p2, v5

    invoke-static {p0, v3, p1, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-void
.end method
