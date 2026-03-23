.class public Lcom/unisound/sdk/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/sdk/ar;->a:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/unisound/sdk/ar;->b:I

    iput-boolean v0, p0, Lcom/unisound/sdk/ar;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/sdk/ar;->a:I

    return-void
.end method

.method public a(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/sdk/ar;->a()V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unisound/sdk/ar;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ar;->c:Z

    mul-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/unisound/sdk/ar;->b:I

    return-void
.end method

.method public a(ZI)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/unisound/sdk/ar;->c:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/unisound/sdk/ar;->a:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/unisound/sdk/ar;->a:I

    iget p2, p0, Lcom/unisound/sdk/ar;->b:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
