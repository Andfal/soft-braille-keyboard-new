.class public Lt0/b;
.super Lt0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt0/b$a;
    }
.end annotation


# instance fields
.field private volatile b:Landroid/media/AudioTrack;

.field private c:Lt0/b$a;

.field private d:Lf1/b;

.field protected final e:Ljava/util/concurrent/locks/Lock;

.field protected final f:Ljava/util/concurrent/locks/Condition;

.field private g:Z

.field private h:I

.field private i:Lt0/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lt0/a;-><init>()V

    new-instance v0, Lf1/b;

    invoke-direct {v0}, Lf1/b;-><init>()V

    iput-object v0, p0, Lt0/b;->d:Lf1/b;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lt0/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lt0/b;->f:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt0/b;->g:Z

    return-void
.end method

.method private b(III)I
    .locals 4

    invoke-static {p1, p2, p3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    const/4 v0, 0x2

    mul-int/lit8 p1, p1, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p2, v2, :cond_1

    if-eq p2, v0, :cond_1

    if-eq p2, v1, :cond_0

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    const/16 v3, 0xc

    if-eq p2, v3, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    if-ne p3, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    mul-int p2, p2, v0

    rem-int p2, p1, p2

    if-nez p2, :cond_3

    if-ge p1, v2, :cond_4

    :cond_3
    const/16 p1, 0x1400

    :cond_4
    return p1
.end method

.method private d(Ll1/h;)V
    .locals 2

    iget-object v0, p0, Lt0/b;->d:Lf1/b;

    invoke-direct {p0}, Lt0/b;->l()I

    move-result v1

    invoke-virtual {v0, v1}, Lf1/b;->b(I)V

    iget-object v0, p0, Lt0/b;->d:Lf1/b;

    invoke-virtual {v0}, Lf1/b;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lt0/b;->h:I

    invoke-direct {p0, p1}, Lt0/b;->g(Ll1/h;)V

    return-void
.end method

.method private e(I)I
    .locals 1

    iget v0, p0, Lt0/b;->h:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lt0/b;->h:I

    :cond_0
    iget p1, p0, Lt0/b;->h:I

    return p1
.end method

.method private f(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lt0/b;->d:Lf1/b;

    invoke-virtual {v0}, Lf1/b;->c()V

    invoke-direct {p0, p1}, Lt0/b;->j(Ll1/h;)V

    return-void
.end method

.method private g(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lt0/a;->a:Lr0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr0/a;->a(Ll1/h;)V

    :cond_0
    return-void
.end method

.method private h(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lt0/a;->a:Lr0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr0/a;->b(Ll1/h;)V

    :cond_0
    return-void
.end method

.method private j(Ll1/h;)V
    .locals 1

    iget-object v0, p0, Lt0/a;->a:Lr0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lr0/a;->c(Ll1/h;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lt0/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lt0/b;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lt0/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object v1, p0, Lt0/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private l()I
    .locals 2

    iget-object v0, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v0}, Ll1/c;->g()I

    move-result v0

    iget-object v1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v1}, Lt0/b$a;->h()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public a(I)I
    .locals 9

    const-string v0, "AudioTrackPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioStreamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v1}, Ll1/c;->f()I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v1}, Lt0/b$a;->h()I

    move-result v4

    iget-object v1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v1}, Lt0/b$a;->k()I

    move-result v5

    iget-object v1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v1}, Lt0/b$a;->n()I

    move-result v6

    iget-object v1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v1}, Lt0/b$a;->p()I

    move-result v8

    invoke-direct {p0, v4, v5, v6}, Lt0/b;->b(III)I

    move-result v7

    iget-object v1, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    :cond_1
    new-instance v1, Landroid/media/AudioTrack;

    move-object v2, v1

    move v3, p1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    iget-object v1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v1, p1}, Ll1/c;->d(I)V

    iget-object p1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {p1}, Lt0/b$a;->q()F

    move-result p1

    iget-object v1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v1}, Lt0/b$a;->r()F

    move-result v1

    iget-object v2, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v2, p1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    iget-object p1, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(II)I
    .locals 12

    const-string v0, "AudioTrackPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setAudioAttributes   mUsage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mContentType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v2}, Lt0/b$a;->s()I

    move-result v2

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v2}, Lt0/b$a;->t()I

    move-result v2

    if-eq p2, v2, :cond_3

    :cond_1
    iget-object v2, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v2}, Lt0/b$a;->h()I

    move-result v2

    iget-object v3, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v3}, Lt0/b$a;->k()I

    move-result v3

    iget-object v4, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v4}, Lt0/b$a;->n()I

    move-result v4

    iget-object v5, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v5}, Lt0/b$a;->p()I

    move-result v10

    invoke-direct {p0, v2, v3, v4}, Lt0/b;->b(III)I

    move-result v9

    iget-object v5, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->release()V

    :cond_2
    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    new-instance v5, Landroid/media/AudioFormat$Builder;

    invoke-direct {v5}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v5, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v8

    new-instance v2, Landroid/media/AudioTrack;

    const/4 v11, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v2, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    iget-object v2, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v2, p1}, Lt0/b$a;->m(I)V

    iget-object p1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {p1, p2}, Lt0/b$a;->o(I)V

    iget-object p1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {p1}, Lt0/b$a;->q()F

    move-result p1

    iget-object p2, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {p2}, Lt0/b$a;->r()F

    move-result p2

    iget-object v2, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v2, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    iget-object p1, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :try_start_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    monitor-exit v0

    return v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a()Ll0/f;
    .locals 10

    iget-object v0, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v0}, Lt0/b$a;->h()I

    move-result v0

    iget-object v1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v1}, Lt0/b$a;->k()I

    move-result v1

    iget-object v2, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v2}, Lt0/b$a;->n()I

    move-result v2

    iget-object v3, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v3}, Ll1/c;->f()I

    iget-object v3, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v3}, Lt0/b$a;->p()I

    move-result v8

    iget-object v3, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v3}, Lt0/b$a;->s()I

    move-result v3

    iget-object v4, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v4}, Lt0/b$a;->t()I

    move-result v4

    invoke-direct {p0, v0, v1, v2}, Lt0/b;->b(III)I

    move-result v7

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v6

    new-instance v0, Landroid/media/AudioTrack;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    iget-object v0, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v0}, Lt0/b$a;->q()F

    move-result v0

    iget-object v1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v1}, Lt0/b$a;->r()F

    move-result v1

    iget-object v2, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v2, v0, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ll1/h;)Ll0/f;
    .locals 14

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    monitor-enter v0

    :try_start_0
    const-string v1, "AudioTrackPlayer"

    const-string v2, "enter put"

    invoke-static {v1, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ll1/h;->z()Lb1/e;

    move-result-object v2

    sget-object v3, Lb1/e;->a:Lb1/e;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v3, v4}, Landroid/media/AudioTrack;->setPositionNotificationPeriod(I)I

    invoke-direct {p0, p1}, Lt0/b;->d(Ll1/h;)V

    :cond_0
    sget-object v3, Lb1/e;->c:Lb1/e;

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Ll1/h;->A()Lb1/k;

    move-result-object v3

    invoke-virtual {v3}, Lb1/k;->a()I

    move-result v3

    iget-object v5, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v5

    if-eq v3, v5, :cond_1

    invoke-virtual {p0, v3}, Lt0/b;->b(I)I

    :cond_1
    iget-object v3, p0, Lt0/b;->d:Lf1/b;

    invoke-virtual {p1}, Ll1/h;->r()I

    move-result v5

    invoke-virtual {v3, v5}, Lf1/b;->f(I)V

    :cond_2
    invoke-virtual {p1}, Ll1/h;->u()[B

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v5, p0, Lt0/b;->d:Lf1/b;

    array-length v6, v3

    invoke-virtual {v5, v6}, Lf1/b;->d(I)V

    :cond_3
    :goto_0
    iget-object v5, p0, Lt0/b;->d:Lf1/b;

    invoke-virtual {v5}, Lf1/b;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lt0/b;->d:Lf1/b;

    invoke-virtual {v5}, Lf1/b;->e()Lf1/a;

    move-result-object v5

    invoke-virtual {v5}, Lf1/a;->a()I

    move-result v6

    invoke-virtual {v5}, Lf1/a;->e()I

    move-result v7

    const/4 v8, 0x0

    :cond_4
    const/4 v9, 0x1

    if-ge v8, v7, :cond_8

    iget-object v10, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v10}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v10

    if-eq v10, v9, :cond_8

    if-eqz v3, :cond_8

    sub-int v9, v7, v8

    const-string v10, "AudioTrackPlayer"

    const-string v11, "before write"

    invoke-static {v10, v11}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int v10, v8, v6

    invoke-static {}, Lt0/d;->e()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lt0/b;->i:Lt0/d;

    if-nez v11, :cond_5

    new-instance v11, Lt0/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Lt0/d;-><init>(J)V

    iput-object v11, p0, Lt0/b;->i:Lt0/d;

    :cond_5
    iget-object v11, p0, Lt0/b;->i:Lt0/d;

    if-eqz v11, :cond_6

    invoke-virtual {v11, v3, v10, v9}, Lt0/d;->d([BII)V

    :cond_6
    iget-object v11, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v11, v3, v10, v9}, Landroid/media/AudioTrack;->write([BII)I

    move-result v9

    const-string v10, "AudioTrackPlayer"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "writtenbytes="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "--offset="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "--dataLength="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v9, :cond_7

    add-int/2addr v8, v9

    :goto_1
    iget-boolean v9, p0, Lt0/b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v9, :cond_4

    :try_start_1
    iget-object v9, p0, Lt0/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-string v9, "AudioTrackPlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "await before"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lt0/b;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v9}, Ljava/util/concurrent/locks/Condition;->await()V

    const-string v9, "AudioTrackPlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "await after"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v9, p0, Lt0/b;->e:Ljava/util/concurrent/locks/Lock;

    :goto_2
    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v9, p0, Lt0/b;->e:Ljava/util/concurrent/locks/Lock;

    goto :goto_2

    :goto_3
    iget-object v1, p0, Lt0/b;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :cond_7
    monitor-exit v0

    return-object v1

    :cond_8
    iget-object v6, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v6

    if-ne v6, v9, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    invoke-virtual {v5}, Lf1/a;->g()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Ll1/h;->r()I

    move-result v6

    invoke-virtual {v5}, Lf1/a;->h()F

    move-result v5

    int-to-float v6, v6

    mul-float v6, v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0, v6}, Lt0/b;->e(I)I

    move-result v7

    const-string v8, "AudioTrackPlayer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "percent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "--currentProgress="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "--progress="

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lm1/a;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll1/h;

    invoke-virtual {v5, v7}, Ll1/h;->t(I)V

    invoke-direct {p0, v5}, Lt0/b;->h(Ll1/h;)V

    goto/16 :goto_0

    :cond_a
    sget-object v3, Lb1/e;->b:Lb1/e;

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lt0/b;->d:Lf1/b;

    invoke-virtual {v2}, Lf1/b;->g()I

    move-result v2

    invoke-virtual {p1}, Lm1/a;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll1/h;

    invoke-virtual {v3, v2}, Ll1/h;->t(I)V

    invoke-direct {p0, v3}, Lt0/b;->h(Ll1/h;)V

    invoke-direct {p0, p1}, Lt0/b;->f(Ll1/h;)V

    goto :goto_4

    :cond_b
    const-string p1, "AudioTrackPlayer"

    const-string v2, "put responseBag=null"

    invoke-static {p1, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_4
    const-string p1, "AudioTrackPlayer"

    const-string v2, "end put"

    invoke-static {p1, v2}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AudioTrackPlayerParams:",
            "Ljava/lang/Object;",
            ">(TAudioTrackPlayerParams;)V"
        }
    .end annotation

    check-cast p1, Lt0/b$a;

    iput-object p1, p0, Lt0/b;->c:Lt0/b$a;

    return-void
