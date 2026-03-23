.class public Lcom/unisound/sdk/BlockingAudioTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "TTS.BlockingAudioTrack"

.field private static final b:Z = false

.field private static final c:J = 0x14L

.field private static final d:J = 0x9c4L

.field private static final e:J = 0x9c4L

.field private static final f:I = 0x2000


# instance fields
.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Z

.field private m:I

.field private n:I

.field private o:Landroid/media/AudioTrack;

.field private volatile p:Z

.field private final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->q:Ljava/lang/Object;

    iput p1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->g:I

    iput p2, p0, Lcom/unisound/sdk/BlockingAudioTrack;->h:I

    iput p3, p0, Lcom/unisound/sdk/BlockingAudioTrack;->i:I

    iput p4, p0, Lcom/unisound/sdk/BlockingAudioTrack;->j:I

    invoke-static {p3}, Lcom/unisound/sdk/BlockingAudioTrack;->c(I)I

    move-result p1

    mul-int p1, p1, p4

    iput p1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->k:I

    iput-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->l:Z

    iput v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->m:I

    iput v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    iput-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    return-void
.end method

.method static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/16 p0, 0xc

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/media/AudioTrack;[B)I
    .locals 2

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method private static final a(JJJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    return-wide p2

    :cond_0
    cmp-long p2, p0, p4

    if-lez p2, :cond_1

    return-wide p4

    :cond_1
    return-wide p0
.end method

.method private a()Landroid/media/AudioTrack;
    .locals 9

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->j:I

    invoke-static {v0}, Lcom/unisound/sdk/BlockingAudioTrack;->a(I)I

    move-result v4

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->h:I

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->i:I

    invoke-static {v0, v4, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/16 v1, 0x2000

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v8, Landroid/media/AudioTrack;

    iget v2, p0, Lcom/unisound/sdk/BlockingAudioTrack;->g:I

    iget v3, p0, Lcom/unisound/sdk/BlockingAudioTrack;->h:I

    iget v5, p0, Lcom/unisound/sdk/BlockingAudioTrack;->i:I

    const/4 v7, 0x1

    move-object v1, v8

    move v6, v0

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    invoke-virtual {v8}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v0, "TTS.BlockingAudioTrack"

    const-string v1, "Unable to create audio track."

    invoke-static {v0, v1}, Lcom/unisound/common/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iput v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->m:I

    return-object v8
.end method

.method private a(Landroid/media/AudioTrack;)V
    .locals 1

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->l:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unisound/sdk/BlockingAudioTrack;->b()V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/unisound/sdk/BlockingAudioTrack;->b(Landroid/media/AudioTrack;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->k:I

    div-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->h:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b(Landroid/media/AudioTrack;)V
    .locals 14

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->k:I

    div-int/2addr v0, v1

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    move-wide v4, v1

    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v6

    if-ge v6, v0, :cond_2

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    iget-boolean v7, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    if-nez v7, :cond_2

    sub-int v7, v0, v6

    mul-int/lit16 v7, v7, 0x3e8

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v8

    div-int/2addr v7, v8

    int-to-long v8, v7

    const-wide/16 v10, 0x14

    const-wide/16 v12, 0x9c4

    invoke-static/range {v8 .. v13}, Lcom/unisound/sdk/BlockingAudioTrack;->a(JJJ)J

    move-result-wide v7

    if-ne v6, v3, :cond_0

    add-long/2addr v4, v7

    const-wide/16 v9, 0x9c4

    cmp-long v3, v4, v9

    if-lez v3, :cond_1

    const-string p1, "TTS.BlockingAudioTrack"

    const-string v0, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting"

    invoke-static {p1, v0}, Lcom/unisound/common/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-wide v4, v1

    :cond_1
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v6

    goto :goto_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private static c(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    return p0
.end method


# virtual methods
.method b(I)J
    .locals 2

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->k:I

    div-int/2addr p1, v0

    mul-int/lit16 p1, p1, 0x3e8

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->h:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public init()V
    .locals 2

    invoke-direct {p0}, Lcom/unisound/sdk/BlockingAudioTrack;->a()Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public waitAndRelease()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    iget v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->m:I

    if-ge v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->l:Z

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_1
    iget-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-direct {p0, v0}, Lcom/unisound/sdk/BlockingAudioTrack;->a(Landroid/media/AudioTrack;)V

    :cond_2
    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write([B)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-static {v0, p1}, Lcom/unisound/sdk/BlockingAudioTrack;->a(Landroid/media/AudioTrack;[B)I

    move-result p1

    iget v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->n:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public write([BII)I
    .locals 1

    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisound/sdk/BlockingAudioTrack;->o:Landroid/media/AudioTrack;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method
