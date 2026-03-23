.class public Lcom/baidu/speech/core/BDSCoreJniInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;


# static fields
.field private static s_sdkInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/speech/core/BDSCoreJniInterface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private m_observer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/baidu/speech/core/BDSSDKLoader$BDSCoreEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_sdkHandle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/baidu/speech/core/BDSCoreJniInterface;->s_sdkInstances:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native EchoMessage(Lcom/baidu/speech/core/BDSMessage;Ljava/lang/String;)V
.end method

.method private native Post(Lcom/baidu/speech/core/BDSMessage;Ljava/lang/String;)I
.end method

.method private native ReleaseInstance(Ljava/lang/String;)V
.end method

.method private static addInstance(Ljava/lang/String;Lcom/baidu/speech/core/BDSCoreJniInterface;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sget-object p1, Lcom/baidu/speech/core/BDSCoreJniInterface;->s_sdkInstances:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_0
    sget-object v1, Lcom/baidu/speech/core/BDSCoreJniInterface;->s_sdkInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static findInstance(Ljava/lang/String;)Lcom/baidu/speech/core/BDSCoreJniInterface;
    .locals 2

    sget-object v0, Lcom/baidu/speech/core/BDSCoreJniInterface;->s_sdkInstances:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/speech/core/BDSCoreJniInterface;->s_sdkInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/speech/core/BDSCoreJniInterface;

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/baidu/speech/core/BDSCoreJniInterface;->removeInstance(Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getNewSDK(Ljava/lang/String;)Lcom/baidu/speech/core/BDSCoreJniInterface;
    .locals 1

    invoke-static {p0}, Lcom/baidu/speech/core/BDSCoreJniInterface;->initCoreSDK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/baidu/speech/core/BDSCoreJniInterface;

    invoke-direct {v0}, Lcom/baidu/speech/core/BDSCoreJniInterface;-><init>()V

    iput-object p0, v0, Lcom/baidu/speech/core/BDSCoreJniInterface;->m_sdkHandle:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/baidu/speech/core/BDSCoreJniInterface;->addInstance(Ljava/lang/String;Lcom/baidu/speech/core/BDSCoreJniInterface;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static native initCoreSDK(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static receiveCoreEvent(Ljava/lang/String;Lcom/baidu/speech/core/BDSMessage;)V
    .locals 3

    invoke-static {p0}, Lcom/baidu/speech/core/BDSCoreJniInterface;->findInstance(Ljava/lang/String;)Lcom/baidu/speech/core/BDSCoreJniInterface;

    move-result-object v0

    const-string v1, "core event"

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/baidu/speech/core/BDSCoreJniInterface;->m_observer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/speech/core/BDSSDKLoader$BDSCoreEventListener;

    if-eqz v2, :cond_0

    invoke-interface {v2, p1, v0}, Lcom/baidu/speech/core/BDSSDKLoader$BDSCoreEventListener;->receiveCoreEvent(Lcom/baidu/speech/core/BDSMessage;Lcom/baidu/speech/core/BDSSDKLoader$BDSSDKInterface;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Listener is null for instance id "

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find instance for id "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static removeInstance(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/baidu/speech/core/BDSCoreJniInterface;->s_sdkInstances:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/baidu/speech/core/BDSCoreJniInterface;->s_sdkInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public EchoMessage(Lcom/baidu/speech/core/BDSMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/core/BDSCoreJniInterface;->m_sdkHandle:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/baidu/speech/core/BDSCoreJniInterface;->EchoMessage(Lcom/baidu/speech/core/BDSMessage;Ljava/lang/String;)V

    return-void
.end method

.method public instanceInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/core/BDSCoreJniInterface;->m_sdkHandle:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public postMessage(Lcom/baidu/speech/core/BDSMessage;)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/core/BDSCoreJniInterface;->m_sdkHandle:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/baidu/speech/core/BDSCoreJniInterface;->Post(Lcom/baidu/speech/core/BDSMessage;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/speech/core/BDSCoreJniInterface;->instanceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/speech/core/BDSCoreJniInterface;->m_sdkHandle:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/speech/core/BDSCoreJniInterface;->ReleaseInstance(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/speech/core/BDSCoreJniInterface;->m_sdkHandle:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/speech/core/BDSCoreJniInterface;->removeInstance(Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/baidu/speech/core/BDSSDKLoader$BDSCoreEventListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/speech/core/BDSCoreJniInterface;->m_observer:Ljava/lang/ref/WeakReference;

    return-void
.end method
