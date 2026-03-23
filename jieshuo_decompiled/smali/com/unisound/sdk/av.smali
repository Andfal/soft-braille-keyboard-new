.class Lcom/unisound/sdk/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/sdk/bn;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/au;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/au;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/sdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/sdk/au;

    const/16 v1, 0x9c5

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;I)I

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object v0

    const/16 v1, 0xd2

    invoke-static {p1}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/unisound/sdk/au;->sendMsg(Lcom/unisound/common/u;ILjava/lang/String;)V

    return-void
.end method

.method public a([BI)V
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/sdk/au;

    invoke-static {p1}, Lcom/unisound/sdk/au;->b(Lcom/unisound/sdk/au;)Lcom/unisound/sdk/bl;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/sdk/au;

    invoke-static {p1}, Lcom/unisound/sdk/au;->b(Lcom/unisound/sdk/au;)Lcom/unisound/sdk/bl;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/unisound/sdk/bl;->a([B)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->b(Lcom/unisound/sdk/au;)Lcom/unisound/sdk/bl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->b(Lcom/unisound/sdk/au;)Lcom/unisound/sdk/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisound/sdk/bl;->h()V

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object v0

    const/16 v1, 0x67

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/av;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object v0

    const/16 v1, 0x70

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    return-void
.end method
