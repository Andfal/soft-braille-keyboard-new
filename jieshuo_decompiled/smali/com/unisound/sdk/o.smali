.class Lcom/unisound/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/common/d;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/m;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->start()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->stop()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/o;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->cancel()V

    return-void
.end method
