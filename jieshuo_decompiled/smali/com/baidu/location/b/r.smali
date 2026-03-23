.class Lcom/baidu/location/b/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/location/b/o;


# direct methods
.method constructor <init>(Lcom/baidu/location/b/o;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/b/r;->a:Lcom/baidu/location/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/b/r;->a:Lcom/baidu/location/b/o;

    invoke-static {v0}, Lcom/baidu/location/b/o;->a(Lcom/baidu/location/b/o;)V

    return-void
.end method
