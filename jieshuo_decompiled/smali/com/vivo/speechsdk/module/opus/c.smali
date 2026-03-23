.class public final Lcom/vivo/speechsdk/module/opus/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/opus/c$b;,
        Lcom/vivo/speechsdk/module/opus/c$c;,
        Lcom/vivo/speechsdk/module/opus/c$d;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "OpusManager"

.field public static final d:J = 0x0L

.field public static final e:I = 0x3e80

.field public static final f:I = 0x5dc0

.field public static final g:I = 0x7d00

.field public static final h:I = 0xbb80

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x5

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:[B

.field private static o:I = 0x3e80

.field private static p:I = 0x3e80


# instance fields
.field private final a:Lcom/vivo/speechsdk/module/opus/c$c;

.field private final b:Lcom/vivo/speechsdk/module/opus/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/vivo/speechsdk/module/opus/c;->n:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vivo/speechsdk/module/opus/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/module/opus/c$c;-><init>(Lcom/vivo/speechsdk/module/opus/c$a;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/opus/c;->a:Lcom/vivo/speechsdk/module/opus/c$c;

    new-instance v0, Lcom/vivo/speechsdk/module/opus/c$b;

    invoke-direct {v0, v1}, Lcom/vivo/speechsdk/module/opus/c$b;-><init>(Lcom/vivo/speechsdk/module/opus/c$a;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/opus/c;->b:Lcom/vivo/speechsdk/module/opus/c$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/speechsdk/module/opus/c$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/opus/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/vivo/speechsdk/module/opus/c;
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/opus/c$d;->a()Lcom/vivo/speechsdk/module/opus/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(I)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/vivo/speechsdk/module/opus/Opus;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sput p1, Lcom/vivo/speechsdk/module/opus/c;->p:I

    invoke-static {p1}, Lcom/vivo/speechsdk/module/opus/Opus;->initOpusDecoder(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    const-string p1, "OpusManager"

    const-string v0, "libvopus_v5.so load failed"

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const-wide/16 v0, 0x75a7

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vivo/speechsdk/module/opus/c;->b(I)J

    invoke-virtual {p0, p2}, Lcom/vivo/speechsdk/module/opus/c;->a(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/vivo/speechsdk/module/opus/Opus;->destroyDecoder(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(J[B)[B
    .locals 10

    iget-object v0, p0, Lcom/vivo/speechsdk/module/opus/c;->b:Lcom/vivo/speechsdk/module/opus/c$b;

    monitor-enter v0

    if-eqz p3, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/vivo/speechsdk/module/opus/c;->b:Lcom/vivo/speechsdk/module/opus/c$b;

    sget v8, Lcom/vivo/speechsdk/module/opus/c;->p:I

    const/4 v9, 0x1

    move-wide v5, p1

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/vivo/speechsdk/module/opus/c$b;->a(J[BII)[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(J[BI)[B
    .locals 10

    iget-object v0, p0, Lcom/vivo/speechsdk/module/opus/c;->b:Lcom/vivo/speechsdk/module/opus/c$b;

    monitor-enter v0

    if-eqz p3, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/vivo/speechsdk/module/opus/c;->b:Lcom/vivo/speechsdk/module/opus/c$b;

    sget v8, Lcom/vivo/speechsdk/module/opus/c;->p:I

    move-wide v5, p1

    move-object v7, p3

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/vivo/speechsdk/module/opus/c$b;->a(J[BII)[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(J[S)[B
    .locals 10

    iget-object v0, p0, Lcom/vivo/speechsdk/module/opus/c;->a:Lcom/vivo/speechsdk/module/opus/c$c;

    monitor-enter v0

    if-eqz p3, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/vivo/speechsdk/module/opus/c;->a:Lcom/vivo/speechsdk/module/opus/c$c;

    sget v8, Lcom/vivo/speechsdk/module/opus/c;->o:I

    const/4 v9, 0x1

    move-wide v5, p1

    move-object v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/vivo/speechsdk/module/opus/c$c;->a(J[SII)[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(J[SI)[B
    .locals 10

    iget-object v0, p0, Lcom/vivo/speechsdk/module/opus/c;->a:Lcom/vivo/speechsdk/module/opus/c$c;

    monitor-enter v0

    if-eqz p3, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/vivo/speechsdk/module/opus/c;->a:Lcom/vivo/speechsdk/module/opus/c$c;

    sget v8, Lcom/vivo/speechsdk/module/opus/c;->o:I

    move-wide v5, p1

    move-object v7, p3

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/vivo/speechsdk/module/opus/c$c;->a(J[SII)[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized b(I)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/vivo/speechsdk/module/opus/Opus;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sput p1, Lcom/vivo/speechsdk/module/opus/c;->o:I

    invoke-static {p1}, Lcom/vivo/speechsdk/module/opus/Opus;->initOpusEncoder(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    const-string p1, "OpusManager"

    const-string v0, "libvopus_v5.so load failed"

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const-wide/16 v0, 0x75a7

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 1

    const/16 v0, 0x3e80

    invoke-virtual {p0, v0, v0}, Lcom/vivo/speechsdk/module/opus/c;->a(II)V

    return-void
.end method

.method public declared-synchronized b(J)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1, p2}, Lcom/vivo/speechsdk/module/opus/Opus;->destroyEncoder(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(J[BI)[B
    .locals 8

    iget-object v0, p0, Lcom/vivo/speechsdk/module/opus/c;->b:Lcom/vivo/speechsdk/module/opus/c$b;

    monitor-enter v0

    if-eqz p4, :cond_1

    const/4 v1, 0x3

    if-ne p4, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/opus/c;->b:Lcom/vivo/speechsdk/module/opus/c$b;

    sget v2, Lcom/vivo/speechsdk/module/opus/c;->p:I

    invoke-virtual {v1, v2}, Lcom/vivo/speechsdk/module/opus/c$b;->a(I)[B

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/vivo/speechsdk/module/opus/c;->b:Lcom/vivo/speechsdk/module/opus/c$b;

    sget v6, Lcom/vivo/speechsdk/module/opus/c;->p:I

    move-wide v3, p1

    move-object v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/vivo/speechsdk/module/opus/c$b;->b(J[BII)[B

    move-result-object p1

    const/4 p2, 0x0

    if-eqz v1, :cond_2

    array-length p3, v1

    array-length p4, p1

    add-int/2addr p3, p4

    new-array p3, p3, [B

    array-length p4, v1

    invoke-static {v1, p2, p3, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    array-length p3, p1

    new-array p3, p3, [B

    :goto_2
    if-nez v1, :cond_3

    const/4 p4, 0x0

    goto :goto_3

    :cond_3
    array-length p4, v1

    :goto_3
    array-length v1, p1

    invoke-static {p1, p2, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return-object p3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(J[BI)[B
    .locals 8

    iget-object v0, p0, Lcom/vivo/speechsdk/module/opus/c;->a:Lcom/vivo/speechsdk/module/opus/c$c;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/opus/c;->a:Lcom/vivo/speechsdk/module/opus/c$c;

    sget v2, Lcom/vivo/speechsdk/module/opus/c;->o:I

    invoke-virtual {v1, v2}, Lcom/vivo/speechsdk/module/opus/c$c;->a(I)[B

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/vivo/speechsdk/module/opus/c;->a:Lcom/vivo/speechsdk/module/opus/c$c;

    sget v6, Lcom/vivo/speechsdk/module/opus/c;->o:I

    move-wide v3, p1

    move-object v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/vivo/speechsdk/module/opus/c$c;->a(J[BII)[B

    move-result-object p1

    const/4 p2, 0x0

    if-eqz v1, :cond_1

    array-length p3, v1

    array-length p4, p1

    add-int/2addr p3, p4

    new-array p3, p3, [B

    array-length p4, v1

    invoke-static {v1, p2, p3, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    array-length p3, p1

    new-array p3, p3, [B

    :goto_0
    if-nez v1, :cond_2

    const/4 p4, 0x0

    goto :goto_1

    :cond_2
    array-length p4, v1

    :goto_1
    array-length v1, p1

    invoke-static {p1, p2, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return-object p3

    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
