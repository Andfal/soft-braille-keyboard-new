.class public Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;
.super Lcom/vivo/speechsdk/module/net/websocket/a;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/net/websocket/f$b;


# static fields
.field private static final G:Ljava/lang/String; = "OkhttpWebSocket"

.field private static final H:Ljava/lang/String; = "-ali"

.field public static final USER_STOP:I = 0x3ea

.field public static final WS_PROTOCOL_CANCEL:I = 0x3e9

.field public static final WS_PROTOCOL_CLOSE:I = 0x3e8


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private volatile C:Z

.field private D:I

.field private E:Lcom/vivo/speechsdk/common/utils/ILog;

.field private final F:Ly2/g0;

.field private q:Ly2/f0;

.field private volatile r:J

.field private s:Lcom/vivo/speechsdk/module/net/websocket/d;

.field private t:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

.field private u:Ly2/Request;

.field private v:Lcom/vivo/speechsdk/module/net/websocket/f;

.field private w:Ly2/OkHttpClient;

.field private x:Z

.field private y:Z

.field private z:Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/net/websocket/f;Ly2/OkHttpClient;Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;Lcom/vivo/speechsdk/module/api/net/IHostSelector;Landroid/os/Looper;ZZII)V
    .locals 0

    invoke-direct {p0, p7, p4}, Lcom/vivo/speechsdk/module/net/websocket/a;-><init>(ZLcom/vivo/speechsdk/module/api/net/IHostSelector;)V

    sget-object p4, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->EMPTY:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    iput-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->t:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->x:Z

    iput-boolean p4, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->y:Z

    const-string p4, ""

    iput-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->C:Z

    new-instance p4, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;

    invoke-direct {p4, p0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket$1;-><init>(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)V

    iput-object p4, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->F:Ly2/g0;

    iput-object p3, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->z:Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->v:Lcom/vivo/speechsdk/module/net/websocket/f;

    iput p9, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->D:I

    invoke-static {p9}, Lcom/vivo/speechsdk/common/utils/LoggerManager;->getLogger(I)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->w:Ly2/OkHttpClient;

    iput-boolean p6, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->x:Z

    iput-boolean p7, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->y:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->r:J

    iput p8, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->B:I

    new-instance p1, Lcom/vivo/speechsdk/module/net/websocket/d;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/net/websocket/d;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->s:Lcom/vivo/speechsdk/module/net/websocket/d;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;J)J
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->r:J

    return-wide p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->t:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    return-object p0
.end method

