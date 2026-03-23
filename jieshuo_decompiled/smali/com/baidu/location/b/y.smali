.class Lcom/baidu/location/b/y;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/location/b/x;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/x;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/y;->a:Lcom/baidu/location/b/x;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/baidu/location/b/w;->a()Lcom/baidu/location/b/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/w;->c()V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/baidu/location/c/i;->i()Z

    move-result p1

    invoke-static {}, Lcom/baidu/location/e/k;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    :cond_3
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/h;->d()I

    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/baidu/location/b/y;->a:Lcom/baidu/location/b/x;

    invoke-static {p1}, Lcom/baidu/location/b/x;->a(Lcom/baidu/location/b/x;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/baidu/location/b/y;->a:Lcom/baidu/location/b/x;

    invoke-static {p1}, Lcom/baidu/location/b/x;->a(Lcom/baidu/location/b/x;)Landroid/os/Handler;

    move-result-object p1

    sget v0, Lcom/baidu/location/e/k;->R:I

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/baidu/location/b/t;->c()Lcom/baidu/location/c/a;

    move-result-object p1

    invoke-static {}, Lcom/baidu/location/b/t;->d()Landroid/location/Location;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/b/a;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/baidu/location/b/w;->a(Lcom/baidu/location/c/a;Lcom/baidu/location/c/h;Landroid/location/Location;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/baidu/location/b/t;->c()Lcom/baidu/location/c/a;

    move-result-object p1

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/i;->n()Lcom/baidu/location/c/h;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/b/t;->d()Landroid/location/Location;

    move-result-object v1

    invoke-static {}, Lcom/baidu/location/b/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/location/b/w;->a(Lcom/baidu/location/c/a;Lcom/baidu/location/c/h;Landroid/location/Location;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    :try_start_1
    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    const-string v1, "satnum"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/baidu/location/b/d;->a()Lcom/baidu/location/b/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/baidu/location/b/d;->a(Landroid/location/Location;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_0
    return-void
.end method
