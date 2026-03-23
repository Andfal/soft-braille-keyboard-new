.class public Lcom/vivo/speechsdk/module/asronline/i/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:I = 0x69

.field private static final B:I = 0x6a

.field public static final C:I = 0x6b

.field public static final D:I = 0x0

.field public static final E:I = 0x1

.field public static final F:I = 0x2

.field public static final G:I = 0x3

.field public static final H:I = 0x4

.field public static final I:I = 0x5

.field public static final J:I = 0x6

.field public static final K:I = 0x1388

.field public static final L:I = 0x7d0

.field private static final r:Ljava/lang/String; = "AsrWsService"

.field public static final s:I = 0x64

.field public static final t:I = 0x65

.field public static final u:I = 0x64

.field private static final v:I = 0x64

.field private static final w:I = 0x65

.field private static final x:I = 0x66

.field private static final y:I = 0x67

.field private static final z:I = 0x68


# instance fields
.field private volatile a:I

.field private final b:Lcom/vivo/speechsdk/module/api/net/INetFactory;

.field private c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

.field private d:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

.field private e:Landroid/os/Bundle;

.field private f:Landroid/os/Bundle;

.field private g:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "[B>;"
        }
    .end annotation
.end field

.field private final h:Landroid/os/Handler;

.field private i:Lcom/vivo/speechsdk/module/asronline/f;

.field private j:Z

.field private volatile k:J

.field private l:I

.field private m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

.field private n:Lcom/vivo/speechsdk/common/utils/ILog;

.field private o:Landroid/os/Handler$Callback;

.field private p:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

