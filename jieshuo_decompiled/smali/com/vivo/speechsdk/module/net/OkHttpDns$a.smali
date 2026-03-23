.class Lcom/vivo/speechsdk/module/net/OkHttpDns$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/module/net/OkHttpDns;->lookup(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Ljava/net/InetAddress;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/vivo/speechsdk/module/net/OkHttpDns;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/net/OkHttpDns;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/OkHttpDns$a;->b:Lcom/vivo/speechsdk/module/net/OkHttpDns;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/OkHttpDns$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/OkHttpDns$a;->b:Lcom/vivo/speechsdk/module/net/OkHttpDns;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/OkHttpDns$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/module/net/OkHttpDns;->a(Lcom/vivo/speechsdk/module/net/OkHttpDns;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ly2/r;->c:Ly2/r;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/OkHttpDns$a;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ly2/r;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/OkHttpDns$a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
