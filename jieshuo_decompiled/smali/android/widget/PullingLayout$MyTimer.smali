.class Landroid/widget/PullingLayout$MyTimer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PullingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PullingLayout$MyTimer$MyTask;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private mTask:Landroid/widget/PullingLayout$MyTimer$MyTask;

.field final synthetic this$0:Landroid/widget/PullingLayout;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/widget/PullingLayout;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PullingLayout$MyTimer;->this$0:Landroid/widget/PullingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/widget/PullingLayout$MyTimer;->handler:Landroid/os/Handler;

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Landroid/widget/PullingLayout$MyTimer;->timer:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$MyTimer;->mTask:Landroid/widget/PullingLayout$MyTimer$MyTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PullingLayout$MyTimer;->mTask:Landroid/widget/PullingLayout$MyTimer$MyTask;

    :cond_0
    return-void
.end method

.method public schedule(J)V
    .locals 7

    iget-object v0, p0, Landroid/widget/PullingLayout$MyTimer;->mTask:Landroid/widget/PullingLayout$MyTimer$MyTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/PullingLayout$MyTimer;->mTask:Landroid/widget/PullingLayout$MyTimer$MyTask;

    :cond_0
    new-instance v2, Landroid/widget/PullingLayout$MyTimer$MyTask;

    iget-object v0, p0, Landroid/widget/PullingLayout$MyTimer;->handler:Landroid/os/Handler;

    invoke-direct {v2, p0, v0}, Landroid/widget/PullingLayout$MyTimer$MyTask;-><init>(Landroid/widget/PullingLayout$MyTimer;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/widget/PullingLayout$MyTimer;->mTask:Landroid/widget/PullingLayout$MyTimer$MyTask;

    iget-object v1, p0, Landroid/widget/PullingLayout$MyTimer;->timer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    move-wide v5, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
