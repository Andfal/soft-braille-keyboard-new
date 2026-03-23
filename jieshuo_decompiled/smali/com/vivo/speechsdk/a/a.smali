.class public Lcom/vivo/speechsdk/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/asr/api/IRecognizer;
.implements Lcom/vivo/speechsdk/a/e$b;


# static fields
.field private static final m:Ljava/lang/String; = "ClientRecognizer"

.field private static final n:I = 0x0

.field private static final o:I = 0x1

.field private static final p:I = 0xbb8

.field private static final q:I = 0x1

.field private static final r:I = 0x2

.field private static final s:I = 0x3


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/vivo/speechsdk/a/b;

.field private d:Lcom/vivo/speechsdk/a/h/c;

.field private e:Lcom/vivo/speechsdk/a/h/d;

.field private f:Lcom/vivo/speechsdk/a/e;

.field private g:Lcom/vivo/speechsdk/a/h/a;

.field private volatile h:I

.field private i:Ljava/util/concurrent/CountDownLatch;

.field private j:Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

.field private k:I

.field private l:Lcom/vivo/speechsdk/a/b;


# direct methods
.method public constructor <init>(Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/a;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/vivo/speechsdk/a/h/a;

    invoke-direct {v0}, Lcom/vivo/speechsdk/a/h/a;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/a;->g:Lcom/vivo/speechsdk/a/h/a;

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/speechsdk/a/a;->h:I

    new-instance v0, Lcom/vivo/speechsdk/a/a$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/a/a$a;-><init>(Lcom/vivo/speechsdk/a/a;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/a;->l:Lcom/vivo/speechsdk/a/b;

    iput-object p1, p0, Lcom/vivo/speechsdk/a/a;->j:Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    new-instance p1, Lcom/vivo/speechsdk/a/h/c;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/vivo/speechsdk/a/h/c;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    return-void
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 3

    const/16 v0, 0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "key_error_code"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "key_error_msg"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->e:Lcom/vivo/speechsdk/a/h/d;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/speechsdk/a/h/d;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->e:Lcom/vivo/speechsdk/a/h/d;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/a/h/d;->onSuccess()V

    goto/16 :goto_0

    :pswitch_2
    const-string p1, "key_error_code"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "key_error_msg"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->g:Lcom/vivo/speechsdk/a/h/a;

    new-instance v1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v1, p1, p2}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/a/h/a;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    const/16 p2, 0x7538

    if-ne p1, p2, :cond_2

    const-string p1, "ClientRecognizer"

    const-string p2, "engine init timeout unbind service"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/a/e;->f()V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->g:Lcom/vivo/speechsdk/a/h/a;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/a/h/a;->onSuccess()V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/a/e;->e()V

    goto/16 :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget p2, p0, Lcom/vivo/speechsdk/a/a;->h:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    iput v0, p0, Lcom/vivo/speechsdk/a/a;->h:I

    iget-object p2, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    iget v0, p0, Lcom/vivo/speechsdk/a/a;->k:I

    invoke-virtual {p2, v0}, Lcom/vivo/speechsdk/a/h/c;->onEnd(I)V

    :cond_0
    monitor-exit p1

    goto/16 :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :pswitch_5
    const-string p1, "key_event_id"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "key_event_id"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    iget v1, p0, Lcom/vivo/speechsdk/a/a;->k:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/vivo/speechsdk/a/h/c;->onEvent(ILandroid/os/Bundle;I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget v0, p0, Lcom/vivo/speechsdk/a/a;->h:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iput v1, p0, Lcom/vivo/speechsdk/a/a;->h:I

    const-string v0, "key_error_code"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "key_error_msg"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    new-instance v2, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v2, v0, p2}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(ILjava/lang/String;)V

    iget p2, p0, Lcom/vivo/speechsdk/a/a;->k:I

    invoke-virtual {v1, v2, p2}, Lcom/vivo/speechsdk/a/h/c;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    :pswitch_7
    const-string p1, "key_volume"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "key_audio_data"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    iget v1, p0, Lcom/vivo/speechsdk/a/a;->k:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/vivo/speechsdk/a/h/c;->onVolumeChanged(I[BI)V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    iget p2, p0, Lcom/vivo/speechsdk/a/a;->k:I

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/a/h/c;->onRecordEnd(I)V

    goto :goto_0

    :pswitch_9
    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p2, p0, Lcom/vivo/speechsdk/a/a;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    iget p2, p0, Lcom/vivo/speechsdk/a/a;->k:I

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/a/h/c;->onRecordStart(I)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    iget p2, p0, Lcom/vivo/speechsdk/a/a;->k:I

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/a/h/c;->onSpeechEnd(I)V

    goto :goto_0

    :pswitch_b
    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p2, p0, Lcom/vivo/speechsdk/a/a;->a:Ljava/lang/Object;

    invoke-virtual {p1, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    iget p2, p0, Lcom/vivo/speechsdk/a/a;->k:I

    invoke-virtual {p1, p2}, Lcom/vivo/speechsdk/a/h/c;->onSpeechStart(I)V

    goto :goto_0

    :pswitch_c
    const-string p1, "key_result"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_result_type"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    iget v1, p0, Lcom/vivo/speechsdk/a/a;->k:I

    invoke-virtual {v0, p2, p1, v1}, Lcom/vivo/speechsdk/a/h/c;->onResult(ILjava/lang/String;I)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method static synthetic a(Lcom/vivo/speechsdk/a/a;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/a/a;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method private b(ILandroid/os/Bundle;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->c:Lcom/vivo/speechsdk/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/a/b;->b(ILandroid/os/Bundle;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :cond_0
    const/16 p1, 0x7531

    return p1

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ipc error! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ClientRecognizer"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7537

    return p1
.end method

.method private c(ILandroid/os/Bundle;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->c:Lcom/vivo/speechsdk/a/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/a/b;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x7531

    return p1

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ipc error! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ClientRecognizer"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x7537

    return p1
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->g:Lcom/vivo/speechsdk/a/h/a;

    new-instance v1, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 v2, 0x7532

    invoke-direct {v1, v2}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/a/h/a;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    return-void
.end method

.method public a(Lcom/vivo/speechsdk/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/vivo/speechsdk/a/a;->c:Lcom/vivo/speechsdk/a/b;

    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->i:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const-string p1, "ClientRecognizer"

    const-string v0, "set mRemoteSender "

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/vivo/speechsdk/api/InitListener;)V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->g:Lcom/vivo/speechsdk/a/h/a;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/a/h/a;->a(Lcom/vivo/speechsdk/api/InitListener;)V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/vivo/speechsdk/a/a;->i:Ljava/util/concurrent/CountDownLatch;

    new-instance p1, Lcom/vivo/speechsdk/a/e;

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->j:Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->workLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/vivo/speechsdk/a/e;-><init>(Lcom/vivo/speechsdk/a/e$b;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    const-string p1, "bind service"

    invoke-static {p1}, Lcom/vivo/speechsdk/b/g/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    iget-object v1, p0, Lcom/vivo/speechsdk/a/a;->l:Lcom/vivo/speechsdk/a/b;

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/a/e;->a(Lcom/vivo/speechsdk/a/b;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->i:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/vivo/speechsdk/b/g/a;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/a/e;->a()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/a/e;->f()V

    const-string p1, "ClientRecognizer"

    const-string v0, "service not bind | 30002"

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->g:Lcom/vivo/speechsdk/a/h/a;

    new-instance v0, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 v1, 0x7532

    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/a/h/a;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->g:Lcom/vivo/speechsdk/a/h/a;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/a/h/a;->onSuccess()V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/vivo/speechsdk/a/a;->h:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/vivo/speechsdk/a/a;->h:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    new-instance v3, Lcom/vivo/speechsdk/api/SpeechError;

    const/16 v4, 0x7536

    invoke-direct {v3, v4}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    iget v4, p0, Lcom/vivo/speechsdk/a/a;->k:I

    invoke-virtual {v1, v3, v4}, Lcom/vivo/speechsdk/a/h/c;->onError(Lcom/vivo/speechsdk/api/SpeechError;I)V

    :cond_0
    iget-object v1, p0, Lcom/vivo/speechsdk/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/vivo/speechsdk/a/a;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    iget v3, p0, Lcom/vivo/speechsdk/a/a;->k:I

    invoke-virtual {v1, v3}, Lcom/vivo/speechsdk/a/h/c;->onEnd(I)V

    iput v2, p0, Lcom/vivo/speechsdk/a/a;->h:I

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vivo/speechsdk/a/a;->b(ILandroid/os/Bundle;)I

    return-void
.end method

.method public destroy()V
    .locals 5

    const-string v0, "ClientRecognizer"

    const-string v1, "user destroy unbind service"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/e;->f()V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/vivo/speechsdk/a/a;->h:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/vivo/speechsdk/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/vivo/speechsdk/a/a;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    iget v3, p0, Lcom/vivo/speechsdk/a/a;->k:I

    invoke-virtual {v1, v3}, Lcom/vivo/speechsdk/a/h/c;->onEnd(I)V

    iput v2, p0, Lcom/vivo/speechsdk/a/a;->h:I

    const-string v1, "ClientRecognizer"

    const-string v2, "user destroy local call onEnd"

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public doAction(ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "key_event_id"

    invoke-virtual {p2, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0xb

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/a/a;->b(ILandroid/os/Bundle;)I

    return-void
.end method

.method public feedAudioData([BI)V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->obtain()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_audio_data"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "key_audio_data_length"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const/16 p1, 0x9

    invoke-direct {p0, p1, v0}, Lcom/vivo/speechsdk/a/a;->b(ILandroid/os/Bundle;)I

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/BundlePool;->getInstance()Lcom/vivo/speechsdk/common/utils/BundlePool;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/utils/BundlePool;->recycle(Landroid/os/Bundle;)Z

    return-void
.end method

.method public isListening()Z
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vivo/speechsdk/a/a;->b(ILandroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)I
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    if-nez v0, :cond_0

    const/16 p1, 0x7531

    return p1

    :cond_0
    const-string v0, "key_request_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/a/a;->k:I

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/a;->i:Ljava/util/concurrent/CountDownLatch;

    const-string v0, "rebind service"

    invoke-static {v0}, Lcom/vivo/speechsdk/b/g/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/e;->d()V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->i:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string v0, "rebind service"

    invoke-static {v0}, Lcom/vivo/speechsdk/b/g/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/vivo/speechsdk/a/a;->f:Lcom/vivo/speechsdk/a/e;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/a/e;->f()V

    const/16 p1, 0x7532

    return p1

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->d:Lcom/vivo/speechsdk/a/h/c;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/a/h/c;->a(Lcom/vivo/speechsdk/asr/api/IRecognizerProListener;)V

    const-string p2, "key_reload_engine_bundle"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->j:Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_reload_engine_bundle"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    const-string p2, "key_reload_engine_bundle"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v0, p0, Lcom/vivo/speechsdk/a/a;->j:Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    invoke-virtual {v0, p2}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->setBundle(Landroid/os/Bundle;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    :goto_1
    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lcom/vivo/speechsdk/a/a;->b(ILandroid/os/Bundle;)I

    move-result p1

    iget-object p2, p0, Lcom/vivo/speechsdk/a/a;->a:Ljava/lang/Object;

    monitor-enter p2

    if-nez p1, :cond_3

    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/vivo/speechsdk/a/a;->h:I

    :cond_3
    monitor-exit p2

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vivo/speechsdk/a/a;->b(ILandroid/os/Bundle;)I

    return-void
.end method

.method public updateHotWord(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V
    .locals 2

    new-instance v0, Lcom/vivo/speechsdk/a/h/d;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/vivo/speechsdk/a/h/d;-><init>(Landroid/os/Looper;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/a/a;->e:Lcom/vivo/speechsdk/a/h/d;

    const/4 p2, 0x7

    invoke-direct {p0, p2, p1}, Lcom/vivo/speechsdk/a/a;->b(ILandroid/os/Bundle;)I

    return-void
.end method
