.class Lcom/vivo/speechsdk/b/i/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/b/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/b/i/b;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/b/i/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/i/b$a;->a:Lcom/vivo/speechsdk/b/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/vivo/speechsdk/b/i/b$a;->a:Lcom/vivo/speechsdk/b/i/b;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/b/i/b$a;->a:Lcom/vivo/speechsdk/b/i/b;

    invoke-static {p2}, Lcom/vivo/speechsdk/b/i/a$a;->a(Landroid/os/IBinder;)Lcom/vivo/speechsdk/b/i/a;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/vivo/speechsdk/b/i/b;->a(Lcom/vivo/speechsdk/b/i/b;Lcom/vivo/speechsdk/b/i/a;)Lcom/vivo/speechsdk/b/i/a;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/vivo/speechsdk/b/i/b$a;->a:Lcom/vivo/speechsdk/b/i/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/b/i/b;->a(Lcom/vivo/speechsdk/b/i/b;)Lcom/vivo/speechsdk/b/i/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/b/i/b$a;->a:Lcom/vivo/speechsdk/b/i/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/b/i/b;->a(Lcom/vivo/speechsdk/b/i/b;)Lcom/vivo/speechsdk/b/i/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/b/i/d;->onConnected()V

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Sdk Tools Connected "

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcom/vivo/speechsdk/b/i/b$a;->a:Lcom/vivo/speechsdk/b/i/b;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/b/i/b$a;->a:Lcom/vivo/speechsdk/b/i/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/b/i/b;->a(Lcom/vivo/speechsdk/b/i/b;Lcom/vivo/speechsdk/b/i/a;)Lcom/vivo/speechsdk/b/i/a;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/vivo/speechsdk/b/i/b$a;->a:Lcom/vivo/speechsdk/b/i/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/b/i/b;->a(Lcom/vivo/speechsdk/b/i/b;)Lcom/vivo/speechsdk/b/i/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/b/i/b$a;->a:Lcom/vivo/speechsdk/b/i/b;

    invoke-static {p1}, Lcom/vivo/speechsdk/b/i/b;->a(Lcom/vivo/speechsdk/b/i/b;)Lcom/vivo/speechsdk/b/i/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/b/i/d;->onDisconnected()V

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sdk Tools Disconnected"

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
