.class Lcom/vivo/speechsdk/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/a/e;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object p1, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/a/e;->e()V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/e;->b(Lcom/vivo/speechsdk/a/e;)I

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onServiceConnected | "

    aput-object v1, p1, v0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/e;->c(Lcom/vivo/speechsdk/a/e;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const/4 v0, 0x2

    const-string v2, " count = "

    aput-object v2, p1, v0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/e;->a(Lcom/vivo/speechsdk/a/e;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServiceKeeper"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/e;->d(Lcom/vivo/speechsdk/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {p2}, Lcom/vivo/speechsdk/a/b$a;->a(Landroid/os/IBinder;)Lcom/vivo/speechsdk/a/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/a/e;->a(Lcom/vivo/speechsdk/a/e;Lcom/vivo/speechsdk/a/b;)Lcom/vivo/speechsdk/a/b;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {p2}, Lcom/vivo/speechsdk/a/e;->f(Lcom/vivo/speechsdk/a/e;)Lcom/vivo/speechsdk/a/b;

    move-result-object p2

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string v0, "key_client_sender"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    :try_start_0
    iget-object p2, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {p2}, Lcom/vivo/speechsdk/a/e;->e(Lcom/vivo/speechsdk/a/e;)Lcom/vivo/speechsdk/a/b;

    move-result-object p2

    const/16 v0, 0xa

    invoke-interface {p2, v0, p1}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object p1, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/e;->g(Lcom/vivo/speechsdk/a/e;)Lcom/vivo/speechsdk/a/e$b;

    move-result-object p1

    iget-object p2, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {p2}, Lcom/vivo/speechsdk/a/e;->e(Lcom/vivo/speechsdk/a/e;)Lcom/vivo/speechsdk/a/b;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/vivo/speechsdk/a/e$b;->a(Lcom/vivo/speechsdk/a/b;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 7

    iget-object p1, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/a/e;->a(Lcom/vivo/speechsdk/a/e;Lcom/vivo/speechsdk/a/b;)Lcom/vivo/speechsdk/a/b;

    iget-object p1, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/e;->h(Lcom/vivo/speechsdk/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/16 v1, 0xb

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    iget-object v2, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {v2}, Lcom/vivo/speechsdk/a/e;->h(Lcom/vivo/speechsdk/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {v2}, Lcom/vivo/speechsdk/a/e;->d(Lcom/vivo/speechsdk/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {v2}, Lcom/vivo/speechsdk/a/e;->g(Lcom/vivo/speechsdk/a/e;)Lcom/vivo/speechsdk/a/e$b;

    move-result-object v2

    invoke-interface {v2}, Lcom/vivo/speechsdk/a/e$b;->b()V

    iget-object v2, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {v2}, Lcom/vivo/speechsdk/a/e;->j(Lcom/vivo/speechsdk/a/e;)I

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "onServiceDisconnected | retry="

    aput-object v4, v2, v3

    iget-object v4, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {v4}, Lcom/vivo/speechsdk/a/e;->k(Lcom/vivo/speechsdk/a/e;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const/4 v4, 0x2

    const-string v6, " retryFrom="

    aput-object v6, v2, v4

    if-ne p1, v1, :cond_1

    const-string v1, "KEEP"

    goto :goto_1

    :cond_1
    const-string v1, "INIT"

    :goto_1
    const/4 v4, 0x3

    aput-object v1, v2, v4

    const/4 v1, 0x4

    const-string v4, " hashcode="

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/e;->c(Lcom/vivo/speechsdk/a/e;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v2, v4

    const/4 v1, 0x6

    const-string v4, " count="

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/e;->i(Lcom/vivo/speechsdk/a/e;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ServiceKeeper"

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/e;->k(Lcom/vivo/speechsdk/a/e;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/e;->l(Lcom/vivo/speechsdk/a/e;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/e$a;->a:Lcom/vivo/speechsdk/a/e;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/e;->l(Lcom/vivo/speechsdk/a/e;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v5, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method
