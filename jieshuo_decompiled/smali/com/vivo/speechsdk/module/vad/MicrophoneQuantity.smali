.class public Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "MicroQuantity"

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field private static final h:I = 0x3

.field private static final i:Ljava/lang/String; = "key_microphone_quantity"

.field private static j:Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

.field private static k:I


# instance fields
.field private a:I

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->a:I

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->b:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c:Z

    return-void
.end method

.method public static c()Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;
    .locals 2

    sget-object v0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->j:Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

    if-nez v0, :cond_1

    const-class v0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->j:Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;-><init>()V

    sput-object v1, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->j:Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

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
    sget-object v0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->j:Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;

    return-object v0
.end method

.method private d()V
    .locals 1

    :try_start_0
    const-string v0, "mic_detect"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c:Z

    :goto_0
    return-void
.end method

.method private detectResult(I)V
    .locals 2

    sget v0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->k:I

    if-eq v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->b:Z

    if-nez v0, :cond_0

    sput p1, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->k:I

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->f()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "microphone detect result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MicroQuantity"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private f()V
    .locals 3

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object v0

    sget v1, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->k:I

    const-string v2, "key_microphone_quantity"

    invoke-virtual {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/SpUtil;->save(Ljava/lang/String;I)V

    return-void
.end method

.method private native nativeDetect([S)[S
.end method

.method private native nativeInit()I
.end method

.method private native nativeRelease()V
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->a:I

    sget v2, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->k:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    sput v1, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->k:I

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->f()V

    const-string v0, "MicroQuantity"

    const-string v1, "fake channel more then 3 times, set microphone mono"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
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

.method public declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->b:Z

    sget p1, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->k:I

    if-nez p1, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/utils/SpUtil;->getInstance()Lcom/vivo/speechsdk/common/utils/SpUtil;

    move-result-object p1

    const-string v0, "key_microphone_quantity"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/vivo/speechsdk/common/utils/SpUtil;->get(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->k:I

    :cond_0
    sget p1, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->k:I

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->d()V

    iget-boolean p1, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->nativeInit()I

    goto :goto_0

    :cond_1
    const-string p1, "MicroQuantity"

    const-string v0, "libmic_detect.so load failed"

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a([S)[S
    .locals 5

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->nativeDetect([S)[S

    move-result-object p1

    return-object p1

    :cond_0
    array-length v0, p1

    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    aget-short v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    aget-short v3, p1, v3

    add-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    int-to-short v3, v4

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "MicroQuantity"

    const-string v0, "can\'t detect microphone quantity"

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->nativeRelease()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/vad/MicrophoneQuantity;->c:Z
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
