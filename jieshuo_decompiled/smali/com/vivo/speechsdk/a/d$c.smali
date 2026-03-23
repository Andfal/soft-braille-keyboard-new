.class Lcom/vivo/speechsdk/a/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/a/d;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x44c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_15

    const/16 v1, 0x10

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/16 v5, 0x7606

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/a/h/c;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    iget-object v3, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v3}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/api/ISpeechEngine;

    move-result-object v3

    invoke-interface {v3}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v3

    invoke-virtual {v0, v1, p1, v3}, Lcom/vivo/speechsdk/a/h/c;->onVolumeChanged(I[BI)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->c(Lcom/vivo/speechsdk/a/d;)Landroid/os/Handler;

    move-result-object v0

    const/16 v10, 0x6d

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v10}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/a/d;I)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0, v6}, Lcom/vivo/speechsdk/a/d;->f(Lcom/vivo/speechsdk/a/d;I)V

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->m(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v3, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, p1}, Lcom/vivo/speechsdk/a/d;->c(Lcom/vivo/speechsdk/a/d;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v8

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->e(Lcom/vivo/speechsdk/a/d;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v9

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->f(Lcom/vivo/speechsdk/a/d;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v7

    const-string p1, "EVENT_END | %d %s all module = %d already release module = %d %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Recognizer"

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->f(Lcom/vivo/speechsdk/a/d;)I

    move-result p1

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/d;->e(Lcom/vivo/speechsdk/a/d;)I

    move-result v1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/d;->n(Lcom/vivo/speechsdk/a/d;)I

    move-result v1

    if-eq v1, v9, :cond_4

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1, v9}, Lcom/vivo/speechsdk/a/d;->g(Lcom/vivo/speechsdk/a/d;I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v3}, Lcom/vivo/speechsdk/a/d;->f(Lcom/vivo/speechsdk/a/d;)I

    move-result v3

    iget-object v6, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v6}, Lcom/vivo/speechsdk/a/d;->e(Lcom/vivo/speechsdk/a/d;)I

    move-result v6

    if-le v3, v6, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-nez v3, :cond_6

    if-eqz p1, :cond_c

    if-eqz v1, :cond_c

    :cond_6
    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->n(Lcom/vivo/speechsdk/a/d;)I

    move-result p1

    if-eq p1, v7, :cond_c

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/vivo/speechsdk/a/d;->f(Lcom/vivo/speechsdk/a/d;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1, v7}, Lcom/vivo/speechsdk/a/d;->g(Lcom/vivo/speechsdk/a/d;I)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1, v9}, Lcom/vivo/speechsdk/a/d;->g(Lcom/vivo/speechsdk/a/d;I)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->n(Lcom/vivo/speechsdk/a/d;)I

    move-result p1

    if-ne p1, v8, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->g(Lcom/vivo/speechsdk/a/d;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->h(Lcom/vivo/speechsdk/a/d;)I

    move-result p1

    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_8

    const-wide/16 v12, 0x3e8

    cmp-long p1, v10, v12

    if-gez p1, :cond_7

    new-instance p1, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 v1, 0x7607

    invoke-direct {p1, v1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    goto :goto_4

    :cond_7
    new-instance p1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {p1, v5}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/d;->i(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/module/api/asr/IASRService;

    move-result-object v1

    const/16 v3, 0x6c

    invoke-interface {v1, v3, v4}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->action(ILandroid/os/Bundle;)V

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->j(Lcom/vivo/speechsdk/a/d;)Z

    move-result p1

    const/16 v1, 0x75fe

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->d(Lcom/vivo/speechsdk/a/d;)I

    move-result p1

    if-ne p1, v8, :cond_9

    new-instance p1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {p1, v5}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    goto :goto_4

    :cond_9
    new-instance p1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {p1, v1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    goto :goto_4

    :cond_a
    new-instance p1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {p1, v1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    :goto_4
    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/a/h/c;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v3}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/api/ISpeechEngine;

    move-result-object v3

    invoke-interface {v3}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v3

    invoke-virtual {v1, p1, v3}, Lcom/vivo/speechsdk/a/h/c;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/d;->m(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "Recognizer"

    :try_start_1
    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "error no result "

    aput-object v5, v4, v2

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v8

    invoke-static {v4}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v3, p1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1, v7}, Lcom/vivo/speechsdk/a/d;->e(Lcom/vivo/speechsdk/a/d;I)I

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/vivo/speechsdk/a/d;->d(Lcom/vivo/speechsdk/a/d;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->m(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    const-string v1, "Recognizer"

    const-string v3, "session end"

    invoke-interface {p1, v1, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->k(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/module/api/session/ISessionCollect;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {}, Lcom/vivo/speechsdk/b/i/b;->b()Lcom/vivo/speechsdk/b/i/b;

    move-result-object p1

    const/16 v1, 0x2716

    invoke-virtual {p1, v1, v2}, Lcom/vivo/speechsdk/b/i/b;->a(II)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/a/h/c;

    move-result-object p1

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/api/ISpeechEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vivo/speechsdk/a/h/c;->onEnd(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->m(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    const-string v1, "Recognizer"

    const-string v3, "onEnd 1"

    invoke-interface {p1, v1, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    monitor-exit v0

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_2
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v3, v2, v4}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;IIILjava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v5, :cond_f

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-virtual {v1}, Lcom/vivo/speechsdk/a/d;->isListening()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/d;->l(Lcom/vivo/speechsdk/a/d;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/d;->m(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v3, "Recognizer"

    :try_start_3
    new-array v4, v9, [Ljava/lang/Object;

    const-string v7, "stop reason0 | error "

    aput-object v7, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v4}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/d;->n(Lcom/vivo/speechsdk/a/d;)I

    move-result v3

    if-ne v3, v8, :cond_d

    const/4 v6, 0x2

    :cond_d
    invoke-static {v1, v6}, Lcom/vivo/speechsdk/a/d;->f(Lcom/vivo/speechsdk/a/d;I)V

    :cond_e
    monitor-exit v0

    goto/16 :goto_5

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_f
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-virtual {v1}, Lcom/vivo/speechsdk/a/d;->isListening()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/d;->l(Lcom/vivo/speechsdk/a/d;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/d;->m(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v3, "Recognizer"

    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop reason1 | error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1, v6}, Lcom/vivo/speechsdk/a/d;->f(Lcom/vivo/speechsdk/a/d;I)V

    :cond_10
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0, v9}, Lcom/vivo/speechsdk/a/d;->g(Lcom/vivo/speechsdk/a/d;I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->n(Lcom/vivo/speechsdk/a/d;)I

    move-result v0

    if-eq v0, v7, :cond_11

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0, v9}, Lcom/vivo/speechsdk/a/d;->h(Lcom/vivo/speechsdk/a/d;I)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v3, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v3, v0, v1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/a/h/c;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v1}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/api/ISpeechEngine;

    move-result-object v1

    invoke-interface {v1}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/vivo/speechsdk/a/h/c;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->m(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop reason2 | error : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Recognizer"

    invoke-interface {v0, v3, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->m(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop reason3 | error : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " msg : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Recognizer"

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catchall_2
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x138a

    if-ne v0, v1, :cond_12

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "key_error_code"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    const/16 v3, 0x15

    invoke-static {v1, v3, v0, v2, v4}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;IIILjava/lang/Object;)V

    :cond_12
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/a/h/c;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v3}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/api/ISpeechEngine;

    move-result-object v3

    invoke-interface {v3}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v3

    invoke-virtual {v0, v1, p1, v3}, Lcom/vivo/speechsdk/a/h/c;->onEvent(ILandroid/os/Bundle;I)V

    goto/16 :goto_6

    :pswitch_4
    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1, v3}, Lcom/vivo/speechsdk/a/d;->d(Lcom/vivo/speechsdk/a/d;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/a/h/c;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/api/ISpeechEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/a/h/c;->onRecordEnd(I)V

    goto/16 :goto_6

    :pswitch_5
    const-string p1, "record start"

    invoke-static {p1}, Lcom/vivo/speechsdk/b/g/a;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object p1

    invoke-virtual {p1, v9}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->track(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1, v8}, Lcom/vivo/speechsdk/a/d;->d(Lcom/vivo/speechsdk/a/d;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/a/h/c;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/api/ISpeechEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/a/h/c;->onRecordStart(I)V

    goto/16 :goto_6

    :pswitch_6
    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1, v7}, Lcom/vivo/speechsdk/a/d;->d(Lcom/vivo/speechsdk/a/d;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/a/h/c;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/api/ISpeechEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/a/h/c;->onSpeechEnd(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    monitor-enter p1

    :try_start_7
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/d;->isListening()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->l(Lcom/vivo/speechsdk/a/d;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->m(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    const-string v1, "Recognizer"

    const-string v3, "stop reason | speech stop"

    invoke-interface {v0, v1, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->n(Lcom/vivo/speechsdk/a/d;)I

    move-result v1

    if-ne v1, v8, :cond_13

    const/4 v6, 0x2

    :cond_13
    invoke-static {v0, v6}, Lcom/vivo/speechsdk/a/d;->f(Lcom/vivo/speechsdk/a/d;I)V

    :cond_14
    monitor-exit p1

    goto :goto_6

    :catchall_3
    move-exception v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :pswitch_7
    invoke-static {}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->getInstance()Lcom/vivo/speechsdk/module/api/asr/SessionTracker;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/vivo/speechsdk/module/api/asr/SessionTracker;->track(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1, v9}, Lcom/vivo/speechsdk/a/d;->d(Lcom/vivo/speechsdk/a/d;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/a/h/c;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/api/ISpeechEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/a/h/c;->onSpeechStart(I)V

    goto :goto_6

    :cond_15
    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;

    invoke-virtual {v0, v1, p1}, Lcom/vivo/speechsdk/a/d;->start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)I

    move-result p1

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/a/h/c;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v1, p1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    iget-object v3, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v3}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/api/ISpeechEngine;

    move-result-object v3

    invoke-interface {v3}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/vivo/speechsdk/a/h/c;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    const/16 v0, 0x7603

    if-eq p1, v0, :cond_16

    iget-object p1, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/d;->b(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/a/h/c;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/a/d$c;->a:Lcom/vivo/speechsdk/a/d;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/d;->a(Lcom/vivo/speechsdk/a/d;)Lcom/vivo/speechsdk/api/ISpeechEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/api/ISpeechEngine;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/a/h/c;->onEnd(I)V

    :cond_16
    :goto_6
    return v2

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
