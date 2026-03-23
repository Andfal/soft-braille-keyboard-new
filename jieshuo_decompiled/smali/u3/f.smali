.class public Lu3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    iput p1, p0, Lu3/f;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v0, "negative offset"

    invoke-direct {p1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II[B)V
    .locals 0

    invoke-direct {p0, p1}, Lu3/f;-><init>(I)V

    invoke-virtual {p0, p2, p3}, Lu3/f;->c(I[B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0, p1}, Lu3/f;-><init>(I)V

    invoke-virtual {p0, p2}, Lu3/f;->b([B)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lu3/f;->a:I

    return v0
.end method

.method public b([B)V
    .locals 1

    iget v0, p0, Lu3/f;->b:I

    invoke-static {p1, v0}, Lu3/g;->b([BI)I

    move-result p1

    iput p1, p0, Lu3/f;->a:I

    return-void
.end method

.method public c(I[B)V
    .locals 0

    iput p1, p0, Lu3/f;->a:I

    invoke-virtual {p0, p2}, Lu3/f;->d([B)V

    return-void
.end method

.method public d([B)V
    .locals 2

    iget v0, p0, Lu3/f;->b:I

    iget v1, p0, Lu3/f;->a:I

    invoke-static {p1, v0, v1}, Lu3/g;->h([BII)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lu3/f;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
