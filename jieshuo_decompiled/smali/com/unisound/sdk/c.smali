.class public Lcom/unisound/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/unisound/sdk/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/c;->a:Lcom/unisound/sdk/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/d;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/unisound/sdk/d;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/c;->a:Lcom/unisound/sdk/d;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/c;->a:Lcom/unisound/sdk/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/c;->a:Lcom/unisound/sdk/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/d;->a()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/c;->a:Lcom/unisound/sdk/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/d;->b()V

    :cond_0
    return-void
.end method
