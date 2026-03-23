.class public Lcom/vivo/speechsdk/module/net/websocket/WebSocket;
.super Lcom/vivo/speechsdk/module/net/websocket/a;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/net/websocket/f$b;


# static fields
.field private static final L:Ljava/lang/String; = "WebSocket"

.field private static final M:I = 0x64

.field private static final N:I = 0x66

.field private static final O:I = 0x67

.field private static final P:I = 0xa

.field private static final Q:I = 0xb

.field private static final R:I = 0x12c

.field private static final S:Ljava/lang/String; = "-ali"

.field public static final USER_STOP:I = 0x3ea

.field public static final WS_PROTOCOL_CANCEL:I = 0x3e9

.field public static final WS_PROTOCOL_CLOSE:I = 0x3e8


# instance fields
.field private A:Z

.field private B:Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;

.field private C:Landroid/os/Handler;

.field private D:Ljava/lang/String;

.field private E:I

.field private volatile F:Z

.field private G:I

.field private H:Lcom/vivo/speechsdk/common/utils/ILog;

.field private I:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;

.field private J:Landroid/os/Handler$Callback;

.field private K:Ly2/g0;

.field private q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

.field private volatile r:I

.field private volatile s:J

.field private volatile t:J

.field private u:Lcom/vivo/speechsdk/module/net/websocket/d;

.field private v:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

.field private w:Ly2/g0;

.field private x:Lcom/vivo/speechsdk/module/net/websocket/f;

.field private y:Ly2/OkHttpClient;

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/f;Ly2/OkHttpClient;Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;Lcom/vivo/speechsdk/module/api/net/IHostSelector;Landroid/os/Looper;ZZII)V
    .locals 1

    invoke-direct {p0, p7, p4}, Lcom/vivo/speechsdk/module/net/websocket/a;-><init>(ZLcom/vivo/speechsdk/module/api/net/IHostSelector;)V

    const/16 p4, 0xa

    iput p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->r:I

    sget-object p4, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->EMPTY:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    iput-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->v:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    new-instance p4, Lcom/vivo/speechsdk/module/net/websocket/b;

    invoke-direct {p4}, Lcom/vivo/speechsdk/module/net/websocket/b;-><init>()V

    iput-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->w:Ly2/g0;

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->z:Z

    iput-boolean p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->A:Z

    const-string p4, ""

    iput-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->F:Z

    new-instance p4, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$1;

    invoke-direct {p4, p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$1;-><init>(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)V

    iput-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->I:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;

    new-instance p4, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;

    invoke-direct {p4, p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$2;-><init>(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)V

    iput-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->J:Landroid/os/Handler$Callback;

    new-instance p4, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$3;

    invoke-direct {p4, p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket$3;-><init>(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)V

    iput-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->K:Ly2/g0;

    new-instance p4, Landroid/os/Handler;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->J:Landroid/os/Handler$Callback;

    invoke-direct {p4, p5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->C:Landroid/os/Handler;

    iput-object p3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->B:Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->x:Lcom/vivo/speechsdk/module/net/websocket/f;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->y:Ly2/OkHttpClient;

    iput-boolean p6, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->z:Z

    iput-boolean p7, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->A:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->t:J

    iput p8, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->E:I

    iput p9, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->G:I

    invoke-static {p9}, Lcom/vivo/speechsdk/common/utils/LoggerManager;->getLogger(I)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance p1, Lcom/vivo/speechsdk/module/net/websocket/d;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/net/websocket/d;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->u:Lcom/vivo/speechsdk/module/net/websocket/d;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->r:I

    return p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;I)I
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->r:I

    return p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;J)J
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->t:J

    return-wide p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;)Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    return-object p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;Ly2/Request;Ly2/g0;)Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->a(Ly2/Request;Ly2/g0;)Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    move-result-object p0

    return-object p0
.end method

