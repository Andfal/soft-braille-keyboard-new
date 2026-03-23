.class public abstract Lcom/baidu/location/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "10.0.0.172"

.field private static b:I = 0x50

.field public static g:I

.field protected static p:I


# instance fields
.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/lang/String;

.field public m:[B

.field public n:[B

.field public o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/baidu/location/e/a;->g:I

    sput v0, Lcom/baidu/location/e/e;->g:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/e/e;->h:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/baidu/location/e/e;->i:I

    iput-object v0, p0, Lcom/baidu/location/e/e;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/e/e;->k:Ljava/util/Map;

    iput-object v0, p0, Lcom/baidu/location/e/e;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/location/e/e;->m:[B

    iput-object v0, p0, Lcom/baidu/location/e/e;->n:[B

    iput-object v0, p0, Lcom/baidu/location/e/e;->o:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/NetworkInfo;)I
    .locals 4

    const-string p0, "10.0.0.200"

    const-string v0, "10.0.0.172"

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string v1, "cmwap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "null"

    const-string v3, ""

    if-nez v1, :cond_4

    const-string v1, "uniwap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "3gwap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "ctwap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object p0, p1

    :cond_1
    :goto_0
    sput-object p0, Lcom/baidu/location/e/e;->a:Ljava/lang/String;

    :goto_1
    sget p0, Lcom/baidu/location/e/a;->d:I

    return p0

    :cond_2
    const-string v1, "cmnet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "uninet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ctnet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "3gnet"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_3
    sget p0, Lcom/baidu/location/e/a;->e:I

    return p0

    :cond_4
    :goto_2
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    move-object v0, p0

    :cond_5
    :goto_3
    sput-object v0, Lcom/baidu/location/e/e;->a:Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_0

    :cond_8
    sget p0, Lcom/baidu/location/e/a;->e:I

    return p0
.end method

.method static synthetic a(Lcom/baidu/location/e/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/e/e;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    invoke-direct {p0}, Lcom/baidu/location/e/e;->c()I

    move-result v0

    sput v0, Lcom/baidu/location/e/e;->g:I

    return-void
.end method

.method private c()I
    .locals 4

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    sget v0, Lcom/baidu/location/e/a;->g:I

    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    sget v0, Lcom/baidu/location/e/a;->h:I

    return v0

    :cond_2
    sget v0, Lcom/baidu/location/e/a;->f:I

    return v0

    :cond_3
    invoke-static {v0, v1}, Lcom/baidu/location/e/e;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)I

    move-result v0

    return v0

    :cond_4
    :goto_0
    sget v0, Lcom/baidu/location/e/a;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    sget v0, Lcom/baidu/location/e/a;->g:I

    return v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/baidu/location/e/f;

    invoke-direct {v0, p0}, Lcom/baidu/location/e/f;-><init>(Lcom/baidu/location/e/e;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/location/e/e;->a(Z)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/concurrent/ExecutorService;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/baidu/location/e/i;

    invoke-direct {v0, p0, p2}, Lcom/baidu/location/e/i;-><init>(Lcom/baidu/location/e/e;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/location/e/e;->a(Z)V

    :goto_0
    return-void
.end method

.method public a(Ljava/util/concurrent/ExecutorService;ZLjava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/baidu/location/e/g;

    invoke-direct {v0, p0, p3, p2}, Lcom/baidu/location/e/g;-><init>(Lcom/baidu/location/e/e;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/location/e/e;->a(Z)V

    :goto_0
    return-void
.end method

.method public abstract a(Z)V
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/baidu/location/e/h;

    invoke-direct {v0, p0, p1}, Lcom/baidu/location/e/h;-><init>(Lcom/baidu/location/e/e;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/location/e/e;->a(Z)V

    :goto_0
    return-void
.end method

.method public b(Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "loc.map.baidu.com"

    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/location/e/e;->a(Ljava/util/concurrent/ExecutorService;ZLjava/lang/String;)V

    return-void
.end method
