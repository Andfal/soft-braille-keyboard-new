.class Lcom/baidu/location/b/k$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/b/k;


# direct methods
.method private constructor <init>(Lcom/baidu/location/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/k$f;->a:Lcom/baidu/location/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/b/k;Lcom/baidu/location/b/k$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/b/k$f;-><init>(Lcom/baidu/location/b/k;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/k$f;->a:Lcom/baidu/location/b/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/k;->a(Lcom/baidu/location/b/k;Z)Z

    iget-object v0, p0, Lcom/baidu/location/b/k$f;->a:Lcom/baidu/location/b/k;

    invoke-static {v0}, Lcom/baidu/location/b/k;->b(Lcom/baidu/location/b/k;)Lcom/baidu/location/b/k$a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
