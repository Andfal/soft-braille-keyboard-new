.class Lcom/baidu/location/b/s;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/baidu/location/b/o;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/s;->a:Lcom/baidu/location/b/o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b/s;->a:Lcom/baidu/location/b/o;

    invoke-static {v0}, Lcom/baidu/location/b/o;->b(Lcom/baidu/location/b/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/b/s;->a:Lcom/baidu/location/b/o;

    invoke-static {v0}, Lcom/baidu/location/b/o;->c(Lcom/baidu/location/b/o;)V

    :cond_0
    return-void
.end method
