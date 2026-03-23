.class public abstract Lcom/vivo/speechsdk/module/net/websocket/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CONNECT_FAILED_DEFAULT:I = 0x0

.field public static final CONNECT_FAILED_RECONNECT:I = 0x1

.field public static final STATE_ACTIVE:I = 0x8

.field public static final STATE_CLOSED:I = 0x40

.field public static final STATE_CLOSING:I = 0x20

.field public static final STATE_ERROR:I = 0x10

.field public static final STATE_HAND_SHAKE:I = 0x1

.field public static final STATE_IDLE:I = 0x4

.field public static final STATE_NOT_YET_CONNECTED:I = 0x0

.field public static final STATE_OPEN:I = 0x2

.field private static final n:I = 0x1f4

.field private static final o:I = 0x4

.field private static final p:I = 0x2


# instance fields
.field protected volatile a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:Ly2/Request;

.field private f:Ly2/Request;

.field private g:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

.field private h:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

.field protected i:Z

.field private j:Z

.field private k:Ljava/lang/Throwable;

.field private l:Z

.field private m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;


# direct methods
.method public constructor <init>(ZLcom/vivo/speechsdk/module/api/net/IHostSelector;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->b:I

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->c:I

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->i:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->j:Z

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v1, "Tracker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->h:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->i:Z

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->l:Z

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_5

    const-string v0, "aispeech-ali"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "asr-ali-v2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "aispeech"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "asr-v2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "tts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_5
    return v1
.end method

.method private a(Lcom/vivo/speechsdk/module/api/net/IHostSelector;)Ly2/Request;
    .locals 3

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/a;->request()Ly2/Request;

    move-result-object v0

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v1

    invoke-virtual {v1}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/net/IHostSelector;->defaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ly2/Request;->h()Ly2/Request$a;

    move-result-object v1

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->j()Ly2/w$a;

    move-result-object v0

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/net/IHostSelector;->backupHost()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ly2/w$a;->e(Ljava/lang/String;)Ly2/w$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/w$a;->a()Ly2/w;

    move-result-object p1

    invoke-virtual {v1, p1}, Ly2/Request$a;->i(Ly2/w;)Ly2/Request$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Request$a;->b()Ly2/Request;

    move-result-object v0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/net/IHostSelector;->backupHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/a;->request()Ly2/Request;

    move-result-object v1

    invoke-virtual {v1}, Ly2/Request;->h()Ly2/Request$a;

    move-result-object v1

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->j()Ly2/w$a;

    move-result-object v0

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/net/IHostSelector;->defaultHost()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private a(Ly2/Request;Ljava/lang/String;)Ly2/Request;
    .locals 1

    invoke-virtual {p1}, Ly2/Request;->h()Ly2/Request$a;

    move-result-object v0

    invoke-virtual {p1}, Ly2/Request;->i()Ly2/w;

    move-result-object p1

    invoke-virtual {p1}, Ly2/w;->j()Ly2/w$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Ly2/w$a;->e(Ljava/lang/String;)Ly2/w$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/w$a;->a()Ly2/w;

    move-result-object p1

    invoke-virtual {v0, p1}, Ly2/Request$a;->i(Ly2/w;)Ly2/Request$a;

    move-result-object p1

    invoke-virtual {p1}, Ly2/Request$a;->b()Ly2/Request;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized a(IIJ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->h:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->i:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->j:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget v1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "retry"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->f:Ly2/Request;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ly2/Request;->i()Ly2/w;

    move-result-object v1

    invoke-virtual {v1}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->e:Ly2/Request;

    invoke-virtual {v1}, Ly2/Request;->i()Ly2/w;

    move-result-object v1

    invoke-virtual {v1}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    goto :goto_0

    :goto_2
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/speechsdk/module/net/utils/d;->c(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "net"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "dur"

    invoke-virtual {v0, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "errcode"

    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "final"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->h:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    const/16 p2, 0x9

    invoke-interface {p1, p2, v0}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->upload(ILjava/util/Map;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(I)V

    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->e:Ly2/Request;

    invoke-virtual {v1}, Ly2/Request;->i()Ly2/w;

    move-result-object v1

    invoke-virtual {v1}, Ly2/w;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-virtual {v0, v2, v1}, Lcom/vivo/speechsdk/b/i/b;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->e:Ly2/Request;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->g:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    invoke-virtual {p0, v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/a;->doConnect(Ly2/Request;Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V

    return-void
.end method

.method private b(I)V
    .locals 2

    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/IHostSelector;->defaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/IHostSelector;->backupHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/a;->request()Ly2/Request;

    move-result-object v0

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->c:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    const-string v1, "Connection reset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/net/IHostSelector;->defaultHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->c:I

    const/16 p1, 0x1f4

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/a;->b(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->c:I

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->f:Ly2/Request;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->e:Ly2/Request;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->f:Ly2/Request;

    :cond_2
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(Lcom/vivo/speechsdk/module/api/net/IHostSelector;)Ly2/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->e:Ly2/Request;

    :goto_1
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/a;->b()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Ly2/Response;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ly2/Response;->b()Ly2/c0;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ly2/c0;->j()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I
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

.method protected c()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->b:I

    return v0
.end method

.method public checkState(I)Z
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public connect(Ly2/Request;Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V
    .locals 5

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->d:J

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->f:Ly2/Request;

    invoke-virtual {p1}, Ly2/Request;->i()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/c;->a()Lcom/vivo/speechsdk/module/net/utils/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/net/utils/c;->a(Lcom/vivo/speechsdk/module/api/net/IHostSelector;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(Ly2/Request;Ljava/lang/String;)Ly2/Request;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->e:Ly2/Request;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->g:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->e:Ly2/Request;

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {p1, v1, v0}, Lcom/vivo/speechsdk/b/i/b;->a(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->e:Ly2/Request;

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/a;->doConnect(Ly2/Request;Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V

    return-void
.end method

.method public abstract connectTimeout()J
.end method

.method public abstract doConnect(Ly2/Request;Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V
.end method

.method public isHealthy()Z
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConnectFailed(Ljava/lang/Throwable;)I
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->d:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/a;->request()Ly2/Request;

    move-result-object v2

    invoke-virtual {v2}, Ly2/Request;->i()Ly2/w;

    move-result-object v2

    invoke-virtual {v2}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v2

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->k:Ljava/lang/Throwable;

    iget-boolean v3, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->l:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/a;->connectTimeout()J

    move-result-wide v6

    cmp-long v3, v0, v6

    if-gez v3, :cond_2

    invoke-virtual {p0, v5}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->b:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    if-nez v1, :cond_0

    return v4

    :cond_0
    add-int/2addr v0, v5

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->b:I

    invoke-direct {p0, v2}, Lcom/vivo/speechsdk/module/net/websocket/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x1f4

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/a;->b(I)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/a;->b()V

    :goto_0
    return v5

    :cond_2
    iget-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->l:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0, v5}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->j:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->k:Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/net/NetworkError;->getProfessionalNetworkCodeByThrowable(Ljava/lang/Throwable;)I

    move-result p1

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v5, v0, v1}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(IIJ)V

    :cond_3
    return v4
.end method

.method public onConnectSuccess()V
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->e:Ly2/Request;

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/c;->a()Lcom/vivo/speechsdk/module/net/utils/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->e:Ly2/Request;

    invoke-virtual {v1}, Ly2/Request;->i()Ly2/w;

    move-result-object v1

    invoke-virtual {v1}, Ly2/w;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/net/utils/c;->a(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->k:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/api/net/NetworkError;->getProfessionalNetworkCodeByThrowable(Ljava/lang/Throwable;)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->d:J

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(IIJ)V

    :cond_1
    return-void
.end method

.method public request()Ly2/Request;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->e:Ly2/Request;

    return-object v0
.end method
