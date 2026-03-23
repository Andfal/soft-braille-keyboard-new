.class Lcom/baidu/location/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/b/l;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/m;->a:Lcom/baidu/location/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/m;->a:Lcom/baidu/location/b/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/b/l;->a(Lcom/baidu/location/b/l;Landroid/os/Message;)V

    return-void
.end method