.field private q:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->j:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->k:J

    iput v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->l:I

    new-instance v0, Lcom/vivo/speechsdk/common/utils/Logger;

    invoke-direct {v0}, Lcom/vivo/speechsdk/common/utils/Logger;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v0, Lcom/vivo/speechsdk/module/asronline/i/g$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/asronline/i/g$a;-><init>(Lcom/vivo/speechsdk/module/asronline/i/g;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->o:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/vivo/speechsdk/module/asronline/i/g$b;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/asronline/i/g$b;-><init>(Lcom/vivo/speechsdk/module/asronline/i/g;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->p:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    new-instance v0, Lcom/vivo/speechsdk/module/asronline/i/g$c;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/asronline/i/g$c;-><init>(Lcom/vivo/speechsdk/module/asronline/i/g;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->q:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->o:Landroid/os/Handler$Callback;

    invoke-direct {v0, p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->h:Landroid/os/Handler;

    const-string p2, "key_new_authentication_enable"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p2

    const-string v0, "Net"

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object p2

    check-cast p2, Lcom/vivo/speechsdk/module/api/net/INetFactory;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->b:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->getDnsFinder()Lcom/vivo/speechsdk/module/api/net/IDnsFinder;

    move-result-object p2

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->isOversea()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/vivo/speechsdk/module/asronline/i/e;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/asronline/i/e;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lcom/vivo/speechsdk/module/asronline/i/c;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/asronline/i/c;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/vivo/speechsdk/module/asronline/i/d;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/asronline/i/d;-><init>()V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/net/IHostSelector;->defaultHost()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/vivo/speechsdk/module/api/net/IDnsFinder;->find(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/i/g;J)J
    .locals 0

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/i/g;)Lcom/vivo/speechsdk/module/asronline/f;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->i:Lcom/vivo/speechsdk/module/asronline/f;

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/i/g;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/i/g;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "message"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->m()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->i:Lcom/vivo/speechsdk/module/asronline/f;

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/asronline/f;->onError(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->b()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->i:Lcom/vivo/speechsdk/module/asronline/f;

    invoke-interface {p2, p1}, Lcom/vivo/speechsdk/module/asronline/f;->onClosed(I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/i/g;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/i/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsrWsService"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I
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

.method static synthetic b(Lcom/vivo/speechsdk/module/asronline/i/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->i()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->i:Lcom/vivo/speechsdk/module/asronline/f;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/asronline/f;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b([B)V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->l:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->send([B)Z

    :cond_0
    iget-wide v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->k:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->k:J

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->h:Landroid/os/Handler;

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/16 v2, 0x6a

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/asronline/i/g;)Lcom/vivo/speechsdk/common/utils/ILog;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/module/asronline/i/g;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "AsrWsService"

    const-string v2, "falseClose "

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    const/16 v1, 0x3e9

    const-string v2, "session end"

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->close(ILjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/vivo/speechsdk/module/asronline/i/g;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    return p0
.end method

.method private g()Z
    .locals 3

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private declared-synchronized i()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ASR WS doOpen | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsrWsService"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->b(I)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->b(I)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->j()V

    :cond_0
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->j()V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->k()V

    :cond_1
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private j()V
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->g:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f13\u5b58\u97f3\u9891\u961f\u5217\u5927\u5c0f size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->g:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsrWsService"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->g:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9001\u7f13\u5b58\u961f\u5217\u6570\u636e data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->b([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEndProtocol send to cloud frame count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsrWsService"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    const-string v1, "--end--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->send([B)Z

    :cond_0
    return-void
.end method

.method private l()Z
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->f:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "AsrWsService"

    const-string v2, "sendStartProtocol "

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->f:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/asronline/i/f;->d(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->send(Ljava/lang/String;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->d:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/api/net/INetMonitor;->unregister(Lcom/vivo/speechsdk/module/api/net/IWebSocket;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->d:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/INetMonitor;->monitorStop()V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "AsrWsService"

    const-string v2, "trueClose "

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    const/16 v1, 0x3ea

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->close(ILjava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->m()V

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->k()V

    :cond_1
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->j:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->d()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->n()V

    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->g:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->f:Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->m()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsrWsService"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->k()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->f:Landroid/os/Bundle;

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->j:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->d()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->n()V

    :goto_0
    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/asronline/f;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->b:Lcom/vivo/speechsdk/module/api/net/INetFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->e:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->i:Lcom/vivo/speechsdk/module/asronline/f;

    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->g:Ljava/util/concurrent/ConcurrentLinkedDeque;

    const/4 p2, 0x1

    iput p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->e:Landroid/os/Bundle;

    const-string v1, "key_connection_resue_enable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->j:Z

    const-string v0, "key_did"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_vaid"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_appid"

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_token"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_openid"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->e:Landroid/os/Bundle;

    const-string v7, "key_new_authentication_enable"

    invoke-virtual {v6, v7, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    :goto_0
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    goto :goto_0

    :goto_1
    iget-object v8, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->e:Landroid/os/Bundle;

    iget-object v9, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    invoke-interface {v9}, Lcom/vivo/speechsdk/module/api/net/IHostSelector;->defaultUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v7, v6, v9}, Lcom/vivo/speechsdk/module/asronline/i/f;->a(Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    invoke-direct {v9}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;-><init>()V

    invoke-virtual {v9, v8}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->url(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->retryEnable(Z)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v9

    iget-object v10, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->e:Landroid/os/Bundle;

    const-string v11, "key_ping_interval"

    invoke-virtual {v10, v11, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->pingInterval(I)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->j:Z

    invoke-virtual {v9, v10}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->cacheEnable(Z)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v9

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->e:Landroid/os/Bundle;

    invoke-static {v8}, Lcom/vivo/speechsdk/common/utils/StringUtils;->getUrlQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Lcom/vivo/speechsdk/module/asronline/i/f;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v8, v10}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    goto :goto_2

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "imei"

    invoke-virtual {v9, v6, v0}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "vaid"

    invoke-virtual {v9, v0, v1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "appid"

    invoke-virtual {v9, v0, v3}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "token"

    invoke-virtual {v9, v0, v4}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "openid"

    invoke-virtual {v9, v0, v5}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_7
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->e:Landroid/os/Bundle;

    const-string v1, "key_engine_mode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v0, 0x1

    :goto_4
    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->e:Landroid/os/Bundle;

    const-string v3, "key_net_monitor_enable"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "key_engine_hash_code"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/vivo/speechsdk/common/utils/LoggerManager;->getLogger(I)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->b:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    new-instance v4, Lcom/vivo/speechsdk/module/asronline/i/b;

    invoke-direct {v4}, Lcom/vivo/speechsdk/module/asronline/i/b;-><init>()V

    iget-object v5, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->m:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->h:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    if-nez v0, :cond_b

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    const/4 v7, 0x1

    goto :goto_6

    :cond_b
    :goto_5
    const/4 p2, 0x2

    const/4 v7, 0x2

    :goto_6
    invoke-interface/range {v3 .. v8}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->createWebSocket(Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;Lcom/vivo/speechsdk/module/api/net/IHostSelector;Landroid/os/Looper;II)Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    if-nez v0, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string p2, "AsrWsService"

    const-string v0, "engine mode MIXER register NetQualityListener"

    invoke-interface {p1, p2, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->b:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->getNetMonitor()Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->d:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    invoke-interface {p1, p2}, Lcom/vivo/speechsdk/module/api/net/INetMonitor;->register(Lcom/vivo/speechsdk/module/api/net/IWebSocket;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->d:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->p:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    invoke-interface {p1, p2}, Lcom/vivo/speechsdk/module/api/net/INetMonitor;->setListener(Lcom/vivo/speechsdk/module/api/net/NetQualityListener;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->e:Landroid/os/Bundle;

    const-string p2, "key_connect_time_out"

    const/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->d:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    new-instance v0, Lcom/vivo/speechsdk/module/asronline/i/a;

    const/16 v1, 0x1388

    invoke-direct {v0, v1, p1}, Lcom/vivo/speechsdk/module/asronline/i/a;-><init>(II)V

    invoke-interface {p2, v0}, Lcom/vivo/speechsdk/module/api/net/INetMonitor;->setPolicy(Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;)V

    :cond_d
    invoke-virtual {v9}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->build()Lcom/vivo/speechsdk/module/api/net/Req;

    move-result-object p1

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object p2

    const/16 v0, 0x3e8

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->track(I)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->q:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    invoke-interface {p2, p1, v0}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->connect(Lcom/vivo/speechsdk/module/api/net/Req;Lcom/vivo/speechsdk/module/api/net/WebSocketListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a([B)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/vivo/speechsdk/module/asronline/i/g;->b(I)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->j()V

    :goto_0
    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->b([B)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->g:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheing0 size | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->g:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsrWsService"

    :goto_1
    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->g:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheing1 size | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->g:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsrWsService"

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    if-ne v0, v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v0, "AsrWsService"

    const-string v1, "stopped drop data !!!"

    invoke-interface {p1, v0, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Landroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "key_hotword_content"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/i/f;->c(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->n:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHotwordProtocol "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AsrWsService"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->send(Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x6

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->m()V

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->k()V

    :cond_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->n()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->g:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->f:Landroid/os/Bundle;

    :cond_1
    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/asronline/i/g;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Landroid/os/Bundle;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->l:I

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->start()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->d:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    if-eqz v0, :cond_1

    const-string v0, "key_asr_time_out"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->e:Landroid/os/Bundle;

    const-string v2, "key_connect_time_out"

    const/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->d:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    new-instance v3, Lcom/vivo/speechsdk/module/asronline/i/a;

    invoke-direct {v3, v0, v1}, Lcom/vivo/speechsdk/module/asronline/i/a;-><init>(II)V

    invoke-interface {v2, v3}, Lcom/vivo/speechsdk/module/api/net/INetMonitor;->setPolicy(Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->d:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/INetMonitor;->monitorStart()V

    :cond_1
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    :cond_2
    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->f:Landroid/os/Bundle;

    :cond_3
    iget p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->l()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->m()V

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->n()V

    :cond_1
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->d()V

    :cond_2
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/i/g;->k()V

    :cond_3
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->b(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->f:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g;->c:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    if-eqz v0, :cond_0

    const-string v1, "keepalive"

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->ping(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
