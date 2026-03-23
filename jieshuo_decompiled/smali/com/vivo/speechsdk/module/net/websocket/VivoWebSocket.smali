.class public Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly2/f0;
.implements Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;,
        Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$CancelRunnable;,
        Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Streams;,
        Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;,
        Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Message;,
        Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingRunnable;
    }
.end annotation


# static fields
.field private static final A:J = 0x1000000L

.field private static final B:J = 0xea60L

.field static final synthetic C:Z = true

.field private static final y:Ljava/lang/String; = "VivoWebSocket"

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly2/a0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ly2/Request;

.field private b:Ly2/g0;

.field private final c:Ljava/util/Random;

.field private final d:J

.field private final e:Ljava/lang/String;

.field private f:Ly2/Call;

.field private final g:Ljava/lang/Runnable;

.field private h:Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;

.field private i:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

.field private j:Ljava/util/concurrent/ScheduledExecutorService;

.field private k:Ll3/d$d;

.field private final l:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lm3/h;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private n:J

.field private o:Z

.field private p:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:Z

.field private x:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ly2/a0;->c:Ly2/a0;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->z:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ly2/Request;Ly2/g0;Ljava/util/Random;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->l:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->m:Ljava/util/ArrayDeque;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->q:I

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;->EMPTY:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->x:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;

    invoke-virtual {p1}, Ly2/Request;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a:Ly2/Request;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->b:Ly2/g0;

    iput-object p3, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->c:Ljava/util/Random;

    iput-wide p4, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->d:J

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-virtual {p3, p1}, Ljava/util/Random;->nextBytes([B)V

    invoke-static {p1}, Lm3/h;->m([B)Lm3/h;

    move-result-object p1

    invoke-virtual {p1}, Lm3/h;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->e:Ljava/lang/String;

    new-instance p1, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$1;

    invoke-direct {p1, p0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$1;-><init>(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->g:Ljava/lang/Runnable;

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Request must be GET: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/Request;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;)Ly2/g0;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->b:Ly2/g0;

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;Ljava/io/Closeable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method private a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized a(Lm3/h;I)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->s:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->n:J

    invoke-virtual {p1}, Lm3/h;->t()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/16 p1, 0x3e9

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->n:J

    invoke-virtual {p1}, Lm3/h;->t()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->n:J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->m:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Message;

    invoke-direct {v1, p2, p1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Message;-><init>(ILm3/h;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private d()V
    .locals 2

    sget-boolean v0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->C:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->g:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method a(ILjava/util/concurrent/TimeUnit;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2, p2}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method a(Ly2/Response;Ld3/Exchange;)V
    .locals 4

    invoke-virtual {p1}, Ly2/Response;->g()I

    move-result v0

    const/16 v1, 0x65

    const-string v2, "\'"

    if-ne v0, v1, :cond_4

    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Ly2/Response;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrade"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v1}, Ly2/Response;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Sec-WebSocket-Accept"

    invoke-virtual {p1, v0}, Ly2/Response;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lm3/h;->d(Ljava/lang/String;)Lm3/h;

    move-result-object v0

    invoke-virtual {v0}, Lm3/h;->r()Lm3/h;

    move-result-object v0

    invoke-virtual {v0}, Lm3/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Web Socket exchange missing: bad interceptor?"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' but was \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected HTTP 101 response but was \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/Response;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ly2/Response;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method declared-synchronized a(ZLjava/lang/String;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->i:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    iget-boolean v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->w:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->t:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iget v3, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->t:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->t:I

    iput-boolean v4, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->w:Z

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    if-nez p1, :cond_2

    new-instance p1, Ljava/net/SocketTimeoutException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sent ping but didn\'t receive pong within "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->d:J

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms (after "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v1, v4

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " successful ping/pongs)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v3}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->failWebSocket(Ljava/lang/Exception;Ly2/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-static {p2}, Lm3/h;->d(Ljava/lang/String;)Lm3/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->a(Lm3/h;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->x:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;->onPing(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1, v3}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->failWebSocket(Ljava/lang/Exception;Ly2/Response;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->h:Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;

    invoke-virtual {v1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->a()V

    iget v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->failWebSocket(Ljava/lang/Exception;Ly2/Response;)V

    return v0
.end method

.method declared-synchronized a(ILjava/lang/String;J)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/vivo/speechsdk/module/net/websocket/g;->b(I)V

    if-eqz p2, :cond_1

    invoke-static {p2}, Lm3/h;->d(Ljava/lang/String;)Lm3/h;

    move-result-object v0

    invoke-virtual {v0}, Lm3/h;->t()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x7b

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "reason.size() > 123: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->s:Z

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->o:Z

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->o:Z

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->m:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;

    invoke-direct {v2, p1, v0, p3, p4}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;-><init>(ILm3/h;J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p2

    :cond_3
    :goto_1
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lm3/h;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->f:Ly2/Call;

    invoke-interface {v0}, Ly2/Call;->cancel()V

    return-void
.end method

.method public close(ILjava/lang/String;)Z
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a(ILjava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method public connect(Ly2/OkHttpClient;)V
    .locals 3

    invoke-virtual {p1}, Ly2/OkHttpClient;->y()Ly2/OkHttpClient$a;

    move-result-object p1

    sget-object v0, Ly2/s;->a:Ly2/s;

    invoke-virtual {p1, v0}, Ly2/OkHttpClient$a;->f(Ly2/s;)Ly2/OkHttpClient$a;

    move-result-object p1

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->z:Ljava/util/List;

    invoke-virtual {p1, v0}, Ly2/OkHttpClient$a;->L(Ljava/util/List;)Ly2/OkHttpClient$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/OkHttpClient$a;->a()Ly2/OkHttpClient;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a:Ly2/Request;

    invoke-virtual {v0}, Ly2/Request;->h()Ly2/Request$a;

    move-result-object v0

    const-string v1, "websocket"

    const-string v2, "Upgrade"

    invoke-virtual {v0, v2, v1}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    move-result-object v0

    const-string v1, "Connection"

    invoke-virtual {v0, v1, v2}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->e:Ljava/lang/String;

    const-string v2, "Sec-WebSocket-Key"

    invoke-virtual {v0, v2, v1}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Version"

    const-string v2, "13"

    invoke-virtual {v0, v1, v2}, Ly2/Request$a;->c(Ljava/lang/String;Ljava/lang/String;)Ly2/Request$a;

    move-result-object v0

    invoke-virtual {v0}, Ly2/Request$a;->b()Ly2/Request;

    move-result-object v0

    sget-object v1, Lz2/b;->instance:Lz2/b;

    invoke-virtual {v1, p1, v0}, Lz2/b;->newWebSocketCall(Ly2/OkHttpClient;Ly2/Request;)Ly2/Call;

    const/4 p1, 0x0

    throw p1
.end method

.method public declared-synchronized detectLatency(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->s:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->i:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    invoke-static {p1}, Lm3/h;->d(Ljava/lang/String;)Lm3/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->a(Lm3/h;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->x:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;->onPing(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->failWebSocket(Ljava/lang/Exception;Ly2/Response;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method f()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    return-void
.end method

.method public failWebSocket(Ljava/lang/Exception;Ly2/Response;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->s:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->s:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->k:Ll3/d$d;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->k:Ll3/d$d;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->b:Ly2/g0;

    invoke-virtual {v1, p0, p1, p2}, Ly2/g0;->onFailure(Ly2/f0;Ljava/lang/Throwable;Ly2/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a(Ljava/io/Closeable;)V

    throw p1

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method g()Z
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->i:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm3/h;

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez v2, :cond_4

    iget-object v5, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;

    if-eqz v6, :cond_2

    iget v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->q:I

    iget-object v6, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->r:Ljava/lang/String;

    if-eq v1, v4, :cond_1

    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->k:Ll3/d$d;

    iput-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->k:Ll3/d$d;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_0
    move-object v3, v5

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$CancelRunnable;

    invoke-direct {v7, p0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$CancelRunnable;-><init>(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;)V

    move-object v8, v5

    check-cast v8, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;

    iget-wide v8, v8, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;->c:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v7, v8, v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->p:Ljava/util/concurrent/ScheduledFuture;

    move-object v4, v3

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    move-object v4, v3

    move-object v6, v4

    move-object v3, v5

    goto :goto_1

    :cond_4
    move-object v4, v3

    move-object v6, v4

    :goto_1
    const/4 v1, -0x1

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->b(Lm3/h;)V

    goto :goto_3

    :cond_5
    instance-of v2, v3, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Message;

    if-eqz v2, :cond_6

    move-object v1, v3

    check-cast v1, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Message;

    iget-object v1, v1, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Message;->b:Lm3/h;

    check-cast v3, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Message;

    iget v2, v3, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Message;->a:I

    invoke-virtual {v1}, Lm3/h;->t()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v0, v2, v5, v6}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->a(IJ)Lm3/a0;

    move-result-object v0

    invoke-static {v0}, Lm3/p;->a(Lm3/a0;)Lm3/f;

    move-result-object v0

    invoke-interface {v0, v1}, Lm3/f;->v(Lm3/h;)Lm3/f;

    invoke-interface {v0}, Lm3/a0;->close()V

    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-wide v2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->n:J

    invoke-virtual {v1}, Lm3/h;->t()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->n:J

    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    :cond_6
    instance-of v2, v3, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;

    if-eqz v2, :cond_8

    check-cast v3, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;

    iget v2, v3, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;->a:I

    iget-object v3, v3, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$Close;->b:Lm3/h;

    invoke-virtual {v0, v2, v3}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;->a(ILm3/h;)V

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->b:Ly2/g0;

    invoke-virtual {v0, p0, v1, v6}, Ly2/g0;->onClosed(Ly2/f0;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :goto_3
    invoke-direct {p0, v4}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    return v0

    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-direct {p0, v4}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public initReaderAndWriter(Ljava/lang/String;Ll3/d$d;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->k:Ll3/d$d;

    new-instance v0, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    iget-boolean v1, p2, Ll3/d$d;->a:Z

    iget-object v2, p2, Ll3/d$d;->c:Lm3/f;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->c:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;-><init>(ZLm3/f;Ljava/util/Random;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->i:Lcom/vivo/speechsdk/module/net/websocket/WebSocketWriter;

    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lz2/c;->I(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {v4, v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->d:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    new-instance v5, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingRunnable;

    invoke-direct {v5, p0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingRunnable;-><init>(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;)V

    iget-wide v8, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->d:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->d()V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;

    iget-boolean v0, p2, Ll3/d$d;->a:Z

    iget-object p2, p2, Ll3/d$d;->b:Lm3/g;

    invoke-direct {p1, v0, p2, p0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;-><init>(ZLm3/g;Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader$FrameCallback;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->h:Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public loopReader()V
    .locals 2

    :goto_0
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->q:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->h:Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/net/websocket/WebSocketReader;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReadClose(ILjava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->q:I

    if-ne v1, v0, :cond_3

    iput p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->q:I

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->r:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->k:Ll3/d$d;

    iput-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->k:Ll3/d$d;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->p:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->j:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move-object v1, v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->b:Ly2/g0;

    invoke-virtual {v0, p0, p1, p2}, Ly2/g0;->onClosing(Ly2/f0;ILjava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->b:Ly2/g0;

    invoke-virtual {v0, p0, p1, p2}, Ly2/g0;->onClosed(Ly2/f0;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a(Ljava/io/Closeable;)V

    throw p1

    :cond_3
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->b:Ly2/g0;

    invoke-virtual {v0, p0, p1}, Ly2/g0;->onMessage(Ly2/f0;Ljava/lang/String;)V

    return-void
.end method

.method public onReadMessage(Lm3/h;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->b:Ly2/g0;

    invoke-virtual {v0, p0, p1}, Ly2/g0;->onMessage(Ly2/f0;Lm3/h;)V

    return-void
.end method

.method public declared-synchronized onReadPing(Lm3/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->s:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->d()V

    iget p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReadPong(Lm3/h;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->v:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->w:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->x:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;

    invoke-virtual {p1}, Lm3/h;->x()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;->onPong(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized queueSize()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Ly2/Request;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a:Ly2/Request;

    return-object v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lm3/h;->d(Ljava/lang/String;)Lm3/h;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a(Lm3/h;I)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "text == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public send(Lm3/h;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->a(Lm3/h;I)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "bytes == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setListener(Ly2/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->b:Ly2/g0;

    return-void
.end method

.method public setPingListener(Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;->EMPTY:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;

    :cond_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket;->x:Lcom/vivo/speechsdk/module/net/websocket/VivoWebSocket$PingListener;

    return-void
.end method
