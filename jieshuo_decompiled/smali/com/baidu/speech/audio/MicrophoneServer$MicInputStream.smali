.class public Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/audio/MicrophoneServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MicInputStream"
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x27100


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioRecord:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>(II)V
    .locals 11

    const-string v0, "recorder start failed, RecordingState="

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-class v1, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v10, Landroid/media/AudioRecord;

    const/16 v7, 0x10

    const/4 v8, 0x2

    const v9, 0x27100

    move-object v4, v10

    move v5, p1

    move v6, p2

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v10, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    const-string p2, "audioSource : "

    new-array v4, v2, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p2, v4}, Lcom/baidu/speech/utils/LogUtil;->i(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startRecordingAndCheckStatus recorder status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v5}, Landroid/media/AudioRecord;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v3

    invoke-static {p1, p2}, Lcom/baidu/speech/utils/LogUtil;->i(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    const/16 p1, 0x20

    new-array p2, p1, [B

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    iget-object v5, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v5, p2, v3, p1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v5, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-gtz v5, :cond_2

    iget-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    new-instance p1, Ljava/lang/Exception;

    const-string p2, "bad recorder, read(byte[])"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iget-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p1

    if-ne p1, v1, :cond_4

    :cond_3
    iget-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    if-nez p1, :cond_7

    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    iget-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p1

    if-ne p1, v1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    :try_start_3
    iget-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iget-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->TAG:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    invoke-static {p1, p2}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void

    :goto_5
    iget-object p2, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p2

    if-ne p2, v1, :cond_9

    :cond_8
    iget-object p2, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p2}, Landroid/media/AudioRecord;->getState()I

    move-result p2

    if-nez p2, :cond_a

    :cond_9
    :try_start_4
    iget-object p2, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p2}, Landroid/media/AudioRecord;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    iget-object p2, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {p2, v1}, Lcom/baidu/speech/utils/LogUtil;->d(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_a
    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "read not support"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 4

    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioRecord;->read([BII)I

    move-result p1

    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$MicInputStream;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioRecord read: len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " byteOffset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " byteCount:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/baidu/speech/utils/LogUtil;->v(Ljava/lang/String;[Ljava/lang/String;)V

    if-ltz p1, :cond_0

    if-gt p1, p3, :cond_0

    return p1

    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "audio recdoder read error, len = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "audio recorder is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
