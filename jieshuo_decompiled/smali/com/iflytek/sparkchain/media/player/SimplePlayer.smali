.class public Lcom/iflytek/sparkchain/media/player/SimplePlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;,
        Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;
    }
.end annotation


# static fields
.field private static final MIN_SLEEP:I = 0x5

.field public static final STATE_MSG_ID:I = 0x10

.field private static final TAG:Ljava/lang/String; = "AudioPlayer"


# instance fields
.field private listener:Lcom/iflytek/sparkchain/media/player/c;

.field private mAudioParam:Lcom/iflytek/sparkchain/media/player/a;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBReady:Z

.field private mData:[B

.field private mPlayAudioThread:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;

.field private mPlayOffset:I

.field private mPlayState:I

.field private mPrimePlaySize:I

.field private mSyncObj:Ljava/lang/Object;

.field private mThreadExitFlag:Z

.field private oldListener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mBReady:Z

    iput-object p0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mSyncObj:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mThreadExitFlag:Z

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPrimePlaySize:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayOffset:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayState:I

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->oldListener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;Lcom/iflytek/sparkchain/media/player/a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mBReady:Z

    iput-object p0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mSyncObj:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mThreadExitFlag:Z

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPrimePlaySize:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayOffset:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayState:I

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->oldListener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    invoke-virtual {p0, p2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->setAudioParam(Lcom/iflytek/sparkchain/media/player/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/sparkchain/media/player/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mBReady:Z

    iput-object p0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mSyncObj:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mThreadExitFlag:Z

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPrimePlaySize:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayOffset:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayState:I

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->setListener(Lcom/iflytek/sparkchain/media/player/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/sparkchain/media/player/c;Lcom/iflytek/sparkchain/media/player/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mBReady:Z

    iput-object p0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mSyncObj:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mThreadExitFlag:Z

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPrimePlaySize:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayOffset:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayState:I

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->setListener(Lcom/iflytek/sparkchain/media/player/c;)V

    invoke-virtual {p0, p2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->setAudioParam(Lcom/iflytek/sparkchain/media/player/a;)V

    return-void
.end method

.method static synthetic access$100(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->oldListener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mSyncObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayState:I

    return p0
.end method

.method static synthetic access$302(Lcom/iflytek/sparkchain/media/player/SimplePlayer;I)I
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayState:I

    return p1
.end method

.method static synthetic access$400(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mThreadExitFlag:Z

    return p0
.end method

.method static synthetic access$500(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic access$502(Lcom/iflytek/sparkchain/media/player/SimplePlayer;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic access$600(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)[B
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mData:[B

    return-object p0
.end method

.method static synthetic access$700(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayOffset:I

    return p0
.end method

.method static synthetic access$712(Lcom/iflytek/sparkchain/media/player/SimplePlayer;I)I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayOffset:I

    return v0
.end method

.method static synthetic access$800(Lcom/iflytek/sparkchain/media/player/SimplePlayer;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPrimePlaySize:I

    return p0
.end method

.method private createAudioTrack()V
    .locals 10

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mAudioParam:Lcom/iflytek/sparkchain/media/player/a;

    iget v1, v0, Lcom/iflytek/sparkchain/media/player/a;->a:I

    iget v2, v0, Lcom/iflytek/sparkchain/media/player/a;->b:I

    iget v0, v0, Lcom/iflytek/sparkchain/media/player/a;->c:I

    invoke-static {v1, v2, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v8

    mul-int/lit8 v0, v8, 0x2

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPrimePlaySize:I

    new-instance v0, Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mAudioParam:Lcom/iflytek/sparkchain/media/player/a;

    iget v5, v1, Lcom/iflytek/sparkchain/media/player/a;->a:I

    iget v6, v1, Lcom/iflytek/sparkchain/media/player/a;->b:I

    iget v7, v1, Lcom/iflytek/sparkchain/media/player/a;->c:I

    const/4 v4, 0x3

    const/4 v9, 0x1

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method private releaseAudioTrack()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method private setPlayState(I)Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayState:I

    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private startThread()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayAudioThread:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mThreadExitFlag:Z

    new-instance v0, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;-><init>(Lcom/iflytek/sparkchain/media/player/SimplePlayer;Lcom/iflytek/sparkchain/media/player/SimplePlayer$1;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayAudioThread:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private stopThread()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayAudioThread:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mThreadExitFlag:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayAudioThread:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;

    :cond_0
    return-void
.end method


# virtual methods
.method public onPlayComplete()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayAudioThread:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayAudioThread;

    iget v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->setPlayState(I)Z

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->oldListener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;->onCompleted()V

    :cond_0
    return-void
.end method

.method public pause()Z
    .locals 2

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mBReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->setPlayState(I)Z

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->stopThread()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public play()Z
    .locals 4

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mBReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mPlayOffset:I

    :cond_2
    invoke-direct {p0, v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->setPlayState(I)Z

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->startThread()V

    :goto_0
    return v3
.end method

.method public prepare()Z
    .locals 3

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mData:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mAudioParam:Lcom/iflytek/sparkchain/media/player/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mBReady:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->createAudioTrack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v2, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mBReady:Z

    invoke-direct {p0, v2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->setPlayState(I)Z

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return v1
.end method

.method public release()Z
    .locals 1

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->stop()Z

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->releaseAudioTrack()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mBReady:Z

    invoke-direct {p0, v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->setPlayState(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method public resume()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAudioParam(Lcom/iflytek/sparkchain/media/player/a;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mAudioParam:Lcom/iflytek/sparkchain/media/player/a;

    return-void
.end method

.method public setDataSource([B)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mData:[B

    return-void
.end method

.method public setListener(Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->oldListener:Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;

    return-void
.end method

.method public setListener(Lcom/iflytek/sparkchain/media/player/c;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->listener:Lcom/iflytek/sparkchain/media/player/c;

    return-void
.end method

.method public stop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->mBReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->setPlayState(I)Z

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->stopThread()V

    return v0
.end method
