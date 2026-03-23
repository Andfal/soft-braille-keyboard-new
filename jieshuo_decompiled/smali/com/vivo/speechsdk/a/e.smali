.class public Lcom/vivo/speechsdk/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/a/e$b;
    }
.end annotation


# static fields
.field private static final o:Ljava/lang/String; = "ServiceKeeper"

.field private static final p:I = 0x3

.field private static final q:I = 0x1

.field private static final r:I = 0x2

.field private static final s:I = 0xa

.field private static final t:I = 0xb

.field private static final u:[I

.field private static final v:[I


# instance fields
.field private a:Lcom/vivo/speechsdk/a/b;

.field private b:Lcom/vivo/speechsdk/a/b;

.field private volatile c:I

.field private volatile d:Z

.field private e:I

.field private f:I

.field private g:Landroid/os/Handler;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Lcom/vivo/speechsdk/a/e$b;

.field private k:Landroid/content/Intent;

.field private final l:Ljava/lang/Object;

.field private m:I

.field private n:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vivo/speechsdk/a/e;->u:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/vivo/speechsdk/a/e;->v:[I

    return-void

    :array_0
    .array-data 4
        0xc8
        0x1f4
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0xc8
        0x1f4
        0x3e8
        0x5dc
        0x7d0
        0x1388
        0x1f40
        0x2710
        0x7530
        0x493e0
    .end array-data
.end method

.method public constructor <init>(Lcom/vivo/speechsdk/a/e$b;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/a/e;->c:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vivo/speechsdk/a/e;->d:Z

    iput v0, p0, Lcom/vivo/speechsdk/a/e;->e:I

    iput v0, p0, Lcom/vivo/speechsdk/a/e;->f:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/vivo/speechsdk/a/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/vivo/speechsdk/a/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/e;->l:Ljava/lang/Object;

    new-instance v0, Lcom/vivo/speechsdk/a/e$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/a/e$a;-><init>(Lcom/vivo/speechsdk/a/e;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/e;->n:Landroid/content/ServiceConnection;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/a/e;->m:I

    iput-object p1, p0, Lcom/vivo/speechsdk/a/e;->j:Lcom/vivo/speechsdk/a/e$b;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/a/e;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/e;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/a/e;->e:I

    return p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/a/e;Lcom/vivo/speechsdk/a/b;)Lcom/vivo/speechsdk/a/b;
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/e;->a:Lcom/vivo/speechsdk/a/b;

    return-object p1
.end method

.method static synthetic b(Lcom/vivo/speechsdk/a/e;)I
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/a/e;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vivo/speechsdk/a/e;->e:I

    return v0
.end method

.method private b()Z
    .locals 6

    const-string v0, "bindService error "

    const-string v1, "ServiceKeeper"

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v2

    :try_start_0
    const-string v3, "realBind"

    invoke-static {v1, v3}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/vivo/speechsdk/a/e;->k:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "key_sdkinit_bundle"

    :try_start_1
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vivo/speechsdk/b/c;->c()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/vivo/speechsdk/a/e;->k:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/vivo/speechsdk/a/e;->k:Landroid/content/Intent;

    iget-object v4, p0, Lcom/vivo/speechsdk/a/e;->n:Landroid/content/ServiceConnection;

    const/16 v5, 0x40

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_0
    invoke-static {v1, v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/a/e;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/a/e;->m:I

    return p0
.end method

.method private c()V
    .locals 4

    const-string v0, "realUnBind"

    const-string v1, "ServiceKeeper"

    :try_start_0
    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/speechsdk/a/e;->n:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v3, p0, Lcom/vivo/speechsdk/a/e;->k:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v1, v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/vivo/speechsdk/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/a/e;)Lcom/vivo/speechsdk/a/b;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/e;->a:Lcom/vivo/speechsdk/a/b;

    return-object p0
.end method

.method static synthetic f(Lcom/vivo/speechsdk/a/e;)Lcom/vivo/speechsdk/a/b;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/e;->b:Lcom/vivo/speechsdk/a/b;

    return-object p0
.end method

.method static synthetic g(Lcom/vivo/speechsdk/a/e;)Lcom/vivo/speechsdk/a/e$b;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/e;->j:Lcom/vivo/speechsdk/a/e$b;

    return-object p0
.end method

.method static synthetic h(Lcom/vivo/speechsdk/a/e;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic i(Lcom/vivo/speechsdk/a/e;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/a/e;->f:I

    return p0
.end method

.method static synthetic j(Lcom/vivo/speechsdk/a/e;)I
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/a/e;->f:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vivo/speechsdk/a/e;->f:I

    return v0
.end method

.method static synthetic k(Lcom/vivo/speechsdk/a/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/a/e;->d:Z

    return p0
.end method

.method static synthetic l(Lcom/vivo/speechsdk/a/e;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/a/e;->g:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/vivo/speechsdk/a/b;)V
    .locals 4

    iput-object p1, p0, Lcom/vivo/speechsdk/a/e;->b:Lcom/vivo/speechsdk/a/b;

    invoke-virtual {p0}, Lcom/vivo/speechsdk/a/e;->a()Z

    move-result p1

    const-string v0, "ServiceKeeper"

    if-eqz p1, :cond_0

    const-string p1, "is connected, return"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "bind service "

    const/4 v2, 0x0

    aput-object v1, p1, v2

    iget v1, p0, Lcom/vivo/speechsdk/a/e;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, p1, v3

    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/vivo/speechsdk/a/e;->d:Z

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/e;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/a/e;->g:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-static {p1, v3, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/e;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 5

    invoke-virtual {p0}, Lcom/vivo/speechsdk/a/e;->a()Z

    move-result v0

    const-string v1, "ServiceKeeper"

    if-eqz v0, :cond_0

    const-string v0, "is connected, return"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "rebind service "

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget v2, p0, Lcom/vivo/speechsdk/a/e;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/vivo/speechsdk/a/e;->d:Z

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/e;->g:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-static {v0, v4, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public f()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "unbind service "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/vivo/speechsdk/a/e;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceKeeper"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/vivo/speechsdk/a/e;->d:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/a/e;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/e;->c()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/e;->d:Z

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/vivo/speechsdk/a/e;->b()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/vivo/speechsdk/a/e;->g:Landroid/os/Handler;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xa

    if-ne v0, v4, :cond_4

    sget-object v0, Lcom/vivo/speechsdk/a/e;->u:[I

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/vivo/speechsdk/a/e;->v:[I

    :goto_0
    iget-object v5, p0, Lcom/vivo/speechsdk/a/e;->l:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v6, p0, Lcom/vivo/speechsdk/a/e;->c:I

    array-length v7, v0

    if-lt v6, v7, :cond_5

    iput v2, p0, Lcom/vivo/speechsdk/a/e;->c:I

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_5

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/e;->c()V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/e;->j:Lcom/vivo/speechsdk/a/e$b;

    invoke-interface {p1}, Lcom/vivo/speechsdk/a/e$b;->a()V

    iput-boolean v2, p0, Lcom/vivo/speechsdk/a/e;->d:Z

    const-string p1, "ServiceKeeper"

    const-string v0, "onBindFailure 0 "

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    monitor-exit v5

    goto :goto_2

    :cond_5
    iget-boolean v4, p0, Lcom/vivo/speechsdk/a/e;->d:Z

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/vivo/speechsdk/a/e;->c:I

    aget v0, v0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, v0

    const-string v0, "ServiceKeeper"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "waitTime = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/vivo/speechsdk/a/e;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/vivo/speechsdk/a/e;->c:I

    iget-object v0, p0, Lcom/vivo/speechsdk/a/e;->g:Landroid/os/Handler;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_7
    :goto_2
    return v2

    :catchall_0
    move-exception p1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
