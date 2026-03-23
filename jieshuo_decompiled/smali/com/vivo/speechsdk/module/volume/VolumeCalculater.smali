.class public Lcom/vivo/speechsdk/module/volume/VolumeCalculater;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "VolumeCalculater"

.field private static c:Z = false

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x28

.field private static g:Lcom/vivo/speechsdk/module/volume/VolumeCalculater;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "volume"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->c:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->c:Z

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->a:I

    return-void
.end method

.method public static b()Lcom/vivo/speechsdk/module/volume/VolumeCalculater;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->g:Lcom/vivo/speechsdk/module/volume/VolumeCalculater;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->g:Lcom/vivo/speechsdk/module/volume/VolumeCalculater;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->g:Lcom/vivo/speechsdk/module/volume/VolumeCalculater;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->g:Lcom/vivo/speechsdk/module/volume/VolumeCalculater;

    return-object v0
.end method

.method private static native calculate([S)I
.end method

.method private static native init(I)Z
.end method

.method private static native release()V
.end method


# virtual methods
.method public declared-synchronized a([B)I
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/vivo/speechsdk/common/utils/ByteUtils;->byteToShort([B)[S

    move-result-object p1

    invoke-static {p1}, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->calculate([S)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->release()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->a:I
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

.method public declared-synchronized c()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->a:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/16 v0, 0x28

    invoke-static {v0}, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->init(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->a:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/vivo/speechsdk/module/volume/VolumeCalculater;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit p0

    return v1

    :cond_3
    :try_start_1
    const-string v0, "VolumeCalculater"

    const-string v2, "libvolume.so load failed"

    invoke-static {v0, v2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
