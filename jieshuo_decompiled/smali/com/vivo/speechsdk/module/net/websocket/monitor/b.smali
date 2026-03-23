.class public Lcom/vivo/speechsdk/module/net/websocket/monitor/b;
.super Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/net/INetMonitor;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final i:Ljava/lang/String; = "WebSocketMonitor"

.field private static final j:I = 0x2710

.field private static final k:I = 0x2711

.field private static final l:I = 0x2712

.field private static final m:I = 0x2713

.field private static final n:I = 0x2714

.field private static final o:I = 0x2715

.field private static final p:I = 0x2716

.field private static final q:I = 0x2717

.field private static final r:I = 0x2718

.field private static final s:I = 0x2719

.field private static final t:I = 0x300

.field private static final u:I = 0xbb8

.field private static final v:I = 0xa

.field private static final w:I = 0xb

.field private static x:Lcom/vivo/speechsdk/module/net/websocket/monitor/b;


# instance fields
.field private volatile a:I

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private d:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

.field private e:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

.field private f:Lcom/vivo/speechsdk/module/net/websocket/h;

.field private g:I

.field private h:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->a:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NetQualityMonitor_Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    return-void
.end method

.method private a(I)Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->h()I

    move-result v1

    const-string v2, "key_network_type_name"

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->d()I

    move-result v1

    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->f()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "WIFI"

    :goto_0
    invoke-virtual {v0, v2, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    const-string v2, "key_signal_strength"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_reason"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static a()Lcom/vivo/speechsdk/module/net/websocket/monitor/b;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->x:Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->x:Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->x:Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

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
    sget-object v0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->x:Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x2718

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->h:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ping/pong | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " id = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebSocketMonitor"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->e:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    const/16 v0, 0x2719

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 0

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 2

    const/16 p1, 0x2718

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->h:J

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->e:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    const/16 p2, 0x2719

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->e:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->netQualityLow()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private b()V
    .locals 0

    return-void
.end method

.method private c()V
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->e:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    const/16 v1, 0x2719

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const/16 v2, 0x2718

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->e:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->messageInterval()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    const-class v0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    sput-object v1, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->x:Lcom/vivo/speechsdk/module/net/websocket/monitor/b;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->a:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->d:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Lcom/vivo/speechsdk/module/api/net/NetQualityListener;->low(I)V

    goto/16 :goto_3

    :pswitch_1
    invoke-static {}, Lcom/vivo/speechsdk/module/net/utils/d;->m()Z

    move-result p1

    if-eqz p1, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->f:Lcom/vivo/speechsdk/module/net/websocket/h;

    if-eqz p1, :cond_1

    const-string p1, "WebSocketMonitor"

    const-string v0, "msg time out then ping"

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->f:Lcom/vivo/speechsdk/module/net/websocket/h;

    const/16 v0, 0x2718

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/module/net/websocket/h;->ping(Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->d:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    if-eqz p1, :cond_5

    const/16 v0, 0x67

    goto :goto_1

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->a(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->a(ZLjava/lang/String;)V

    goto :goto_5

    :pswitch_4
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->b()V

    goto :goto_5

    :pswitch_5
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->d:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    if-eqz p1, :cond_5

    const/16 v0, 0x66

    :goto_1
    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/module/api/net/NetQualityListener;->low(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->d:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->a(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_4

    :pswitch_6
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c()V

    goto :goto_5

    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, v3}, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->a(Z)V

    goto :goto_5

    :pswitch_8
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->d:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    if-eqz p1, :cond_5

    const/16 v0, 0x64

    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/module/api/net/NetQualityListener;->low(I)V

    :goto_3
    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->d:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->a(I)Landroid/os/Bundle;

    move-result-object v0

    :goto_4
    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/module/api/net/NetQualityListener;->netInfo(Landroid/os/Bundle;)V

    :cond_5
    :goto_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public monitorStart()V
    .locals 4

    const/16 v0, 0xa

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->a:I

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->e:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->messageInterval()I

    move-result v0

    int-to-long v2, v0

    const/16 v0, 0x2718

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->d:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/net/utils/d;->a(Lcom/vivo/speechsdk/module/api/net/NetQualityListener;)V

    return-void
.end method

.method public monitorStop()V
    .locals 2

    const/16 v0, 0xb

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->a:I

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->e:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-static {v1}, Lcom/vivo/speechsdk/module/net/utils/d;->a(Lcom/vivo/speechsdk/module/api/net/NetQualityListener;)V

    return-void
.end method

.method public onClosed(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    const/16 p2, 0x2715

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onClosing(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    const/16 p2, 0x2714

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    const/16 p2, 0x2713

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onMessage(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    const/16 v0, 0x2712

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onMessage([B)V
    .locals 1

    iget-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    const/16 v0, 0x2712

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onOpen(Z)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    const/16 v1, 0x2711

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPing(ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    const/16 v1, 0x2716

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPong(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    const/16 v1, 0x2717

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->e:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->c:Landroid/os/Handler;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;->netConnTimeout()I

    move-result v0

    int-to-long v2, v0

    const/16 v0, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public querySize(J)V
    .locals 0

    return-void
.end method

.method public declared-synchronized register(Lcom/vivo/speechsdk/module/api/net/IWebSocket;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->g:I

    check-cast p1, Lcom/vivo/speechsdk/module/net/websocket/h;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->f:Lcom/vivo/speechsdk/module/net/websocket/h;

    invoke-virtual {p1, p0}, Lcom/vivo/speechsdk/module/net/websocket/h;->setEventListener(Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;)V
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

.method public setListener(Lcom/vivo/speechsdk/module/api/net/NetQualityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->d:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    return-void
.end method

.method public setPolicy(Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->e:Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;

    return-void
.end method

.method public declared-synchronized unregister(Lcom/vivo/speechsdk/module/api/net/IWebSocket;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->g:I

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->setEventListener(Lcom/vivo/speechsdk/module/api/net/WebSocketEventListener;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/net/websocket/monitor/b;->f:Lcom/vivo/speechsdk/module/net/websocket/h;
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
