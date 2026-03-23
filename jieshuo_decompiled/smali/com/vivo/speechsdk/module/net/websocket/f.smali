.class public final Lcom/vivo/speechsdk/module/net/websocket/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/net/websocket/f$b;,
        Lcom/vivo/speechsdk/module/net/websocket/f$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "WebSocketPool"

.field public static final c:I = 0x5

.field public static final d:J = 0x7530L

.field private static final e:Ljava/util/concurrent/ExecutorService;

.field private static final f:Ljava/lang/Object;

.field private static final g:Ljava/lang/Object;

.field private static h:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/vivo/speechsdk/module/net/websocket/f$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static i:I

.field private static j:J

.field private static k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static l:Z


# instance fields
.field private a:Lcom/vivo/speechsdk/module/net/websocket/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/vivo/speechsdk/common/thread/b;

    const-string v0, "WebSocket Connection Pool, thread No."

    const/4 v1, 0x1

    invoke-direct {v7, v0, v1}, Lcom/vivo/speechsdk/common/thread/b;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/vivo/speechsdk/module/net/websocket/f;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/net/websocket/f;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/net/websocket/f;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/vivo/speechsdk/module/net/websocket/f;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-boolean v1, Lcom/vivo/speechsdk/module/net/websocket/f;->l:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x5

    const-wide/16 v1, 0x7530

    invoke-direct {p0, v0, v1, v2}, Lcom/vivo/speechsdk/module/net/websocket/f;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput p1, Lcom/vivo/speechsdk/module/net/websocket/f;->i:I

    sput-wide p2, Lcom/vivo/speechsdk/module/net/websocket/f;->j:J

    new-instance p1, Lcom/vivo/speechsdk/module/net/websocket/f$a;

    invoke-direct {p1, p0}, Lcom/vivo/speechsdk/module/net/websocket/f$a;-><init>(Lcom/vivo/speechsdk/module/net/websocket/f;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/f;->a:Lcom/vivo/speechsdk/module/net/websocket/f$a;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/f;-><init>(IJ)V

    return-void
.end method

.method private declared-synchronized a(J)J
    .locals 19

    move-wide/from16 v0, p1

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clean thread function start now="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WebSocketPool"

    invoke-static {v3, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vivo/speechsdk/module/net/websocket/f$b;

    invoke-interface {v7}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->isHealthy()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "WebSocketPool"

    const-string v9, "unhealthy conn destroy"

    invoke-static {v8, v9}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    invoke-interface {v7}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->destroy()V

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->isIdle()Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v11, v11, 0x1

    :goto_1
    invoke-interface {v7}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->idleAtTime()J

    move-result-wide v8

    sub-long v8, v0, v8

    cmp-long v10, v8, v14

    if-lez v10, :cond_0

    move-object v6, v7

    move-wide v14, v8

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;

    invoke-direct {v2}, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;-><init>()V

    sget-object v7, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    sget v16, Lcom/vivo/speechsdk/module/net/websocket/f;->i:I

    sget-wide v17, Lcom/vivo/speechsdk/module/net/websocket/f;->j:J

    move-object v7, v2

    move v9, v13

    move v10, v11

    move v3, v11

    move v4, v12

    move-wide v11, v14

    move v5, v13

    move v13, v4

    move-wide v0, v14

    move/from16 v14, v16

    move-wide/from16 v15, v17

    invoke-virtual/range {v7 .. v16}, Lcom/vivo/speechsdk/common/thread/WebSocketPoolInfo;->setInfo(IIIJIIJ)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "key_info_content"

    invoke-virtual {v7, v8, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object v2

    const/16 v8, 0x2718

    invoke-virtual {v2, v8, v7}, Lcom/vivo/speechsdk/b/i/b;->a(ILandroid/os/Bundle;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " idle ="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " communicationNum ="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " longestIdleDur ="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " unhealthyConnNum ="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mConnKeepTime ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v7, Lcom/vivo/speechsdk/module/net/websocket/f;->j:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " mMaxConnNum="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/vivo/speechsdk/module/net/websocket/f;->i:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " now ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v14, v0

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WebSocketPool"

    invoke-static {v4, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v7, Lcom/vivo/speechsdk/module/net/websocket/f;->j:J

    cmp-long v2, v14, v7

    if-gez v2, :cond_9

    sget v2, Lcom/vivo/speechsdk/module/net/websocket/f;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v5, v2, :cond_4

    goto/16 :goto_3

    :cond_4
    if-lez v5, :cond_5

    sub-long/2addr v7, v14

    monitor-exit p0

    return-wide v7

    :cond_5
    if-lez v3, :cond_6

    monitor-exit p0

    return-wide v7

    :cond_6
    :try_start_1
    sget-object v2, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "WebSocketPool"

    const-string v3, "clean pool want to close, but conn list is not empty"

    invoke-static {v2, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/speechsdk/module/net/websocket/f$b;

    if-eqz v3, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error conn isHealthy ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->isHealthy()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isIdle ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->isIdle()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " idleTime ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->idleAtTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " now ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WebSocketPool"

    invoke-static {v5, v4}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->destroy()V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/f;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_9
    :goto_3
    if-eqz v6, :cond_a

    :try_start_2
    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "WebSocketPool"

    const-string v1, "clear longestNoUseTime conn"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v6, :cond_b

    invoke-interface {v6}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->destroy()V

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clean thread function end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketPool"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/f;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/f;->a(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/f;->f:Ljava/lang/Object;

    return-object v0
.end method

.method private b()V
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/net/websocket/f$b;

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->destroy()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;I)Lcom/vivo/speechsdk/module/net/websocket/f$b;
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check pool list to find a available connection | count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebSocketPool"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/net/websocket/f$b;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->isAvailable(Landroid/net/Uri;)Z

    move-result v2

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->isHealthy()Z

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/net/websocket/f$b;->getId()I

    move-result v2

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "WebSocketPool"

    const-string p2, "has find a available connection"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 1

    const-class v0, Lcom/vivo/speechsdk/module/net/websocket/f;

    monitor-enter v0

    :try_start_0
    sput p1, Lcom/vivo/speechsdk/module/net/websocket/f;->i:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/vivo/speechsdk/module/net/websocket/f$b;)V
    .locals 3

    if-eqz p1, :cond_2

    const-class v0, Lcom/vivo/speechsdk/module/net/websocket/f;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/vivo/speechsdk/module/net/websocket/f;->l:Z

    if-nez v1, :cond_0

    const-string p1, "WebSocketPool"

    const-string v1, "pool is disable"

    invoke-static {p1, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "WebSocketPool"

    const-string v2, "addConnection"

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/vivo/speechsdk/module/net/websocket/f;->g:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/vivo/speechsdk/module/net/websocket/f;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/vivo/speechsdk/module/net/websocket/f;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p1, "WebSocketPool"

    const-string v1, "execute CleanThread"

    invoke-static {p1, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/vivo/speechsdk/module/net/websocket/f;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/f;->a:Lcom/vivo/speechsdk/module/net/websocket/f$a;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const-class v0, Lcom/vivo/speechsdk/module/net/websocket/f;

    monitor-enter v0

    :try_start_0
    sput-boolean p1, Lcom/vivo/speechsdk/module/net/websocket/f;->l:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(J)V
    .locals 1

    const-class v0, Lcom/vivo/speechsdk/module/net/websocket/f;

    monitor-enter v0

    :try_start_0
    sput-wide p1, Lcom/vivo/speechsdk/module/net/websocket/f;->j:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/vivo/speechsdk/module/net/websocket/f$b;)Z
    .locals 3

    const-string v0, "checkConnection"

    const-string v1, "WebSocketPool"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/speechsdk/module/net/websocket/f$b;

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v2, "this connection in pool"

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "this connection not in pool"

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/f;->b()V

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public c(Lcom/vivo/speechsdk/module/net/websocket/f$b;)V
    .locals 2

    const-string v0, "WebSocketPool"

    const-string v1, "remove from pool"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d()J
    .locals 2

    sget-wide v0, Lcom/vivo/speechsdk/module/net/websocket/f;->j:J

    return-wide v0
.end method

.method public e()I
    .locals 2

    const-class v0, Lcom/vivo/speechsdk/module/net/websocket/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/module/net/websocket/f;->h:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 1

    sget-boolean v0, Lcom/vivo/speechsdk/module/net/websocket/f;->l:Z

    return v0
.end method
