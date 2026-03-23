.class public Lcom/vivo/speechsdk/module/session/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/session/ISessionCollect;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/session/b$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "TTSSessionManager"

.field private static final g:I = 0x3e8


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/vivo/speechsdk/module/session/e/b;

.field private c:Lcom/vivo/speechsdk/module/session/d/b;

.field private d:Lcom/vivo/speechsdk/module/api/session/SessionListener;

.field private e:Lcom/vivo/speechsdk/module/api/session/EngineInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(IJI)D
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    long-to-double p2, p2

    int-to-double v0, p1

    mul-int/lit8 p4, p4, 0x2

    int-to-double v2, p4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v2

    div-double/2addr p2, v0

    return-wide p2

    :cond_1
    :goto_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public static b()Lcom/vivo/speechsdk/module/session/b;
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/session/b$a;->a:Lcom/vivo/speechsdk/module/session/b;

    return-object v0
.end method

.method private c()V
    .locals 12

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/session/b;->a()Lcom/vivo/speechsdk/module/session/d/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-wide v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->g:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    move-wide v1, v3

    goto :goto_0

    :cond_0
    iget-wide v5, v0, Lcom/vivo/speechsdk/module/session/d/b;->c:J

    sub-long/2addr v1, v5

    :goto_0
    iget-wide v5, v0, Lcom/vivo/speechsdk/module/session/d/b;->f:J

    iget-wide v7, v0, Lcom/vivo/speechsdk/module/session/d/b;->c:J

    sub-long/2addr v5, v7

    iget-wide v9, v0, Lcom/vivo/speechsdk/module/session/d/b;->j:J

    cmp-long v11, v9, v3

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    sub-long v3, v9, v7

    :goto_1
    iget v7, v0, Lcom/vivo/speechsdk/module/session/d/b;->t:I

    iget v8, v0, Lcom/vivo/speechsdk/module/session/d/b;->u:I

    invoke-direct {p0, v7, v3, v4, v8}, Lcom/vivo/speechsdk/module/session/b;->a(IJI)D

    move-result-wide v3

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v7, v2

    iget-object v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->p:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v5, 0x2

    aput-object v1, v7, v5

    iget v0, v0, Lcom/vivo/speechsdk/module/session/d/b;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v7, v1

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%.2f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v7, v1

    const-string v0, "\n\u9996\u5b57\u54cd\u5e94\u65f6\u95f4 \uff1a%s\nSID \uff1a%s\n\u603b\u8017\u65f6 \uff1a%sms\n\u97f3\u9891\u957f\u5ea6 \uff1a%s\n\u5b9e\u65f6\u7387 \uff1a%s\n"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSSessionManager"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()Lcom/vivo/speechsdk/module/session/d/b;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->c:Lcom/vivo/speechsdk/module/session/d/b;

    return-object v0
.end method

