.class public Lp3/b;
.super Lp3/f;
.source "SourceFile"


# instance fields
.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>([BII)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lp3/f;-><init>([BI)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lp3/b;->d:Ljava/util/ArrayList;

    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lp3/f;->b:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lp3/b;->d:Ljava/util/ArrayList;

    new-instance v0, Lp3/c;

    invoke-virtual {p0, p1}, Lp3/f;->b(I)I

    move-result v1

    sub-int/2addr v1, p3

    invoke-virtual {p0, p1}, Lp3/f;->a(I)I

    move-result v2

    sub-int/2addr v2, p3

    invoke-virtual {p0, p1}, Lp3/b;->e(I)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lp3/c;-><init>(II[B)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public d(I)Lp3/c;
    .locals 1

    iget-object v0, p0, Lp3/b;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp3/c;

    return-object p1
.end method

.method protected e(I)[B
    .locals 5

    iget-object v0, p0, Lp3/f;->a:[B

    iget v1, p0, Lp3/f;->c:I

    iget v2, p0, Lp3/f;->b:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lu3/g;->g([BI)I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [B

    return-object p1

    :cond_0
    iget-object v1, p0, Lp3/f;->a:[B

    iget v2, p0, Lp3/f;->c:I

    add-int/2addr v2, p1

    invoke-static {v1, v2}, Lu3/g;->g([BI)I

    move-result v1

    new-array v2, v1, [B

    iget-object v3, p0, Lp3/f;->a:[B

    iget v4, p0, Lp3/f;->c:I

    add-int/lit8 p1, p1, 0x1

    add-int/2addr v4, p1

    invoke-static {v3, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
