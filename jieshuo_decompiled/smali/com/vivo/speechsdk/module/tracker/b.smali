.class public Lcom/vivo/speechsdk/module/tracker/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/tracker/b$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "DataTracker"

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static e:I


# instance fields
.field private a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/vivo/speechsdk/module/tracker/b;
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/tracker/b$a;->a()Lcom/vivo/speechsdk/module/tracker/b;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/vivo/speechsdk/module/tracker/b;->e:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/tracker/b;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    instance-of v0, v0, Lcom/vivo/speechsdk/module/tracker/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/speechsdk/module/tracker/e;->e:Landroid/util/SparseArray;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    sget-object v0, Lcom/vivo/speechsdk/module/tracker/c;->g:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/vivo/speechsdk/module/tracker/d;->f:Landroid/util/SparseArray;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "DataTracker"

    :try_start_0
    invoke-static {}, Lcom/vivo/speechsdk/module/tracker/c;->a()Lcom/vivo/speechsdk/module/tracker/c;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/vivo/speechsdk/module/tracker/c;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ipc tracker proxy init success"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/speechsdk/module/tracker/c;->a()Lcom/vivo/speechsdk/module/tracker/c;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/tracker/b;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    const-string p2, "Ipc VCode error "

    invoke-static {v0, p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "DataTracker"

    :try_start_0
    invoke-static {}, Lcom/vivo/speechsdk/module/tracker/e;->a()Lcom/vivo/speechsdk/module/tracker/e;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/vivo/speechsdk/module/tracker/e;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "VCode init success"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/speechsdk/module/tracker/e;->a()Lcom/vivo/speechsdk/module/tracker/e;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/tracker/b;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    const-string p2, "VCode error "

    invoke-static {v0, p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "DataTracker"

    :try_start_0
    invoke-static {}, Lcom/vivo/speechsdk/module/tracker/d;->a()Lcom/vivo/speechsdk/module/tracker/d;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/vivo/speechsdk/module/tracker/d;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "xinyun tracker sdk init success"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/speechsdk/module/tracker/d;->a()Lcom/vivo/speechsdk/module/tracker/d;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/tracker/b;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    const/4 p1, 0x1

    sput p1, Lcom/vivo/speechsdk/module/tracker/b;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    const-string p2, "Tracker error "

    invoke-static {v0, p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "key_track_channel_priority"

    invoke-virtual {v0, v2, v1}, Lcom/vivo/speechsdk/b/c;->a(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/speechsdk/module/tracker/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/speechsdk/module/tracker/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/speechsdk/module/tracker/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/speechsdk/module/tracker/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_3
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/speechsdk/module/tracker/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTrackerEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/tracker/b;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->setTrackerEnable(Z)V

    :cond_0
    return-void
.end method

.method public upload(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/tracker/b;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/module/tracker/b;->upload(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public upload(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/vivo/speechsdk/module/tracker/b;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/tracker/b;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->upload(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
