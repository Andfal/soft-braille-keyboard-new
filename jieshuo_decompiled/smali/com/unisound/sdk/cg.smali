.class public Lcom/unisound/sdk/cg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/unisound/common/aq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/common/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/cg;->a:Lcom/unisound/common/aq;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cg;->a:Lcom/unisound/common/aq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cg;->a:Lcom/unisound/common/aq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/common/aq;->a()V

    :cond_0
    return-void
.end method
