.class public Lw3/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/d3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/x$b;
    }
.end annotation


# instance fields
.field private a:[Lw3/a3$c;

.field private b:Lw3/a3$c;

.field private c:Lw3/a3$c;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([Lw3/a3$c;Lw3/a3$c;)V
    .locals 2

    array-length v0, p0

    iget v1, p1, Lw3/a3$c;->b:I

    invoke-static {v0, v1}, Lw3/x;->e(II)I

    move-result v0

    aget-object v1, p0, v0

    aput-object p1, p0, v0

    iput-object v1, p1, Lw3/a3$c;->e:Lw3/a3$c;

    return-void
.end method

.method private static b([Lw3/a3$c;[Lw3/a3$c;)V
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    :goto_1
    if-eqz v2, :cond_0

    iget-object v3, v2, Lw3/a3$c;->e:Lw3/a3$c;

    const/4 v4, 0x0

    iput-object v4, v2, Lw3/a3$c;->e:Lw3/a3$c;

    invoke-static {p1, v2}, Lw3/x;->a([Lw3/a3$c;Lw3/a3$c;)V

    move-object v2, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Ljava/lang/Object;ILw3/a3$d;Lw3/a3$c;)Lw3/a3$c;
    .locals 5

    iget v0, p0, Lw3/x;->d:I

    const/4 v1, 0x4

    if-nez v0, :cond_0

    new-array p4, v1, [Lw3/a3$c;

    iput-object p4, p0, Lw3/x;->a:[Lw3/a3$c;

    goto/16 :goto_6

    :cond_0
    if-eqz p4, :cond_b

    iget-object p4, p0, Lw3/x;->a:[Lw3/a3$c;

    array-length p4, p4

    invoke-static {p4, p2}, Lw3/x;->e(II)I

    move-result p4

    iget-object v0, p0, Lw3/x;->a:[Lw3/a3$c;

    aget-object v0, v0, p4

    move-object v2, v0

    :goto_0
    if-eqz v0, :cond_2

    iget v3, v0, Lw3/a3$c;->b:I

    if-ne v3, p2, :cond_1

    iget-object v3, v0, Lw3/a3$c;->a:Ljava/lang/Object;

    if-eq v3, p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lw3/a3$c;->e:Lw3/a3$c;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_b

    sget-object v1, Lw3/a3$d;->d:Lw3/a3$d;

    if-ne p3, v1, :cond_3

    instance-of v1, v0, Lw3/a3$a;

    if-nez v1, :cond_3

    new-instance p3, Lw3/a3$a;

    invoke-virtual {v0}, Lw3/a3$c;->a()I

    move-result v1

    invoke-direct {p3, p1, p2, v1}, Lw3/a3$a;-><init>(Ljava/lang/Object;II)V

    goto :goto_2

    :cond_3
    sget-object v1, Lw3/a3$d;->e:Lw3/a3$d;

    if-ne p3, v1, :cond_9

    instance-of v1, v0, Lw3/a3$a;

    if-eqz v1, :cond_9

    new-instance p3, Lw3/a3$c;

    invoke-virtual {v0}, Lw3/a3$c;->a()I

    move-result v1

    invoke-direct {p3, p1, p2, v1}, Lw3/a3$c;-><init>(Ljava/lang/Object;II)V

    :goto_2
    iget-object p1, v0, Lw3/a3$c;->d:Ljava/lang/Object;

    iput-object p1, p3, Lw3/a3$c;->d:Ljava/lang/Object;

    iget-object p1, v0, Lw3/a3$c;->e:Lw3/a3$c;

    iput-object p1, p3, Lw3/a3$c;->e:Lw3/a3$c;

    iget-object p1, p0, Lw3/x;->b:Lw3/a3$c;

    if-ne v0, p1, :cond_4

    iput-object p3, p0, Lw3/x;->b:Lw3/a3$c;

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    iget-object p2, p1, Lw3/a3$c;->f:Lw3/a3$c;

    if-eq p2, v0, :cond_5

    move-object p1, p2

    goto :goto_3

    :cond_5
    if-eqz p1, :cond_6

    iput-object p3, p1, Lw3/a3$c;->f:Lw3/a3$c;

    :cond_6
    :goto_4
    iget-object p1, v0, Lw3/a3$c;->f:Lw3/a3$c;

    iput-object p1, p3, Lw3/a3$c;->f:Lw3/a3$c;

    iget-object p1, p0, Lw3/x;->c:Lw3/a3$c;

    if-ne v0, p1, :cond_7

    iput-object p3, p0, Lw3/x;->c:Lw3/a3$c;

    :cond_7
    if-ne v2, v0, :cond_8

    iget-object p1, p0, Lw3/x;->a:[Lw3/a3$c;

    aput-object p3, p1, p4

    goto :goto_5

    :cond_8
    iput-object p3, v2, Lw3/a3$c;->e:Lw3/a3$c;

    :goto_5
    return-object p3

    :cond_9
    sget-object p1, Lw3/a3$d;->c:Lw3/a3$d;

    if-ne p3, p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    return-object v0

    :cond_b
    :goto_6
    iget p4, p0, Lw3/x;->d:I

    add-int/lit8 p4, p4, 0x1

    mul-int/lit8 p4, p4, 0x4

    iget-object v0, p0, Lw3/x;->a:[Lw3/a3$c;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    if-le p4, v1, :cond_c

    array-length p4, v0

    mul-int/lit8 p4, p4, 0x2

    new-array p4, p4, [Lw3/a3$c;

    invoke-static {v0, p4}, Lw3/x;->b([Lw3/a3$c;[Lw3/a3$c;)V

    iput-object p4, p0, Lw3/x;->a:[Lw3/a3$c;

    :cond_c
    sget-object p4, Lw3/a3$d;->d:Lw3/a3$d;

    const/4 v0, 0x0

    if-ne p3, p4, :cond_d

    new-instance p4, Lw3/a3$a;

    invoke-direct {p4, p1, p2, v0}, Lw3/a3$a;-><init>(Ljava/lang/Object;II)V

    goto :goto_7

    :cond_d
    new-instance p4, Lw3/a3$c;

    invoke-direct {p4, p1, p2, v0}, Lw3/a3$c;-><init>(Ljava/lang/Object;II)V

    :goto_7
    sget-object p1, Lw3/a3$d;->c:Lw3/a3$d;

    if-ne p3, p1, :cond_e

    const/16 p1, 0xd

    invoke-virtual {p4, p1}, Lw3/a3$c;->d(I)V

    :cond_e
    invoke-direct {p0, p4}, Lw3/x;->f(Lw3/a3$c;)V

    return-object p4
.end method

.method private static e(II)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    and-int/2addr p0, p1

    return p0
.end method

.method private f(Lw3/a3$c;)V
    .locals 1

    iget v0, p0, Lw3/x;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lw3/x;->d:I

    iget-object v0, p0, Lw3/x;->c:Lw3/a3$c;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lw3/a3$c;->f:Lw3/a3$c;

    :cond_0
    iget-object v0, p0, Lw3/x;->b:Lw3/a3$c;

    if-nez v0, :cond_1

    iput-object p1, p0, Lw3/x;->b:Lw3/a3$c;

    :cond_1
    iput-object p1, p0, Lw3/x;->c:Lw3/a3$c;

    iget-object v0, p0, Lw3/x;->a:[Lw3/a3$c;

    invoke-static {v0, p1}, Lw3/x;->a([Lw3/a3$c;Lw3/a3$c;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;I)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :cond_0
    iget v0, p0, Lw3/x;->d:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lw3/x;->a:[Lw3/a3$c;

    array-length v0, v0

    invoke-static {v0, p2}, Lw3/x;->e(II)I

    move-result v0

    iget-object v1, p0, Lw3/x;->a:[Lw3/a3$c;

    aget-object v1, v1, v0

    move-object v2, v1

    :goto_0
    if-eqz v1, :cond_2

    iget v3, v1, Lw3/a3$c;->b:I

    if-ne v3, p2, :cond_1

    iget-object v3, v1, Lw3/a3$c;->a:Ljava/lang/Object;

    if-eq v3, p1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lw3/a3$c;->e:Lw3/a3$c;

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lw3/a3$c;->a()I

    move-result p2

    and-int/lit8 p2, p2, 0x4

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    invoke-static {}, Lw3/m;->p()Lw3/m;

    move-result-object p2

    invoke-virtual {p2}, Lw3/m;->L()Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-array p2, v3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "msg.delete.property.with.configurable.false"

    invoke-static {p1, p2}, Lw3/u2;->p2(Ljava/lang/String;[Ljava/lang/Object;)Lw3/w;

    move-result-object p1

    throw p1

    :cond_4
    iget p1, p0, Lw3/x;->d:I

    sub-int/2addr p1, v3

    iput p1, p0, Lw3/x;->d:I

    if-ne v2, v1, :cond_5

    iget-object p1, p0, Lw3/x;->a:[Lw3/a3$c;

    iget-object p2, v1, Lw3/a3$c;->e:Lw3/a3$c;

    aput-object p2, p1, v0

    goto :goto_2

    :cond_5
    iget-object p1, v1, Lw3/a3$c;->e:Lw3/a3$c;

    iput-object p1, v2, Lw3/a3$c;->e:Lw3/a3$c;

    :goto_2
    iget-object p1, p0, Lw3/x;->b:Lw3/a3$c;

    if-ne v1, p1, :cond_6

    iget-object p1, v1, Lw3/a3$c;->f:Lw3/a3$c;

    iput-object p1, p0, Lw3/x;->b:Lw3/a3$c;

    const/4 p1, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    iget-object p2, p1, Lw3/a3$c;->f:Lw3/a3$c;

    if-eq p2, v1, :cond_7

    move-object p1, p2

    goto :goto_3

    :cond_7
    iget-object p2, v1, Lw3/a3$c;->f:Lw3/a3$c;

    iput-object p2, p1, Lw3/a3$c;->f:Lw3/a3$c;

    :goto_4
    iget-object p2, p0, Lw3/x;->c:Lw3/a3$c;

    if-ne v1, p2, :cond_8

    iput-object p1, p0, Lw3/x;->c:Lw3/a3$c;

    :cond_8
    return-void
.end method

.method public g(Ljava/lang/Object;I)Lw3/a3$c;
    .locals 4

    iget-object v0, p0, Lw3/x;->a:[Lw3/a3$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :cond_1
    iget-object v0, p0, Lw3/x;->a:[Lw3/a3$c;

    array-length v0, v0

    invoke-static {v0, p2}, Lw3/x;->e(II)I

    move-result v0

    iget-object v2, p0, Lw3/x;->a:[Lw3/a3$c;

    aget-object v0, v2, v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, v0, Lw3/a3$c;->a:Ljava/lang/Object;

    iget v3, v0, Lw3/a3$c;->b:I

    if-ne p2, v3, :cond_3

    if-eq v2, p1, :cond_2

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return-object v0

    :cond_3
    iget-object v0, v0, Lw3/a3$c;->e:Lw3/a3$c;

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lw3/x;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lw3/a3$c;",
            ">;"
        }
    .end annotation

    new-instance v0, Lw3/x$b;

    iget-object v1, p0, Lw3/x;->b:Lw3/a3$c;

    invoke-direct {v0, v1}, Lw3/x$b;-><init>(Lw3/a3$c;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lw3/x;->d:I

    return v0
.end method

.method public u(Ljava/lang/Object;ILw3/a3$d;)Lw3/a3$c;
    .locals 3

    iget-object v0, p0, Lw3/x;->a:[Lw3/a3$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lw3/a3$d;->a:Lw3/a3$d;

    if-ne p3, v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :cond_1
    iget-object v0, p0, Lw3/x;->a:[Lw3/a3$c;

    if-eqz v0, :cond_8

    array-length v0, v0

    invoke-static {v0, p2}, Lw3/x;->e(II)I

    move-result v0

    iget-object v1, p0, Lw3/x;->a:[Lw3/a3$c;

    aget-object v0, v1, v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget-object v0, v1, Lw3/a3$c;->a:Ljava/lang/Object;

    iget v2, v1, Lw3/a3$c;->b:I

    if-ne p2, v2, :cond_2

    if-eq v0, p1, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lw3/a3$c;->e:Lw3/a3$c;

    goto :goto_0

    :cond_3
    :goto_1
    sget-object v0, Lw3/x$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    goto :goto_2

    :cond_4
    instance-of v0, v1, Lw3/a3$a;

    if-nez v0, :cond_8

    return-object v1

    :cond_5
    instance-of v0, v1, Lw3/a3$a;

    if-eqz v0, :cond_8

    return-object v1

    :cond_6
    if-eqz v1, :cond_8

    :cond_7
    return-object v1

    :cond_8
    :goto_2
    invoke-direct {p0, p1, p2, p3, v1}, Lw3/x;->d(Ljava/lang/Object;ILw3/a3$d;Lw3/a3$c;)Lw3/a3$c;

    move-result-object p1

    return-object p1
.end method

.method public y(Lw3/a3$c;)V
    .locals 1

    iget-object v0, p0, Lw3/x;->a:[Lw3/a3$c;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lw3/a3$c;

    iput-object v0, p0, Lw3/x;->a:[Lw3/a3$c;

    :cond_0
    invoke-direct {p0, p1}, Lw3/x;->f(Lw3/a3$c;)V

    return-void
.end method
