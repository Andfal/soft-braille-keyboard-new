.class public Lw0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lw0/c;

.field private b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/baidu/tts/client/model/DownloadHandler;",
            ">;"
        }
    .end annotation
.end field

.field private c:Li1/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lw0/d;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {}, Lw0/c;->E()Lw0/c;

    move-result-object v0

    iput-object v0, p0, Lw0/d;->a:Lw0/c;

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lw0/d;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/tts/client/model/DownloadHandler;

    invoke-virtual {v1}, Lcom/baidu/tts/client/model/DownloadHandler;->stop()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lcom/baidu/tts/client/model/DownloadHandler;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lw0/d;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/tts/client/model/DownloadHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/tts/client/model/DownloadHandler;

    iget-object v1, p0, Lw0/d;->c:Li1/a;

    invoke-direct {v0, v1}, Lcom/baidu/tts/client/model/DownloadHandler;-><init>(Li1/a;)V

    iget-object v1, p0, Lw0/d;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lw0/b;)Lcom/baidu/tts/client/model/DownloadHandler;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lw0/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lw0/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lw0/d;->a(Ljava/lang/String;)Lcom/baidu/tts/client/model/DownloadHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/baidu/tts/client/model/DownloadHandler;->reset(Lw0/b;)V

    iget-object p1, p0, Lw0/d;->a:Lw0/c;

    invoke-virtual {p1, v0}, Lw0/c;->C(Lcom/baidu/tts/client/model/DownloadHandler;)Lcom/baidu/tts/client/model/DownloadHandler;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lw0/d;->a:Lw0/c;

    invoke-virtual {v0}, Lw0/c;->I()V

    return-void
.end method

.method public d(Li1/a;)V
    .locals 1

    iput-object p1, p0, Lw0/d;->c:Li1/a;

    iget-object v0, p0, Lw0/d;->a:Lw0/c;

    invoke-virtual {v0, p1}, Lw0/c;->F(Li1/a;)V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-direct {p0}, Lw0/d;->f()V

    iget-object v0, p0, Lw0/d;->a:Lw0/c;

    invoke-virtual {v0}, Lw0/c;->e()V

    return-void
.end method
