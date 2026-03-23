.class Lcom/unisound/sdk/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/sdk/z;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/bb;


# direct methods
.method constructor <init>(Lcom/unisound/sdk/bb;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 12

    iget-object v0, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unisound/sdk/bb;->a(Lcom/unisound/sdk/bb;Z)Z

    iget-object v0, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpeechUnderstanderInterface : onResult -> result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    const-string v2, "-changeable-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "asr_recongize"

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v3}, Lcom/unisound/sdk/bb;->d(Lcom/unisound/sdk/bb;)I

    move-result v5

    const-string v6, "change"

    iget-object v3, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v3, v2, v4}, Lcom/unisound/sdk/bb;->b(Lcom/unisound/sdk/bb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v2}, Lcom/unisound/sdk/bb;->e(Lcom/unisound/sdk/bb;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v3, p1, v4}, Lcom/unisound/sdk/bb;->b(Lcom/unisound/sdk/bb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v2}, Lcom/unisound/sdk/bb;->d(Lcom/unisound/sdk/bb;)I

    move-result v5

    const-string v6, "partial"

    iget-object v2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v2, p1, v4}, Lcom/unisound/sdk/bb;->b(Lcom/unisound/sdk/bb;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    iget-object v2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    iget-object v2, v2, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v2}, Lcom/unisound/sdk/an;->ak()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/unisound/common/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v2}, Lcom/unisound/sdk/bb;->f(Lcom/unisound/sdk/bb;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v0, v3}, Lcom/unisound/common/o;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x4b1

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    iget-object v2, v0, Lcom/unisound/sdk/bb;->w:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->d(Lcom/unisound/sdk/bb;)I

    move-result v5

    const-string v6, "full"

    new-instance v7, Ljava/lang/String;

    iget-object v0, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->e(Lcom/unisound/sdk/bb;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iget-object v0, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    iget-object v0, v0, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v0}, Lcom/unisound/sdk/an;->ak()Ljava/lang/String;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/unisound/common/o;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {p2}, Lcom/unisound/sdk/bb;->e(Lcom/unisound/sdk/bb;)Ljava/lang/StringBuffer;

    move-result-object p2

    iget-object v0, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v0}, Lcom/unisound/sdk/bb;->e(Lcom/unisound/sdk/bb;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object p2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {p2}, Lcom/unisound/sdk/bb;->g(Lcom/unisound/sdk/bb;)Lcom/unisound/sdk/bz;

    move-result-object p2

    invoke-virtual {p2}, Lcom/unisound/sdk/bz;->v()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {p2, p1}, Lcom/unisound/sdk/bb;->a(Lcom/unisound/sdk/bb;Ljava/lang/String;)Lcom/unisound/sdk/cb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisound/sdk/cb;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    iget-object p2, p2, Lcom/unisound/sdk/bb;->x:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    const p2, -0xf83f

    invoke-static {p1, p2}, Lcom/unisound/sdk/bb;->a(Lcom/unisound/sdk/bb;I)V

    :cond_1
    iget-object p1, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1}, Lcom/unisound/sdk/bb;->f(Lcom/unisound/sdk/bb;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    iget-object v0, p2, Lcom/unisound/sdk/bb;->w:Ljava/util/ArrayList;

    iget-object p2, p2, Lcom/unisound/sdk/bb;->x:Ljava/util/ArrayList;

    invoke-static {v3, v0, p2}, Lcom/unisound/common/o;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v4, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    iget-object p1, p1, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/unisound/sdk/an;->b(J)V

    :cond_2
    iget-object p1, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1, v1}, Lcom/unisound/sdk/bb;->a(Lcom/unisound/sdk/bb;Z)Z

    return-void
.end method

.method public a(Z[BII)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 8

    iget-object v0, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unisound/sdk/bb;->a(Lcom/unisound/sdk/bb;Z)Z

    iget-object v0, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    iget-object v2, v0, Lcom/unisound/sdk/bb;->o:Lcom/unisound/sdk/aj;

    invoke-virtual {v2}, Lcom/unisound/sdk/aj;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unisound/sdk/bb;->b(Lcom/unisound/sdk/bb;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    iget-object v2, v2, Lcom/unisound/sdk/m;->b:Lcom/unisound/sdk/u;

    invoke-virtual {v2, p1}, Lcom/unisound/sdk/an;->s(I)V

    iget-object v2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v2, p1}, Lcom/unisound/sdk/bb;->a(Lcom/unisound/sdk/bb;I)V

    iget-object v2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v2}, Lcom/unisound/sdk/bb;->d(Lcom/unisound/sdk/bb;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v2}, Lcom/unisound/sdk/bb;->h(Lcom/unisound/sdk/bb;)Z

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    iget-object v2, v2, Lcom/unisound/sdk/m;->e:Lcom/unisound/sdk/k;

    invoke-virtual {v2, v0}, Lcom/unisound/sdk/k;->a(Z)V

    :cond_1
    iget-object v2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v2}, Lcom/unisound/sdk/bb;->c(Lcom/unisound/sdk/bb;)Lcom/unisound/client/SpeechUnderstanderListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v2, v1}, Lcom/unisound/sdk/bb;->b(Lcom/unisound/sdk/bb;Z)Z

    iget-object v1, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v1}, Lcom/unisound/sdk/bb;->f(Lcom/unisound/sdk/bb;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {v1}, Lcom/unisound/sdk/bb;->i(Lcom/unisound/sdk/bb;)V

    :cond_2
    iget-object v1, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    iget-object v2, v1, Lcom/unisound/sdk/m;->l:Landroid/content/Context;

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v1, Lcom/unisound/sdk/bb;->y:Ljava/lang/String;

    invoke-static {v1}, Lcom/unisound/sdk/bb;->j(Lcom/unisound/sdk/bb;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/unisound/client/ErrorCode;->toMessage(I)Ljava/lang/String;

    move-result-object v7

    move v6, p1

    invoke-static/range {v2 .. v7}, Lcom/unisound/common/r;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-static {p1, v0}, Lcom/unisound/sdk/bb;->a(Lcom/unisound/sdk/bb;Z)Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/bb;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/bb;->f(I)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
