.class public Lo1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lo1/c;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/b;->b:Landroid/content/Context;

    new-instance v0, Lo1/c;

    invoke-direct {v0, p1}, Lo1/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo1/b;->a:Lo1/c;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lo1/b;->a:Lo1/c;

    invoke-virtual {v0}, Lo1/c;->c()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    iput-object v0, p0, Lo1/b;->c:Ljava/util/concurrent/FutureTask;

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Statistics uploade result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatisticsClient"

    invoke-static {v1, v0}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lo1/b;->c:Ljava/util/concurrent/FutureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo1/b;->a:Lo1/c;

    invoke-virtual {v0}, Lo1/c;->f()V

    :cond_0
    return-void
.end method
