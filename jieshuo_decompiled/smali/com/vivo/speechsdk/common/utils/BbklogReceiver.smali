.class public Lcom/vivo/speechsdk/common/utils/BbklogReceiver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BBKLOG_ACTION:Ljava/lang/String; = "android.vivo.bbklog.action.CHANGED"

.field public static final LOG_CTRL:Ljava/lang/String; = "persist.sys.log.ctrl"

.field private static final TAG:Ljava/lang/String; = "BbklogReceiver"

.field private static sInstance:Lcom/vivo/speechsdk/common/utils/BbklogReceiver;


# instance fields
.field private volatile isBbklogOn:Z

.field private volatile isInit:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->isBbklogOn:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->isInit:Z

    new-instance v0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver$1;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/common/utils/BbklogReceiver$1;-><init>(Lcom/vivo/speechsdk/common/utils/BbklogReceiver;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/vivo/speechsdk/common/utils/BbklogReceiver;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->isBbklogOn:Z

    return p1
.end method

.method public static getInstance()Lcom/vivo/speechsdk/common/utils/BbklogReceiver;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->sInstance:Lcom/vivo/speechsdk/common/utils/BbklogReceiver;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->sInstance:Lcom/vivo/speechsdk/common/utils/BbklogReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;

    invoke-direct {v1}, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->sInstance:Lcom/vivo/speechsdk/common/utils/BbklogReceiver;

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
    sget-object v0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->sInstance:Lcom/vivo/speechsdk/common/utils/BbklogReceiver;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->isInit:Z

    const-string p1, "persist.sys.log.ctrl"

    const-string v0, "unknown"

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/SystemPropertiesUtil;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "yes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->isBbklogOn:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bbkLog init isBbklogOn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->isBbklogOn:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BbklogReceiver"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.vivo.bbklog.action.CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isBbklogOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->isBbklogOn:Z

    return v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->isInit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->isInit:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->isBbklogOn:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/common/utils/BbklogReceiver;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
