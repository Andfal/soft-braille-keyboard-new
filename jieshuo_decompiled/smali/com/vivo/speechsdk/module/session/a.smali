.class public Lcom/vivo/speechsdk/module/session/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/session/ISessionCollect;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final i:Ljava/lang/String; = "ASRSessionCollect"


# instance fields
.field private a:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

.field private b:Lcom/vivo/speechsdk/module/session/d/a;

.field private c:Landroid/os/Handler;

.field private d:Lcom/vivo/speechsdk/module/api/IParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/speechsdk/module/api/IParser<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/vivo/speechsdk/module/session/e/a;

.field private f:Lcom/vivo/speechsdk/module/api/session/SessionListener;

.field private g:Landroid/os/Bundle;

.field private final h:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/vivo/speechsdk/module/session/a;->h:I

    return-void
.end method

.method private a()V
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-wide v3, v1, Lcom/vivo/speechsdk/module/session/d/a;->k:J

    iget-wide v5, v1, Lcom/vivo/speechsdk/module/session/d/a;->g:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    const-string v3, "key_fir_txt_dur"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/session/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_end_reason"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v1, ""

    goto :goto_2

    :cond_2
    iget-object v1, v1, Lcom/vivo/speechsdk/module/session/d/a;->v:Ljava/lang/String;

    :goto_2
    const-string v2, "key_sid"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/session/a;->f:Lcom/vivo/speechsdk/module/api/session/SessionListener;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Lcom/vivo/speechsdk/module/api/session/SessionListener;->onSessionFinished(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->g:Landroid/os/Bundle;

    const-string v1, "key_engine_mode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ASROnline"

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/session/a;->d:Lcom/vivo/speechsdk/module/api/IParser;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/api/asr/IASRFactory;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/vivo/speechsdk/module/api/asr/IASRFactory;->getParser(I)Lcom/vivo/speechsdk/module/api/IParser;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/speechsdk/module/session/a;->d:Lcom/vivo/speechsdk/module/api/IParser;

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/module/session/a;->d:Lcom/vivo/speechsdk/module/api/IParser;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    const-string v3, "ASROffline"

    invoke-virtual {v1, v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/api/asr/IASRFactory;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Lcom/vivo/speechsdk/module/api/asr/IASRFactory;->getParser(I)Lcom/vivo/speechsdk/module/api/IParser;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/speechsdk/module/session/a;->d:Lcom/vivo/speechsdk/module/api/IParser;

    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/vivo/speechsdk/module/session/a;->d:Lcom/vivo/speechsdk/module/api/IParser;

    if-nez v1, :cond_3

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v1

    check-cast v1, Lcom/vivo/speechsdk/module/api/asr/IASRFactory;

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/vivo/speechsdk/module/api/asr/IASRFactory;->getParser(I)Lcom/vivo/speechsdk/module/api/IParser;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/a;->d:Lcom/vivo/speechsdk/module/api/IParser;

    :cond_3
    const/4 p1, 0x4

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lcom/vivo/speechsdk/module/session/a;->d:Lcom/vivo/speechsdk/module/api/IParser;

    if-nez p1, :cond_4

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    const-string v0, "Ym"

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/module/api/ym/YmFactory;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/ym/YmFactory;->getParser()Lcom/vivo/speechsdk/module/api/IParser;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/a;->d:Lcom/vivo/speechsdk/module/api/IParser;

    :cond_4
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    const-string v1, "other"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-wide v2, v0, Lcom/vivo/speechsdk/module/session/d/a;->m:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    iget v0, v0, Lcom/vivo/speechsdk/module/session/d/a;->u:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-eq v0, v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v1, "user_destroy"

    goto :goto_0

    :cond_2
    const-string v1, "user_cancel"

    goto :goto_0

    :cond_3
    const-string v1, "user_stop"

    goto :goto_0

    :cond_4
    iget v2, v0, Lcom/vivo/speechsdk/module/session/d/a;->q:I

    if-eqz v2, :cond_6

    iget-wide v2, v0, Lcom/vivo/speechsdk/module/session/d/a;->n:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_6

    iget v0, v0, Lcom/vivo/speechsdk/module/session/d/a;->r:I

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v1, "error"

    goto :goto_0

    :cond_6
    iget v2, v0, Lcom/vivo/speechsdk/module/session/d/a;->t:I

    if-eqz v2, :cond_7

    const-string v1, "cloud_vad"

    goto :goto_0

    :cond_7
    iget-wide v2, v0, Lcom/vivo/speechsdk/module/session/d/a;->h:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_8

    const-string v1, "local_vad"

    goto :goto_0

    :cond_8
    iget-boolean v0, v0, Lcom/vivo/speechsdk/module/session/d/a;->D:Z

    if-eqz v0, :cond_9

    const-string v1, "last_result"

    :cond_9
    :goto_0
    return-object v1
.end method

.method private d()V
    .locals 14

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    if-eqz v0, :cond_6

    iget-wide v1, v0, Lcom/vivo/speechsdk/module/session/d/a;->k:J

    iget-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->d:J

    sub-long/2addr v1, v3

    iget-wide v5, v0, Lcom/vivo/speechsdk/module/session/d/a;->h:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    :goto_0
    iget-wide v9, v0, Lcom/vivo/speechsdk/module/session/d/a;->l:J

    sub-long/2addr v9, v5

    goto :goto_1

    :cond_0
    iget-wide v5, v0, Lcom/vivo/speechsdk/module/session/d/a;->m:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v5, v0, Lcom/vivo/speechsdk/module/session/d/a;->i:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    move-wide v9, v7

    :goto_1
    const-wide/16 v5, -0x1

    cmp-long v11, v9, v7

    if-gtz v11, :cond_3

    move-wide v9, v5

    :cond_3
    iget-wide v11, v0, Lcom/vivo/speechsdk/module/session/d/a;->j:J

    sub-long/2addr v11, v3

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v13, "\n\u9996\u5b57\u54cd\u5e94\u65f6\u95f4\uff1a"

    aput-object v13, v3, v4

    cmp-long v4, v1, v7

    if-gez v4, :cond_4

    move-wide v1, v5

    :cond_4
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    const-string v2, "\n\u5c3e\u5b57\u54cd\u5e94\u65f6\u95f4\uff1a"

    aput-object v2, v3, v1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const/4 v1, 0x4

    const-string v2, "\nSID \uff1a"

    aput-object v2, v3, v1

    iget-object v1, v0, Lcom/vivo/speechsdk/module/session/d/a;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "NULL"

    goto :goto_2

    :cond_5
    iget-object v0, v0, Lcom/vivo/speechsdk/module/session/d/a;->v:Ljava/lang/String;

    :goto_2
    const/4 v1, 0x5

    aput-object v0, v3, v1

    const/4 v0, 0x6

    const-string v1, "\n\u603b\u65f6\u957f \uff1a"

    aput-object v1, v3, v0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x7

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRSessionCollect"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public c()Lcom/vivo/speechsdk/module/session/d/a;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    return-object v0
.end method

.method public event(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->c:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->c:Landroid/os/Handler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/module/session/a;->handleMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/a;->a:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    return v2

    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->a:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->errorCode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->initEndTime:J

    invoke-static {}, Lcom/vivo/speechsdk/module/session/f/a;->a()Lcom/vivo/speechsdk/module/session/f/a;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->a:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    invoke-virtual {p1, v1, v0}, Lcom/vivo/speechsdk/module/session/f/a;->a(ILcom/vivo/speechsdk/module/api/session/EngineInfo;)V

    return v2

    :cond_1
    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;

    invoke-static {}, Lcom/vivo/speechsdk/module/session/f/a;->a()Lcom/vivo/speechsdk/module/session/f/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/session/f/a;->a(Lcom/vivo/speechsdk/module/api/session/HotwordInfo;)V

    return v2

    :cond_2
    const/4 v3, 0x1

    if-nez v0, :cond_4

    new-instance v0, Lcom/vivo/speechsdk/module/session/d/a;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/session/d/a;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    iget-object v0, v0, Lcom/vivo/speechsdk/module/session/d/a;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    const-string v5, "key_request_mode"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v0, Lcom/vivo/speechsdk/module/session/d/a;->C:Z

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/vivo/speechsdk/module/session/a;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vivo/speechsdk/b/h/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/vivo/speechsdk/module/session/d/a;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vivo/speechsdk/module/session/d/a;->d:J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/session/a;->a:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iput-object v4, v0, Lcom/vivo/speechsdk/module/session/d/a;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    :cond_4
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    if-eqz v0, :cond_a

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/vivo/speechsdk/module/session/d/a;->F:I

    goto/16 :goto_4

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->m:J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    const/16 v1, 0x17

    goto :goto_1

    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->m:J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    const/16 v1, 0x16

    goto :goto_1

    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/vivo/speechsdk/module/session/d/a;->r:I

    goto/16 :goto_4

    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    if-eqz v1, :cond_5

    const-string v3, "key_switch_opportunity"

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/vivo/speechsdk/module/session/d/a;->E:I

    :cond_5
    :pswitch_6
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->g:J

    goto/16 :goto_4

    :pswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/vivo/speechsdk/module/api/session/HotwordInfo;

    iput-object v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->c:Lcom/vivo/speechsdk/module/api/session/HotwordInfo;

    invoke-static {}, Lcom/vivo/speechsdk/module/session/f/a;->a()Lcom/vivo/speechsdk/module/session/f/a;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    invoke-virtual {v0, v1, v3}, Lcom/vivo/speechsdk/module/session/f/a;->a(ILcom/vivo/speechsdk/module/session/d/a;)V

    goto/16 :goto_4

    :pswitch_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->p:J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/vivo/speechsdk/module/session/d/a;->s:I

    goto/16 :goto_4

    :pswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/vivo/speechsdk/module/session/d/a;->q:I

    goto/16 :goto_4

    :pswitch_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->o:J

    goto/16 :goto_4

    :pswitch_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->n:J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/vivo/speechsdk/module/session/d/a;->t:I

    goto/16 :goto_4

    :pswitch_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->m:J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    const/16 v1, 0xb

    :goto_1
    iput v1, v0, Lcom/vivo/speechsdk/module/session/d/a;->u:I

    goto/16 :goto_4

    :pswitch_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->j:J

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/session/a;->a()V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/session/a;->d()V

    invoke-static {}, Lcom/vivo/speechsdk/module/session/f/a;->a()Lcom/vivo/speechsdk/module/session/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Lcom/vivo/speechsdk/module/session/f/a;->a(ILcom/vivo/speechsdk/module/session/d/a;)V

    const-string v0, "ASRSessionCollect"

    const-string v1, "release by event end"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/session/a;->release()V

    goto/16 :goto_4

    :pswitch_e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/vivo/speechsdk/module/session/d/a;->v:Ljava/lang/String;

    invoke-static {}, Lcom/vivo/speechsdk/module/session/f/a;->a()Lcom/vivo/speechsdk/module/session/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Lcom/vivo/speechsdk/module/session/f/a;->a(ILcom/vivo/speechsdk/module/session/d/a;)V

    goto :goto_4

    :pswitch_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v0, Lcom/vivo/speechsdk/module/session/d/a;->D:Z

    iget-boolean v0, v0, Lcom/vivo/speechsdk/module/session/d/a;->C:Z

    xor-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/session/a;->a(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->d:Lcom/vivo/speechsdk/module/api/IParser;

    if-eqz v0, :cond_8

    iget-object v4, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_7

    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    :goto_3
    invoke-interface {v0, v1, v5}, Lcom/vivo/speechsdk/module/api/IParser;->prase(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v4, Lcom/vivo/speechsdk/module/session/d/a;->x:Ljava/lang/String;

    :cond_8
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    iget-wide v4, v0, Lcom/vivo/speechsdk/module/session/d/a;->k:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vivo/speechsdk/module/session/d/a;->k:J

    :cond_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->l:J

    goto :goto_4

    :pswitch_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->i:J

    goto :goto_4

    :pswitch_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->h:J

    goto :goto_4

    :pswitch_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->f:J

    goto :goto_4

    :pswitch_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/a;->e:J

    :cond_a
    :goto_4
    iget-object v5, p0, Lcom/vivo/speechsdk/module/session/a;->e:Lcom/vivo/speechsdk/module/session/e/a;

    if-eqz v5, :cond_b

    iget v6, p1, Landroid/os/Message;->what:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v10, p0, Lcom/vivo/speechsdk/module/session/a;->b:Lcom/vivo/speechsdk/module/session/d/a;

    invoke-virtual/range {v5 .. v10}, Lcom/vivo/speechsdk/module/session/e/a;->a(IIILjava/lang/Object;Lcom/vivo/speechsdk/module/session/d/a;)V

    :cond_b
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public init(Landroid/os/Bundle;Landroid/os/Looper;)V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/session/a;->c:Landroid/os/Handler;

    invoke-static {}, Lcom/vivo/speechsdk/module/session/f/a;->a()Lcom/vivo/speechsdk/module/session/f/a;

    move-result-object p2

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/vivo/speechsdk/module/session/f/a;->a(Z)V

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    new-instance p2, Lcom/vivo/speechsdk/module/session/e/a;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result v0

    invoke-direct {p2, v1, v0}, Lcom/vivo/speechsdk/module/session/e/a;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/vivo/speechsdk/module/session/a;->e:Lcom/vivo/speechsdk/module/session/e/a;

    :cond_1
    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/a;->g:Landroid/os/Bundle;

    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "ASRSessionCollect"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/a;->e:Lcom/vivo/speechsdk/module/session/e/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/session/e/a;->b()V

    :cond_0
    return-void
.end method

.method public setSessionListener(Lcom/vivo/speechsdk/module/api/session/SessionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/a;->f:Lcom/vivo/speechsdk/module/api/session/SessionListener;

    return-void
.end method
