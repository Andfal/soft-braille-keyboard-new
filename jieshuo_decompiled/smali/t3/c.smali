.class public Lt3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lu3/e;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lu3/e;

    invoke-direct {v0}, Lu3/e;-><init>()V

    iput-object v0, p0, Lt3/c;->a:Lu3/e;

    return-void
.end method

.method public constructor <init>(I[IIILt3/d;)V
    .locals 10

    invoke-direct {p0}, Lt3/c;-><init>()V

    if-lez p1, :cond_6

    new-array v0, p1, [Lt3/j;

    array-length v1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, p2, v3

    invoke-interface {p5, v4}, Lt3/d;->remove(I)Lt3/i;

    move-result-object v4

    check-cast v4, Lt3/j;

    aput-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-ge v3, p1, :cond_4

    if-ltz p4, :cond_3

    invoke-static {}, Lt3/a;->b()I

    move-result p2

    invoke-static {}, Lt3/a;->c()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, p3, :cond_4

    sub-int v5, p1, v3

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {p5, p4}, Lt3/d;->remove(I)Lt3/i;

    move-result-object p4

    invoke-interface {p4}, Lt3/i;->getData()[B

    move-result-object p4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v5, :cond_1

    add-int/lit8 v8, v3, 0x1

    invoke-static {p4, v7}, Lu3/g;->b([BI)I

    move-result v9

    invoke-interface {p5, v9}, Lt3/d;->remove(I)Lt3/i;

    move-result-object v9

    check-cast v9, Lt3/j;

    aput-object v9, v0, v3

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_2

    :cond_1
    invoke-static {p4, v1}, Lu3/g;->b([BI)I

    move-result p4

    const/4 v5, -0x2

    if-ne p4, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "BAT count exceeds limit, yet XBAT index indicates no valid entries"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_3
    if-ne v3, p1, :cond_5

    invoke-direct {p0, v0, p5}, Lt3/c;->b([Lt3/i;Lt3/d;)V

    return-void

    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Could not find all blocks"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "Illegal block count; minimum count is 1, got "

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " instead"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method constructor <init>([Lt3/i;Lt3/d;)V
    .locals 0

    invoke-direct {p0}, Lt3/c;-><init>()V

    invoke-direct {p0, p1, p2}, Lt3/c;->b([Lt3/i;Lt3/d;)V

    return-void
.end method

.method private b([Lt3/i;Lt3/d;)V
    .locals 8

    invoke-static {}, Lt3/a;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-interface {v3}, Lt3/i;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    invoke-static {v3, v5}, Lu3/g;->b([BI)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    iget-object v7, p0, Lt3/c;->a:Lu3/e;

    invoke-virtual {v7}, Lu3/e;->e()I

    move-result v7

    invoke-interface {p2, v7}, Lt3/d;->c(I)V

    :cond_0
    iget-object v7, p0, Lt3/c;->a:Lu3/e;

    invoke-virtual {v7, v6}, Lu3/e;->a(I)Z

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p2, p0}, Lt3/d;->a(Lt3/c;)V

    return-void
.end method


# virtual methods
.method a(ILt3/d;)[Lt3/i;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    invoke-interface {p2, p1}, Lt3/d;->remove(I)Lt3/i;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lt3/c;->a:Lu3/e;

    invoke-virtual {v1, p1}, Lu3/e;->c(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Lt3/i;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lt3/i;

    return-object p1
.end method