.method private a(Ly2/Request;Ly2/g0;)Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;
    .locals 7

    new-instance v6, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->E:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->y:Ly2/OkHttpClient;

    invoke-virtual {v0}, Ly2/OkHttpClient;->B()I

    move-result v0

    :cond_0
    int-to-long v0, v0

    move-wide v4, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;-><init>(Ly2/Request;Ly2/g0;Ljava/util/Random;J)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->v:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onStart()V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->I:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;

    invoke-virtual {v6, p1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->setPingListener(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->y:Ly2/OkHttpClient;

    invoke-virtual {v6, p1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->connect(Ly2/OkHttpClient;)V

    return-object v6
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;J)J
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->s:J

    return-wide p1
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->v:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    return-object p0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->F:Z

    return p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized d()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIntoIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebSocket"

    invoke-interface {v2, v4, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->t:J

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    iget v1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    and-int/lit8 v1, v1, 0x8

    xor-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    return-object p0
.end method

.method static synthetic f(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->C:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->s:J

    return-wide v0
.end method

.method static synthetic h(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    return-object p0
.end method

.method static synthetic i(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Ly2/g0;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->K:Ly2/g0;

    return-object p0
.end method

.method static synthetic j(Lcom/vivo/speechsdk/module/net/websocket/WebSocket;)Lcom/vivo/speechsdk/module/net/websocket/d;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->u:Lcom/vivo/speechsdk/module/net/websocket/d;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->F:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->cancel()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->close(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "WebSocket"

    const-string v2, "WebSocket cancel"

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized close(ILjava/lang/String;)Z
    .locals 4

    monitor-enter p0

    const/4 p2, 0x0

    :try_start_0
    iput-boolean p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->F:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return p2

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return p2

    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->z:Z

    const/16 v1, 0x3e9

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->A:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p2

    :cond_2
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/a;->isHealthy()Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 p2, 0x0

    if-ne p1, v1, :cond_5

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->z:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->w:Ly2/g0;

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->setListener(Ly2/g0;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->u:Lcom/vivo/speechsdk/module/net/websocket/d;

    const-string v1, "session end"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/module/net/websocket/d;->onClosed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->v:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    const-string v1, "session end"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onClosed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->u:Lcom/vivo/speechsdk/module/net/websocket/d;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/module/net/websocket/d;->a(Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->d()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->u:Lcom/vivo/speechsdk/module/net/websocket/d;

    const-string v1, "not in pool"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/module/net/websocket/d;->onClosed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->v:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    const-string v1, "not in pool"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onClosed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->u:Lcom/vivo/speechsdk/module/net/websocket/d;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/module/net/websocket/d;->a(Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not in pool | destroy "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WebSocket"

    invoke-interface {v0, v3, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->destroy()V

    :cond_5
    :goto_0
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client call | destroy "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WebSocket"

    invoke-interface {v0, v3, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->u:Lcom/vivo/speechsdk/module/net/websocket/d;

    const-string v1, "client call"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/module/net/websocket/d;->onClosed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->v:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    const-string v1, "client call"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onClosed(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->u:Lcom/vivo/speechsdk/module/net/websocket/d;

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/d;->a(Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    monitor-exit p0

    return v2

    :cond_7
    :goto_1
    :try_start_4
    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unHealthy state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebSocket"

    invoke-interface {p2, v0, p1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->destroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public connectTimeout()J
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->y:Ly2/OkHttpClient;

    invoke-virtual {v0}, Ly2/OkHttpClient;->k()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public declared-synchronized destroy()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(I)V

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroy | state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WebSocket"

    invoke-interface {v3, v5, v4}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socket --cancel-- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WebSocket"

    invoke-interface {v1, v4, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    invoke-virtual {v1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->cancel()V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->u:Lcom/vivo/speechsdk/module/net/websocket/d;

    const-string v3, "cancel "

    const/16 v4, 0x3eb

    invoke-virtual {v1, v4, v3}, Lcom/vivo/speechsdk/module/net/websocket/d;->onClosed(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->v:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    const-string v3, "cancel "

    invoke-virtual {v1, v4, v3}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onClosed(ILjava/lang/String;)V

    :cond_1
    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->x:Lcom/vivo/speechsdk/module/net/websocket/f;

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/module/net/websocket/f;->c(Lcom/vivo/speechsdk/module/net/websocket/f$b;)V

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "WebSocket"

    const-string v2, "socket close(1000, null) "

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doConnect(Ly2/Request;Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->u:Lcom/vivo/speechsdk/module/net/websocket/d;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/module/net/websocket/d;->a(Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V

    iget p2, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ly2/Request;->i()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/utils/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->G:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/a;->c()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "reconnect "

    goto :goto_0

    :cond_0
    const-string v0, "connect "

    :goto_0
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u5efa\u7acb\u63e1\u624b\u8fde\u63a5"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " retry="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/a;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " host="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/Request;->i()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "WebSocket"

    invoke-interface {v0, v1, p2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->K:Ly2/g0;

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->a(Ly2/Request;Ly2/g0;)Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    goto/16 :goto_1

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connect \u590d\u7528\u5df2\u7ecf\u6253\u5f00\u7684\u8fde\u63a5\uff0c\u56de\u8c03onOpen "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WebSocket"

    invoke-interface {p1, v0, p2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->setIntoUse()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6b63\u5728\u8fde\u63a5... "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WebSocket"

    invoke-interface {p1, v0, p2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->v:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onStart()V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->I:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->setPingListener(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not healthy conn ... "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WebSocket"

    invoke-interface {p1, v0, p2}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->G:I

    return v0
.end method

.method public idleAtTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->t:J

    return-wide v0
.end method

.method public isAvailable(Landroid/net/Uri;)Z
    .locals 12

    const-string v0, ""

    const-string v1, "-ali"

    const-string v2, "WebSocket"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/a;->request()Ly2/Request;

    move-result-object v4

    invoke-virtual {v4}, Ly2/Request;->i()Ly2/w;

    move-result-object v4

    invoke-virtual {v4}, Ly2/w;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    const/16 v8, 0x8

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "state "

    aput-object v9, v8, v3

    iget v9, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string v9, " new | "

    const/4 v11, 0x2

    aput-object v9, v8, v11

    const/4 v9, 0x3

    aput-object v5, v8, v9

    const-string v9, " old | "

    const/4 v11, 0x4

    aput-object v9, v8, v11

    const/4 v9, 0x5

    aput-object v6, v8, v9

    const-string v9, " "

    const/4 v11, 0x6

    aput-object v9, v8, v11

    iget-object v9, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    const/4 v11, 0x7

    aput-object v9, v8, v11

    invoke-static {v8}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->B:Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;

    if-eqz v7, :cond_0

    invoke-interface {v7, p1, v4}, Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;->isAvailable(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v10}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public isIdle()Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized ping(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->detectLatency(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized realClose()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->send(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public send([B)Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->q:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;

    invoke-static {p1}, Lm3/h;->m([B)Lm3/h;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->send(Lm3/h;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized setIntoUse()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->t:J

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->H:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIntoUse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebSocket"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->r:I

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->C:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWebSocketEventListener(Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->EMPTY:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    :cond_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->v:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/WebSocket;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
