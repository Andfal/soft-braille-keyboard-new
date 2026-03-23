.class public Lcom/unisound/sdk/bl;
.super Lcom/unisound/sdk/bh;
.source "SourceFile"


# static fields
.field public static final c:I = 0x32

.field public static d:Z

.field private static final e:Ljava/text/SimpleDateFormat;

.field private static f:I


# instance fields
.field private g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private h:Lcom/unisound/sdk/bm;

.field private i:Z

.field private volatile j:I

.field private k:Lcom/unisound/sdk/BlockingAudioTrack;

.field private l:Z

.field private m:Z

.field private n:Ljava/lang/Object;

.field private o:Ljava/lang/Boolean;

.field private p:Ljava/lang/Boolean;

.field private q:Lcom/unisound/client/IAudioSource;

.field private r:Lcom/unisound/sdk/bk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd_HH_mm_ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/unisound/sdk/bl;->e:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x32

    sput v0, Lcom/unisound/sdk/bl;->f:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisound/sdk/bl;->d:Z

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/bk;)V
    .locals 2

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->q()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lcom/unisound/sdk/bk;->l()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/unisound/sdk/bh;-><init>(ZZ)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bl;->g:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bl;->i:Z

    iput v0, p0, Lcom/unisound/sdk/bl;->j:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    iput-boolean v0, p0, Lcom/unisound/sdk/bl;->l:Z

    iput-boolean v0, p0, Lcom/unisound/sdk/bl;->m:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unisound/sdk/bl;->n:Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/unisound/sdk/bl;->o:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/unisound/sdk/bl;->p:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/unisound/sdk/bl;->r:Lcom/unisound/sdk/bk;

    return-void
.end method

.method public static a([S)[B
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-short v2, p0, v1

    mul-int/lit8 v3, v1, 0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    const v4, 0xff00

    and-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Z)V
    .locals 0

    sput-boolean p0, Lcom/unisound/sdk/bl;->d:Z

    return-void
.end method

.method private c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/bm;->a(Z)V

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/bm;->b(I)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unisound/sdk/bl;->m:Z

    return-void
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lcom/unisound/sdk/bl;->d:Z

    return v0
.end method

.method private m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bl;->i:Z

    return v0
.end method

.method private n()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bm;->a()V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bm;->b()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bm;->c()V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bl;->m:Z

    iget-object v0, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bm;->e()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bm;->f()V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/sdk/bm;->g()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/sdk/bl;->m:Z

    return-void
.end method

.method private t()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/unisound/sdk/bl;->e:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private u()Z
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/bl;->j:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private v()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/bl;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/unisound/sdk/bl;->l:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unisound/sdk/bl;->l:Z

    const-string v1, "lockObject notify.."

    invoke-static {v1}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisound/sdk/bl;->n:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    invoke-direct {p0}, Lcom/unisound/sdk/bl;->r()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private w()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bl;->l:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/unisound/client/IAudioSource;)V
    .locals 1

    iput-object p1, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    if-nez p1, :cond_0

    new-instance p1, Lcom/unisound/common/e;

    iget-object v0, p0, Lcom/unisound/sdk/bl;->r:Lcom/unisound/sdk/bk;

    invoke-direct {p1, v0}, Lcom/unisound/common/e;-><init>(Lcom/unisound/sdk/bk;)V

    iput-object p1, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    :cond_0
    return-void
.end method

