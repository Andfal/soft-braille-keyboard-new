.class Lcom/baidu/location/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/baidu/location/c/i$a;


# direct methods
.method constructor <init>(Lcom/baidu/location/c/i$a;Z)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/c/j;->b:Lcom/baidu/location/c/i$a;

    iput-boolean p2, p0, Lcom/baidu/location/c/j;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/c/j;->b:Lcom/baidu/location/c/i$a;

    iget-object v0, v0, Lcom/baidu/location/c/i$a;->a:Lcom/baidu/location/c/i;

    invoke-static {v0}, Lcom/baidu/location/c/i;->a(Lcom/baidu/location/c/i;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/c/j;->b:Lcom/baidu/location/c/i$a;

    iget-object v0, v0, Lcom/baidu/location/c/i$a;->a:Lcom/baidu/location/c/i;

    iget-boolean v1, p0, Lcom/baidu/location/c/j;->a:Z

    invoke-static {v0, v1}, Lcom/baidu/location/c/i;->a(Lcom/baidu/location/c/i;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/c/j;->b:Lcom/baidu/location/c/i$a;

    iget-object v0, v0, Lcom/baidu/location/c/i$a;->a:Lcom/baidu/location/c/i;

    invoke-static {v0}, Lcom/baidu/location/c/i;->b(Lcom/baidu/location/c/i;)V

    invoke-static {}, Lcom/baidu/location/b/l;->c()Lcom/baidu/location/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/l;->h()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/baidu/location/b/t;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    invoke-static {}, Lcom/baidu/location/b/x;->a()Lcom/baidu/location/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/x;->c()V

    :cond_1
    return-void
.end method
