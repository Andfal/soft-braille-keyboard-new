.class public Lcom/unisound/common/an;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:I = 0x1

.field private static final d:I = 0x2


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/common/an;->a:I

    iput v0, p0, Lcom/unisound/common/an;->b:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/unisound/common/an;->a:I

    iput p1, p0, Lcom/unisound/common/an;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/common/an;->b:I

    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/unisound/common/an;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/unisound/common/ao;
    .locals 2

    iget v0, p0, Lcom/unisound/common/an;->b:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/unisound/common/ao;->a:Lcom/unisound/common/ao;

    return-object v0

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unisound/common/ao;->b:Lcom/unisound/common/ao;

    return-object v0

    :cond_1
    sget-object v0, Lcom/unisound/common/ao;->c:Lcom/unisound/common/ao;

    return-object v0
.end method
