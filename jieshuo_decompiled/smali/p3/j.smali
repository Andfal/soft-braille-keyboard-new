.class public abstract Lp3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field protected a:Ljava/lang/Object;

.field private b:I

.field private c:I


# direct methods
.method protected constructor <init>(IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lp3/j;->b:I

    iput p2, p0, Lp3/j;->c:I

    iput-object p3, p0, Lp3/j;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lp3/j;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lp3/j;->b:I

    return v0
.end method

.method protected c(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lp3/j;

    invoke-virtual {p1}, Lp3/j;->b()I

    move-result v0

    iget v1, p0, Lp3/j;->b:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lp3/j;->a()I

    move-result p1

    iget v0, p0, Lp3/j;->c:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lp3/j;

    invoke-virtual {p1}, Lp3/j;->a()I

    move-result p1

    iget v0, p0, Lp3/j;->c:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ge v0, p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lp3/j;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lp3/j;

    iget-object p1, p1, Lp3/j;->a:Ljava/lang/Object;

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp3/j;->a:Ljava/lang/Object;

    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    check-cast p1, [B

    check-cast v0, [B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lp3/j;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