.method public a(Lcom/unisound/sdk/bm;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/sdk/bl;->o:Ljava/lang/Boolean;

    return-void
.end method

.method public a([B)V
    .locals 2

    iget v0, p0, Lcom/unisound/sdk/bl;->j:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/unisound/sdk/bl;->j:I

    iget-object v0, p0, Lcom/unisound/sdk/bl;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/unisound/sdk/bl;->p:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/unisound/sdk/bl;->n()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/unisound/sdk/bl;->p:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    invoke-super {p0}, Lcom/unisound/sdk/bh;->b()V

    iget-object v0, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unisound/sdk/bl;->v()V

    iget-object v0, p0, Lcom/unisound/sdk/bl;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/unisound/client/IAudioSource;->closeAudioOut()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/unisound/sdk/bl;->v()V

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    :cond_2
    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/unisound/sdk/bm;->a(I)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unisound/sdk/bl;->j()V

    int-to-long v0, p1

    :try_start_0
    invoke-super {p0, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/bh;->d()V

    invoke-direct {p0}, Lcom/unisound/sdk/bl;->w()V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-super {p0}, Lcom/unisound/sdk/bh;->f()V

    invoke-direct {p0}, Lcom/unisound/sdk/bl;->v()V

    return-void
.end method

.method public g()Lcom/unisound/sdk/bm;
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    return-object v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bl;->i:Z

    return-void
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/sdk/bl;->h:Lcom/unisound/sdk/bm;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/unisound/sdk/bl;->o:Ljava/lang/Boolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/bl;->i:Z

    return-void
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unisound/sdk/bl;->m:Z

    return v0
.end method

.method public run()V
    .locals 11

    invoke-super {p0}, Lcom/unisound/common/f;->run()V

    const-string v0, "TTSPlayThread run(): play start"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/unisound/sdk/bh;->c()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/sdk/bl;->r:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/unisound/sdk/bl;->r:Lcom/unisound/sdk/bk;

    invoke-virtual {v3}, Lcom/unisound/sdk/bk;->r()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/unisound/sdk/bl;->t()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v3, v2

    :goto_0
    iget-object v0, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    const/4 v4, 0x2

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/unisound/client/IAudioSource;->openAudioOut()I

    move-result v0

    if-eqz v0, :cond_2

    const v0, -0x163dd

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bl;->d(I)V

    return-void

    :cond_2
    invoke-static {v1}, Lcom/unisound/sdk/bl;->b(Z)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/unisound/sdk/BlockingAudioTrack;

    iget-object v5, p0, Lcom/unisound/sdk/bl;->r:Lcom/unisound/sdk/bk;

    invoke-virtual {v5}, Lcom/unisound/sdk/bk;->z()I

    move-result v5

    iget-object v6, p0, Lcom/unisound/sdk/bl;->r:Lcom/unisound/sdk/bk;

    invoke-virtual {v6}, Lcom/unisound/sdk/bk;->x()I

    move-result v6

    invoke-direct {v0, v5, v6, v4, v1}, Lcom/unisound/sdk/BlockingAudioTrack;-><init>(IIII)V

    iput-object v0, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->init()V

    iget-object v0, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->start()V

    :goto_1
    iget-object v0, p0, Lcom/unisound/sdk/bl;->r:Lcom/unisound/sdk/bk;

    invoke-virtual {v0}, Lcom/unisound/sdk/bk;->w()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e80

    mul-int/lit8 v0, v0, 0x2

    div-int/lit16 v0, v0, 0x3e8

    :goto_2
    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/unisound/sdk/bl;->o:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-wide/16 v6, 0x32

    if-nez v5, :cond_4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/unisound/sdk/bh;->a()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0}, Lcom/unisound/sdk/bl;->m()Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, p0, Lcom/unisound/sdk/bl;->j:I

    if-ge v5, v0, :cond_5

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/unisound/sdk/bl;->o()V

    invoke-direct {p0}, Lcom/unisound/sdk/bl;->u()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-direct {p0}, Lcom/unisound/sdk/bl;->p()V

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/unisound/sdk/bh;->a()Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/unisound/sdk/bl;->g:Ljava/util/concurrent/BlockingQueue;

    sget v6, Lcom/unisound/sdk/bl;->f:I

    int-to-long v6, v6

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-eqz v5, :cond_c

    array-length v6, v5

    iget v7, p0, Lcom/unisound/sdk/bl;->j:I

    if-lt v7, v0, :cond_7

    invoke-direct {p0, v1}, Lcom/unisound/sdk/bl;->c(Z)V

    goto :goto_5

    :cond_7
    invoke-direct {p0, v4}, Lcom/unisound/sdk/bl;->c(Z)V

    :goto_5
    iget v7, p0, Lcom/unisound/sdk/bl;->j:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/unisound/sdk/bl;->j:I

    const/4 v7, 0x0

    :goto_6
    if-lez v6, :cond_b

    invoke-virtual {p0}, Lcom/unisound/sdk/bh;->a()Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/unisound/sdk/bl;->n:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-boolean v9, p0, Lcom/unisound/sdk/bl;->l:Z

    if-eqz v9, :cond_8

    const-string v9, "TTSPlayThread run(): lockObject wait..."

    invoke-static {v9}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/unisound/sdk/bl;->q()V

    iget-object v9, p0, Lcom/unisound/sdk/bl;->n:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V

    goto :goto_7

    :cond_8
    iput-boolean v1, p0, Lcom/unisound/sdk/bl;->m:Z

    :goto_7
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v8, 0x640

    if-le v8, v6, :cond_9

    move v8, v6

    :cond_9
    :try_start_3
    iget-object v9, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    if-eqz v9, :cond_a

    new-array v9, v8, [B

    invoke-static {v5, v7, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v10, "TTSPlayThread run : before writeData "

    invoke-static {v10}, Lcom/unisound/common/r;->f(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    invoke-interface {v10, v9, v8}, Lcom/unisound/client/IAudioSource;->writeData([BI)I

    const-string v9, "TTSPlayThread run : after writeData "

    invoke-static {v9}, Lcom/unisound/common/r;->f(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    iget-object v9, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v9, v5, v7, v8}, Lcom/unisound/sdk/BlockingAudioTrack;->write([BII)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_8
    add-int/2addr v7, v8

    sub-int/2addr v6, v8

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_b
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/unisound/sdk/bh;->c()Z

    move-result v6

    if-eqz v6, :cond_6

    array-length v6, v5

    invoke-virtual {v3, v5, v4, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_4

    :cond_c
    invoke-direct {p0}, Lcom/unisound/sdk/bl;->m()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_d
    invoke-direct {p0}, Lcom/unisound/sdk/bl;->s()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_e
    iget-object v0, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/unisound/sdk/bl;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Lcom/unisound/client/IAudioSource;->closeAudioOut()V

    iput-object v2, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    :cond_f
    monitor-exit v0

    goto :goto_9

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    :cond_10
    iget-object v0, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    iget-object v0, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->waitAndRelease()V

    iput-object v2, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    :cond_11
    :goto_9
    iput-boolean v4, p0, Lcom/unisound/sdk/bl;->l:Z

    if-eqz v3, :cond_15

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_b

    :catchall_2
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const v0, -0x163de

    invoke-direct {p0, v0}, Lcom/unisound/sdk/bl;->d(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    iget-object v0, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/unisound/sdk/bl;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    iget-object v1, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/unisound/client/IAudioSource;->closeAudioOut()V

    iput-object v2, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    :cond_12
    monitor-exit v0

    goto :goto_a

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1

    :cond_13
    iget-object v0, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    iget-object v0, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->waitAndRelease()V

    iput-object v2, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    :cond_14
    :goto_a
    iput-boolean v4, p0, Lcom/unisound/sdk/bl;->l:Z

    if-eqz v3, :cond_15

    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_15
    :goto_b
    invoke-static {v4}, Lcom/unisound/sdk/bl;->b(Z)V

    invoke-virtual {p0, v4}, Lcom/unisound/sdk/bl;->b(I)V

    iput v4, p0, Lcom/unisound/sdk/bl;->j:I

    const-string v0, "TTSPlayThread run(): play end"

    invoke-static {v0}, Lcom/unisound/common/r;->b(Ljava/lang/String;)V

    return-void

    :goto_c
    iget-object v1, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/unisound/sdk/bl;->n:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v5, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    if-eqz v5, :cond_16

    invoke-interface {v5}, Lcom/unisound/client/IAudioSource;->closeAudioOut()V

    iput-object v2, p0, Lcom/unisound/sdk/bl;->q:Lcom/unisound/client/IAudioSource;

    :cond_16
    monitor-exit v1

    goto :goto_d

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    :cond_17
    iget-object v1, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    iget-object v1, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v1}, Lcom/unisound/sdk/BlockingAudioTrack;->waitAndRelease()V

    iput-object v2, p0, Lcom/unisound/sdk/bl;->k:Lcom/unisound/sdk/BlockingAudioTrack;

    :cond_18
    :goto_d
    iput-boolean v4, p0, Lcom/unisound/sdk/bl;->l:Z

    if-eqz v3, :cond_19

    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_e

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_19
    :goto_e
    throw v0
.end method
