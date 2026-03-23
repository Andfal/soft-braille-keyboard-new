.class Lcom/vivo/speechsdk/module/net/utils/d$a;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/net/utils/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    new-instance v0, Lcom/vivo/speechsdk/module/net/utils/d$c;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/net/utils/d$c;-><init>()V

    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result v1

    iput v1, v0, Lcom/vivo/speechsdk/module/net/utils/d$c;->a:I

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvailable | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkState"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p2}, Lcom/vivo/speechsdk/module/net/utils/g;->a(Landroid/net/NetworkCapabilities;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->b()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, -0x32

    :goto_0
    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result v1

    const/16 v2, 0x3e7

    invoke-static {v0, v1, v2}, Lcom/vivo/speechsdk/module/net/utils/d;->a(III)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->c()Lcom/vivo/speechsdk/module/net/utils/d$b;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->c()Lcom/vivo/speechsdk/module/net/utils/d$b;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/vivo/speechsdk/module/net/utils/d$b;->a(I)V

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->c()Lcom/vivo/speechsdk/module/net/utils/d$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/net/utils/d$b;->a()V

    :cond_3
    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/module/net/utils/d$c;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLosing-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/vivo/speechsdk/module/net/utils/d$c;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/module/net/utils/d$c;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const-string v1, "onLost"

    invoke-virtual {p1, v0, v1}, Lcom/vivo/speechsdk/module/net/utils/d$c;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
