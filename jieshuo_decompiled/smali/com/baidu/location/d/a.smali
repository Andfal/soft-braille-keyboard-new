.class public Lcom/baidu/location/d/a;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/location/LLSInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/d/a$a;
    }
.end annotation


# static fields
.field static a:Lcom/baidu/location/d/a$a;

.field public static c:J

.field private static g:J


# instance fields
.field b:Landroid/os/Messenger;

.field private d:Landroid/os/Looper;

.field private e:Landroid/os/HandlerThread;

.field private f:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/d/a;->b:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/baidu/location/d/a;->d:Landroid/os/Looper;

    iput-object v0, p0, Lcom/baidu/location/d/a;->e:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/d/a;->f:Z

    iput v0, p0, Lcom/baidu/location/d/a;->h:I

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/d/a;)I
    .locals 0

    iget p0, p0, Lcom/baidu/location/d/a;->h:I

    return p0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/baidu/location/a/a;->a()Lcom/baidu/location/a/a;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/f;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/a/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/baidu/location/e/b;->a()Lcom/baidu/location/e/b;

    :try_start_0
    invoke-static {}, Lcom/baidu/location/b/x;->a()Lcom/baidu/location/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/x;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/h;->b()V

    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->b()V

    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/b;->b()V

    invoke-static {}, Lcom/baidu/location/b/l;->c()Lcom/baidu/location/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/l;->d()V

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/i;->c()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/d/a;->h:I

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service register ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/a;->a(Landroid/os/Message;)V

    invoke-static {}, Lcom/baidu/location/e/k;->b()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/baidu/location/b/o;->b()Lcom/baidu/location/b/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/location/b/o;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/baidu/location/d/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/d/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/baidu/location/c/e;->a()Lcom/baidu/location/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/e;->e()V

    invoke-static {}, Lcom/baidu/location/c/i;->a()Lcom/baidu/location/c/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/i;->d()V

    invoke-static {}, Lcom/baidu/location/b/x;->a()Lcom/baidu/location/b/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/x;->f()V

    invoke-static {}, Lcom/baidu/location/c/b;->a()Lcom/baidu/location/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/b;->c()V

    invoke-static {}, Lcom/baidu/location/b/l;->c()Lcom/baidu/location/b/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/l;->e()V

    invoke-static {}, Lcom/baidu/location/b/h;->a()Lcom/baidu/location/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/h;->c()V

    invoke-static {}, Lcom/baidu/location/b/w;->d()V

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/a;->b()V

    invoke-static {}, Lcom/baidu/location/b/v;->a()Lcom/baidu/location/b/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/b/v;->d()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/location/d/a;->h:I

    const-string v0, "baidu_location_service"

    const-string v1, "baidu location service has stoped ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/location/d/a;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void
.end method

.method private b(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/a;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/d/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/d/a;->b()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/location/d/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/d/a;->b(Landroid/os/Message;)V

    return-void
.end method

.method private c(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lcom/baidu/location/b/a;->a()Lcom/baidu/location/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/location/b/a;->c(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/d/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/d/a;->a()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/location/d/a;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/d/a;->c(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public getVersion()D
    .locals 2

    const-wide v0, 0x401fb851e0000000L    # 7.929999828338623

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/e/b;->h:Ljava/lang/String;

    const-string v0, "sign"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/location/e/b;->g:Ljava/lang/String;

    const-string v0, "kill_process"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/location/d/a;->f:Z

    const-string v0, "cache_exception"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    :cond_0
    iget-object p1, p0, Lcom/baidu/location/d/a;->b:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/location/e/k;->ax:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/location/d/a;->g:J

    invoke-static {}, Lcom/baidu/location/b/u;->a()Landroid/os/HandlerThread;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/d/a;->e:Landroid/os/HandlerThread;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/location/d/a;->d:Landroid/os/Looper;

    :cond_0
    iget-object p1, p0, Lcom/baidu/location/d/a;->d:Landroid/os/Looper;

    if-nez p1, :cond_1

    new-instance p1, Lcom/baidu/location/d/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/baidu/location/d/a$a;-><init>(Landroid/os/Looper;Lcom/baidu/location/d/a;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/baidu/location/d/a$a;

    iget-object v0, p0, Lcom/baidu/location/d/a;->d:Landroid/os/Looper;

    invoke-direct {p1, v0, p0}, Lcom/baidu/location/d/a$a;-><init>(Landroid/os/Looper;Lcom/baidu/location/d/a;)V

    :goto_1
    sput-object p1, Lcom/baidu/location/d/a;->a:Lcom/baidu/location/d/a$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/location/d/a;->c:J

    new-instance p1, Landroid/os/Messenger;

    sget-object v0, Lcom/baidu/location/d/a;->a:Lcom/baidu/location/d/a$a;

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/baidu/location/d/a;->b:Landroid/os/Messenger;

    sget-object p1, Lcom/baidu/location/d/a;->a:Lcom/baidu/location/d/a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p1, 0x1

    iput p1, p0, Lcom/baidu/location/d/a;->h:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "baidu location service start1 ...20190725..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "baidu_location_service"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 6

    const-string v0, "baidu_location_service"

    :try_start_0
    sget-object v1, Lcom/baidu/location/d/a;->a:Lcom/baidu/location/d/a$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "baidu location service stop exception..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/baidu/location/d/a;->b()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    :goto_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/baidu/location/d/a;->h:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/baidu/location/d/b;

    invoke-direct {v3, p0, v2}, Lcom/baidu/location/d/b;-><init>(Lcom/baidu/location/d/a;Ljava/lang/ref/WeakReference;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "baidu location service stop ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    const-string p1, "baidu_location_service"

    const-string v0, "baidu location service remove task..."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnBind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
