.class public Lp3/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>([BIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit8 p3, p3, -0x4

    add-int/lit8 v0, p4, 0x4

    div-int/2addr p3, v0

    iput p3, p0, Lp3/i;->a:I

    iput p4, p0, Lp3/i;->b:I

    new-instance p3, Ljava/util/ArrayList;

    iget p4, p0, Lp3/i;->a:I

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p3, p0, Lp3/i;->c:Ljava/util/ArrayList;

    const/4 p3, 0x0

    :goto_0
    iget p4, p0, Lp3/i;->a:I

    if-ge p3, p4, :cond_0

    iget-object p4, p0, Lp3/i;->c:Ljava/util/ArrayList;

    invoke-direct {p0, p3, p1, p2}, Lp3/i;->c(I[BI)Lp3/g;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x4

    return p1
.end method

.method private c(I[BI)Lp3/g;
    .locals 4

    invoke-direct {p0, p1}, Lp3/i;->a(I)I

    move-result v0

    add-int/2addr v0, p3

    invoke-static {p2, v0}, Lu3/g;->b([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lp3/i;->a(I)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {p2, v1}, Lu3/g;->b([BI)I

    move-result v1

    iget v2, p0, Lp3/i;->b:I

    new-array v2, v2, [B

    invoke-direct {p0, p1}, Lp3/i;->d(I)I

    move-result p1

    add-int/2addr p3, p1

    const/4 p1, 0x0

    iget v3, p0, Lp3/i;->b:I

    invoke-static {p2, p3, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Lp3/g;

    invoke-direct {p1, v0, v1, v2}, Lp3/g;-><init>(II[B)V

    return-object p1
.end method

.method private d(I)I
    .locals 2

    iget v0, p0, Lp3/i;->a:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    iget v1, p0, Lp3/i;->b:I

    mul-int v1, v1, p1

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public b(I)Lp3/g;
    .locals 1

    iget-object v0, p0, Lp3/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp3/g;

    return-object p1
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lp3/i;->a:I

    return v0
.end method
