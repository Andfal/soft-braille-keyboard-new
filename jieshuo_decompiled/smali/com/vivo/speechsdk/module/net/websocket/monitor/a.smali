.class public Lcom/vivo/speechsdk/module/net/websocket/monitor/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String; = "NetQualityMonitor"

.field private static final s:I = 0x2711

.field private static final t:I = 0x2712

.field private static final u:I = 0x2713

.field private static final v:I = 0x2714

.field private static final w:I = 0x2715

.field private static x:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:I

.field private e:J

.field private f:I

.field private g:J

.field private h:I

.field private i:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

.field private j:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

.field private volatile k:Z

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/os/HandlerThread;

.field private n:Landroid/os/Handler;

.field private o:J

.field private p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

.field private q:Lcom/vivo/speechsdk/module/net/websocket/c;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->k:Z

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->l:Ljava/util/Map;

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->o:J

    new-instance v0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$a;-><init>(Lcom/vivo/speechsdk/module/net/websocket/monitor/a;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->q:Lcom/vivo/speechsdk/module/net/websocket/c;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetQualityMonitor_Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->m:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->n:Landroid/os/Handler;

    new-instance v0, Lcom/vivo/speechsdk/module/api/net/DefaultDetectPolicy;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/api/net/DefaultDetectPolicy;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/monitor/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->n:Landroid/os/Handler;

    return-object p0
.end method

.method private a()V
    .locals 4

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->h:I

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->maxDetectCount()I

    move-result v2

    rem-int/2addr v0, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->k:Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->j:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->detectLatency(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->n:Landroid/os/Handler;

    const/16 v3, 0x2711

    invoke-static {v1, v0, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->netQualityLow()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private a(J)V
    .locals 5

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    sub-long v0, p1, v0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->o:J

    sub-long/2addr p1, v2

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->messageInterval()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->detectInterval()I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, p1, v2

    if-ltz v4, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->l:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const-string p2, "NetQualityMonitor"

    const-string v2, "message latency | "

    if-lez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->k:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " | wait pong "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " | detect immediate "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a()V

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a:J

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized a(Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;I)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->e:J

    int-to-long p1, p2

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->e:J

    iget p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->f:I

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->g:J

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {p2}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->maxDetectCount()I

    move-result p2

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->i:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    if-eqz p1, :cond_1

    iget-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->g:J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->netQualityLow()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->g:J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->netQualityMid()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->netQualityHigh()I

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->o:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "detect net quality | avgLatency:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->g:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " count:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetQualityMonitor"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->f:I

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->l:Ljava/util/Map;

    new-instance v7, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;-><init>(Lcom/vivo/speechsdk/module/net/websocket/monitor/a;Ljava/lang/String;ZJ)V

    invoke-interface {v0, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b()Lcom/vivo/speechsdk/module/net/websocket/monitor/a;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->x:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->x:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->x:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

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
    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->x:Lcom/vivo/speechsdk/module/net/websocket/monitor/a;

    return-object v0
.end method

.method private declared-synchronized b(Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;I)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->d:I

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->b:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->b:J

    int-to-long p1, p1

    div-long/2addr v0, p1

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/net/websocket/monitor/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->e()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;

    const-string v1, "NetQualityMonitor"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lost ping info | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->a(Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ping/pong | detect:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->c()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " dur:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->n:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a(Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;I)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server not support ping/pong playload | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-wide v4, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->c:J

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_3

    iget p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->d:I

    const/4 v2, 0x1

    if-lt p1, v2, :cond_3

    int-to-long v6, v3

    const-wide/16 v8, 0x2

    mul-long v4, v4, v8

    cmp-long p1, v6, v4

    if-ltz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Latency >= AvgLatency * 2  need detect | "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;->a(Z)V

    iput-boolean v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->k:Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->b(Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;I)V

    :goto_1
    iget-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->k:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->k:Z

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a()V

    :cond_4
    return-void
.end method

.method private d()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a:J

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->b:J

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->c:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->d:I

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->e:J

    iput v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->f:I

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->g:J

    iput v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->h:I

    iput-boolean v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->k:Z

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->o:J

    return-void
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->n:Landroid/os/Handler;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->n:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->messageInterval()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public a(Lcom/vivo/speechsdk/module/api/net/NetQualityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->i:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    return-void
.end method

.method public a(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;)V
    .locals 0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->d()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->j:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Policy | "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    if-nez p2, :cond_0

    const-string p2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetQualityMonitor"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "webSocket can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x2711

    const-string v2, "NetQualityMonitor"

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detect timeout | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->netQualityLow()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->l:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->p:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->netQualityLow()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a(Lcom/vivo/speechsdk/module/net/websocket/monitor/a$b;I)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p1, "message time out !!! "

    invoke-static {v2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_1

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->b(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a(ZLjava/lang/String;)V

    goto :goto_2

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/vivo/speechsdk/module/net/websocket/monitor/a;->a(J)V

    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
