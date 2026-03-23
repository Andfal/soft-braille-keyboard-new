.class public Lcom/vivo/speechsdk/module/opus/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/coder/IEncoder;


# static fields
.field private static final c:Ljava/lang/String; = "OpusEncoder"


# instance fields
.field private a:I

.field private volatile b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized encode([BI)[B
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/module/opus/c;->a()Lcom/vivo/speechsdk/module/opus/c;

    move-result-object p2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/ByteUtils;->byteToShort([B)[S

    move-result-object p1

    iget v2, p0, Lcom/vivo/speechsdk/module/opus/b;->a:I

    invoke-virtual {p2, v0, v1, p1, v2}, Lcom/vivo/speechsdk/module/opus/c;->a(J[SI)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    sget-object p1, Lcom/vivo/speechsdk/module/opus/c;->n:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized encode([BII)[B
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/module/opus/c;->a()Lcom/vivo/speechsdk/module/opus/c;

    move-result-object p2

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    invoke-virtual {p2, v0, v1, p1, p3}, Lcom/vivo/speechsdk/module/opus/c;->c(J[BI)[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    sget-object p1, Lcom/vivo/speechsdk/module/opus/c;->n:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized finalize()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "finalize release OpusEncoder "

    const/4 v4, 0x0

    aput-object v1, v0, v4

    iget-wide v4, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpusEncoder"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/speechsdk/module/opus/c;->a()Lcom/vivo/speechsdk/module/opus/c;

    move-result-object v0

    iget-wide v4, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    invoke-virtual {v0, v4, v5}, Lcom/vivo/speechsdk/module/opus/c;->b(J)V

    iput-wide v2, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/os/Bundle;)I
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "key_sample_rate"

    const/16 v1, 0x3e80

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key_opus_type"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/module/opus/b;->a:I

    invoke-static {}, Lcom/vivo/speechsdk/module/opus/c;->a()Lcom/vivo/speechsdk/module/opus/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/module/opus/c;->b(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "opusType ="

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget v0, p0, Lcom/vivo/speechsdk/module/opus/b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, " ptr = "

    const/4 v2, 0x2

    aput-object v0, p1, v2

    iget-wide v2, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p1, v2

    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpusEncoder"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    const-wide/16 v4, 0x75a7

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int p1, v0

    monitor-exit p0

    return p1

    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "release OpusEncoder "

    const/4 v4, 0x0

    aput-object v1, v0, v4

    iget-wide v4, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpusEncoder"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/vivo/speechsdk/module/opus/c;->a()Lcom/vivo/speechsdk/module/opus/c;

    move-result-object v0

    iget-wide v4, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J

    invoke-virtual {v0, v4, v5}, Lcom/vivo/speechsdk/module/opus/c;->b(J)V

    iput-wide v2, p0, Lcom/vivo/speechsdk/module/opus/b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
