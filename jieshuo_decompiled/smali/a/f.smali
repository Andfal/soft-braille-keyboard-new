.class public La/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/client/IAudioSource;


# static fields
.field private static s:I


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:Landroid/media/AudioRecord;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/media/AudioTrack;

.field private l:Z

.field private m:I

.field private n:Z

.field private o:F

.field private p:Z

.field private q:Lh4/a;

.field private r:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/f;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, La/f;->c:Landroid/media/AudioRecord;

    const/16 v1, 0x10

    iput v1, p0, La/f;->d:I

    const/4 v1, 0x2

    iput v1, p0, La/f;->e:I

    const/4 v1, 0x3

    iput v1, p0, La/f;->f:I

    const/16 v1, 0x3e80

    iput v1, p0, La/f;->g:I

    iput v1, p0, La/f;->h:I

    const/4 v1, 0x4

    iput v1, p0, La/f;->i:I

    const/4 v1, 0x1

    iput v1, p0, La/f;->j:I

    iput-object v0, p0, La/f;->k:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    iput-boolean v0, p0, La/f;->n:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, La/f;->o:F

    new-instance v2, Lh4/a;

    iget v3, p0, La/f;->g:I

    invoke-direct {v2, v3, v1}, Lh4/a;-><init>(II)V

    iput-object v2, p0, La/f;->q:Lh4/a;

    iput v0, p0, La/f;->r:F

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, La/f;->c:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La/f;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    iget-object v0, p0, La/f;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, La/f;->c:Landroid/media/AudioRecord;

    :cond_1
    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, La/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "yun zhi sheng"

    const-string v2, "closeOut"

    invoke-static {v1, v2}, La/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, La/f;->k:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private c()V
    .locals 3

    const/16 v0, 0x8

    iput v0, p0, La/f;->b:I

    iget v0, p0, La/f;->h:I

    iget v1, p0, La/f;->i:I

    iget v2, p0, La/f;->e:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "static initializer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yun zhi sheng"

    invoke-static {v2, v1}, La/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, La/f;->b:I

    iput v0, p0, La/f;->m:I

    return-void
.end method