.end method

.method public b(I)I
    .locals 9

    :try_start_0
    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    const/4 p1, -0x2

    return p1

    :cond_0
    const-string v0, "AudioTrackPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sampleRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAudioTrack sampleRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv0/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v0}, Ll1/c;->f()I

    iget-object v0, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v0}, Lt0/b$a;->k()I

    move-result v0

    iget-object v1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v1}, Lt0/b$a;->n()I

    move-result v1

    iget-object v2, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v2}, Lt0/b$a;->p()I

    move-result v7

    iget-object v2, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v2}, Lt0/b$a;->s()I

    move-result v2

    iget-object v3, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v3}, Lt0/b$a;->t()I

    move-result v3

    invoke-direct {p0, p1, v0, v1}, Lt0/b;->b(III)I

    move-result v6

    iget-object v4, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->release()V

    :cond_1
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v4, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    new-instance p1, Landroid/media/AudioTrack;

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object p1, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    iget-object p1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {p1}, Lt0/b$a;->q()F

    move-result p1

    iget-object v0, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v0}, Lt0/b$a;->r()F

    move-result v0

    iget-object v1, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    iget-object p1, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(FF)I
    .locals 2

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    iget-object v1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {v1, p1}, Lt0/b$a;->i(F)V

    iget-object p1, p0, Lt0/b;->c:Lt0/b$a;

    invoke-virtual {p1, p2}, Lt0/b$a;->l(F)V

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lt0/b;->g:Z

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v0, p0, Lt0/b;->i:Lt0/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lt0/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt0/b;->i:Lt0/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lt0/b;->g:Z

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    invoke-direct {p0}, Lt0/b;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lt0/b;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lt0/b;->g:Z

    invoke-direct {p0}, Lt0/b;->k()V

    :cond_0
    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    iget-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_1
    iget-object v0, p0, Lt0/b;->i:Lt0/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lt0/d;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt0/b;->i:Lt0/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public f()Ll0/f;
    .locals 2

    invoke-virtual {p0}, Lt0/b;->e()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt0/b;->b:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    :cond_0
    iput-object v0, p0, Lt0/b;->b:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public i(Lr0/a;)V
    .locals 0

    iput-object p1, p0, Lt0/a;->a:Lr0/a;

    return-void
.end method
