.class Lcom/baidu/location/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/baidu/location/b/d;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/d;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/e;->b:Lcom/baidu/location/b/d;

    iput-object p2, p0, Lcom/baidu/location/b/e;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/b/e;->b:Lcom/baidu/location/b/d;

    iget-object v1, p0, Lcom/baidu/location/b/e;->a:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/baidu/location/b/d;->a(Lcom/baidu/location/b/d;Landroid/location/Location;)V

    return-void
.end method
