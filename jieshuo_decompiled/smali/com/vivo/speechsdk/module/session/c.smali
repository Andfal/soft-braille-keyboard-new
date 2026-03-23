.class public Lcom/vivo/speechsdk/module/session/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/session/ISessionCollect;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final e:Ljava/lang/String; = "VADSessionManager"

.field private static f:Lcom/vivo/speechsdk/module/session/c;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/vivo/speechsdk/module/session/e/c;

.field private c:Lcom/vivo/speechsdk/module/api/session/SessionListener;

.field private d:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/c;->c:Lcom/vivo/speechsdk/module/api/session/SessionListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/api/session/SessionListener;->onSessionFinished(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static b()Lcom/vivo/speechsdk/module/session/c;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/module/session/c;->f:Lcom/vivo/speechsdk/module/session/c;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/module/session/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/module/session/c;->f:Lcom/vivo/speechsdk/module/session/c;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/module/session/c;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/session/c;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/module/session/c;->f:Lcom/vivo/speechsdk/module/session/c;

    monitor-exit v0

    return-object v1

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
    sget-object v0, Lcom/vivo/speechsdk/module/session/c;->f:Lcom/vivo/speechsdk/module/session/c;

    return-object v0
.end method


# virtual methods
.method public event(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/c;->a:Landroid/os/Handler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/module/session/c;->handleMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/c;->b:Lcom/vivo/speechsdk/module/session/e/c;

    if-eqz v0, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v5, p0, Lcom/vivo/speechsdk/module/session/c;->d:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v5}, Lcom/vivo/speechsdk/module/session/e/c;->a(IIILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroid/os/Bundle;Landroid/os/Looper;)V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/session/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    new-instance p2, Lcom/vivo/speechsdk/module/session/e/c;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result v0

    invoke-direct {p2, v1, v0}, Lcom/vivo/speechsdk/module/session/e/c;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/vivo/speechsdk/module/session/c;->b:Lcom/vivo/speechsdk/module/session/e/c;

    :cond_1
    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/c;->d:Landroid/os/Bundle;

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "VADSessionManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/c;->b:Lcom/vivo/speechsdk/module/session/e/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/session/e/c;->a()V

    :cond_0
    return-void
.end method

.method public setSessionListener(Lcom/vivo/speechsdk/module/api/session/SessionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/c;->c:Lcom/vivo/speechsdk/module/api/session/SessionListener;

    return-void
.end method
