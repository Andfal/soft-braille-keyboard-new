.class public Lo1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo1/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Li1/a;

.field private c:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field f:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo1/c;->d:I

    iput v0, p0, Lo1/c;->e:I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lo1/c;->f:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lo1/c;->a:Landroid/content/Context;

    new-instance v0, Li1/a;

    invoke-direct {v0, p1}, Li1/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo1/c;->b:Li1/a;

    return-void
.end method

.method static synthetic a(Lo1/c;)I
    .locals 0

    iget p0, p0, Lo1/c;->d:I

    return p0
.end method

.method static synthetic b(Lo1/c;I)I
    .locals 0

    iput p1, p0, Lo1/c;->d:I

    return p1
.end method

.method static synthetic d(Lo1/c;)I
    .locals 0

    iget p0, p0, Lo1/c;->e:I

    return p0
.end method

.method static synthetic e(Lo1/c;I)I
    .locals 0

    iput p1, p0, Lo1/c;->e:I

    return p1
.end method

.method static synthetic g(Lo1/c;)Li1/a;
    .locals 0

    iget-object p0, p0, Lo1/c;->b:Li1/a;

    return-object p0
.end method

.method static synthetic h(Lo1/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lo1/c;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public c()Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lo1/c$a;

    invoke-direct {v1, p0}, Lo1/c$a;-><init>(Lo1/c;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lo1/c;->c:Ljava/util/concurrent/FutureTask;

    iget-object v1, p0, Lo1/c;->f:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lo1/c;->c:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lo1/c;->c:Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    return-void
.end method
