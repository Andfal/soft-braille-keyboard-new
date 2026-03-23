.class Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iltgcl/echovoice/client/EchoVoice$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupConnectionAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mName:Landroid/content/ComponentName;

.field final synthetic this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;


# direct methods
.method public constructor <init>(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->mName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 3

    iget-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    iget-object p1, p1, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {p1}, Lcom/iltgcl/echovoice/client/EchoVoice;->e(Lcom/iltgcl/echovoice/client/EchoVoice;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->d(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)Lcom/iltgcl/echovoice/client/IEchoVoiceService;

    move-result-object v0

    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    invoke-virtual {v1}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    invoke-static {v2}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->a(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/iltgcl/echovoice/client/IEchoVoiceService;->setCallback(Landroid/os/IBinder;Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    iget-object v0, v0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->e(Lcom/iltgcl/echovoice/client/EchoVoice;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    invoke-static {v1}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->c(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->f(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;)V

    :cond_0
    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->e(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;Z)V

    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    iget-object v1, v1, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v1, p1}, Lcom/iltgcl/echovoice/client/EchoVoice;->i(Lcom/iltgcl/echovoice/client/EchoVoice;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$SetupConnectionAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
