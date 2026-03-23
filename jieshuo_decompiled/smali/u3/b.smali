.class public Lu3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:B

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lu3/b;-><init>(IB)V

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lu3/b;->b:I

    invoke-virtual {p0, p2}, Lu3/b;->b(B)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "offset cannot be negative"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0, p1}, Lu3/b;-><init>(I)V

    invoke-virtual {p0, p2}, Lu3/b;->a([B)V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 1

    iget v0, p0, Lu3/b;->b:I

    aget-byte p1, p1, v0

    iput-byte p1, p0, Lu3/b;->a:B

    return-void
.end method

.method public b(B)V
    .locals 0

    iput-byte p1, p0, Lu3/b;->a:B

    return-void
.end method

.method public c(B[B)V
    .locals 0

    invoke-virtual {p0, p1}, Lu3/b;->b(B)V

    invoke-virtual {p0, p2}, Lu3/b;->d([B)V

    return-void
.end method

.method public d([B)V
    .locals 2

    iget v0, p0, Lu3/b;->b:I

    iget-byte v1, p0, Lu3/b;->a:B

    aput-byte v1, p1, v0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-byte v0, p0, Lu3/b;->a:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