.method private a(Ly2/Request;Ly2/g0;)Ly2/f0;
    .locals 4

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->B:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->w:Ly2/OkHttpClient;

    invoke-virtual {v0}, Ly2/OkHttpClient;->y()Ly2/OkHttpClient$a;

    move-result-object v0

    iget v1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->B:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ly2/OkHttpClient$a;->K(JLjava/util/concurrent/TimeUnit;)Ly2/OkHttpClient$a;

    invoke-virtual {v0}, Ly2/OkHttpClient$a;->a()Ly2/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->w:Ly2/OkHttpClient;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->t:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onStart()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->w:Ly2/OkHttpClient;

    invoke-virtual {v0, p1, p2}, Ly2/OkHttpClient;->A(Ly2/Request;Ly2/g0;)Ly2/f0;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->C:Z

    return p0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/common/utils/ILog;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

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

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIntoIdle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OkhttpWebSocket"

    invoke-interface {v2, v4, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->r:J

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

.method private d(Ljava/lang/String;)V
    .locals 5

    const-string v0, "audio"

    const-string v1, "OkhttpWebSocket"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "xxxx"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessage string text "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResult | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;)Lcom/vivo/speechsdk/module/net/websocket/d;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->s:Lcom/vivo/speechsdk/module/net/websocket/d;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->C:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

    invoke-interface {v0}, Ly2/f0;->cancel()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

    const/16 v1, 0x3ea

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ly2/f0;->close(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "OkhttpWebSocket"

    const-string v2, "OkhttpWebSocket cancel"

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized close(ILjava/lang/String;)Z
    .locals 4

    monitor-enter p0

    const/4 p2, 0x0

    :try_start_0
    iput-boolean p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->C:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;
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
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->x:Z

    const/16 v1, 0x3e9

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->y:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->d()V
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

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->x:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->s:Lcom/vivo/speechsdk/module/net/websocket/d;

    const-string v1, "session end"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/module/net/websocket/d;->onClosed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->t:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    const-string v1, "session end"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onClosed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->s:Lcom/vivo/speechsdk/module/net/websocket/d;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/module/net/websocket/d;->a(Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->d()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->s:Lcom/vivo/speechsdk/module/net/websocket/d;

    const-string v1, "not in pool"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/module/net/websocket/d;->onClosed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->t:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    const-string v1, "not in pool"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onClosed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->s:Lcom/vivo/speechsdk/module/net/websocket/d;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/module/net/websocket/d;->a(Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not in pool | destroy "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OkhttpWebSocket"

    invoke-interface {v0, v3, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->destroy()V

    :cond_5
    :goto_0
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "client call | destroy "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OkhttpWebSocket"

    invoke-interface {v0, v3, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->s:Lcom/vivo/speechsdk/module/net/websocket/d;

    const-string v1, "client call"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/module/net/websocket/d;->onClosed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->t:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    const-string v1, "client call"

    invoke-virtual {v0, p1, v1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onClosed(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->s:Lcom/vivo/speechsdk/module/net/websocket/d;

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/d;->a(Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_6
    monitor-exit p0

    return v2

    :cond_7
    :goto_1
    :try_start_4
    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

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

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OkhttpWebSocket"

    invoke-interface {p2, v0, p1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->destroy()V
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

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->w:Ly2/OkHttpClient;

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

    iget-object v3, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "destroy | state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OkhttpWebSocket"

    invoke-interface {v3, v5, v4}, Lcom/vivo/speechsdk/common/utils/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "socket --cancel-- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OkhttpWebSocket"

    invoke-interface {v1, v4, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

    invoke-interface {v1}, Ly2/f0;->cancel()V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->s:Lcom/vivo/speechsdk/module/net/websocket/d;

    const-string v3, "cancel "

    const/16 v4, 0x3eb

    invoke-virtual {v1, v4, v3}, Lcom/vivo/speechsdk/module/net/websocket/d;->onClosed(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->t:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    const-string v3, "cancel "

    invoke-virtual {v1, v4, v3}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onClosed(ILjava/lang/String;)V

    :cond_1
    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->v:Lcom/vivo/speechsdk/module/net/websocket/f;

    invoke-virtual {v0, p0}, Lcom/vivo/speechsdk/module/net/websocket/f;->c(Lcom/vivo/speechsdk/module/net/websocket/f$b;)V

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "OkhttpWebSocket"

    const-string v2, "socket close(1000, null) "

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ly2/f0;->close(ILjava/lang/String;)Z
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
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->s:Lcom/vivo/speechsdk/module/net/websocket/d;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/module/net/websocket/d;->a(Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V

    iget p2, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->u:Ly2/Request;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->u:Ly2/Request;

    invoke-virtual {v0}, Ly2/Request;->i()Ly2/w;

    move-result-object v0

    invoke-virtual {v0}, Ly2/w;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/utils/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->D:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "OkhttpWebSocket"

    invoke-interface {v0, v1, p2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->F:Ly2/g0;

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->a(Ly2/Request;Ly2/g0;)Ly2/f0;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

    goto/16 :goto_1

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect \u590d\u7528\u5df2\u7ecf\u6253\u5f00\u7684\u8fde\u63a5\uff0c\u56de\u8c03onOpen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OkhttpWebSocket"

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->setIntoUse()V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->t:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onStart()V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->t:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onOpen(Z)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->s:Lcom/vivo/speechsdk/module/net/websocket/d;

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/module/net/websocket/d;->onOpen(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Lcom/vivo/speechsdk/module/net/websocket/a;->checkState(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u6b63\u5728\u8fde\u63a5... "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OkhttpWebSocket"

    invoke-interface {p1, v0, p2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->t:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;->onStart()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not healthy conn ... "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OkhttpWebSocket"

    invoke-interface {p1, v0, p2}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->D:I

    return v0
.end method

.method public idleAtTime()J
    .locals 2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->r:J

    return-wide v0
.end method

.method public isAvailable(Landroid/net/Uri;)Z
    .locals 12

    const-string v0, ""

    const-string v1, "-ali"

    const-string v2, "OkhttpWebSocket"

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->u:Ly2/Request;

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

    iget-object v7, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

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

    iget-object v9, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    const/4 v11, 0x7

    aput-object v9, v8, v11

    invoke-static {v8}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->z:Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;

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
    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->isIdle()Z

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

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

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
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized realClose()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ly2/f0;->close(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Ly2/Request;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->u:Ly2/Request;

    return-object v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

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
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

    invoke-interface {v0, p1}, Ly2/f0;->send(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public send([B)Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

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
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->q:Ly2/f0;

    invoke-static {p1}, Lm3/h;->m([B)Lm3/h;

    move-result-object p1

    invoke-interface {v0, p1}, Ly2/f0;->send(Lm3/h;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized setIntoUse()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->r:J

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/a;->a(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->E:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIntoUse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OkhttpWebSocket"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->t:Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;

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
    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/net/websocket/OkhttpWebSocket;->C:Z
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
