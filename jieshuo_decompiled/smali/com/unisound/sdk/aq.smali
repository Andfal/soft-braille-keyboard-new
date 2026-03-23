.class public Lcom/unisound/sdk/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/unisound/common/z;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/aq;->a:Lcom/unisound/common/z;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aq;->a:Lcom/unisound/common/z;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/common/z;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/unisound/common/z;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aq;->a:Lcom/unisound/common/z;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aq;->a:Lcom/unisound/common/z;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aq;->a:Lcom/unisound/common/z;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/common/z;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aq;->a:Lcom/unisound/common/z;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/common/z;->b()V

    :cond_0
    return-void
.end method
