.class public abstract Lp3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/lit16 v0, p2, 0x1ff

    invoke-static {p1, v0}, Lu3/g;->g([BI)I

    move-result v0

    iput v0, p0, Lp3/f;->b:I

    iput-object p1, p0, Lp3/f;->a:[B

    iput p2, p0, Lp3/f;->c:I

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 2

    iget-object v0, p0, Lp3/f;->a:[B

    iget v1, p0, Lp3/f;->c:I

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lu3/g;->b([BI)I

    move-result p1

    return p1
.end method

.method protected b(I)I
    .locals 2

    iget-object v0, p0, Lp3/f;->a:[B

    iget v1, p0, Lp3/f;->c:I

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lu3/g;->b([BI)I

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lp3/f;->b:I

    return v0
.end method
