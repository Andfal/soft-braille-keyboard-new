.class public Lcom/vivo/speechsdk/module/api/asr/SessionTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;
    }
.end annotation


# static fields
.field public static final EVENT_START_CONNECT:I = 0x3e8

.field public static final STEP_0_START:I = 0x0

.field public static final STEP_1_PARAMS:I = 0x1

.field public static final STEP_2_RECORD:I = 0x2

.field public static final STEP_3_VAD_START:I = 0x3

.field public static final STEP_4_VAD_CHECK:I = 0x4

.field public static final STEP_5_CONNECTED:I = 0x5

.field public static final STEP_6_SEND:I = 0x6

.field public static final STEP_7_SERVER:I = 0x7

.field public static final STEP_8_RECEIVE:I = 0x8

.field public static final STEP_9_CALLBACK:I = 0x9

.field private static final c:I = 0x3a98

.field private static final d:I = 0x3e7f

.field private static e:Lcom/vivo/speechsdk/module/api/asr/SessionTracker;


# instance fields
.field private a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->b:Z

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->b:Z

    return-void
.end method

.method public static getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->e:Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->e:Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->e:Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

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
    sget-object v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->e:Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized error(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mErrorCode:I

    if-nez v0, :cond_2

    const/16 v0, 0x3a98

    if-lt p1, v0, :cond_1

    const/16 v0, 0x3e7f

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    const/4 v1, 0x4

    iput v1, v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mStep:I

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    iput p1, v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mErrorCode:I

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->submit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized submit()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mSubmitted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mSubmitted:Z

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v1, "Tracker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    const-string v3, "Net"

    invoke-virtual {v1, v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/api/net/INetFactory;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/api/net/INetFactory;->createNetworkState()Lcom/vivo/speechsdk/module/api/net/INetworkState;

    move-result-object v2

    :cond_2
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->b:Z

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    iget v3, v3, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mStep:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "step"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    iget v3, v3, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mDur:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dur"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    iget v3, v3, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mReuse:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "reuse"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "net"

    if-nez v2, :cond_3

    const/4 v2, 0x6

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Lcom/vivo/speechsdk/module/api/net/INetworkState;->getNetWorkClass()I

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    iget v2, v2, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mErrorCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "errcode"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->upload(ILjava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized track(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->track(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized track(II)V
    .locals 6

    monitor-enter p0

    if-nez p1, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mSubmitted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->submit()V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;-><init>(Lcom/vivo/speechsdk/module/api/asr/SessionTracker;Lcom/vivo/speechsdk/module/api/asr/SessionTracker$1;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_4

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mStartConnectTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    iget-wide v4, v4, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mStartConnectTime:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    iput v3, v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mDur:I

    iget-object v0, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    iput p2, v0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mReuse:I

    :cond_5
    iget-object p2, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    iget p2, p2, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mStep:I

    if-gt p2, v1, :cond_6

    if-ge p1, v1, :cond_6

    iget-object p2, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    :goto_2
    iput p1, p2, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mStep:I

    goto :goto_3

    :cond_6
    iget-object p2, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    iget p2, p2, Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;->mStep:I

    if-le p1, p2, :cond_7

    iget-object p2, p0, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->a:Lcom/vivo/speechsdk/module/api/asr/SessionTracker$TrackerInfo;

    goto :goto_2

    :cond_7
    :goto_3
    const/16 p2, 0x9

    if-ne p1, p2, :cond_8

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->submit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
