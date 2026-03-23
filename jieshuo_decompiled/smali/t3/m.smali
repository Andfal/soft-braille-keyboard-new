.class public Lt3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt3/f;
.implements Lt3/i;


# instance fields
.field private a:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lt3/m;->a:[B

    return-void
.end method

.method private constructor <init>([BI)V
    .locals 3

    invoke-direct {p0}, Lt3/m;-><init>()V

    const/16 v0, 0x40

    mul-int/lit8 p2, p2, 0x40

    iget-object v1, p0, Lt3/m;->a:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a(I)I
    .locals 0

    mul-int/lit8 p0, p0, 0x40

    return p0
.end method

.method public static b([Lt3/i;)Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3}, Lt3/i;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    new-instance v5, Lt3/m;

    invoke-direct {v5, v3, v4}, Lt3/m;-><init>([BI)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c([Lt3/f;[BI)V
    .locals 6

    div-int/lit8 v0, p2, 0x40

    rem-int/lit8 v1, p2, 0x40

    array-length v2, p1

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, -0x1

    const/16 v2, 0x40

    div-int/2addr p2, v2

    const/4 v3, 0x0

    if-ne v0, p2, :cond_0

    aget-object p0, p0, v0

    check-cast p0, Lt3/m;

    iget-object p0, p0, Lt3/m;->a:[B

    array-length p2, p1

    invoke-static {p0, v1, p1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    aget-object v4, p0, v0

    check-cast v4, Lt3/m;

    iget-object v4, v4, Lt3/m;->a:[B

    rsub-int/lit8 v5, v1, 0x40

    invoke-static {v4, v1, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v3

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    check-cast v1, Lt3/m;

    iget-object v1, v1, Lt3/m;->a:[B

    invoke-static {v1, v3, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x40

    goto :goto_0

    :cond_1
    aget-object p0, p0, p2

    check-cast p0, Lt3/m;

    iget-object p0, p0, Lt3/m;->a:[B

    array-length p2, p1

    sub-int/2addr p2, v5

    invoke-static {p0, v3, p1, v5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lt3/m;->a:[B

    return-object v0
.end method
