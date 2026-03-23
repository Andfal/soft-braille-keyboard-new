.class public Lcom/vivo/speechsdk/module/net/NetModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/common/module/IModule;


# annotations
.annotation runtime Lcom/vivo/speechsdk/common/module/ModuleAnno;
    lazyLoad = false
.end annotation


# static fields
.field private static final i:Ljava/lang/String; = "NetModule"

.field public static final j:J = 0x1388L

.field public static final k:J = 0xea60L

.field public static final l:J = 0xea60L

.field public static final m:J


# instance fields
.field private a:Ly2/OkHttpClient;

.field private b:Lcom/vivo/speechsdk/module/net/websocket/f;

.field private c:Lcom/vivo/speechsdk/module/net/OkHttpDns;

.field private d:Lcom/vivo/speechsdk/b/c;

.field private e:Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

.field private f:Z

.field private g:Landroid/os/Handler;

.field private final h:Lcom/vivo/speechsdk/module/api/net/INetFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->f:Z

    new-instance v0, Lcom/vivo/speechsdk/module/net/NetModule$c;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/net/NetModule$c;-><init>(Lcom/vivo/speechsdk/module/net/NetModule;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->h:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/NetModule;)Lcom/vivo/speechsdk/b/c;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->d:Lcom/vivo/speechsdk/b/c;

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/NetModule;Lcom/vivo/speechsdk/module/net/websocket/monitor/b;)Lcom/vivo/speechsdk/module/net/websocket/monitor/b;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/NetModule;->e:Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    return-object p1
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/net/NetModule;)Ly2/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->a:Ly2/OkHttpClient;

    return-object p0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/net/NetModule;)Lcom/vivo/speechsdk/module/net/websocket/f;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->b:Lcom/vivo/speechsdk/module/net/websocket/f;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/module/net/NetModule;)Lcom/vivo/speechsdk/module/net/OkHttpDns;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->c:Lcom/vivo/speechsdk/module/net/OkHttpDns;

    return-object p0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/module/net/NetModule;)Lcom/vivo/speechsdk/module/net/websocket/monitor/b;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->e:Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    return-object p0
.end method


# virtual methods
.method public getFactory()Lcom/vivo/speechsdk/b/b;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->h:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/vivo/speechsdk/b/c;)I
    .locals 7

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/NetModule;->d:Lcom/vivo/speechsdk/b/c;

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->d:Lcom/vivo/speechsdk/b/c;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->h()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/NetModule;->g:Landroid/os/Handler;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/NetModule;->d:Lcom/vivo/speechsdk/b/c;

    const-string v0, "key_sdk_init_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/net/NetModule;->f:Z

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/NetModule;->a:Ly2/OkHttpClient;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/NetModule;->d:Lcom/vivo/speechsdk/b/c;

    const-string v2, "key_pool_keeptime"

    invoke-virtual {p1, v2, v1}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;I)I

    move-result p1

    new-instance v2, Lcom/vivo/speechsdk/module/net/websocket/f;

    if-nez p1, :cond_1

    const-wide/16 v3, 0x7530

    goto :goto_1

    :cond_1
    int-to-long v3, p1

    :goto_1
    invoke-direct {v2, v3, v4}, Lcom/vivo/speechsdk/module/net/websocket/f;-><init>(J)V

    iput-object v2, p0, Lcom/vivo/speechsdk/module/net/NetModule;->b:Lcom/vivo/speechsdk/module/net/websocket/f;

    invoke-virtual {v2, v0}, Lcom/vivo/speechsdk/module/net/websocket/f;->a(Z)V

    new-instance p1, Ly2/OkHttpClient$a;

    invoke-direct {p1}, Ly2/OkHttpClient$a;-><init>()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->d:Lcom/vivo/speechsdk/b/c;

    const-string v2, "key_connect_time_out"

    invoke-virtual {v0, v2, v1}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Lcom/vivo/speechsdk/module/net/OkHttpDns;

    const-wide/16 v3, 0x1388

    if-nez v0, :cond_2

    move-wide v5, v3

    goto :goto_2

    :cond_2
    int-to-long v5, v0

    :goto_2
    invoke-direct {v2, v5, v6}, Lcom/vivo/speechsdk/module/net/OkHttpDns;-><init>(J)V

    iput-object v2, p0, Lcom/vivo/speechsdk/module/net/NetModule;->c:Lcom/vivo/speechsdk/module/net/OkHttpDns;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    int-to-long v3, v0

    :goto_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, v0}, Ly2/OkHttpClient$a;->d(JLjava/util/concurrent/TimeUnit;)Ly2/OkHttpClient$a;

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v2, v3, v0}, Ly2/OkHttpClient$a;->M(JLjava/util/concurrent/TimeUnit;)Ly2/OkHttpClient$a;

    invoke-virtual {p1, v2, v3, v0}, Ly2/OkHttpClient$a;->O(JLjava/util/concurrent/TimeUnit;)Ly2/OkHttpClient$a;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/NetModule;->c:Lcom/vivo/speechsdk/module/net/OkHttpDns;

    invoke-virtual {p1, v2}, Ly2/OkHttpClient$a;->e(Ly2/r;)Ly2/OkHttpClient$a;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ly2/OkHttpClient$a;->b(Ly2/c;)Ly2/OkHttpClient$a;

    invoke-virtual {p1, v1}, Ly2/OkHttpClient$a;->N(Z)Ly2/OkHttpClient$a;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ly2/OkHttpClient$a;->K(JLjava/util/concurrent/TimeUnit;)Ly2/OkHttpClient$a;

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->a()Ly2/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/NetModule;->a:Ly2/OkHttpClient;

    iget-boolean p1, p0, Lcom/vivo/speechsdk/module/net/NetModule;->f:Z

    if-nez p1, :cond_4

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/c;->a()Lcom/vivo/speechsdk/common/thread/c;

    move-result-object p1

    new-instance v0, Lcom/vivo/speechsdk/module/net/NetModule$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/net/NetModule$a;-><init>(Lcom/vivo/speechsdk/module/net/NetModule;)V

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/thread/c;->execute(Ljava/lang/Runnable;)V

    :cond_4
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/NetModule;->d:Lcom/vivo/speechsdk/b/c;

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->isOversea()Z

    move-result v0

    const-string v2, "key_disable_get_ssid"

    invoke-virtual {p1, v2, v0}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/c;->a()Lcom/vivo/speechsdk/module/net/utils/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/net/utils/c;->a(Z)V

    const-string p1, "NetModule"

    const-string v0, "disable get wifi ssid"

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v1
.end method

.method public release()V
    .locals 2

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/c;->a()Lcom/vivo/speechsdk/common/thread/c;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/module/net/NetModule$b;

    invoke-direct {v1, p0}, Lcom/vivo/speechsdk/module/net/NetModule$b;-><init>(Lcom/vivo/speechsdk/module/net/NetModule;)V

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/common/thread/c;->execute(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->b:Lcom/vivo/speechsdk/module/net/websocket/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/websocket/f;->c()V

    :cond_1
    const-class v0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/NetModule;->e:Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->d()V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->a:Ly2/OkHttpClient;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ly2/OkHttpClient;->o()Ly2/q;

    move-result-object v0

    invoke-virtual {v0}, Ly2/q;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/NetModule;->a:Ly2/OkHttpClient;

    invoke-virtual {v0}, Ly2/OkHttpClient;->l()Ly2/j;

    move-result-object v0

    invoke-virtual {v0}, Ly2/j;->a()V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
