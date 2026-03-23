.class Lcom/unisound/sdk/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/sdk/bm;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/au;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/au;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object v0

    const/16 v1, 0x68

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object p1, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    invoke-static {p1}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object p1

    const/16 v0, 0x6b

    invoke-static {p1, v0}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    iget-object p1, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    const/16 v0, 0x9c8

    invoke-static {p1, v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;I)I

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->c(Lcom/unisound/sdk/au;)Lcom/unisound/sdk/bi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->c(Lcom/unisound/sdk/au;)Lcom/unisound/sdk/bi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/bi;->b(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object v0

    const/16 v1, 0x69

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    return-void
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object v0

    const/16 v1, 0xd4

    invoke-static {p1}, Lcom/unisound/client/ErrorCode;->toJsonMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/unisound/sdk/au;->sendMsg(Lcom/unisound/common/u;ILjava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    iget-object v0, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    const/16 v1, 0x9c6

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;I)I

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    iget-object v0, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    const/16 v1, 0x9c7

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;I)I

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/aw;->a:Lcom/unisound/sdk/au;

    invoke-static {v0}, Lcom/unisound/sdk/au;->a(Lcom/unisound/sdk/au;)Lcom/unisound/common/u;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Lcom/unisound/sdk/au;->sendEmptyMsg(Lcom/unisound/common/u;I)V

    return-void
.end method
