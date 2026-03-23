.class public Lcom/baidu/location/f;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static isServing:Z = false

.field public static isStartedServing:Z = false

.field public static mC:Landroid/content/Context; = null

.field public static replaceFileName:Ljava/lang/String; = "repll.jar"


# instance fields
.field a:Lcom/baidu/location/LLSInterface;

.field b:Lcom/baidu/location/LLSInterface;

.field c:Lcom/baidu/location/LLSInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/f;->a:Lcom/baidu/location/LLSInterface;

    iput-object v0, p0, Lcom/baidu/location/f;->b:Lcom/baidu/location/LLSInterface;

    iput-object v0, p0, Lcom/baidu/location/f;->c:Lcom/baidu/location/LLSInterface;

    return-void
.end method

.method private a(Ljava/io/File;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/e/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/grtcfrsa.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    new-array v3, v2, [B

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, "SHA-256"

    invoke-static {p1, v3}, Lcom/baidu/location/e/k;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCiP7BS5IjEOzrKGR9/Ww9oSDhdX1ir26VOsYjT1T6tk2XumRpkHRwZbrucDcNnvSB4QsqiEJnvTSRi7YMbh2H9sLMkcvHlMV5jAErNvnuskWfcvf7T2mq7EUZI/Hf4oVZhHV0hQJRFVdTcjWI6q2uaaKM3VMh+roDesiE7CR2biQIDAQAB"

    invoke-static {p1, v2, v3}, Lcom/baidu/location/e/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return v1
.end method

.method public static getFrameVersion()F
    .locals 1

    const v0, 0x40fdc28f    # 7.93f

    return v0
.end method

.method public static getJarFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "app.jar"

    return-object v0
.end method

.method public static getServiceContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/baidu/location/f;->mC:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->c:Lcom/baidu/location/LLSInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/baidu/location/LLSInterface;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 7

    const-string v0, "app.jar"

    sget-boolean v1, Lcom/baidu/location/f;->isServing:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "baidu location service can not start again ...20190306..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "baidu_location_service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/baidu/location/f;->mC:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance v1, Lcom/baidu/location/d/a;

    invoke-direct {v1}, Lcom/baidu/location/d/a;-><init>()V

    iput-object v1, p0, Lcom/baidu/location/f;->b:Lcom/baidu/location/LLSInterface;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/e/k;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/baidu/location/f;->replaceFileName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/e/k;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/e/k;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/baidu/location/f;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ldalvik/system/DexClassLoader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/location/e/k;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/e/k;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v0, v3, v1, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string v0, "com.baidu.serverLoc.LocationService"

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/LLSInterface;

    iput-object v0, p0, Lcom/baidu/location/f;->a:Lcom/baidu/location/LLSInterface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v1, p0, Lcom/baidu/location/f;->a:Lcom/baidu/location/LLSInterface;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/baidu/location/f;->a:Lcom/baidu/location/LLSInterface;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/baidu/location/LLSInterface;->getVersion()D

    move-result-wide v2

    iget-object v0, p0, Lcom/baidu/location/f;->b:Lcom/baidu/location/LLSInterface;

    invoke-interface {v0}, Lcom/baidu/location/LLSInterface;->getVersion()D

    move-result-wide v4

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/location/f;->a:Lcom/baidu/location/LLSInterface;

    iput-object v0, p0, Lcom/baidu/location/f;->c:Lcom/baidu/location/LLSInterface;

    iput-object v1, p0, Lcom/baidu/location/f;->b:Lcom/baidu/location/LLSInterface;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/baidu/location/f;->b:Lcom/baidu/location/LLSInterface;

    iput-object v0, p0, Lcom/baidu/location/f;->c:Lcom/baidu/location/LLSInterface;

    iput-object v1, p0, Lcom/baidu/location/f;->a:Lcom/baidu/location/LLSInterface;

    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/location/f;->isServing:Z

    iget-object v0, p0, Lcom/baidu/location/f;->c:Lcom/baidu/location/LLSInterface;

    invoke-interface {v0, p0}, Lcom/baidu/location/LLSInterface;->onCreate(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/location/f;->isServing:Z

    iget-object v0, p0, Lcom/baidu/location/f;->c:Lcom/baidu/location/LLSInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/baidu/location/LLSInterface;->onDestroy()V

    :cond_0
    sget-boolean v0, Lcom/baidu/location/f;->isStartedServing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "command"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    sput-boolean v2, Lcom/baidu/location/f;->isStartedServing:Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const-string v0, "removenotify"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    sput-boolean v1, Lcom/baidu/location/f;->isStartedServing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/location/f;->c:Lcom/baidu/location/LLSInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/location/LLSInterface;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/f;->c:Lcom/baidu/location/LLSInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/baidu/location/LLSInterface;->onTaskRemoved(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
