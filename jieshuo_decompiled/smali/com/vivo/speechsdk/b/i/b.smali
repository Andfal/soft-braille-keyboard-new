.class public Lcom/vivo/speechsdk/b/i/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Ljava/lang/String; = "SdkToolClient"

.field private static final f:Ljava/lang/String; = "com.vivo.speechsdk.tools"

.field private static final g:Ljava/lang/String; = "com.vivo.intent.action.SPEECHSDK_TOOLS"

.field private static final h:Ljava/lang/String; = "com.vivo.speechsdk.tools.service.SdkToolsService"

.field private static final i:Ljava/lang/String; = "call_package_name"

.field private static j:Lcom/vivo/speechsdk/b/i/b;


# instance fields
.field private a:Lcom/vivo/speechsdk/b/i/a;

.field private b:Landroid/content/Context;

.field private c:Lcom/vivo/speechsdk/b/i/d;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vivo/speechsdk/b/i/b$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/b/i/b$a;-><init>(Lcom/vivo/speechsdk/b/i/b;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/b/i/b;->d:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/b/i/b;Lcom/vivo/speechsdk/b/i/a;)Lcom/vivo/speechsdk/b/i/a;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/b/i/b;->a:Lcom/vivo/speechsdk/b/i/a;

    return-object p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/b/i/b;)Lcom/vivo/speechsdk/b/i/d;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/b/i/b;->c:Lcom/vivo/speechsdk/b/i/d;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/b/i/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Lcom/vivo/speechsdk/b/i/b;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/b/i/b;->j:Lcom/vivo/speechsdk/b/i/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/b/i/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/b/i/b;->j:Lcom/vivo/speechsdk/b/i/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/b/i/b;

    invoke-direct {v1}, Lcom/vivo/speechsdk/b/i/b;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/b/i/b;->j:Lcom/vivo/speechsdk/b/i/b;

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
    sget-object v0, Lcom/vivo/speechsdk/b/i/b;->j:Lcom/vivo/speechsdk/b/i/b;

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vivo/speechsdk/b/i/b;->a(III)V

    return-void
.end method

.method public a(III)V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vivo/speechsdk/b/i/b;->a(IIILjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(IIILandroid/os/Bundle;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/b/i/b;->a:Lcom/vivo/speechsdk/b/i/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/b/i/a;->a(IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object p1, Lcom/vivo/speechsdk/b/i/b;->e:Ljava/lang/String;

    const-string p2, "send remote info failed"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(IIILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/b/i/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_info_content"

    invoke-virtual {v0, v1, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vivo/speechsdk/b/i/b;->a(IIILandroid/os/Bundle;)V
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

.method public a(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/vivo/speechsdk/b/i/b;->a(IIILjava/lang/String;)V

    return-void
.end method

.method public a(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/vivo/speechsdk/b/i/b;->a(IIILandroid/os/Bundle;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/vivo/speechsdk/b/i/b;->a(IIILjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/vivo/speechsdk/b/i/d;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/vivo/speechsdk/b/i/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/vivo/speechsdk/b/i/b;->c:Lcom/vivo/speechsdk/b/i/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p2, p0, Lcom/vivo/speechsdk/b/i/b;->a:Lcom/vivo/speechsdk/b/i/a;

    if-nez p2, :cond_1

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.vivo.intent.action.SPEECHSDK_TOOLS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.vivo.speechsdk.tools"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "call_package_name"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.vivo.speechsdk.tools"

    const-string v2, "com.vivo.speechsdk.tools.service.SdkToolsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/vivo/speechsdk/b/i/b;->d:Landroid/content/ServiceConnection;

    const/16 v1, 0x40

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_4
    sget-object p1, Lcom/vivo/speechsdk/b/i/b;->e:Ljava/lang/String;

    const-string p2, "bind sdk tools failed"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/b/i/b;->a:Lcom/vivo/speechsdk/b/i/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/b/i/b;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/vivo/speechsdk/b/i/b;->a:Lcom/vivo/speechsdk/b/i/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/b/i/b;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/b/i/b;->a:Lcom/vivo/speechsdk/b/i/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v0, Lcom/vivo/speechsdk/b/i/b;->e:Ljava/lang/String;

    const-string v1, "unbind sdk tools failed"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
