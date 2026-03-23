.class public Lcom/vivo/speechsdk/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Landroid/os/Bundle;

.field private f:Landroid/os/Looper;

.field private g:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/b/c;->d:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/b/c;->e:Landroid/os/Bundle;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Work-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/b/c;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public a()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->f:Landroid/os/Looper;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/c;->a:Landroid/content/Context;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/c;->f:Landroid/os/Looper;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/c;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/b/c;->c:Z

    return-void
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/b/c;->d:Z

    return-void
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public d()Z
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->getInstance()Lcom/vivo/speechsdk/common/utils/BbklogReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->isBbklogOn()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/b/c;->c:Z

    return v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/b/c;->d:Z

    return v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/b/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    return-void
.end method

.method public h()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/c;->b:Ljava/lang/String;

    return-object v0
.end method
