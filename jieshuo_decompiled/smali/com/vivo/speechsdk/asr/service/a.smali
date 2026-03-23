.class public Lcom/vivo/speechsdk/asr/service/a;
.super Lcom/vivo/speechsdk/a/b$a;
.source "SourceFile"


# static fields
.field private static final j:Ljava/lang/String; = "ASRSender"

.field private static final k:I = 0x0

.field private static final l:I = 0x1

.field private static final m:I = 0xbb8

.field private static final n:I = 0x7d0


# instance fields
.field private d:Lcom/vivo/speechsdk/asr/api/ASREngine;

.field private e:Lcom/vivo/speechsdk/asr/service/RecognizerService;

.field private f:Lcom/vivo/speechsdk/a/b;

.field private g:Ljava/util/concurrent/CountDownLatch;

.field private h:Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

.field private i:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/asr/service/RecognizerService;)V
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/a/b$a;-><init>()V

    new-instance v0, Lcom/vivo/speechsdk/asr/service/a$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/asr/service/a$a;-><init>(Lcom/vivo/speechsdk/asr/service/a;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/service/a;->h:Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    new-instance v0, Lcom/vivo/speechsdk/asr/service/a$b;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/asr/service/a$b;-><init>(Lcom/vivo/speechsdk/asr/service/a;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/service/a;->i:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->e:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/a/b;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/asr/service/a;->f:Lcom/vivo/speechsdk/a/b;

    return-object p0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/asr/service/a;)Lcom/vivo/speechsdk/asr/service/RecognizerService;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/asr/service/a;->e:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    return-object p0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 2

    const-string v0, "ASRSender"

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID_VALUE : 0 | bundle = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    const-string v1, "receive client sender"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_client_sender"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/speechsdk/a/b$a;->a(Landroid/os/IBinder;)Lcom/vivo/speechsdk/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/speechsdk/asr/service/a;->f:Lcom/vivo/speechsdk/a/b;

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/a;->g:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const-string p1, "receive action init"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->e:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Landroid/os/Bundle;Z)V

    :cond_3
    return-void
.end method

.method public declared-synchronized a(ILjava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a;->f:Lcom/vivo/speechsdk/a/b;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/speechsdk/asr/service/a;->g:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a;->g:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string p1, "ASRSender"

    const-string p2, "can not receive client sender"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_3
    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->f:Lcom/vivo/speechsdk/a/b;

    const/16 p2, 0x13

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->obtain()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_error_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_error_msg"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->f:Lcom/vivo/speechsdk/a/b;

    const/16 p2, 0x14

    invoke-interface {p1, p2, v0}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    :try_start_4
    const-string p1, "ASRSender"

    const-string p2, "notify client init error failed0"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/vivo/speechsdk/asr/api/ASREngine;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(ILandroid/os/Bundle;)I
    .locals 3

    if-nez p1, :cond_1

    const-string p1, "ASRSender"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID_VALUE : 0 | bundle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2712

    return p1

    :cond_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isListening()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a;->e:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->d()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a;->e:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a()V

    :cond_3
    :goto_1
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    const-string p1, "key_event_id"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "key_event_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v1, p1, p2}, Lcom/vivo/speechsdk/asr/api/ASREngine;->doAction(ILandroid/os/Bundle;)V

    goto/16 :goto_3

    :pswitch_2
    const-string p1, "key_audio_data"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    const-string v1, "key_audio_data_length"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v1, p1, p2}, Lcom/vivo/speechsdk/asr/api/ASREngine;->feedAudioData([BI)V

    goto/16 :goto_3

    :pswitch_3
    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isListening()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    monitor-exit p0

    return p1

    :pswitch_4
    const-string p1, "ASRSender"

    const-string v1, "receive action upload hotword"

    invoke-static {p1, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/a;->i:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;

    invoke-virtual {p1, p2, v1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->updateHotWord(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V

    goto/16 :goto_3

    :pswitch_5
    const-string p1, "ASRSender"

    const-string p2, "receive action cancel"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->cancel()V

    goto/16 :goto_3

    :pswitch_6
    const-string p1, "ASRSender"

    const-string p2, "receive action stop"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :pswitch_7
    const-string p1, "ASRSender"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive action start , engine is init ? | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v2}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_reload_engine_bundle"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "key_reload_engine"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v2}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "ASRSender"

    const-string v2, "receive action start but engine not init!!!"

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/service/a;->e:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-virtual {v1, p1, v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Landroid/os/Bundle;Z)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "ASRSender"

    const-string v1, "receive action start but engine need reInit!!!"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a;->e:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->c(Landroid/os/Bundle;)V

    :cond_5
    :goto_2
    const-string p1, "key_engine_delay_release"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->e:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    const-string v0, "key_engine_delay_release"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b(I)V

    :cond_6
    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a;->h:Lcom/vivo/speechsdk/asr/api/IRecognizerListener;

    invoke-virtual {p1, p2, v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IRecognizerListener;)I

    move-result p1

    monitor-exit p0

    return p1

    :goto_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized b(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/a;->d:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->destroy()V

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->obtain()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_error_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_error_msg"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/a;->f:Lcom/vivo/speechsdk/a/b;

    const/16 p2, 0x10

    invoke-interface {p1, p2, v0}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p1, "ASRSender"

    const-string p2, "notify client onError failed"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
