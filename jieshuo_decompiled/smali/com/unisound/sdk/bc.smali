.class Lcom/unisound/sdk/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/common/ah;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bb;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bc;->a:Lcom/unisound/sdk/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bc;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->a(Lcom/unisound/sdk/bb;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/r;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unisound/sdk/bc;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->b(Lcom/unisound/sdk/bb;)Lcom/unisound/common/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/common/ag;->c()V

    return-void
.end method
