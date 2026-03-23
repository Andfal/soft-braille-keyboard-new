.class public Lcom/iflytek/sparkchain/media/record/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/media/record/a$a;
    }
.end annotation


# static fields
.field public static final DEF_PROC_SCALE:I = 0x64


# instance fields
.field private final BLANK_BLOCK_MS:I

.field private final DEF_BYTE:I

.field private final DEF_CHANNEL:I

.field private final DEF_MIN_BUF_SEC:I

.field private final DEF_MIN_BUF_SIZE:I

.field private final DEF_RATE:I

.field private final MAX_PLAYABLE_PERCANT:F

.field private audioTrackBuffSize:I

.field private mAudioBuf:[B

.field private mAudioInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/iflytek/sparkchain/media/record/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private mBufLen:I

.field private mBufOffset:I

.field private mContext:Landroid/content/Context;

.field private mEndWithNull:Z

.field private mFilepath:Ljava/lang/String;

.field private mLocal_save_path:Ljava/lang/String;

.field private mMaxFileSize:I

.field private volatile mPercent:J

.field private mProcScale:I

.field private mRate:I

.field private volatile mReadOffset:I

.field private mTempAudio:Lcom/iflytek/sparkchain/media/record/a$a;

.field public volatile mTotalSize:J

.field private memFile:Landroid/os/MemoryFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/a;->DEF_BYTE:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/iflytek/sparkchain/media/record/a;->DEF_CHANNEL:I

    const/16 v2, 0x3e80

    iput v2, p0, Lcom/iflytek/sparkchain/media/record/a;->DEF_RATE:I

    const/16 v3, 0x3c

    iput v3, p0, Lcom/iflytek/sparkchain/media/record/a;->DEF_MIN_BUF_SEC:I

    const/16 v3, 0x1f4

    iput v3, p0, Lcom/iflytek/sparkchain/media/record/a;->BLANK_BLOCK_MS:I

    const v3, 0x1d4c00

    iput v3, p0, Lcom/iflytek/sparkchain/media/record/a;->DEF_MIN_BUF_SIZE:I

    iput v3, p0, Lcom/iflytek/sparkchain/media/record/a;->mMaxFileSize:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioInfo:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/iflytek/sparkchain/media/record/a;->mContext:Landroid/content/Context;

    iput v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mRate:I

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/iflytek/sparkchain/media/record/a;->mPercent:J

    iput-object v4, p0, Lcom/iflytek/sparkchain/media/record/a;->memFile:Landroid/os/MemoryFile;

    iput-wide v5, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mReadOffset:I

    iput-object v4, p0, Lcom/iflytek/sparkchain/media/record/a;->mTempAudio:Lcom/iflytek/sparkchain/media/record/a$a;

    const-string v7, ""

    iput-object v7, p0, Lcom/iflytek/sparkchain/media/record/a;->mFilepath:Ljava/lang/String;

    iput-object v4, p0, Lcom/iflytek/sparkchain/media/record/a;->mLocal_save_path:Ljava/lang/String;

    iput-object v4, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioBuf:[B

    iput v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufOffset:I

    iput v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufLen:I

    const/16 v4, 0x64

    iput v4, p0, Lcom/iflytek/sparkchain/media/record/a;->mProcScale:I

    const v4, 0x3f733333    # 0.95f

    iput v4, p0, Lcom/iflytek/sparkchain/media/record/a;->MAX_PLAYABLE_PERCANT:F

    iput-boolean v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mEndWithNull:Z

    iput v2, p0, Lcom/iflytek/sparkchain/media/record/a;->audioTrackBuffSize:I

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mContext:Landroid/content/Context;

    iput-wide v5, p0, Lcom/iflytek/sparkchain/media/record/a;->mPercent:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioInfo:Ljava/util/ArrayList;

    iput-wide v5, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    iput p2, p0, Lcom/iflytek/sparkchain/media/record/a;->mRate:I

    iput-object p4, p0, Lcom/iflytek/sparkchain/media/record/a;->mLocal_save_path:Ljava/lang/String;

    iput p5, p0, Lcom/iflytek/sparkchain/media/record/a;->mProcScale:I

    mul-int/lit8 p2, p2, 0x2

    mul-int/lit8 p2, p2, 0x1

    mul-int p2, p2, p3

    add-int/2addr p2, v3

    iput p2, p0, Lcom/iflytek/sparkchain/media/record/a;->mMaxFileSize:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "min audio seconds: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", max audio buf size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/iflytek/sparkchain/media/record/a;->mMaxFileSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private genFileName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/sparkchain/utils/FileUtil;->getUserPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "tts.pcm"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readAudio(I)V
    .locals 5

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioBuf:[B

    if-nez v0, :cond_0

    mul-int/lit8 p1, p1, 0xa

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioBuf:[B

    :cond_0
    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioBuf:[B

    array-length p1, p1

    iget-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    iget v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mReadOffset:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    if-ge v1, p1, :cond_1

    move p1, v1

    :cond_1
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->memFile:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioBuf:[B

    iget v3, p0, Lcom/iflytek/sparkchain/media/record/a;->mReadOffset:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/os/MemoryFile;->readBytes([BIII)I

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mReadOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mReadOffset:I

    iput v4, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufOffset:I

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufLen:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAudio leave, dataSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bufLen="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private writeToFile([B)V
    .locals 4

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->memFile:Landroid/os/MemoryFile;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/record/a;->genFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mFilepath:Ljava/lang/String;

    :try_start_0
    new-instance v0, Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mFilepath:Ljava/lang/String;

    iget v3, p0, Lcom/iflytek/sparkchain/media/record/a;->mMaxFileSize:I

    invoke-direct {v0, v2, v3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->memFile:Landroid/os/MemoryFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v1}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PcmBuffer:writeToFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AEE"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->memFile:Landroid/os/MemoryFile;

    iget-wide v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    long-to-int v3, v2

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    iget-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTotalSize : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public beginRead()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mReadOffset:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mTempAudio:Lcom/iflytek/sparkchain/media/record/a$a;

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioInfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/sparkchain/media/record/a$a;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTempAudio:Lcom/iflytek/sparkchain/media/record/a$a;

    :cond_0
    return-void
.end method

.method public deleteFile()V
    .locals 1

    const-string v0, "deleteFile"

    invoke-static {v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->memFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->memFile:Landroid/os/MemoryFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/record/a;->deleteFile()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getEndWithNull()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mEndWithNull:Z

    return v0
.end method

.method public getMemFileLenth()I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->memFile:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/MemoryFile;->length()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPalyAudioInfo()Lcom/iflytek/sparkchain/media/record/a$a;
    .locals 8

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTempAudio:Lcom/iflytek/sparkchain/media/record/a$a;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mReadOffset:I

    iget v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufLen:I

    iget v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufOffset:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mTempAudio:Lcom/iflytek/sparkchain/media/record/a$a;

    iget-wide v3, v2, Lcom/iflytek/sparkchain/media/record/a$a;->b:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    iget-wide v3, v2, Lcom/iflytek/sparkchain/media/record/a$a;->c:J

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioInfo:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/sparkchain/media/record/a$a;

    iput-object v4, p0, Lcom/iflytek/sparkchain/media/record/a;->mTempAudio:Lcom/iflytek/sparkchain/media/record/a$a;

    iget-wide v5, v4, Lcom/iflytek/sparkchain/media/record/a$a;->b:J

    cmp-long v7, v0, v5

    if-ltz v7, :cond_1

    iget-wide v5, v4, Lcom/iflytek/sparkchain/media/record/a$a;->c:J

    cmp-long v7, v0, v5

    if-gtz v7, :cond_1

    monitor-exit v2

    return-object v4

    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayPercent()I
    .locals 5

    iget-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mReadOffset:I

    iget v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufLen:I

    iget v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufOffset:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mPercent:J

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public getRate()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mRate:I

    return v0
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    return-wide v0
.end method

.method public hasMoreBuffer(I)Z
    .locals 6

    int-to-long v0, p1

    iget-wide v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    iget p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mReadOffset:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    iget p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufLen:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufOffset:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isBufferingFinished()Z
    .locals 5

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mProcScale:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mPercent:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOver()Z
    .locals 5

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mProcScale:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mPercent:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mReadOffset:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufOffset:I

    iget v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufLen:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public playAble()Z
    .locals 5

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mReadOffset:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufOffset:I

    iget v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufLen:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public readyToPlay(I)Z
    .locals 5

    iget-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mPercent:J

    long-to-float v0, v0

    iget v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mProcScale:I

    int-to-float v1, v1

    const v2, 0x3f733333    # 0.95f

    mul-float v1, v1, v2

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return v2

    :cond_0
    iget-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    const-wide/16 v3, 0x20

    div-long/2addr v0, v3

    int-to-long v3, p1

    cmp-long p1, v0, v3

    if-ltz p1, :cond_1

    iget-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    const-wide/16 v3, 0x0

    cmp-long p1, v3, v0

    if-gez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public renameToLocal(Ljava/lang/String;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save to local: format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " totalSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mMaxFileSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->memFile:Landroid/os/MemoryFile;

    iget-wide v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    iget-object v3, p0, Lcom/iflytek/sparkchain/media/record/a;->mLocal_save_path:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/iflytek/sparkchain/utils/FileUtil;->saveFile(Landroid/os/MemoryFile;JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mLocal_save_path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/record/a;->getRate()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/iflytek/sparkchain/utils/FileUtil;->formatPcm(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public reset(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mPercent:J

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioInfo:Ljava/util/ArrayList;

    iput-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    iput p2, p0, Lcom/iflytek/sparkchain/media/record/a;->mRate:I

    iput-object p4, p0, Lcom/iflytek/sparkchain/media/record/a;->mLocal_save_path:Ljava/lang/String;

    iput p5, p0, Lcom/iflytek/sparkchain/media/record/a;->mProcScale:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mReadOffset:I

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufOffset:I

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufLen:I

    iget p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mRate:I

    mul-int/lit8 p1, p1, 0x2

    mul-int/lit8 p1, p1, 0x1

    mul-int p1, p1, p3

    const p2, 0x1d4c00

    add-int/2addr p1, p2

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mMaxFileSize:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "min audio seconds: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", max audio buf size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/iflytek/sparkchain/media/record/a;->mMaxFileSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public setAudioTrackBuffSize(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/a;->audioTrackBuffSize:I

    return-void
.end method

.method public setEndWithNull(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mEndWithNull:Z

    return-void
.end method

.method public setMaxFileSize(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mMaxFileSize:I

    return-void
.end method

.method public setPercent(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mProcScale:I

    if-gt p1, v0, :cond_0

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mPercent:J

    :cond_0
    return-void
.end method

.method public writeBuffer(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[B>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/iflytek/sparkchain/media/record/a;->writeToFile([B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeStream(Ljava/util/ArrayList;III)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;III)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", beg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->i(Ljava/lang/Object;)V

    new-instance v1, Lcom/iflytek/sparkchain/media/record/a$a;

    iget-wide v4, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    iget-wide v6, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    move-object v2, v1

    move-object v3, p0

    move v8, p3

    move v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/iflytek/sparkchain/media/record/a$a;-><init>(Lcom/iflytek/sparkchain/media/record/a;JJII)V

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    invoke-direct {p0, p4}, Lcom/iflytek/sparkchain/media/record/a;->writeToFile([B)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    iput-wide p3, v1, Lcom/iflytek/sparkchain/media/record/a$a;->c:J

    int-to-long p1, p2

    iput-wide p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mPercent:J

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioInfo:Ljava/util/ArrayList;

    monitor-enter p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioInfo:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    const/4 v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->i(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "allSize = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " maxSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/iflytek/sparkchain/media/record/a;->mMaxFileSize:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->i(Ljava/lang/Object;)V

    return v0
.end method

.method public writeTrack(Landroid/media/AudioTrack;I)V
    .locals 3

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufOffset:I

    iget v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufLen:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p2}, Lcom/iflytek/sparkchain/media/record/a;->readAudio(I)V

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufLen:I

    iget v2, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufOffset:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mAudioBuf:[B

    invoke-virtual {p1, v0, v2, v1}, Landroid/media/AudioTrack;->write([BII)I

    iget v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mBufOffset:I

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/record/a;->isOver()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/record/a;->getEndWithNull()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/media/record/a;->writeTrackBlankBlock(Landroid/media/AudioTrack;I)V

    :cond_2
    return-void
.end method

.method public writeTrackBlankBlock(Landroid/media/AudioTrack;I)V
    .locals 4

    iget-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    iget p2, p0, Lcom/iflytek/sparkchain/media/record/a;->audioTrackBuffSize:I

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    iget-wide v0, p0, Lcom/iflytek/sparkchain/media/record/a;->mTotalSize:J

    sub-long/2addr v2, v0

    long-to-int p2, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBuffer.writeTrack writeTrackBlankBlock size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->i(Ljava/lang/Object;)V

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/media/AudioTrack;->write([BII)I

    :cond_0
    return-void
.end method
