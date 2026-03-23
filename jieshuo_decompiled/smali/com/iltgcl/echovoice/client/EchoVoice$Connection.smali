.class Lcom/iltgcl/echovoice/client/EchoVoice$Connection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iltgcl/echovoice/client/EchoVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mEstablished:Z

.field private mOnSetupConnectionAsyncTask:Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;

.field private mService:Lcom/iltgcl/echovoice/client/IEchoVoiceService;

.field final synthetic this$0:Lcom/iltgcl/echovoice/client/EchoVoice;


# direct methods
.method private constructor <init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V
    .locals 1

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$1;

    invoke-direct {v0, p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$1;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;Lcom/iltgcl/echovoice/client/EchoVoice;)V

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mCallback:Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$2;

    invoke-direct {v0, p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$2;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;Lcom/iltgcl/echovoice/client/EchoVoice;)V

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method synthetic constructor <init>(Lcom/iltgcl/echovoice/client/EchoVoice;Lcom/iltgcl/echovoice/client/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;
    .locals 0

    iget-object p0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mCallback:Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;
    .locals 0

    iget-object p0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mOnSetupConnectionAsyncTask:Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;

    return-object p0
.end method

.method private clearServiceConnection()Z
    .locals 4

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->e(Lcom/iltgcl/echovoice/client/EchoVoice;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mOnSetupConnectionAsyncTask:Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v2

    iput-object v3, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mOnSetupConnectionAsyncTask:Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;

    :cond_0
    iput-object v3, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mService:Lcom/iltgcl/echovoice/client/IEchoVoiceService;

    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v1}, Lcom/iltgcl/echovoice/client/EchoVoice;->d(Lcom/iltgcl/echovoice/client/EchoVoice;)Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v1, v3}, Lcom/iltgcl/echovoice/client/EchoVoice;->h(Lcom/iltgcl/echovoice/client/EchoVoice;Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)V

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static bridge synthetic d(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)Lcom/iltgcl/echovoice/client/IEchoVoiceService;
    .locals 0

    iget-object p0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mService:Lcom/iltgcl/echovoice/client/IEchoVoiceService;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mEstablished:Z

    return-void
.end method

.method static bridge synthetic f(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;)V
    .locals 0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mOnSetupConnectionAsyncTask:Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;

    return-void
.end method

.method static bridge synthetic g(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)Z
    .locals 0

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->clearServiceConnection()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->a(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->clearServiceConnection()Z

    return-void
.end method

.method public getCallerIdentity()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mCallback:Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;

    return-object v0
.end method

.method public isEstablished()Z
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mService:Lcom/iltgcl/echovoice/client/IEchoVoiceService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mEstablished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iltgcl/echovoice/client/EchoVoice;->g(Lcom/iltgcl/echovoice/client/EchoVoice;Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)V

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mOnSetupConnectionAsyncTask:Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-static {p2}, Lcom/iltgcl/echovoice/client/IEchoVoiceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iltgcl/echovoice/client/IEchoVoiceService;

    move-result-object v0

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mService:Lcom/iltgcl/echovoice/client/IEchoVoiceService;

    :try_start_0
    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p2, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {p2, p0}, Lcom/iltgcl/echovoice/client/EchoVoice;->h(Lcom/iltgcl/echovoice/client/EchoVoice;Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)V

    iput-boolean v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mEstablished:Z

    new-instance p2, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;

    invoke-direct {p2, p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;Landroid/content/ComponentName;)V

    iput-object p2, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mOnSetupConnectionAsyncTask:Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->clearServiceConnection()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->i(Lcom/iltgcl/echovoice/client/EchoVoice;I)V

    :cond_0
    return-void
.end method

.method public runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/iltgcl/echovoice/client/EchoVoice$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            "ZZ)TR;"
        }
    .end annotation

    iget-object p3, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {p3}, Lcom/iltgcl/echovoice/client/EchoVoice;->e(Lcom/iltgcl/echovoice/client/EchoVoice;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mService:Lcom/iltgcl/echovoice/client/IEchoVoiceService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p2

    :cond_0
    if-eqz p5, :cond_1

    :try_start_2
    invoke-virtual {p0}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->isEstablished()Z

    move-result p5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p5, :cond_1

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object p2

    :cond_1
    :try_start_4
    iget-object p5, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->mService:Lcom/iltgcl/echovoice/client/IEchoVoiceService;

    invoke-interface {p1, p5}, Lcom/iltgcl/echovoice/client/EchoVoice$Action;->run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit p3

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    nop

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->disconnect()V

    iget-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {p1}, Lcom/iltgcl/echovoice/client/EchoVoice;->l(Lcom/iltgcl/echovoice/client/EchoVoice;)I

    :cond_2
    monitor-exit p3

    return-object p2

    :goto_0
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method
