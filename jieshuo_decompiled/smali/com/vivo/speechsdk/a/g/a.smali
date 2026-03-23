.class public Lcom/vivo/speechsdk/a/g/a;
.super Lcom/vivo/speechsdk/a/g/b;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final o:Ljava/lang/String; = "ASRInterceptor"

.field private static final p:I = 0x1

.field private static final q:I = 0x2

.field private static final r:I = 0x1

.field private static final s:I = 0x1388


# instance fields
.field private e:Lcom/vivo/speechsdk/module/api/asr/IASRService;

.field private f:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "[B>;"
        }
    .end annotation
.end field

.field private g:Z

.field private volatile h:Z

.field private i:Landroid/os/Handler;

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/module/api/asr/IASRService;Landroid/os/Bundle;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/a;->g:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/a;->h:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/a;->m:Z

    iput-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->e:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    const-string p1, "key_engine_mode"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/a/g/a;->n:I

    const-string p1, "key_asr_time_out"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/a/g/a;->j:I

    const-string p1, "key_vad_enable"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/vivo/speechsdk/a/g/a;->k:Z

    const-string p1, "key_silence_count"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/a/g/a;->l:I

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    iput-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/speechsdk/a/g/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    iget v2, p0, Lcom/vivo/speechsdk/a/g/a;->j:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/a;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7f13\u5b58\u97f3\u9891\u961f\u5217\u5927\u5c0f size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/a/g/a;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ASRInterceptor"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/g/a;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9001\u7f13\u5b58\u961f\u5217\u6570\u636e data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASRInterceptor"

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/a/g/a;->e:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    array-length v2, v0

    invoke-interface {v1, v0, v2}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->feedAudioData([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bridge synthetic a(ILjava/lang/Object;II)V
    .locals 0

    check-cast p2, [B

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/a/g/a;->a(I[BII)V

    return-void
.end method

.method public a(I[BII)V
    .locals 1

    const/4 p4, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_1
    monitor-enter p0

    if-ne p3, v0, :cond_0

    :try_start_0
    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/a;->m:Z

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/a;->a()V

    :goto_0
    monitor-exit p0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_2
    monitor-enter p0

    :try_start_1
    iget-boolean p1, p0, Lcom/vivo/speechsdk/a/g/a;->h:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    iget p2, p0, Lcom/vivo/speechsdk/a/g/a;->j:I

    int-to-long p2, p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    monitor-exit p0

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :pswitch_3
    monitor-enter p0

    :try_start_2
    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/a;->h:Z

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->e:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->destroy()V

    goto/16 :goto_1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :pswitch_4
    if-eqz p2, :cond_6

    iget-boolean p1, p0, Lcom/vivo/speechsdk/a/g/a;->g:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/a;->b()V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->e:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    array-length p3, p2

    invoke-interface {p1, p2, p3}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->feedAudioData([BI)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_5
    monitor-enter p0

    :try_start_4
    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/a;->h:Z

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->e:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->cancel()V

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1

    :pswitch_6
    monitor-enter p0

    :try_start_6
    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/a;->h:Z

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/a;->a()V

    iget-boolean p1, p0, Lcom/vivo/speechsdk/a/g/a;->g:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->f:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->clear()V

    :cond_3
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    iget-boolean p1, p0, Lcom/vivo/speechsdk/a/g/a;->m:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    const-wide/16 p3, 0x1388

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->e:Lcom/vivo/speechsdk/module/api/asr/IASRService;

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/asr/IASRService;->stop()V

    goto :goto_1

    :catchall_4
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p1

    :pswitch_7
    iput-boolean v0, p0, Lcom/vivo/speechsdk/a/g/a;->g:Z

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/g/a;->b()V

    iget p1, p0, Lcom/vivo/speechsdk/a/g/a;->n:I

    const/4 p2, 0x4

    if-eq p1, p2, :cond_6

    iget-boolean p1, p0, Lcom/vivo/speechsdk/a/g/a;->k:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/vivo/speechsdk/a/g/a;->l:I

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/vivo/speechsdk/a/g/a;->i:Landroid/os/Handler;

    iget p2, p0, Lcom/vivo/speechsdk/a/g/a;->j:I

    int-to-long p2, p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x6a

    const/16 v1, 0x75f9

    invoke-virtual {p0, v0, v1}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 p1, 0x6b

    invoke-virtual {p0, p1, v0}, Lcom/vivo/speechsdk/b/e/a;->a(II)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
