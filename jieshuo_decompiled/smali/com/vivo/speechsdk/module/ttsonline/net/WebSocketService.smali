.class public Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEF_CONNECT_TIMEOUT:I = 0x1388

.field private static final EVENT:I = 0x6a

.field private static final EVENT_CLOSED:I = 0x67

.field private static final EVENT_CLOSING:I = 0x66

.field private static final EVENT_ERROR:I = 0x68

.field private static final EVENT_LOW_QUALITY:I = 0x69

.field private static final EVENT_MSG:I = 0x65

.field public static final EVENT_NET_INFO:I = 0x6b

.field private static final EVENT_OPEN:I = 0x64

.field public static final FALSE_CLOSE:I = 0x65

.field public static final FALSE_CLOSE2:I = 0x66

.field public static final MONITOR_DEF_CONN_TIMEOUT:I = 0x7d0

.field public static final MONITOR_DEF_TTS_TIMEOUT:I = 0x1388

.field public static final STATUS_DESTORY:I = 0x5

.field public static final STATUS_HAND_SHAKE:I = 0x1

.field public static final STATUS_NOT_YET_CONNECTED:I = 0x0

.field public static final STATUS_OPEN:I = 0x2

.field public static final STATUS_STOP:I = 0x4

.field public static final STATUS_TRANSMIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TtsWsService"

.field public static final TRUE_CLOSE:I = 0x64


# instance fields
.field private mCacheEnable:Z

.field private mCallback:Landroid/os/Handler$Callback;

.field private final mHandler:Landroid/os/Handler;

.field private mHostSelector:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

.field private mInitBundle:Landroid/os/Bundle;

.field private mListener:Lcom/vivo/speechsdk/module/ttsonline/SocketListener;

.field private final mNetFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

.field private mNetMonitor:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

.field private mQualityListener:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

.field private mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

.field private mSocketListener:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

.field private mStartBundle:Landroid/os/Bundle;

