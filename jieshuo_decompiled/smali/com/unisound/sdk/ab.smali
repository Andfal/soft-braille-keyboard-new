.class public Lcom/unisound/sdk/ab;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:Lcom/unisound/sdk/ac;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/unisound/sdk/ac;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/16 p2, 0x7530

    iput p2, p0, Lcom/unisound/sdk/ab;->a:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/unisound/sdk/ab;->c:Z

    iput-boolean p2, p0, Lcom/unisound/sdk/ab;->d:Z

    iput-object p1, p0, Lcom/unisound/sdk/ab;->b:Lcom/unisound/sdk/ac;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/ab;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/sdk/ab;->a:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/ab;->c:Z

    return v0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/sdk/ab;->e()V

    iget v0, p0, Lcom/unisound/sdk/ab;->a:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/ab;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ab;->d:Z

    const-string v0, "OnTimer:start"

    invoke-static {v0}, Lcom/unisound/common/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/unisound/sdk/ab;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/unisound/sdk/ab;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/unisound/sdk/ab;->d:Z

    :cond_0
    iput-boolean v1, p0, Lcom/unisound/sdk/ab;->c:Z

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/ab;->c:Z

    iget-boolean v0, p0, Lcom/unisound/sdk/ab;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/ab;->b:Lcom/unisound/sdk/ac;

    invoke-interface {v0}, Lcom/unisound/sdk/ac;->a()V

    :cond_0
    return-void
.end method
