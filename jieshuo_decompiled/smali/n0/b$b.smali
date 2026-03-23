.class Ln0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/b;->e(Ll1/b;)Ln0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ln0/e$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ll1/b;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Ln0/b;


# direct methods
.method constructor <init>(Ln0/b;Ll1/b;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Ln0/b$b;->c:Ln0/b;

    iput-object p2, p0, Ln0/b$b;->a:Ll1/b;

    iput-object p3, p0, Ln0/b$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ln0/e$a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ln0/b$b;->a:Ll1/b;

    invoke-virtual {v0}, Ll1/b;->h()Lq0/e$a;

    move-result-object v0

    iget-object v1, p0, Ln0/b$b;->c:Ln0/b;

    invoke-virtual {v1, v0}, Ln0/b;->g(Lq0/e$a;)Ln0/e$a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ln0/b$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ln0/b$b;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ln0/b$b;->a()Ln0/e$a;

    move-result-object v0

    return-object v0
.end method