.field private volatile mStatus:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mCacheEnable:Z

    new-instance v0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$1;-><init>(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mCallback:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$2;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$2;-><init>(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mQualityListener:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    new-instance v0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$3;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService$3;-><init>(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocketListener:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mHandler:Landroid/os/Handler;

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

    iput-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mNetFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->getDnsFinder()Lcom/vivo/speechsdk/module/api/net/IDnsFinder;

    move-result-object p2

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/DeviceUtils;->isOversea()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/vivo/speechsdk/module/ttsonline/net/OverSeaHostSelector;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/ttsonline/net/OverSeaHostSelector;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mHostSelector:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lcom/vivo/speechsdk/module/ttsonline/net/NewAuthHostSelector;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/ttsonline/net/NewAuthHostSelector;-><init>()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/vivo/speechsdk/module/ttsonline/net/OldAuthHostSelector;

    invoke-direct {p1}, Lcom/vivo/speechsdk/module/ttsonline/net/OldAuthHostSelector;-><init>()V

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mHostSelector:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/net/IHostSelector;->defaultHost()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/vivo/speechsdk/module/api/net/IDnsFinder;->find(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->onOpen()V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Lcom/vivo/speechsdk/module/ttsonline/SocketListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mListener:Lcom/vivo/speechsdk/module/ttsonline/SocketListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->onMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    return p0
.end method

.method static synthetic access$400(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->toLog(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->getErrorString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private falseClose()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    if-eqz v0, :cond_0

    const-string v0, "TtsWsService"

    const-string v1, "falseClose "

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    const/16 v1, 0x3e9

    const-string v2, "session end"

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->close(ILjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private getDetailMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

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

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "error_msg"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    :catch_0
    return-object v1
.end method

.method private getErrorString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->getDetailMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method private getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mListener:Lcom/vivo/speechsdk/module/ttsonline/SocketListener;

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/ttsonline/SocketListener;->onError(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->destroy()V

    return-void
.end method

.method private onMessage(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mListener:Lcom/vivo/speechsdk/module/ttsonline/SocketListener;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/ttsonline/SocketListener;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized onOpen()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->setStatus(I)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->sendStartProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->setStatus(I)V

    :cond_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->sendStartProtocol()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->sendEndProtocol()V
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

.method private sendData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->send(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private sendEndProtocol()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStartBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v0, "TtsWsService"

    const-string v1, "sendEndProtocol "

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    const-string v1, "{\"ctl\":{\"stop\":1}}"

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->send(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private sendStartProtocol()Z
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStartBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v0, "TtsWsService"

    const-string v1, "sendStartProtocol"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStartBundle:Landroid/os/Bundle;

    const-string v1, "key_text"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStartBundle:Landroid/os/Bundle;

    invoke-static {v2, v0}, Lcom/vivo/speechsdk/module/ttsonline/net/Protocol;->getStartTtsParams(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->send(Ljava/lang/String;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private declared-synchronized setStatus(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatus from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TtsWsService"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I
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

.method private toLog(Ljava/lang/Object;)Ljava/lang/String;
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

.method private trueClose()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    if-eqz v0, :cond_0

    const-string v0, "TtsWsService"

    const-string v1, "trueClose "

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    const/16 v1, 0x3ea

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->close(ILjava/lang/String;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->trueClose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStartBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->setStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStatus()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/ttsonline/SocketListener;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mNetFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mInitBundle:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mListener:Lcom/vivo/speechsdk/module/ttsonline/SocketListener;

    const/4 p2, 0x1

    iput p2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mInitBundle:Landroid/os/Bundle;

    const-string v1, "key_new_authentication_enable"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mInitBundle:Landroid/os/Bundle;

    const-string v2, "key_net_monitor_enable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mInitBundle:Landroid/os/Bundle;

    const-string v4, "key_engine_hash_code"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iget-object v5, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mNetFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    new-instance v6, Lcom/vivo/speechsdk/module/ttsonline/net/ConnectionPolicy;

    invoke-direct {v6}, Lcom/vivo/speechsdk/module/ttsonline/net/ConnectionPolicy;-><init>()V

    iget-object v7, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mHostSelector:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    const/4 v9, 0x2

    goto :goto_0

    :cond_1
    const/4 v9, 0x1

    :goto_0
    invoke-interface/range {v5 .. v10}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->createWebSocket(Lcom/vivo/speechsdk/module/api/net/IConnectionPolicy;Lcom/vivo/speechsdk/module/api/net/IHostSelector;Landroid/os/Looper;II)Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mInitBundle:Landroid/os/Bundle;

    const-string v4, "key_connection_resue_enable"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mCacheEnable:Z

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mInitBundle:Landroid/os/Bundle;

    const-string v4, "key_did"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "key_vaid"

    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_appid"

    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "key_token"

    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "key_openid"

    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    :goto_1
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    goto :goto_1

    :goto_2
    iget-object v8, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mInitBundle:Landroid/os/Bundle;

    iget-object v9, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mHostSelector:Lcom/vivo/speechsdk/module/api/net/IHostSelector;

    invoke-interface {v9}, Lcom/vivo/speechsdk/module/api/net/IHostSelector;->defaultUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7, v0, v3}, Lcom/vivo/speechsdk/module/ttsonline/net/Protocol;->url(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    invoke-direct {v9}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;-><init>()V

    invoke-virtual {v9, v8}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->url(Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->retryEnable(Z)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p2

    iget-object v9, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mInitBundle:Landroid/os/Bundle;

    const-string v10, "key_preload_enable"

    invoke-virtual {v9, v10, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-virtual {p2, v9}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->preload(Z)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p2

    iget-object v9, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mInitBundle:Landroid/os/Bundle;

    const-string v10, "key_ping_interval"

    invoke-virtual {v9, v10, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->pingInterval(I)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p2

    iget-boolean v3, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mCacheEnable:Z

    invoke-virtual {p2, v3}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->cacheEnable(Z)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    move-result-object p2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mInitBundle:Landroid/os/Bundle;

    invoke-static {v8}, Lcom/vivo/speechsdk/common/utils/StringUtils;->getUrlQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "/tts"

    invoke-static {v0, v8, v3, v7}, Lcom/vivo/speechsdk/module/ttsonline/net/Protocol;->generateAuthHeaders(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p2, v7, v8}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    goto :goto_3

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "imei"

    invoke-virtual {p2, v0, v2}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "vaid"

    invoke-virtual {p2, v0, v4}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "appid"

    invoke-virtual {p2, v0, v5}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "token"

    invoke-virtual {p2, v0, v6}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "openid"

    invoke-virtual {p2, v0, p1}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/vivo/speechsdk/module/api/net/Req$Builder;

    :cond_8
    if-eqz v1, :cond_9

    const-string p1, "TtsWsService"

    const-string v0, "engine mode Monitor register NetQualityListener"

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mNetFactory:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->getNetMonitor()Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mNetMonitor:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/module/api/net/INetMonitor;->register(Lcom/vivo/speechsdk/module/api/net/IWebSocket;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mNetMonitor:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mQualityListener:Lcom/vivo/speechsdk/module/api/net/NetQualityListener;

    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/module/api/net/INetMonitor;->setListener(Lcom/vivo/speechsdk/module/api/net/NetQualityListener;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mInitBundle:Landroid/os/Bundle;

    const-string v0, "key_connect_time_out"

    const/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mNetMonitor:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    new-instance v1, Lcom/vivo/speechsdk/module/ttsonline/net/TtsDetectPolicy;

    const/16 v2, 0x1388

    invoke-direct {v1, v2, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/TtsDetectPolicy;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/api/net/INetMonitor;->setPolicy(Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;)V

    :cond_9
    invoke-virtual {p2}, Lcom/vivo/speechsdk/module/api/net/Req$Builder;->build()Lcom/vivo/speechsdk/module/api/net/Req;

    move-result-object p1

    iget-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocketListener:Lcom/vivo/speechsdk/module/api/net/WebSocketListener;

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

.method public declared-synchronized isDestory()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

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

.method public isInit()Z
    .locals 3

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public declared-synchronized start(Landroid/os/Bundle;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mSocket:Lcom/vivo/speechsdk/module/api/net/IWebSocket;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/IWebSocket;->start()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mNetMonitor:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    if-eqz v0, :cond_1

    const-string v0, "key_tts_time_out"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mInitBundle:Landroid/os/Bundle;

    const-string v2, "key_connect_time_out"

    const/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mNetMonitor:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    new-instance v3, Lcom/vivo/speechsdk/module/ttsonline/net/TtsDetectPolicy;

    invoke-direct {v3, v0, v1}, Lcom/vivo/speechsdk/module/ttsonline/net/TtsDetectPolicy;-><init>(II)V

    invoke-interface {v2, v3}, Lcom/vivo/speechsdk/module/api/net/INetMonitor;->setPolicy(Lcom/vivo/speechsdk/module/api/net/INetDetectPolicy;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mNetMonitor:Lcom/vivo/speechsdk/module/api/net/INetMonitor;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/net/INetMonitor;->monitorStart()V

    :cond_1
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    :cond_2
    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStartBundle:Landroid/os/Bundle;

    :cond_3
    iget p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->sendStartProtocol()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->setStatus(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->trueClose()V

    :cond_1
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->falseClose()V

    :cond_2
    iget v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStatus:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const/16 v0, 0x66

    if-eq p1, v0, :cond_3

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->sendEndProtocol()V

    :cond_3
    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->setStatus(I)V

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mCacheEnable:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x64

    if-eq p1, v0, :cond_4

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->falseClose()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->trueClose()V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->mStartBundle:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
