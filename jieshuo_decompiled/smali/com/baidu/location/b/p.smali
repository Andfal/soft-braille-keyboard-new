.class Lcom/baidu/location/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/b/o;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/baidu/location/c/i;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/o;

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/b/o;->a(Lcom/baidu/location/b/o;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/b/p;->a:Lcom/baidu/location/b/o;

    invoke-static {}, Lcom/baidu/location/b/v;->a()Lcom/baidu/location/b/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/v;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/e/e;->a(Ljava/util/concurrent/ExecutorService;)V

    :cond_1
    return-void
.end method
