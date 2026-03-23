.class public Lcom/unisound/common/am;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x1


# instance fields
.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/am;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/unisound/common/am;->b:I

    return v0
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/unisound/common/am;->b:I

    or-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcom/unisound/common/am;->b:I

    return-void

    :cond_0
    iget p1, p0, Lcom/unisound/common/am;->b:I

    and-int/lit8 p1, p1, -0x2

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    iget v0, p0, Lcom/unisound/common/am;->b:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
