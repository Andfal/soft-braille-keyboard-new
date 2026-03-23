.class Lcom/unisound/sdk/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/sdk/am;


# instance fields
.field final synthetic a:Lcom/unisound/sdk/m;


# direct methods
.method private constructor <init>(Lcom/unisound/sdk/m;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unisound/sdk/m;Lcom/unisound/sdk/n;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisound/sdk/r;-><init>(Lcom/unisound/sdk/m;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object v0, v0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object v0, v0, Lcom/unisound/sdk/m;->k:Lcom/unisound/sdk/aq;

    invoke-virtual {v0}, Lcom/unisound/sdk/aq;->c()V

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->m()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object v0, v0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/a;->a(I)V

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->a(I)V

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/sdk/m;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcn/yunzhisheng/asr/VAD;)V
    .locals 1

    const-string v0, "FixRecognizerInterface onVADTimeout"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object v0, v0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->e()V

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->a(Lcn/yunzhisheng/asr/VAD;)V

    iget-object p1, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object p1, p1, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/a;

    invoke-virtual {p1}, Lcom/unisound/sdk/a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object p1, p1, Lcom/unisound/sdk/m;->h:Lcom/unisound/sdk/l;

    invoke-virtual {p1}, Lcom/unisound/sdk/c;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object p1, p1, Lcom/unisound/sdk/m;->j:Lcom/unisound/sdk/cg;

    invoke-virtual {p1}, Lcom/unisound/sdk/cg;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {p1}, Lcom/unisound/sdk/m;->stop()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object v0, v0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/a;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1, p2}, Lcom/unisound/sdk/m;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unisound/sdk/m;->a(Ljava/lang/String;ZI)V

    return-void
.end method

.method public a(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->a(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->n()V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object v0, v0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/a;->b(I)V

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/m;->b(I)V

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object v0, v0, Lcom/unisound/sdk/m;->k:Lcom/unisound/sdk/aq;

    invoke-virtual {v0, p1}, Lcom/unisound/sdk/aq;->a(I)V

    return-void
.end method

.method public b(Z[BII)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/unisound/sdk/m;->a(Z[BII)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object v0, v0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->c()V

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object v0, v0, Lcom/unisound/sdk/m;->k:Lcom/unisound/sdk/aq;

    invoke-virtual {v0}, Lcom/unisound/sdk/aq;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->o()V

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->p()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->q()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    iget-object v0, v0, Lcom/unisound/sdk/m;->i:Lcom/unisound/sdk/a;

    invoke-virtual {v0}, Lcom/unisound/sdk/a;->d()V

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->j()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/r;->a:Lcom/unisound/sdk/m;

    invoke-virtual {v0}, Lcom/unisound/sdk/m;->k()V

    return-void
.end method
