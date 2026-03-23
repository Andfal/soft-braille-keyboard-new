.class public Lcom/vivo/speechsdk/module/net/websocket/j/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/IWebSocket;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final l:Ljava/lang/String; = "FakeWebSocket"

.field public static final m:I = 0xc8

.field public static final n:I = 0x64

.field private static final o:I = 0x64

.field private static final p:I = 0x65

.field private static final q:I = 0x66

.field private static final r:[B


# instance fields
.field private a:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

.field private b:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private c:I

.field private volatile d:I

.field private volatile e:I

.field private volatile f:Z

.field private g:Landroid/os/HandlerThread;

.field private h:Landroid/os/Handler;

.field private i:Ljava/util/Random;

.field private j:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

.field private k:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "STOP"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->r:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->EMPTY:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->f:Z

    new-instance v0, Lcom/vivo/speechsdk/module/net/websocket/j/a$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/net/websocket/j/a$a;-><init>(Lcom/vivo/speechsdk/module/net/websocket/j/a;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->k:Ljava/lang/Runnable;

    iput p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->c:I

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "FakeWebSocket_Thread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->g:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->h:Landroid/os/Handler;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->i:Ljava/util/Random;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/j/a;I)I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->d:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->d:I

    return v0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/j/a;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/j/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->f:Z

    return p1
.end method

.method private declared-synchronized a([B)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "--end--"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->r:[B

    invoke-virtual {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->d:I

    array-length v2, p1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->d:I

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    iget v2, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->d:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->querySize(J)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a()[B
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->r:[B

    return-object v0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/net/websocket/j/a;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->c:I

    return p0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/net/websocket/j/a;I)I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->e:I

    return v0
.end method


# virtual methods
.method public a(Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->EMPTY:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    :cond_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    return-void
.end method

.method public cancel()V
    .locals 2

    const-string v0, "FakeWebSocket"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v1, Lcom/vivo/speechsdk/module/net/websocket/j/a;->r:[B

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public close(ILjava/lang/String;)Z
    .locals 0

    const-string p1, "FakeWebSocket"

    const-string p2, "close"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object p2, Lcom/vivo/speechsdk/module/net/websocket/j/a;->r:[B

    invoke-virtual {p1, p2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public connect(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V
    .locals 2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->i:Ljava/util/Random;

    const/16 v0, 0x7d0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->j:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->h:Landroid/os/Handler;

    int-to-long v0, p1

    const/16 p1, 0x64

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x1f4

    const/16 v3, 0x64

    const/16 v4, 0x66

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    invoke-static {}, Lcom/vivo/speechsdk/module/net/websocket/j/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onMessage(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->j:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    invoke-static {}, Lcom/vivo/speechsdk/module/net/websocket/j/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/module/api/net/WebSocketListener;->onMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->e:I

    const/16 v0, 0x640

    if-ge p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->f:Z

    if-eqz p1, :cond_3

    :cond_1
    iget p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->e:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->e:I

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->i:Ljava/util/Random;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->d:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->f:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/vivo/speechsdk/module/net/websocket/j/b;->a(IZ)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "FakeWebSocket"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msg | "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->j:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/net/WebSocketListener;->onMessage(Ljava/lang/String;)V

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->f:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->h:Landroid/os/Handler;

    invoke-virtual {p1, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    :pswitch_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    const-string v0, ""

    invoke-virtual {p1, v5, v0}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onClosed(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->j:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    const-string v0, ""

    invoke-interface {p1, v5, v0}, Lcom/vivo/speechsdk/module/api/net/WebSocketListener;->onClosed(ILjava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->j:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    invoke-interface {p1, v5}, Lcom/vivo/speechsdk/module/api/net/WebSocketListener;->onOpen(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    invoke-virtual {p1, v5}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onOpen(Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    iput v4, p1, Landroid/os/Message;->what:I

    iput v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->h:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/a;->a()Lcom/vivo/speechsdk/common/thread/a;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->k:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/thread/a;->execute(Ljava/lang/Runnable;)V

    :goto_2
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ping(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public queueSize()J
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/j/a;->d:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a([B)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x1

    return p1
.end method

.method public send([B)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/j/a;->a([B)Z

    move-result p1

    return p1
.end method

.method public setEventListener(Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public state()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
