.class public Lcom/unisound/common/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unisound/client/IAudioSource;


# static fields
.field public static final a:I = 0x3e80

.field protected static b:I = 0x10

.field protected static c:I = 0x2

.field protected static d:I = 0x4

.field protected static e:I = 0x1

.field private static f:I = 0x3e80

.field private static g:I = 0x1900


# instance fields
.field private h:Landroid/media/AudioRecord;

.field private i:Ljava/lang/Object;

.field private j:Lcn/yunzhisheng/asr/a;

.field private k:Lcom/unisound/sdk/bk;

.field private l:Lcom/unisound/sdk/BlockingAudioTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    const/4 v1, 0x2

    const/16 v2, 0x3e80

    invoke-static {v2, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    sget v1, Lcom/unisound/common/e;->g:I

    if-ge v1, v0, :cond_0

    sput v0, Lcom/unisound/common/e;->g:I

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/e;->h:Landroid/media/AudioRecord;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unisound/common/e;->i:Ljava/lang/Object;

    iput-object v0, p0, Lcom/unisound/common/e;->l:Lcom/unisound/sdk/BlockingAudioTrack;

    return-void
.end method

.method public constructor <init>(Lcn/yunzhisheng/asr/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/e;->h:Landroid/media/AudioRecord;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unisound/common/e;->i:Ljava/lang/Object;

    iput-object v0, p0, Lcom/unisound/common/e;->l:Lcom/unisound/sdk/BlockingAudioTrack;

    iput-object p1, p0, Lcom/unisound/common/e;->j:Lcn/yunzhisheng/asr/a;

    return-void
.end method

.method public constructor <init>(Lcom/unisound/sdk/bk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/e;->h:Landroid/media/AudioRecord;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unisound/common/e;->i:Ljava/lang/Object;

    iput-object v0, p0, Lcom/unisound/common/e;->l:Lcom/unisound/sdk/BlockingAudioTrack;

    iput-object p1, p0, Lcom/unisound/common/e;->k:Lcom/unisound/sdk/bk;

    return-void
.end method

.method private a()I
    .locals 6

    iget-object v0, p0, Lcom/unisound/common/e;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/unisound/sdk/BlockingAudioTrack;

    iget-object v2, p0, Lcom/unisound/common/e;->k:Lcom/unisound/sdk/bk;

    invoke-virtual {v2}, Lcom/unisound/sdk/bk;->z()I

    move-result v2

    iget-object v3, p0, Lcom/unisound/common/e;->k:Lcom/unisound/sdk/bk;

    invoke-virtual {v3}, Lcom/unisound/sdk/bk;->x()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/unisound/sdk/BlockingAudioTrack;-><init>(IIII)V

    iput-object v1, p0, Lcom/unisound/common/e;->l:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v1}, Lcom/unisound/sdk/BlockingAudioTrack;->init()V

    iget-object v1, p0, Lcom/unisound/common/e;->l:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v1}, Lcom/unisound/sdk/BlockingAudioTrack;->start()V

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a([BI)I
    .locals 2

    iget-object v0, p0, Lcom/unisound/common/e;->l:Lcom/unisound/sdk/BlockingAudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1, p2}, Lcom/unisound/sdk/BlockingAudioTrack;->write([BII)I

    move-result v1

    :cond_0
    return v1
.end method

.method private b([BI)I
    .locals 2

    iget-object v0, p0, Lcom/unisound/common/e;->h:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1, p2}, Landroid/media/AudioRecord;->read([BII)I

    move-result v1

    :cond_0
    return v1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/common/e;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/unisound/common/e;->l:Lcom/unisound/sdk/BlockingAudioTrack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unisound/sdk/BlockingAudioTrack;->stop()V

    iget-object v1, p0, Lcom/unisound/common/e;->l:Lcom/unisound/sdk/BlockingAudioTrack;

    invoke-virtual {v1}, Lcom/unisound/sdk/BlockingAudioTrack;->waitAndRelease()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unisound/common/e;->l:Lcom/unisound/sdk/BlockingAudioTrack;

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

.method private c()I
    .locals 7

    new-instance v6, Landroid/media/AudioRecord;

    iget-object v0, p0, Lcom/unisound/common/e;->j:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->c()I

    move-result v1

    iget-object v0, p0, Lcom/unisound/common/e;->j:Lcn/yunzhisheng/asr/a;

    invoke-virtual {v0}, Lcn/yunzhisheng/asr/a;->d()I

    move-result v2

    sget v3, Lcom/unisound/common/e;->b:I

    sget v4, Lcom/unisound/common/e;->c:I

    sget v5, Lcom/unisound/common/e;->g:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v6, p0, Lcom/unisound/common/e;->h:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisound/common/e;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/unisound/common/e;->h:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    const-string v0, "IAudioSource::close audioRecord.stop()"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/e;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisound/common/e;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    const-string v0, "IAudioSource::close audioRecord.release()"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisound/common/e;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/common/e;->h:Landroid/media/AudioRecord;

    const-string v0, "IAudioSource::close ok"

    invoke-static {v0}, Lcom/unisound/common/r;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public closeAudioIn()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/common/e;->d()V

    return-void
.end method

.method public closeAudioOut()V
    .locals 0

    invoke-direct {p0}, Lcom/unisound/common/e;->b()V

    return-void
.end method

.method public openAudioIn()I
    .locals 1

    invoke-direct {p0}, Lcom/unisound/common/e;->c()I

    move-result v0

    return v0
.end method

.method public openAudioOut()I
    .locals 1

    invoke-direct {p0}, Lcom/unisound/common/e;->a()I

    move-result v0

    return v0
.end method

.method public readData([BI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisound/common/e;->b([BI)I

    move-result p1

    return p1
.end method

.method public writeData([BI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisound/common/e;->a([BI)I

    move-result p1

    return p1
.end method
