.class Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;
.super Landroid/net/LocalSocket;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/speech/audio/MicrophoneServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketWrap"
.end annotation


# instance fields
.field data:[B

.field private mPosition:J

.field private final mSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/LocalSocket;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mPosition:J

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->data:[B

    iput-object p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mSocket:Landroid/net/LocalSocket;

    const/16 v0, 0x7d0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/net/LocalSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private byteArrayToInt([B)J
    .locals 18

    move-object/from16 v0, p1

    const/16 v1, 0x8

    new-array v2, v1, [B

    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    :goto_0
    if-ltz v5, :cond_1

    array-length v7, v0

    if-ge v6, v7, :cond_0

    aget-byte v7, v0, v6

    aput-byte v7, v2, v5

    goto :goto_1

    :cond_0
    aput-byte v4, v2, v5

    :goto_1
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    aget-byte v0, v2, v4

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    const/16 v0, 0x38

    shl-long/2addr v4, v0

    const/4 v0, 0x1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v6, v0

    const/16 v0, 0x30

    shl-long/2addr v6, v0

    const/4 v0, 0x2

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v8, v0

    const/16 v0, 0x28

    shl-long/2addr v8, v0

    const/4 v0, 0x3

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v10, v0

    const/16 v0, 0x20

    shl-long/2addr v10, v0

    const/4 v0, 0x4

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v12, v0

    const/16 v0, 0x18

    shl-long/2addr v12, v0

    const/4 v0, 0x5

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v14, v0

    const/16 v0, 0x10

    shl-long/2addr v14, v0

    const/4 v0, 0x6

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    move-wide/from16 v16, v14

    int-to-long v14, v0

    shl-long v0, v14, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    add-long/2addr v4, v6

    add-long/2addr v4, v8

    add-long/2addr v4, v10

    add-long/2addr v4, v12

    add-long v4, v4, v16

    add-long/2addr v4, v0

    add-long/2addr v4, v2

    return-wide v4
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(J)J
    .locals 11

    iget-wide v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mPosition:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x280

    const-wide/32 v4, 0x1d4c00

    :try_start_0
    iget-object v6, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->data:[B

    array-length v8, v7

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v9, v8}, Ljava/io/InputStream;->read([BII)I

    iget-object v6, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->data:[B

    invoke-direct {p0, v6}, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->byteArrayToInt([B)J

    move-result-wide v6

    sget-object v8, Lcom/baidu/speech/audio/MicrophoneServer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio mills is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v8, v6, v2

    if-lez v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/16 v6, 0x20

    div-long v8, p1, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v8, 0x14

    div-long/2addr v2, v8

    mul-long v2, v2, v8

    mul-long v2, v2, v6

    iput-wide v2, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mPosition:J

    goto :goto_0

    :cond_1
    iput-wide v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mPosition:J

    :goto_0
    iget-wide v2, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mPosition:J

    sub-long v2, p1, v2

    add-long/2addr v2, v4

    rem-long/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mPosition:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sub-long/2addr p1, v0

    add-long/2addr p1, v4

    rem-long/2addr p1, v4

    iput-wide p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mPosition:J

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    iget-wide p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mPosition:J

    return-wide p1
.end method

.method public setPosition(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mPosition:J

    return-void
.end method

.method public shutdownOutput()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/speech/audio/MicrophoneServer$SocketWrap;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V

    return-void
.end method