.method public event(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->a:Landroid/os/Handler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/module/session/b;->handleMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/b;->e:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->initStartTime:J

    return v2

    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->e:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->errorCode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/api/session/EngineInfo;->initEndTime:J

    invoke-static {}, Lcom/vivo/speechsdk/module/session/f/a;->a()Lcom/vivo/speechsdk/module/session/f/a;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->e:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    invoke-virtual {p1, v1, v0}, Lcom/vivo/speechsdk/module/session/f/a;->a(ILcom/vivo/speechsdk/module/api/session/EngineInfo;)V

    return v2

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Lcom/vivo/speechsdk/module/session/d/b;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/session/d/b;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->c:Lcom/vivo/speechsdk/module/session/d/b;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/vivo/speechsdk/module/api/session/SessionInfo;

    iput-object v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->a:Lcom/vivo/speechsdk/module/api/session/SessionInfo;

    const-string v1, ""

    invoke-static {v1}, Lcom/vivo/speechsdk/b/h/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->c:Lcom/vivo/speechsdk/module/session/d/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/b;->c:J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->c:Lcom/vivo/speechsdk/module/session/d/b;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/session/b;->e:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iput-object v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->b:Lcom/vivo/speechsdk/module/api/session/EngineInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->u:I

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->c:Lcom/vivo/speechsdk/module/session/d/b;

    if-eqz v0, :cond_12

    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_11

    const/4 v3, 0x7

    if-eq v1, v3, :cond_f

    const/16 v3, 0x14

    if-eq v1, v3, :cond_e

    const/4 v3, 0x2

    if-eq v1, v3, :cond_d

    const/4 v4, 0x3

    if-eq v1, v4, :cond_8

    const/4 v3, 0x4

    if-eq v1, v3, :cond_7

    const/16 v3, 0xa

    if-eq v1, v3, :cond_6

    const/16 v3, 0xb

    if-eq v1, v3, :cond_5

    const/16 v3, 0x10

    if-eq v1, v3, :cond_4

    const/16 v3, 0x11

    if-eq v1, v3, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/b;->l:J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->c:Lcom/vivo/speechsdk/module/session/d/b;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->o:I

    goto/16 :goto_3

    :cond_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->m:I

    goto/16 :goto_3

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/b;->k:J

    goto/16 :goto_3

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/vivo/speechsdk/module/session/d/b;->f:J

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/session/b;->c()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->d:Lcom/vivo/speechsdk/module/api/session/SessionListener;

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/api/session/SessionListener;->onSessionFinished(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/b;->e:J

    goto :goto_3

    :cond_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    iput-object v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->r:Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    iget v5, v0, Lcom/vivo/speechsdk/module/session/d/b;->t:I

    iget v6, v1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/vivo/speechsdk/module/session/d/b;->t:I

    iget-wide v5, v0, Lcom/vivo/speechsdk/module/session/d/b;->g:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/vivo/speechsdk/module/session/d/b;->g:J

    :cond_9
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->c:Lcom/vivo/speechsdk/module/session/d/b;

    iget-wide v5, v0, Lcom/vivo/speechsdk/module/session/d/b;->h:J

    cmp-long v9, v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    if-nez v9, :cond_b

    :cond_a
    :goto_0
    iput-wide v5, v0, Lcom/vivo/speechsdk/module/session/d/b;->h:J

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->c:Lcom/vivo/speechsdk/module/session/d/b;

    iget-wide v7, v0, Lcom/vivo/speechsdk/module/session/d/b;->h:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x3e8

    cmp-long v11, v7, v9

    if-ltz v11, :cond_a

    iput-wide v5, v0, Lcom/vivo/speechsdk/module/session/d/b;->i:J

    goto :goto_0

    :goto_1
    iget v0, v1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    if-eq v0, v3, :cond_c

    if-ne v0, v4, :cond_12

    :cond_c
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->c:Lcom/vivo/speechsdk/module/session/d/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/b;->j:J

    goto :goto_3

    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/b;->d:J

    goto :goto_3

    :cond_e
    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->n:I

    goto :goto_3

    :cond_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/vivo/speechsdk/module/session/d/b;->p:Ljava/lang/String;

    :cond_10
    :goto_2
    invoke-static {}, Lcom/vivo/speechsdk/module/session/f/a;->a()Lcom/vivo/speechsdk/module/session/f/a;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/session/b;->c:Lcom/vivo/speechsdk/module/session/d/b;

    invoke-virtual {v0, v3, v1}, Lcom/vivo/speechsdk/module/session/f/a;->a(ILcom/vivo/speechsdk/module/session/d/b;)V

    goto :goto_3

    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/vivo/speechsdk/module/session/d/b;->c:J

    :cond_12
    :goto_3
    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->b:Lcom/vivo/speechsdk/module/session/e/b;

    if-eqz v0, :cond_13

    iget v1, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v4, p1}, Lcom/vivo/speechsdk/module/session/e/b;->a(IIILjava/lang/Object;)V

    :cond_13
    return v2
.end method

.method public init(Landroid/os/Bundle;Landroid/os/Looper;)V
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object p1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/vivo/speechsdk/module/session/f/a;->a()Lcom/vivo/speechsdk/module/session/f/a;

    move-result-object p2

    invoke-virtual {p1}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/module/session/f/a;->a(Z)V

    invoke-virtual {p1}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/b/c;->d()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    new-instance p2, Lcom/vivo/speechsdk/module/session/e/b;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/b/c;->i()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/vivo/speechsdk/module/session/e/b;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/vivo/speechsdk/module/session/b;->b:Lcom/vivo/speechsdk/module/session/e/b;

    :cond_1
    return-void
.end method

.method public release()V
    .locals 2

    const-string v0, "TTSSessionManager"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/session/b;->b:Lcom/vivo/speechsdk/module/session/e/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/session/e/b;->a()V

    :cond_0
    return-void
.end method

.method public setSessionListener(Lcom/vivo/speechsdk/module/api/session/SessionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/session/b;->d:Lcom/vivo/speechsdk/module/api/session/SessionListener;

    return-void
.end method
