.class public Lcom/iflytek/sparkchain/media/record/PcmRecorder;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;,
        Lcom/iflytek/sparkchain/media/record/PcmRecorder$startFinishListener;
    }
.end annotation


# static fields
.field public static final MSG_RELEASE_RECORD:I = 0x2

.field public static final MSG_START_RECORD:I = 0x0

.field public static final MSG_STOP_RECORD:I = 0x1

.field public static final RATE16K:I = 0x3e80

.field public static final READ_INTERVAL40MS:I = 0x28

.field private static final RECORD_BUFFER_TIMES_FOR_FRAME:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PcmRecorder"


# instance fields
.field private final DEFAULT_BIT_SAMPLES:S

.field private audioFormat:I

.field private checkDataSum:D

.field private checkStandDev:D

.field private exit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private finishListener:Lcom/iflytek/sparkchain/media/record/PcmRecorder$startFinishListener;

.field private mAudioSource:I

.field private mBufferSize:I

.field private mChannel:S

.field private mDataBuffer:[B

.field private mInterval:I

.field private mOutListener:Lcom/iflytek/sparkchain/media/record/b;

.field private mRate:I

.field private mReadInterval:I

.field public mRecordHandle:Landroid/os/Handler;

.field private mRecorder:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>(Lcom/iflytek/sparkchain/media/RecorderHelper$Params;Lcom/iflytek/sparkchain/media/record/b;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x10

    iput-short v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->DEFAULT_BIT_SAMPLES:S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mDataBuffer:[B

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->exit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkDataSum:D

    iput-wide v2, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkStandDev:D

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRate:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mInterval:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mReadInterval:I

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mChannel:S

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->audioFormat:I

    iput v1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mBufferSize:I

    invoke-virtual {p0, p2}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->setListener(Lcom/iflytek/sparkchain/media/record/b;)V

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getSource()I

    move-result v3

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getRate()I

    move-result v4

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getChannel()S

    move-result v5

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getFormat()I

    move-result v6

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getSize()I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->init(IISII)V

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x10

    iput-short v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->DEFAULT_BIT_SAMPLES:S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mDataBuffer:[B

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->exit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkDataSum:D

    iput-wide v2, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkStandDev:D

    const/16 v0, 0x3e80

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRate:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mInterval:I

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mReadInterval:I

    const/4 v0, 0x1

    iput-short v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mChannel:S

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->audioFormat:I

    iput v1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mBufferSize:I

    invoke-virtual {p0, p2}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->setListener(Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;)V

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->access$000(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)I

    move-result v3

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->access$100(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)I

    move-result v4

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->access$200(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)S

    move-result v5

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->access$300(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)I

    move-result v6

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;->access$400(Lcom/iflytek/sparkchain/media/record/PcmRecorder$Builder;)I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->init(IISII)V

    return-void
.end method

.method static synthetic access$1000(Lcom/iflytek/sparkchain/media/record/PcmRecorder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->stop(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->release()V

    return-void
.end method

.method static synthetic access$1200(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)Lcom/iflytek/sparkchain/media/record/b;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    return-object p0
.end method

.method static synthetic access$500(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->exit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$600(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$700(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->initRetry()V

    return-void
.end method

.method static synthetic access$800(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->startRetry()V

    return-void
.end method

.method static synthetic access$900(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->startRecord()V

    return-void
.end method

.method private calculateVolume([B)I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    const v4, 0x8000

    if-lt v3, v4, :cond_0

    const v4, 0xffff

    sub-int v3, v4, v3

    :cond_0
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    array-length p1, p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method private checkAudio([BI)D
    .locals 10

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_2

    :cond_0
    array-length p2, p1

    const/4 v2, 0x0

    move-wide v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    aget-byte v6, p1, v3

    int-to-double v6, v6

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    array-length p2, p1

    int-to-double v6, p2

    div-double/2addr v4, v6

    array-length p2, p1

    :goto_1
    if-ge v2, p2, :cond_2

    aget-byte v3, p1, v2

    int-to-double v6, v3

    sub-double/2addr v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-double p1, p1

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1

    :cond_3
    :goto_2
    return-wide v0
.end method

.method private init(IISII)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mAudioSource:I

    iput p2, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRate:I

    iput-short p3, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mChannel:S

    iput p4, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->audioFormat:I

    iput p5, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mBufferSize:I

    iget p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mInterval:I

    const/16 p2, 0x28

    if-lt p1, p2, :cond_0

    const/16 p3, 0x64

    if-le p1, p3, :cond_1

    :cond_0
    iput p2, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mInterval:I

    :cond_1
    const/16 p1, 0xa

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mReadInterval:I

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    new-instance p1, Lcom/iflytek/sparkchain/media/record/PcmRecorder$1;

    invoke-direct {p1, p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$1;-><init>(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)V

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->setFinishListener(Lcom/iflytek/sparkchain/media/record/PcmRecorder$startFinishListener;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    const-string p1, "PcmRecorder"

    const-string p2, "START RUN"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initRetry()V
    .locals 7

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->exit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-short v2, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mChannel:S

    iget v3, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRate:I

    iget v4, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mInterval:I

    iget v5, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->audioFormat:I

    iget v6, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mBufferSize:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->initRecord(SIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x28

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    new-instance v0, Lcom/iflytek/sparkchain/media/speech/SpeechError;

    const/16 v1, 0x4e26

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/media/speech/SpeechError;-><init>(I)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private readRecordData()I
    .locals 5

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v1, "PcmRecorder"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "mRecorder is null"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    if-nez v3, :cond_1

    const-string v0, "mOutListener is null"

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mDataBuffer:[B

    array-length v4, v3

    invoke-virtual {v0, v3, v2, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mDataBuffer:[B

    invoke-interface {v3, v1, v2, v0}, Lcom/iflytek/sparkchain/media/record/b;->onBuffer([BII)V

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mDataBuffer:[B

    invoke-direct {p0, v2}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->calculateVolume([B)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iflytek/sparkchain/media/record/b;->onDecibel(I)V

    goto :goto_1

    :cond_2
    if-gez v0, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Record read data error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    const/16 v1, 0x4e26

    if-eqz v0, :cond_3

    new-instance v2, Lcom/iflytek/sparkchain/media/speech/SpeechError;

    invoke-direct {v2, v1}, Lcom/iflytek/sparkchain/media/speech/SpeechError;-><init>(I)V

    invoke-interface {v0, v2}, Lcom/iflytek/sparkchain/media/record/b;->onError(Lcom/iflytek/sparkchain/media/speech/SpeechError;)V

    :cond_3
    new-instance v0, Lcom/iflytek/sparkchain/media/speech/SpeechError;

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/media/speech/SpeechError;-><init>(I)V

    throw v0

    :cond_4
    :goto_1
    return v0
.end method

.method private release()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    const-string v0, "PcmRecorder"

    const-string v1, "release record begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/iflytek/sparkchain/media/record/b;->onRelease()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    :cond_0
    const-string v0, "PcmRecorder"

    const-string v1, "release record over"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PcmRecorder"

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startRecord()V
    .locals 10

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/iflytek/sparkchain/media/record/b;->onStart(Z)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->exit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->readRecordData()I

    move-result v0

    const-string v4, "PcmRecorder"

    if-eqz v1, :cond_3

    iget-wide v5, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkDataSum:D

    int-to-double v7, v0

    add-double/2addr v5, v7

    iput-wide v5, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkDataSum:D

    iget-wide v5, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkStandDev:D

    iget-object v7, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mDataBuffer:[B

    array-length v8, v7

    invoke-direct {p0, v7, v8}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkAudio([BI)D

    move-result-wide v7

    add-double/2addr v5, v7

    iput-wide v5, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkStandDev:D

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAudio:checkStandDev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkStandDev:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x3e8

    cmp-long v9, v5, v7

    if-ltz v9, :cond_3

    iget-wide v5, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkDataSum:D

    const-wide/16 v7, 0x0

    cmpl-double v1, v5, v7

    if-eqz v1, :cond_2

    iget-wide v5, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkStandDev:D

    cmpl-double v1, v5, v7

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkDataSum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkDataSum:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",checkStandDev="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->checkStandDev:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cannot get record permission, get invalid audio data."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/sparkchain/media/speech/SpeechError;

    const/16 v1, 0x4e26

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/media/speech/SpeechError;-><init>(I)V

    throw v0

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mDataBuffer:[B

    array-length v5, v5

    if-le v5, v0, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current record read size is less than buffer size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mReadInterval:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private startRetry()V
    .locals 5

    const-string v0, "PcmRecorder"

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->exit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x4e26

    :try_start_0
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "recorder state is not recoding"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/iflytek/sparkchain/media/speech/SpeechError;

    invoke-direct {v3, v2}, Lcom/iflytek/sparkchain/media/speech/SpeechError;-><init>(I)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0xa

    if-ge v1, v3, :cond_1

    const-wide/16 v2, 0x28

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_1
    const-string v1, "recoder start failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/sparkchain/media/speech/SpeechError;

    invoke-direct {v0, v2}, Lcom/iflytek/sparkchain/media/speech/SpeechError;-><init>(I)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method private stop(Z)V
    .locals 3

    if-eqz p1, :cond_2

    monitor-enter p0

    :try_start_0
    const-string p1, "PcmRecorder"

    const-string v0, "stopRecord...release"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    const-string p1, "PcmRecorder"

    const-string v1, "stopRecord releaseRecording ing..."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    const-string p1, "PcmRecorder"

    const-string v1, "stopRecord releaseRecording end..."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    :cond_0
    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/iflytek/sparkchain/media/record/b;->onRelease()V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "PcmRecorder"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_2
    const-string p1, "PcmRecorder"

    const-string v0, "stop record"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    const-string v0, "PcmRecorder"

    const-string v1, "[finalize] release recoder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->releaseRecord()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected initRecord(SIIII)V
    .locals 10

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    const-string v1, "PcmRecorder"

    if-eqz v0, :cond_0

    const-string v0, "[initRecord] recoder release first"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->release()V

    :cond_0
    mul-int p3, p3, p2

    div-int/lit16 p3, p3, 0x3e8

    mul-int/lit8 v0, p3, 0x4

    mul-int/lit8 v0, v0, 0x10

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0x8

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/4 v3, 0x2

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    const/4 v7, 0x3

    :goto_0
    invoke-static {p2, v7, p4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    if-ge v0, v3, :cond_2

    move v9, v3

    goto :goto_1

    :cond_2
    move v9, v0

    :goto_1
    new-instance v0, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mAudioSource:I

    move-object v4, v0

    move v6, p2

    move v8, p4

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    if-nez p5, :cond_3

    mul-int p3, p3, p1

    mul-int/lit8 p3, p3, 0x10

    div-int/lit8 p5, p3, 0x8

    :cond_3
    new-array p1, p5, [B

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mDataBuffer:[B

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    if-eq p1, v2, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create AudioRecord errormRecorder state"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {p2}, Landroid/media/AudioRecord;->getState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    const/16 p2, 0x4e26

    if-eqz p1, :cond_4

    new-instance p3, Lcom/iflytek/sparkchain/media/speech/SpeechError;

    invoke-direct {p3, p2}, Lcom/iflytek/sparkchain/media/speech/SpeechError;-><init>(I)V

    invoke-interface {p1, p3}, Lcom/iflytek/sparkchain/media/record/b;->onError(Lcom/iflytek/sparkchain/media/speech/SpeechError;)V

    :cond_4
    new-instance p1, Lcom/iflytek/sparkchain/media/speech/SpeechError;

    invoke-direct {p1, p2}, Lcom/iflytek/sparkchain/media/speech/SpeechError;-><init>(I)V

    throw p1

    :cond_5
    return-void
.end method

.method public releaseRecord()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecordHandle:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "PcmRecorder"

    const-string v1, "mRecordHandle is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecordHandle:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 4

    const-string v0, "run...."

    const-string v1, "PcmRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->initRetry()V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->startRetry()V

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;

    invoke-direct {v0, p0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;-><init>(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecordHandle:Landroid/os/Handler;

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->finishListener:Lcom/iflytek/sparkchain/media/record/PcmRecorder$startFinishListener;

    invoke-interface {v0}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$startFinishListener;->onFinish()V

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/iflytek/sparkchain/media/speech/SpeechError;

    const/16 v2, 0x4e26

    invoke-direct {v1, v2}, Lcom/iflytek/sparkchain/media/speech/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/sparkchain/media/record/b;->onError(Lcom/iflytek/sparkchain/media/speech/SpeechError;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setFinishListener(Lcom/iflytek/sparkchain/media/record/PcmRecorder$startFinishListener;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->finishListener:Lcom/iflytek/sparkchain/media/record/PcmRecorder$startFinishListener;

    return-void
.end method

.method public setListener(Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;)V
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$2;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder$2;-><init>(Lcom/iflytek/sparkchain/media/record/PcmRecorder;Lcom/iflytek/sparkchain/core/media/record/PcmRecorder$PcmRecordListener;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    return-void
.end method

.method public setListener(Lcom/iflytek/sparkchain/media/record/b;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mOutListener:Lcom/iflytek/sparkchain/media/record/b;

    return-void
.end method

.method public startRecording()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecordHandle:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "PcmRecorder"

    const-string v1, "mRecordHandle is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecordHandle:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopRecord(Z)V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecordHandle:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string p1, "PcmRecorder"

    const-string v0, "mRecordHandle is NULL"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecord "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "mRecordHandle: "

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->exit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->mRecordHandle:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
