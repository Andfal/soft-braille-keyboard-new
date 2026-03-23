.class public Lcom/benjaminwan/ocrlibrary/models/ScaleParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dstHeight:I

.field private dstWidth:I

.field private ratioHeight:F

.field private ratioWidth:F

.field private srcHeight:I

.field private srcWidth:I


# direct methods
.method public constructor <init>(IIIIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcWidth:I

    iput p2, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcHeight:I

    iput p3, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstWidth:I

    iput p4, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstHeight:I

    iput p5, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioWidth:F

    iput p6, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioHeight:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;

    iget v2, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcWidth:I

    iget v3, p1, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcHeight:I

    iget v3, p1, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcHeight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstWidth:I

    iget v3, p1, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstHeight:I

    iget v3, p1, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstHeight:I

    if-ne v2, v3, :cond_2

    iget v2, p1, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioWidth:F

    iget v3, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioWidth:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget p1, p1, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioHeight:F

    iget v2, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioHeight:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDstHeight()I
    .locals 1

    iget v0, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstHeight:I

    return v0
.end method

.method public getDstWidth()I
    .locals 1

    iget v0, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstWidth:I

    return v0
.end method

.method public getRatioHeight()F
    .locals 1

    iget v0, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioHeight:F

    return v0
.end method

.method public getRatioWidth()F
    .locals 1

    iget v0, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioWidth:F

    return v0
.end method

.method public getSrcHeight()I
    .locals 1

    iget v0, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcHeight:I

    return v0
.end method

.method public getSrcWidth()I
    .locals 1

    iget v0, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioWidth:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioHeight:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDstHeight(I)V
    .locals 0

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstHeight:I

    return-void
.end method

.method public setDstWidth(I)V
    .locals 0

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstWidth:I

    return-void
.end method

.method public setRatioHeight(F)V
    .locals 0

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioHeight:F

    return-void
.end method

.method public setRatioWidth(F)V
    .locals 0

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioWidth:F

    return-void
.end method

.method public setSrcHeight(I)V
    .locals 0

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcHeight:I

    return-void
.end method

.method public setSrcWidth(I)V
    .locals 0

    iput p1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScaleParam{srcWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", srcHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->srcHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dstWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dstHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->dstHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ratioWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioWidth:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ratioHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/benjaminwan/ocrlibrary/models/ScaleParam;->ratioHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
