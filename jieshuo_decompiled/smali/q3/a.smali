.class public Lq3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:[B

.field b:I

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lq3/a;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lq3/a;->b:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lq3/a;-><init>([BZ)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lq3/a;->b:I

    iput-object p1, p0, Lq3/a;->a:[B

    iput-boolean p2, p0, Lq3/a;->c:Z

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, Lq3/a;->a:[B

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a;

    iget-object v1, p0, Lq3/a;->a:[B

    array-length v1, v1

    new-array v1, v1, [B

    iput-object v1, v0, Lq3/a;->a:[B

    iget-object v2, p0, Lq3/a;->a:[B

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lq3/a;

    iget-object v0, p0, Lq3/a;->a:[B

    iget-object p1, p1, Lq3/a;->a:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method
