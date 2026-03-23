.class public Ly0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile d:Ly0/e;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ly0/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ly0/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ly0/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ly0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ly0/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ly0/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static b()Ly0/e;
    .locals 2

    sget-object v0, Ly0/e;->d:Ly0/e;

    if-nez v0, :cond_1

    const-class v0, Ly0/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ly0/e;->d:Ly0/e;

    if-nez v1, :cond_0

    new-instance v1, Ly0/e;

    invoke-direct {v1}, Ly0/e;-><init>()V

    sput-object v1, Ly0/e;->d:Ly0/e;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Ly0/e;->d:Ly0/e;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ly0/d;
    .locals 2

    :try_start_0
    new-instance v0, Ly0/d;

    invoke-direct {v0, p1}, Ly0/d;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ly0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly0/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/baidu/tts/client/model/DownloadHandler;)V
    .locals 1

    invoke-virtual {p1}, Lcom/baidu/tts/client/model/DownloadHandler;->getModelId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ly0/e;->a(Ljava/lang/String;)Ly0/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Ly0/d;->i(Lcom/baidu/tts/client/model/DownloadHandler;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ly0/e;->h(Ljava/lang/String;)Ly0/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ly0/b;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Ly0/c;
    .locals 2

    :try_start_0
    new-instance v0, Ly0/c;

    invoke-direct {v0, p1}, Ly0/c;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ly0/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly0/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Ly0/e;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly0/d;

    invoke-virtual {v1}, Ly0/d;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Ljava/lang/String;)Ly0/b;
    .locals 2

    :try_start_0
    new-instance v0, Ly0/b;

    invoke-direct {v0, p1}, Ly0/b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ly0/e;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly0/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Ljava/lang/String;)Ly0/b;
    .locals 0

    invoke-virtual {p0, p1}, Ly0/e;->e(Ljava/lang/String;)Ly0/c;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ly0/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ly0/e;->g(Ljava/lang/String;)Ly0/b;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0, p1}, Ly0/e;->h(Ljava/lang/String;)Ly0/b;

    move-result-object p1

    invoke-virtual {p1}, Ly0/b;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public j(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Ly0/e;->h(Ljava/lang/String;)Ly0/b;

    move-result-object p1

    invoke-virtual {p1}, Ly0/b;->m()I

    move-result p1

    return p1
.end method
