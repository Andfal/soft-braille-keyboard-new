.class Lcom/unisound/sdk/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/common/d;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/ci;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/cl;->a:Lcom/unisound/sdk/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cl;->a:Lcom/unisound/sdk/ci;

    invoke-virtual {v0}, Lcom/unisound/sdk/ci;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cl;->a:Lcom/unisound/sdk/ci;

    invoke-virtual {v0}, Lcom/unisound/sdk/ci;->c()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/cl;->a:Lcom/unisound/sdk/ci;

    invoke-virtual {v0}, Lcom/unisound/sdk/ci;->b()V

    return-void
.end method