.method private d()I
    .locals 12

    const-string v0, "yun zhi sheng"

    const-string v1, "initOut"

    invoke-static {v0, v1}, La/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lh4/a;

    iget v1, p0, La/f;->g:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lh4/a;-><init>(II)V

    iput-object v0, p0, La/f;->q:Lh4/a;

    iget v1, p0, La/f;->r:F

    invoke-virtual {v0, v1}, Lh4/a;->B(F)V

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, La/f;->c()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x0

    if-lt v1, v3, :cond_2

    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-boolean v5, p0, La/f;->p:Z

    if-eqz v5, :cond_0

    const/16 v5, 0xb

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v3, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v5

    const v6, 0x7f0706a5

    invoke-static {v5, v6, v2}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x100

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-static {v1, v3}, La/a;->a(Landroid/media/AudioTrack$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    new-instance v3, Landroid/media/AudioFormat$Builder;

    invoke-direct {v3}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v5, p0, La/f;->e:I

    invoke-virtual {v3, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    iget v5, p0, La/f;->g:I

    invoke-virtual {v3, v5}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    iget v5, p0, La/f;->i:I

    invoke-virtual {v3, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v3

    invoke-static {v1, v3}, La/b;->a(Landroid/media/AudioTrack$Builder;Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    iget v3, p0, La/f;->b:I

    invoke-static {v1, v3}, La/c;->a(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    iget v3, p0, La/f;->j:I

    invoke-static {v1, v3}, La/d;->a(Landroid/media/AudioTrack$Builder;I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    invoke-static {v1}, La/e;->a(Landroid/media/AudioTrack$Builder;)Landroid/media/AudioTrack;

    move-result-object v1

    :goto_2
    iput-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    goto :goto_3

    :cond_2
    iget v1, p0, La/f;->f:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    iput v1, p0, La/f;->f:I

    :cond_3
    new-instance v1, Landroid/media/AudioTrack;

    iget v6, p0, La/f;->f:I

    iget v7, p0, La/f;->g:I

    iget v8, p0, La/f;->i:I

    iget v9, p0, La/f;->e:I

    iget v10, p0, La/f;->b:I

    iget v11, p0, La/f;->j:I

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    goto :goto_2

    :goto_3
    sget v1, La/f;->s:I

    add-int/2addr v1, v2

    sput v1, La/f;->s:I

    const-string v3, "mAudioTrackIdx new"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, La/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mAudioTrackIdx"

    invoke-static {v1}, Lcom/androlua/LuaUtil;->printStackTrace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, La/f;->q:Lh4/a;

    iget v2, p0, La/f;->o:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v5, v2, v3

    if-gez v5, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_4
    invoke-virtual {v1, v2}, Lh4/a;->C(F)V

    :try_start_1
    iget-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    iget v2, p0, La/f;->o:F

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setVolume(F)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    :try_start_2
    iget-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v4

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    iput-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    :cond_5
    return v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private f()I
    .locals 7

    invoke-direct {p0}, La/f;->c()V

    new-instance v6, Landroid/media/AudioRecord;

    const/4 v1, 0x0

    const/16 v2, 0x3e80

    iget v3, p0, La/f;->d:I

    iget v4, p0, La/f;->e:I

    iget v5, p0, La/f;->b:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v6, p0, La/f;->c:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La/f;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private i([BI)I
    .locals 2

    iget-object v0, p0, La/f;->c:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    :cond_0
    return v1
.end method

.method private p([BI)I
    .locals 4

    iget-object v0, p0, La/f;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v2, :cond_2

    :try_start_1
    iget v1, p0, La/f;->r:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, p0, La/f;->o:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    iget-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, v3, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p1

    :cond_1
    :try_start_3
    iget-object v1, p0, La/f;->q:Lh4/a;

    invoke-virtual {v1, p1, p2}, Lh4/a;->E([BI)V

    mul-int/lit8 p2, p2, 0x4

    new-array p1, p2, [B

    iget-object v1, p0, La/f;->q:Lh4/a;

    invoke-virtual {v1, p1, p2}, Lh4/a;->w([BI)I

    move-result p2

    iget-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1, v3, p2}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const-string p1, "yun zhi sheng"

    const-string p2, "write3 stop"

    invoke-static {p1, p2}, La/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return v3

    :cond_3
    :goto_0
    const-string p1, "yun zhi sheng"

    const-string p2, "write3 no init"

    invoke-static {p1, p2}, La/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    const/4 p1, -0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method


# virtual methods
.method public closeAudioIn()V
    .locals 0

    invoke-direct {p0}, La/f;->a()V

    return-void
.end method

.method public closeAudioOut()V
    .locals 1

    iget-boolean v0, p0, La/f;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La/f;->n:Z

    iput-boolean v0, p0, La/f;->l:Z

    invoke-direct {p0}, La/f;->b()V

    return-void
.end method

.method public g(III)I
    .locals 0

    iget-object p3, p0, La/f;->k:Landroid/media/AudioTrack;

    if-eqz p3, :cond_0

    iget p3, p0, La/f;->g:I

    if-eq p3, p1, :cond_0

    invoke-virtual {p0}, La/f;->j()V

    :cond_0
    iput p2, p0, La/f;->e:I

    if-nez p1, :cond_1

    const/16 p1, 0x3e80

    :cond_1
    iput p1, p0, La/f;->g:I

    invoke-virtual {p0}, La/f;->openAudioOut()I

    move-result p1

    return p1
.end method

.method public h()I
    .locals 4

    iget-object v0, p0, La/f;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, La/f;->n:Z

    const-string v2, "yun zhi sheng"

    const-string v3, "openOut"

    invoke-static {v2, v3}, La/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, La/f;->k:Landroid/media/AudioTrack;

    if-nez v2, :cond_0

    invoke-direct {p0}, La/f;->d()I

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :try_start_1
    iget-object v2, p0, La/f;->k:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-virtual {p0}, La/f;->j()V

    invoke-direct {p0}, La/f;->d()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 3

    :try_start_0
    iget-object v0, p0, La/f;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    iget-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, La/f;->k:Landroid/media/AudioTrack;

    sget v1, La/f;->s:I

    sub-int/2addr v1, v2

    sput v1, La/f;->s:I

    const-string v2, "mAudioTrackIdx release"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, La/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public k(F)V
    .locals 1

    iget v0, p0, La/f;->r:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, La/f;->q:Lh4/a;

    invoke-virtual {v0, p1}, Lh4/a;->B(F)V

    iput p1, p0, La/f;->r:F

    return-void
.end method

.method public l(I)V
    .locals 1

    iget v0, p0, La/f;->f:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, La/f;->f:I

    iget-object p1, p0, La/f;->k:Landroid/media/AudioTrack;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, La/f;->j()V

    :cond_1
    invoke-virtual {p0}, La/f;->h()I

    return-void
.end method

.method public m(IZ)V
    .locals 1

    iget v0, p0, La/f;->f:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, La/f;->p:Z

    iput p1, p0, La/f;->f:I

    iget-object p1, p0, La/f;->k:Landroid/media/AudioTrack;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, La/f;->j()V

    :cond_1
    invoke-virtual {p0}, La/f;->h()I

    return-void
.end method

.method public n(Z)V
    .locals 1

    iget-boolean v0, p0, La/f;->p:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, La/f;->p:Z

    iget-object p1, p0, La/f;->k:Landroid/media/AudioTrack;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, La/f;->j()V

    :cond_1
    invoke-virtual {p0}, La/f;->h()I

    return-void
.end method

.method public o(F)V
    .locals 3

    iget v0, p0, La/f;->o:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, La/f;->o:F

    iget-object v0, p0, La/f;->k:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, La/f;->q:Lh4/a;

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {v0, p1}, Lh4/a;->C(F)V

    :try_start_0
    iget-object p1, p0, La/f;->k:Landroid/media/AudioTrack;

    iget v0, p0, La/f;->o:F

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->setVolume(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public openAudioIn()I
    .locals 1

    invoke-direct {p0}, La/f;->f()I

    move-result v0

    return v0
.end method

.method public openAudioOut()I
    .locals 3

    iget-boolean v0, p0, La/f;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, La/f;->l:Z

    invoke-virtual {p0}, La/f;->h()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "yun zhi sheng"

    invoke-static {v2, v1}, La/f;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public readData([BI)I
    .locals 0

    invoke-direct {p0, p1, p2}, La/f;->i([BI)I

    move-result p1

    return p1
.end method

.method public writeData([BI)I
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, La/f;->p([BI)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method
