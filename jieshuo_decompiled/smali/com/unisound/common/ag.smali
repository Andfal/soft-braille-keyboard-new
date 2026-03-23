.class public Lcom/unisound/common/ag;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String; = "TimerThreadUtils"


# instance fields
.field private b:I

.field private c:Lcom/unisound/common/ah;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/unisound/common/ah;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const p2, 0x493e0

    iput p2, p0, Lcom/unisound/common/ag;->b:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/unisound/common/ag;->d:Z

    iput-boolean p2, p0, Lcom/unisound/common/ag;->e:Z

    iput-object p1, p0, Lcom/unisound/common/ag;->c:Lcom/unisound/common/ah;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/unisound/common/ag;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/unisound/common/ag;->b:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/common/ag;->d:Z

    return v0
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/unisound/common/ag;->e()V

    iget v0, p0, Lcom/unisound/common/ag;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/common/ag;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/ag;->e:Z

    return-void
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/unisound/common/ag;->e()V

    return-void
.end method

.method public e()V
    .locals 2

    iget-boolean v0, p0, Lcom/unisound/common/ag;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/unisound/common/ag;->e:Z

    :cond_0
    iput-boolean v1, p0, Lcom/unisound/common/ag;->d:Z

    return-void
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/common/ag;->d:Z

    iget-boolean v0, p0, Lcom/unisound/common/ag;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/common/ag;->c:Lcom/unisound/common/ah;

    invoke-interface {v0}, Lcom/unisound/common/ah;->a()V

    :cond_0
    return-void
.end method
