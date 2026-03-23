.class public Lcom/vivo/speechsdk/module/session/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "Tracker"

.field private static final d:I = 0xea60

.field private static e:Lcom/vivo/speechsdk/module/session/f/a;


# instance fields
.field private final a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

.field private b:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v1, "Tracker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getService(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/session/f/a;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    return-void
.end method

.method public static a()Lcom/vivo/speechsdk/module/session/f/a;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/module/session/f/a;->e:Lcom/vivo/speechsdk/module/session/f/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/module/session/f/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/module/session/f/a;->e:Lcom/vivo/speechsdk/module/session/f/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/module/session/f/a;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/session/f/a;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/module/session/f/a;->e:Lcom/vivo/speechsdk/module/session/f/a;

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
    sget-object v0, Lcom/vivo/speechsdk/module/session/f/a;->e:Lcom/vivo/speechsdk/module/session/f/a;

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const-wide/32 v0, 0xea60

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(ILcom/vivo/speechsdk/module/api/session/EngineInfo;)V
    .locals 4

    iget-object p1, p0, Lcom/vivo/speechsdk/module/session/f/a;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/vivo/speechsdk/module/session/f/a;->b:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget v0, p2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->ent:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ent"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->initEndTime:J

    iget-wide v2, p2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->initStartTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "init_dur"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mdName:Ljava/lang/String;

    const-string v1, "md_name"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mdVersion:Ljava/lang/String;

    const-string v1, "md_v"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->bizName:Ljava/lang/String;

    const-string v1, "biz_name"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->errorCode:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "errcode"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/session/f/a;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    const/4 v0, 0x5

    invoke-interface {p2, v0, p1}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->upload(ILjava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILcom/vivo/speechsdk/module/session/d/a;)V
    .locals 11

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/f/a;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/session/f/a;->b:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p2, Lcom/vivo/speechsdk/module/session/d/a;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    if-nez v0, :cond_1

    const-string p1, "Tracker"

    const-string p2, "EngineInfo is Null !!! "

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0xa

    const/16 v1, 0xb

    const-string v2, "sid"

    const-string v3, "key_request_id"

    if-ne p1, v0, :cond_11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget v4, v4, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->ent:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ent"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->a:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "req_id"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget-object v4, v4, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mdName:Ljava/lang/String;

    const-string v5, "md_name"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget-object v4, v4, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mdVersion:Ljava/lang/String;

    const-string v5, "md_v"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget v4, v4, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->ent:I

    const/4 v5, 0x3

    const-string v6, "asr_mode"

    if-eq v4, v5, :cond_3

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->a:Landroid/os/Bundle;

    const-string v5, "key_request_mode"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_1

    :cond_3
    :goto_0
    iget v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->E:I

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->j:J

    iget-wide v6, p2, Lcom/vivo/speechsdk/module/session/d/a;->d:J

    sub-long/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/vivo/speechsdk/module/session/f/a;->a(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "all_dur"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->f:J

    iget-wide v6, p2, Lcom/vivo/speechsdk/module/session/d/a;->e:J

    sub-long/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/vivo/speechsdk/module/session/f/a;->a(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "speech_dur"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->k:J

    iget-wide v6, p2, Lcom/vivo/speechsdk/module/session/d/a;->e:J

    sub-long/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/vivo/speechsdk/module/session/f/a;->a(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fir_txt_dur"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->h:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    :goto_2
    iget-wide v8, p2, Lcom/vivo/speechsdk/module/session/d/a;->l:J

    sub-long/2addr v8, v4

    goto :goto_3

    :cond_4
    iget-wide v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->m:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_5

    goto :goto_2

    :cond_5
    iget-wide v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->i:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_6

    goto :goto_2

    :cond_6
    move-wide v8, v6

    :goto_3
    invoke-direct {p0, v8, v9}, Lcom/vivo/speechsdk/module/session/f/a;->a(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "las_txt_dur"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->o:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_7

    iget-wide v8, p2, Lcom/vivo/speechsdk/module/session/d/a;->n:J

    sub-long/2addr v4, v8

    goto :goto_4

    :cond_7
    move-wide v4, v6

    :goto_4
    iget-wide v8, p2, Lcom/vivo/speechsdk/module/session/d/a;->m:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_b

    iget v6, p2, Lcom/vivo/speechsdk/module/session/d/a;->u:I

    if-eq v6, v1, :cond_a

    const/16 v7, 0x16

    if-eq v6, v7, :cond_9

    const/16 v7, 0x17

    if-eq v6, v7, :cond_8

    const-string v6, ""

    goto :goto_5

    :cond_8
    const-string v6, "user_destroy"

    goto :goto_5

    :cond_9
    const-string v6, "user_cancel"

    goto :goto_5

    :cond_a
    const-string v6, "user_stop"

    goto :goto_5

    :cond_b
    iget v8, p2, Lcom/vivo/speechsdk/module/session/d/a;->q:I

    if-eqz v8, :cond_d

    iget-wide v8, p2, Lcom/vivo/speechsdk/module/session/d/a;->n:J

    cmp-long v10, v8, v6

    if-nez v10, :cond_d

    iget v6, p2, Lcom/vivo/speechsdk/module/session/d/a;->r:I

    if-eqz v6, :cond_c

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_c
    const-string v6, "error"

    goto :goto_5

    :cond_d
    iget v8, p2, Lcom/vivo/speechsdk/module/session/d/a;->t:I

    if-eqz v8, :cond_e

    const-string v6, "cloud_vad"

    goto :goto_5

    :cond_e
    iget-wide v8, p2, Lcom/vivo/speechsdk/module/session/d/a;->h:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_f

    const-string v6, "local_vad"

    goto :goto_5

    :cond_f
    iget-boolean v6, p2, Lcom/vivo/speechsdk/module/session/d/a;->D:Z

    if-eqz v6, :cond_10

    const-string v6, "last_result"

    goto :goto_5

    :cond_10
    const-string v6, "other"

    :goto_5
    const-string v7, "end_reason"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Lcom/vivo/speechsdk/module/session/f/a;->a(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "nlu_dur"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget-object v4, v4, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->bizName:Ljava/lang/String;

    const-string v5, "biz_name"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->s:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "reuse_conn"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget-object v4, v4, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mPkg:Ljava/lang/String;

    const-string v5, "pkg"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->v:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->q:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "errcode"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->F:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mic"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p2, Lcom/vivo/speechsdk/module/session/d/a;->a:Landroid/os/Bundle;

    const-string v5, "key_denoise"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "denoise"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/session/f/a;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    const/4 v5, 0x6

    invoke-interface {v4, v5, v0}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->upload(ILjava/util/Map;)V

    :cond_11
    iget-object v0, p2, Lcom/vivo/speechsdk/module/session/d/a;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget v0, v0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->ent:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_12

    const/4 v0, 0x7

    if-ne p1, v0, :cond_12

    iget-object p1, p2, Lcom/vivo/speechsdk/module/session/d/a;->v:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_12

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p2, Lcom/vivo/speechsdk/module/session/d/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "requestId"

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lcom/vivo/speechsdk/module/session/d/a;->v:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/session/f/a;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    invoke-interface {p2, v1, p1}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->upload(ILjava/util/Map;)V

    :cond_12
    :goto_6
    return-void
.end method

.method public a(ILcom/vivo/speechsdk/module/session/d/b;)V
    .locals 10

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/f/a;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/session/f/a;->b:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v0, 0xa

    const-string v1, "sid"

    if-ne p1, v0, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget v2, v2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->ent:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ent"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget-object v2, v2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->engine_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "en_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->a:Lcom/vivo/speechsdk/module/api/session/SessionInfo;

    iget-object v2, v2, Lcom/vivo/speechsdk/module/api/session/SessionInfo;->mRequestId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "req_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->i:J

    invoke-direct {p0, v2, v3}, Lcom/vivo/speechsdk/module/session/f/a;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stuck_time"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget-object v2, v2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mdName:Ljava/lang/String;

    const-string v3, "md_name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget-object v2, v2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mdVersion:Ljava/lang/String;

    const-string v3, "md_v"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->f:J

    iget-wide v4, p2, Lcom/vivo/speechsdk/module/session/d/b;->c:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/vivo/speechsdk/module/session/f/a;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "all_dur"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->e:J

    iget-wide v4, p2, Lcom/vivo/speechsdk/module/session/d/b;->d:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/vivo/speechsdk/module/session/f/a;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "play_dur"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->g:J

    iget-wide v4, p2, Lcom/vivo/speechsdk/module/session/d/b;->c:J

    sub-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lcom/vivo/speechsdk/module/session/f/a;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fir_byte_dur"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->k:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    const-string v2, "user_stop"

    goto :goto_0

    :cond_1
    iget v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->m:I

    if-eqz v2, :cond_3

    iget v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->n:I

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, "error"

    goto :goto_0

    :cond_3
    iget-wide v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->e:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    const-string v2, "play_end"

    goto :goto_0

    :cond_4
    const-string v2, "other"

    :goto_0
    const-string v3, "end_reason"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget-object v2, v2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->bizName:Ljava/lang/String;

    const-string v3, "biz_name"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget-object v2, v2, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->mPkg:Ljava/lang/String;

    const-string v3, "pkg"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->a:Lcom/vivo/speechsdk/module/api/session/SessionInfo;

    iget-object v2, v2, Lcom/vivo/speechsdk/module/api/session/SessionInfo;->mSpeaker:Ljava/lang/String;

    const-string v3, "spk"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->r:Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    if-eqz v2, :cond_7

    iget-wide v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->j:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    move-wide v2, v4

    goto :goto_1

    :cond_5
    iget-wide v6, p2, Lcom/vivo/speechsdk/module/session/d/b;->c:J

    sub-long/2addr v2, v6

    :goto_1
    cmp-long v6, v2, v4

    if-lez v6, :cond_6

    iget v4, p2, Lcom/vivo/speechsdk/module/session/d/b;->t:I

    if-ltz v4, :cond_6

    long-to-double v2, v2

    int-to-double v4, v4

    iget v6, p2, Lcom/vivo/speechsdk/module/session/d/b;->u:I

    mul-int/lit8 v6, v6, 0x2

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double v6, v6, v8

    div-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v6

    div-double/2addr v2, v4

    goto :goto_2

    :cond_6
    const-wide/16 v2, 0x0

    :goto_2
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string v2, "%.2f"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rtf"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->o:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "reuse_conn"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p2, Lcom/vivo/speechsdk/module/session/d/b;->m:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "errcode"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/session/f/a;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    const/16 v3, 0x8

    invoke-interface {v2, v3, v0}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->upload(ILjava/util/Map;)V

    :cond_8
    iget-object v0, p2, Lcom/vivo/speechsdk/module/session/d/b;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget v0, v0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->ent:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_9

    const/4 v0, 0x7

    if-ne p1, v0, :cond_9

    iget-object p1, p2, Lcom/vivo/speechsdk/module/session/d/b;->p:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "requestId"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lcom/vivo/speechsdk/module/session/d/b;->p:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/session/f/a;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    const/16 v0, 0xc

    invoke-interface {p2, v0, p1}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->upload(ILjava/util/Map;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public a(Lcom/vivo/speechsdk/module/api/session/HotwordInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/f/a;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/session/f/a;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p1, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->engineName:Ljava/lang/String;

    const-string v2, "ent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->mMessage:Ljava/lang/String;

    const-string v2, "end_reason"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p1, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->mError:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errcode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->mStrMaxLength:Ljava/lang/String;

    const-string v2, "hw_ml"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;->mOutstripLimitedNum:Ljava/lang/String;

    const-string v1, "hw_ill_cn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/vivo/speechsdk/module/session/f/a;->a:Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;

    const/4 v1, 0x7

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/tracker/IDataTracker;->upload(ILjava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/session/f/a;->b:Z

    return-void
.end method
