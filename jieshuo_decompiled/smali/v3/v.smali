.class public abstract Lv3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Lv3/a0;

.field b:[Lv3/m;

.field c:Lv3/l;

.field d:[B

.field e:[I

.field f:I

.field g:I

.field h:Z

.field i:Z

.field j:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv3/l;

    invoke-direct {v0}, Lv3/l;-><init>()V

    iput-object v0, p0, Lv3/v;->c:Lv3/l;

    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lv3/v;->d:[B

    new-array v0, v0, [I

    iput-object v0, p0, Lv3/v;->e:[I

    invoke-virtual {p0, p1}, Lv3/v;->g(I)V

    invoke-virtual {p0}, Lv3/v;->d()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-boolean v0, p0, Lv3/v;->h:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lv3/v;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lv3/v;->a:[Lv3/a0;

    iget-object v2, p0, Lv3/v;->e:[I

    aget v2, v2, v3

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lv3/a0;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv3/v;->c(Ljava/lang/String;)V

    iput-boolean v1, p0, Lv3/v;->h:Z

    :cond_1
    iget-boolean v0, p0, Lv3/v;->i:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v1}, Lv3/v;->f([BIZ)V

    :cond_2
    return-void
.end method

.method public b([BI)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_9

    aget-byte v2, p1, v1

    const/4 v3, 0x0

    :cond_0
    :goto_1
    iget v4, p0, Lv3/v;->f:I

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lv3/v;->a:[Lv3/a0;

    iget-object v6, p0, Lv3/v;->e:[I

    aget v6, v6, v3

    aget-object v4, v4, v6

    iget-object v6, p0, Lv3/v;->d:[B

    aget-byte v6, v6, v3

    invoke-static {v4, v2, v6}, Lv3/a0;->c(Lv3/a0;BB)B

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    iget-object p1, p0, Lv3/v;->a:[Lv3/a0;

    iget-object p2, p0, Lv3/v;->e:[I

    aget p2, p2, v3

    aget-object p1, p1, p2

    :goto_2
    invoke-virtual {p1}, Lv3/a0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/v;->c(Ljava/lang/String;)V

    iput-boolean v5, p0, Lv3/v;->h:Z

    return v5

    :cond_1
    if-ne v4, v5, :cond_2

    iget v4, p0, Lv3/v;->f:I

    sub-int/2addr v4, v5

    iput v4, p0, Lv3/v;->f:I

    if-ge v3, v4, :cond_0

    iget-object v5, p0, Lv3/v;->e:[I

    aget v6, v5, v4

    aput v6, v5, v3

    iget-object v5, p0, Lv3/v;->d:[B

    aget-byte v4, v5, v4

    aput-byte v4, v5, v3

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lv3/v;->d:[B

    add-int/lit8 v6, v3, 0x1

    aput-byte v4, v5, v3

    move v3, v6

    goto :goto_1

    :cond_3
    if-gt v4, v5, :cond_5

    if-ne v5, v4, :cond_4

    iget-object p1, p0, Lv3/v;->a:[Lv3/a0;

    iget-object p2, p0, Lv3/v;->e:[I

    aget p2, p2, v0

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lv3/a0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/v;->c(Ljava/lang/String;)V

    :cond_4
    iput-boolean v5, p0, Lv3/v;->h:Z

    return v5

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    iget v6, p0, Lv3/v;->f:I

    if-ge v2, v6, :cond_7

    iget-object v6, p0, Lv3/v;->a:[Lv3/a0;

    iget-object v7, p0, Lv3/v;->e:[I

    aget v7, v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lv3/a0;->d()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lv3/v;->a:[Lv3/a0;

    iget-object v7, p0, Lv3/v;->e:[I

    aget v7, v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lv3/a0;->d()Z

    move-result v6

    if-nez v6, :cond_6

    add-int/lit8 v3, v3, 0x1

    move v4, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    if-ne v5, v3, :cond_8

    iget-object p1, p0, Lv3/v;->a:[Lv3/a0;

    iget-object p2, p0, Lv3/v;->e:[I

    aget p2, p2, v4

    aget-object p1, p1, p2

    goto :goto_2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    iget-boolean v0, p0, Lv3/v;->i:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2}, Lv3/v;->e([BI)V

    :cond_a
    iget-boolean p1, p0, Lv3/v;->h:Z

    return p1
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public d()V
    .locals 3

    iget-boolean v0, p0, Lv3/v;->j:Z

    iput-boolean v0, p0, Lv3/v;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv3/v;->h:Z

    iget v1, p0, Lv3/v;->g:I

    iput v1, p0, Lv3/v;->f:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lv3/v;->f:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lv3/v;->d:[B

    aput-byte v0, v2, v1

    iget-object v2, p0, Lv3/v;->e:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lv3/v;->c:Lv3/l;

    invoke-virtual {v0}, Lv3/l;->f()V

    return-void
.end method

.method public e([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lv3/v;->f([BIZ)V

    return-void
.end method

.method public f([BIZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lv3/v;->f:I

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lv3/v;->b:[Lv3/m;

    iget-object v5, p0, Lv3/v;->e:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget-object v4, p0, Lv3/v;->a:[Lv3/a0;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lv3/a0;->d()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lv3/v;->a:[Lv3/a0;

    iget-object v5, p0, Lv3/v;->e:[I

    aget v5, v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lv3/a0;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GB18030"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-le v2, v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Lv3/v;->i:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lv3/v;->c:Lv3/l;

    invoke-virtual {v4, p1, p2}, Lv3/l;->g([BI)Z

    move-result p1

    iput-boolean p1, p0, Lv3/v;->i:Z

    if-eqz p3, :cond_4

    iget-object p1, p0, Lv3/v;->c:Lv3/l;

    invoke-virtual {p1}, Lv3/l;->e()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    iget-object p1, p0, Lv3/v;->c:Lv3/l;

    invoke-virtual {p1}, Lv3/l;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_5
    if-ne v2, v3, :cond_a

    iget-object p1, p0, Lv3/v;->c:Lv3/l;

    invoke-virtual {p1}, Lv3/l;->a()V

    const/4 p1, -0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_2
    iget v2, p0, Lv3/v;->f:I

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lv3/v;->b:[Lv3/m;

    iget-object v3, p0, Lv3/v;->e:[I

    aget v3, v3, v0

    aget-object v2, v2, v3

    if-eqz v2, :cond_8

    iget-object v2, p0, Lv3/v;->a:[Lv3/a0;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lv3/a0;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Big5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lv3/v;->c:Lv3/l;

    iget-object v3, p0, Lv3/v;->b:[Lv3/m;

    iget-object v4, p0, Lv3/v;->e:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lv3/m;->a()[F

    move-result-object v3

    iget-object v4, p0, Lv3/v;->b:[Lv3/m;

    iget-object v5, p0, Lv3/v;->e:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lv3/m;->b()F

    move-result v4

    iget-object v5, p0, Lv3/v;->b:[Lv3/m;

    iget-object v6, p0, Lv3/v;->e:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lv3/m;->c()[F

    move-result-object v5

    iget-object v6, p0, Lv3/v;->b:[Lv3/m;

    iget-object v7, p0, Lv3/v;->e:[I

    aget v7, v7, v0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lv3/m;->d()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lv3/l;->c([FF[FF)F

    move-result v2

    add-int/lit8 v3, p3, 0x1

    if-eqz p3, :cond_6

    cmpl-float p3, p2, v2

    if-lez p3, :cond_7

    :cond_6
    move p1, v0

    move p2, v2

    :cond_7
    move p3, v3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    if-ltz p1, :cond_a

    iget-object p2, p0, Lv3/v;->a:[Lv3/a0;

    iget-object p3, p0, Lv3/v;->e:[I

    aget p1, p3, p1

    aget-object p1, p2, p1

    invoke-virtual {p1}, Lv3/a0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lv3/v;->c(Ljava/lang/String;)V

    iput-boolean v1, p0, Lv3/v;->h:Z

    :cond_a
    return-void
.end method

.method protected g(I)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    iput-object v4, v0, Lv3/v;->a:[Lv3/a0;

    iput-object v4, v0, Lv3/v;->b:[Lv3/m;

    const/4 v5, 0x7

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-ne v1, v9, :cond_1

    new-array v1, v5, [Lv3/a0;

    new-instance v11, Lv3/z;

    invoke-direct {v11}, Lv3/z;-><init>()V

    aput-object v11, v1, v3

    new-instance v11, Lv3/g;

    invoke-direct {v11}, Lv3/g;-><init>()V

    aput-object v11, v1, v10

    new-instance v11, Lv3/s;

    invoke-direct {v11}, Lv3/s;-><init>()V

    aput-object v11, v1, v7

    new-instance v11, Lv3/n;

    invoke-direct {v11}, Lv3/n;-><init>()V

    aput-object v11, v1, v6

    new-instance v11, Lv3/h;

    invoke-direct {v11}, Lv3/h;-><init>()V

    aput-object v11, v1, v9

    new-instance v11, Lv3/x;

    invoke-direct {v11}, Lv3/x;-><init>()V

    aput-object v11, v1, v8

    new-instance v11, Lv3/y;

    invoke-direct {v11}, Lv3/y;-><init>()V

    aput-object v11, v1, v2

    iput-object v1, v0, Lv3/v;->a:[Lv3/a0;

    new-array v1, v5, [Lv3/m;

    aput-object v4, v1, v3

    new-instance v5, Lv3/a;

    invoke-direct {v5}, Lv3/a;-><init>()V

    aput-object v5, v1, v10

    aput-object v4, v1, v7

    new-instance v5, Lv3/d;

    invoke-direct {v5}, Lv3/d;-><init>()V

    aput-object v5, v1, v6

    aput-object v4, v1, v9

    aput-object v4, v1, v8

    aput-object v4, v1, v2

    iput-object v1, v0, Lv3/v;->b:[Lv3/m;

    goto/16 :goto_1

    :cond_1
    if-ne v1, v8, :cond_2

    new-array v1, v2, [Lv3/a0;

    new-instance v2, Lv3/z;

    invoke-direct {v2}, Lv3/z;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lv3/k;

    invoke-direct {v2}, Lv3/k;-><init>()V

    aput-object v2, v1, v10

    new-instance v2, Lv3/u;

    invoke-direct {v2}, Lv3/u;-><init>()V

    aput-object v2, v1, v7

    new-instance v2, Lv3/h;

    invoke-direct {v2}, Lv3/h;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Lv3/x;

    invoke-direct {v2}, Lv3/x;-><init>()V

    aput-object v2, v1, v9

    new-instance v2, Lv3/y;

    invoke-direct {v2}, Lv3/y;-><init>()V

    aput-object v2, v1, v8

    iput-object v1, v0, Lv3/v;->a:[Lv3/a0;

    goto/16 :goto_1

    :cond_2
    const/16 v11, 0x8

    if-ne v1, v6, :cond_3

    new-array v1, v11, [Lv3/a0;

    new-instance v4, Lv3/z;

    invoke-direct {v4}, Lv3/z;-><init>()V

    aput-object v4, v1, v3

    new-instance v4, Lv3/p;

    invoke-direct {v4}, Lv3/p;-><init>()V

    aput-object v4, v1, v10

    new-instance v4, Lv3/o;

    invoke-direct {v4}, Lv3/o;-><init>()V

    aput-object v4, v1, v7

    new-instance v4, Lv3/s;

    invoke-direct {v4}, Lv3/s;-><init>()V

    aput-object v4, v1, v6

    new-instance v4, Lv3/q;

    invoke-direct {v4}, Lv3/q;-><init>()V

    aput-object v4, v1, v9

    new-instance v4, Lv3/h;

    invoke-direct {v4}, Lv3/h;-><init>()V

    aput-object v4, v1, v8

    new-instance v4, Lv3/x;

    invoke-direct {v4}, Lv3/x;-><init>()V

    aput-object v4, v1, v2

    new-instance v2, Lv3/y;

    invoke-direct {v2}, Lv3/y;-><init>()V

    aput-object v2, v1, v5

    iput-object v1, v0, Lv3/v;->a:[Lv3/a0;

    goto/16 :goto_1

    :cond_3
    if-ne v1, v10, :cond_4

    new-array v1, v5, [Lv3/a0;

    new-instance v4, Lv3/z;

    invoke-direct {v4}, Lv3/z;-><init>()V

    aput-object v4, v1, v3

    new-instance v4, Lv3/w;

    invoke-direct {v4}, Lv3/w;-><init>()V

    aput-object v4, v1, v10

    new-instance v4, Lv3/j;

    invoke-direct {v4}, Lv3/j;-><init>()V

    aput-object v4, v1, v7

    new-instance v4, Lv3/t;

    invoke-direct {v4}, Lv3/t;-><init>()V

    aput-object v4, v1, v6

    new-instance v4, Lv3/h;

    invoke-direct {v4}, Lv3/h;-><init>()V

    aput-object v4, v1, v9

    new-instance v4, Lv3/x;

    invoke-direct {v4}, Lv3/x;-><init>()V

    aput-object v4, v1, v8

    new-instance v4, Lv3/y;

    invoke-direct {v4}, Lv3/y;-><init>()V

    aput-object v4, v1, v2

    iput-object v1, v0, Lv3/v;->a:[Lv3/a0;

    goto/16 :goto_1

    :cond_4
    const/16 v12, 0x9

    const/16 v13, 0xa

    if-ne v1, v7, :cond_5

    new-array v1, v13, [Lv3/a0;

    new-instance v14, Lv3/z;

    invoke-direct {v14}, Lv3/z;-><init>()V

    aput-object v14, v1, v3

    new-instance v14, Lv3/p;

    invoke-direct {v14}, Lv3/p;-><init>()V

    aput-object v14, v1, v10

    new-instance v14, Lv3/o;

    invoke-direct {v14}, Lv3/o;-><init>()V

    aput-object v14, v1, v7

    new-instance v14, Lv3/g;

    invoke-direct {v14}, Lv3/g;-><init>()V

    aput-object v14, v1, v6

    new-instance v14, Lv3/s;

    invoke-direct {v14}, Lv3/s;-><init>()V

    aput-object v14, v1, v9

    new-instance v14, Lv3/q;

    invoke-direct {v14}, Lv3/q;-><init>()V

    aput-object v14, v1, v8

    new-instance v14, Lv3/n;

    invoke-direct {v14}, Lv3/n;-><init>()V

    aput-object v14, v1, v2

    new-instance v14, Lv3/h;

    invoke-direct {v14}, Lv3/h;-><init>()V

    aput-object v14, v1, v5

    new-instance v14, Lv3/x;

    invoke-direct {v14}, Lv3/x;-><init>()V

    aput-object v14, v1, v11

    new-instance v14, Lv3/y;

    invoke-direct {v14}, Lv3/y;-><init>()V

    aput-object v14, v1, v12

    iput-object v1, v0, Lv3/v;->a:[Lv3/a0;

    new-array v1, v13, [Lv3/m;

    aput-object v4, v1, v3

    new-instance v13, Lv3/e;

    invoke-direct {v13}, Lv3/e;-><init>()V

    aput-object v13, v1, v10

    aput-object v4, v1, v7

    new-instance v7, Lv3/a;

    invoke-direct {v7}, Lv3/a;-><init>()V

    aput-object v7, v1, v6

    aput-object v4, v1, v9

    aput-object v4, v1, v8

    new-instance v6, Lv3/d;

    invoke-direct {v6}, Lv3/d;-><init>()V

    aput-object v6, v1, v2

    aput-object v4, v1, v5

    aput-object v4, v1, v11

    aput-object v4, v1, v12

    iput-object v1, v0, Lv3/v;->b:[Lv3/m;

    goto/16 :goto_1

    :cond_5
    if-nez v1, :cond_6

    const/16 v1, 0xf

    new-array v14, v1, [Lv3/a0;

    new-instance v15, Lv3/z;

    invoke-direct {v15}, Lv3/z;-><init>()V

    aput-object v15, v14, v3

    new-instance v15, Lv3/w;

    invoke-direct {v15}, Lv3/w;-><init>()V

    aput-object v15, v14, v10

    new-instance v15, Lv3/j;

    invoke-direct {v15}, Lv3/j;-><init>()V

    aput-object v15, v14, v7

    new-instance v15, Lv3/t;

    invoke-direct {v15}, Lv3/t;-><init>()V

    aput-object v15, v14, v6

    new-instance v15, Lv3/k;

    invoke-direct {v15}, Lv3/k;-><init>()V

    aput-object v15, v14, v9

    new-instance v15, Lv3/u;

    invoke-direct {v15}, Lv3/u;-><init>()V

    aput-object v15, v14, v8

    new-instance v15, Lv3/n;

    invoke-direct {v15}, Lv3/n;-><init>()V

    aput-object v15, v14, v2

    new-instance v15, Lv3/p;

    invoke-direct {v15}, Lv3/p;-><init>()V

    aput-object v15, v14, v5

    new-instance v15, Lv3/o;

    invoke-direct {v15}, Lv3/o;-><init>()V

    aput-object v15, v14, v11

    new-instance v15, Lv3/g;

    invoke-direct {v15}, Lv3/g;-><init>()V

    aput-object v15, v14, v12

    new-instance v15, Lv3/s;

    invoke-direct {v15}, Lv3/s;-><init>()V

    aput-object v15, v14, v13

    new-instance v15, Lv3/q;

    invoke-direct {v15}, Lv3/q;-><init>()V

    const/16 v16, 0xb

    aput-object v15, v14, v16

    new-instance v15, Lv3/h;

    invoke-direct {v15}, Lv3/h;-><init>()V

    const/16 v17, 0xc

    aput-object v15, v14, v17

    new-instance v15, Lv3/x;

    invoke-direct {v15}, Lv3/x;-><init>()V

    const/16 v18, 0xd

    aput-object v15, v14, v18

    new-instance v15, Lv3/y;

    invoke-direct {v15}, Lv3/y;-><init>()V

    const/16 v19, 0xe

    aput-object v15, v14, v19

    iput-object v14, v0, Lv3/v;->a:[Lv3/a0;

    new-array v1, v1, [Lv3/m;

    aput-object v4, v1, v3

    aput-object v4, v1, v10

    new-instance v14, Lv3/b;

    invoke-direct {v14}, Lv3/b;-><init>()V

    aput-object v14, v1, v7

    aput-object v4, v1, v6

    new-instance v6, Lv3/c;

    invoke-direct {v6}, Lv3/c;-><init>()V

    aput-object v6, v1, v9

    aput-object v4, v1, v8

    new-instance v6, Lv3/a;

    invoke-direct {v6}, Lv3/a;-><init>()V

    aput-object v6, v1, v2

    new-instance v2, Lv3/d;

    invoke-direct {v2}, Lv3/d;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Lv3/e;

    invoke-direct {v2}, Lv3/e;-><init>()V

    aput-object v2, v1, v11

    aput-object v4, v1, v12

    aput-object v4, v1, v13

    aput-object v4, v1, v16

    aput-object v4, v1, v17

    aput-object v4, v1, v18

    aput-object v4, v1, v19

    iput-object v1, v0, Lv3/v;->b:[Lv3/m;

    :cond_6
    :goto_1
    iget-object v1, v0, Lv3/v;->b:[Lv3/m;

    if-eqz v1, :cond_7

    const/4 v3, 0x1

    :cond_7
    iput-boolean v3, v0, Lv3/v;->j:Z

    iget-object v1, v0, Lv3/v;->a:[Lv3/a0;

    array-length v1, v1

    iput v1, v0, Lv3/v;->g:I

    return-void
.end method
