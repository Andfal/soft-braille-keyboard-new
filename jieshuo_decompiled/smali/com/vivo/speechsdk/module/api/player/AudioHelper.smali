.class public Lcom/vivo/speechsdk/module/api/player/AudioHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/vivo/speechsdk/module/api/player/AudioFrame;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/vivo/speechsdk/module/api/player/AudioFrame;

.field private static volatile c:Z

.field private static volatile d:I

.field private static volatile e:I

.field private static volatile f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->c:Z

    sput v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->d:I

    sput v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Lcom/vivo/speechsdk/module/api/player/AudioFrame;
    .locals 5

    sget-object v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/speechsdk/module/api/player/AudioFrame;

    iget v4, v3, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mEndBufferIndex:I

    if-ge v4, p0, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, v3, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mStartBufferIndex:I

    if-le v0, p0, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static clear()V
    .locals 3

    sget-object v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->c:Z

    sput v1, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->d:I

    const/4 v2, 0x0

    sput-object v2, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->b:Lcom/vivo/speechsdk/module/api/player/AudioFrame;

    sput v1, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->e:I

    sput v1, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->f:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getAudioInfo(I)Lcom/vivo/speechsdk/module/api/player/AudioFrame;
    .locals 7

    sget-object v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->a(I)Lcom/vivo/speechsdk/module/api/player/AudioFrame;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-boolean v2, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->c:Z

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    int-to-double v5, p0

    mul-double v5, v5, v3

    if-eqz v2, :cond_1

    sget p0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->d:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->e:I

    sget v2, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->d:I

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    int-to-double v2, p0

    div-double/2addr v5, v2

    double-to-int p0, v5

    sget v2, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->f:I

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mPercent:I

    sput p0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->f:I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static setAudioInfo(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V
    .locals 8

    iget v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mStatus:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->c:Z

    iget v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    if-eqz v0, :cond_2

    sput v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->d:I

    iget v0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    sput v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->e:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->d:I

    iget v1, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    add-int/2addr v0, v1

    sput v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->d:I

    :goto_2
    sget-object v0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;

    invoke-direct {v1}, Lcom/vivo/speechsdk/module/api/player/AudioFrame;-><init>()V

    sget-object v3, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->b:Lcom/vivo/speechsdk/module/api/player/AudioFrame;

    if-nez v3, :cond_3

    iput v2, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mStartBufferIndex:I

    iget v3, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    iput v3, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mEndBufferIndex:I

    iput v2, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mStartTextIndex:I

    iget v2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEndPos:I

    iput v2, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mEndTextIndex:I

    iget p0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mProgress:I

    iput p0, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mPercent:I

    goto :goto_3

    :cond_3
    iget v2, v3, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mEndBufferIndex:I

    iput v2, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mStartBufferIndex:I

    iget v4, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mEndBufferIndex:I

    iget v2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mProgress:I

    iput v2, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mPercent:I

    iget v2, v3, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mEndTextIndex:I

    iget v4, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEndPos:I

    if-ne v2, v4, :cond_4

    iget p0, v3, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mStartTextIndex:I

    iput p0, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mStartTextIndex:I

    iput v2, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mEndTextIndex:I

    goto :goto_3

    :cond_4
    iput v2, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mStartTextIndex:I

    iput v4, v1, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mEndTextIndex:I

    iget v2, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalFrameLength:I

    if-nez v2, :cond_5

    sget v2, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->d:I

    int-to-double v2, v2

    iget v4, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEndPos:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v6

    iget p0, p0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mTotalTextLength:I

    int-to-double v6, p0

    div-double/2addr v4, v6

    div-double/2addr v2, v4

    double-to-int p0, v2

    sput p0, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->e:I

    :cond_5
    :goto_3
    sput-object v1, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->b:Lcom/vivo/speechsdk/module/api/player/AudioFrame;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
