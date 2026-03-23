.class public Lcom/iflytek/msc/MscSynthesizer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/msc/MscSynthesizer$Param;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MscSynthesizer"

.field private static final instanceNum:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private a:C

.field private final appId:Ljava/lang/String;

.field private final channelId:Ljava/lang/String;

.field private currSpeakerId:Ljava/lang/String;

.field private d:C

.field private destroyed:Z

.field private e:C

.field private f:C

.field private final mContext:Landroid/content/Context;

.field private mErr:I

.field private final mHandler:Landroid/os/Handler;

.field private mIdx:I

.field private mIdx2:I

.field private final mLock:Ljava/lang/Object;

.field private mText:Ljava/lang/String;

.field private mscConfig:Lcom/iflytek/msc/TtsMscConfig;

.field private o:C

.field private final speakerId:Ljava/lang/String;

.field private ttsMscEngine:Lcom/iflytek/msc/MscTtsEngine;

.field private final ttsParams:Lcom/iflytek/msc/TtsParams;

.field private z:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/iflytek/msc/MscSynthesizer;->instanceNum:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/msc/Speaker;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/msc/MscSynthesizer;->destroyed:Z

    const/16 v1, 0x61

    iput-char v1, p0, Lcom/iflytek/msc/MscSynthesizer;->a:C

    const/16 v1, 0x64

    iput-char v1, p0, Lcom/iflytek/msc/MscSynthesizer;->d:C

    const/16 v1, 0x66

    iput-char v1, p0, Lcom/iflytek/msc/MscSynthesizer;->f:C

    const/16 v1, 0x38

    iput-char v1, p0, Lcom/iflytek/msc/MscSynthesizer;->e:C

    const/16 v1, 0x30

    iput-char v1, p0, Lcom/iflytek/msc/MscSynthesizer;->z:C

    const/16 v1, 0x31

    iput-char v1, p0, Lcom/iflytek/msc/MscSynthesizer;->o:C

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/msc/MscSynthesizer;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/msc/MscSynthesizer;->mLock:Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    invoke-static {p1}, Lcom/iflytek/msc/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/iflytek/msc/MscSynthesizer;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/iflytek/msc/MscSynthesizer;->instanceNum:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Lcom/iflytek/msc/TtsMscConfig;

    invoke-direct {v2}, Lcom/iflytek/msc/TtsMscConfig;-><init>()V

    iput-object v2, p0, Lcom/iflytek/msc/MscSynthesizer;->mscConfig:Lcom/iflytek/msc/TtsMscConfig;

    new-instance v2, Lcom/iflytek/msc/MscTtsEngine;

    invoke-direct {v2}, Lcom/iflytek/msc/MscTtsEngine;-><init>()V

    iput-object v2, p0, Lcom/iflytek/msc/MscSynthesizer;->ttsMscEngine:Lcom/iflytek/msc/MscTtsEngine;

    invoke-static {p2}, Lcom/iflytek/msc/MscSynthesizer;->parseSpeakerParam(Lcom/iflytek/msc/Speaker;)Lcom/iflytek/msc/MscSynthesizer$Param;

    move-result-object v2

    iget-object v3, v2, Lcom/iflytek/msc/MscSynthesizer$Param;->code:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/iflytek/msc/Speaker;->code:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/iflytek/msc/MscSynthesizer$Param;->code:Ljava/lang/String;

    :goto_0
    new-instance v4, Lcom/iflytek/msc/TtsParams;

    invoke-direct {v4}, Lcom/iflytek/msc/TtsParams;-><init>()V

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Lcom/iflytek/msc/TtsParams;->setSpeed(I)V

    invoke-virtual {v4, v5}, Lcom/iflytek/msc/TtsParams;->setVolume(I)V

    invoke-virtual {v4, v3}, Lcom/iflytek/msc/TtsParams;->setLocalTTSRole(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/iflytek/msc/TtsParams;->setCloudTTSRole(Ljava/lang/String;)V

    const-string v5, "http://dz-x2.xf-yun.com22/msp.do"

    invoke-virtual {v4, v5}, Lcom/iflytek/msc/TtsParams;->setServerUrl(Ljava/lang/String;)V

    const-string v5, "text"

    invoke-virtual {v4, v5}, Lcom/iflytek/msc/TtsParams;->setCloudTTSttp(Ljava/lang/String;)V

    iget-short v5, p2, Lcom/iflytek/msc/Speaker;->type:S

    if-nez v5, :cond_2

    const-string v0, "purextts"

    :goto_1
    invoke-virtual {v4, v0}, Lcom/iflytek/msc/TtsParams;->setTTSEngineType(Ljava/lang/String;)V

    invoke-direct {p0, p1, v3}, Lcom/iflytek/msc/MscSynthesizer;->getResArg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/iflytek/msc/TtsParams;->setTtsResPath(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-ne v5, v0, :cond_3

    const-string v0, "local"

    goto :goto_1

    :cond_3
    :goto_2
    const-string p1, "0"

    invoke-virtual {v4, p1}, Lcom/iflytek/msc/TtsParams;->setCloudTTSMethodOfReadNumber(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lcom/iflytek/msc/MscSynthesizer;->e:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lcom/iflytek/msc/MscSynthesizer;->d:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lcom/iflytek/msc/MscSynthesizer;->a:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lcom/iflytek/msc/MscSynthesizer;->z:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lcom/iflytek/msc/MscSynthesizer;->f:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lcom/iflytek/msc/MscSynthesizer;->f:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lcom/iflytek/msc/MscSynthesizer;->o:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/msc/MscSynthesizer;->appId:Ljava/lang/String;

    iget-object p1, v2, Lcom/iflytek/msc/MscSynthesizer$Param;->channelId:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/msc/MscSynthesizer;->channelId:Ljava/lang/String;

    iput-object v4, p0, Lcom/iflytek/msc/MscSynthesizer;->ttsParams:Lcom/iflytek/msc/TtsParams;

    iget-object p1, p2, Lcom/iflytek/msc/Speaker;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/iflytek/msc/MscSynthesizer;->speakerId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/msc/MscSynthesizer;->init()V

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method static bridge synthetic a(Lcom/iflytek/msc/MscSynthesizer;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/msc/MscSynthesizer;->mErr:I

    return p0
.end method

.method static bridge synthetic b(Lcom/iflytek/msc/MscSynthesizer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/msc/MscSynthesizer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/iflytek/msc/MscSynthesizer;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/msc/MscSynthesizer;->mIdx:I

    return p0
.end method

.method static bridge synthetic d(Lcom/iflytek/msc/MscSynthesizer;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/msc/MscSynthesizer;->mIdx2:I

    return p0
.end method

.method static bridge synthetic e(Lcom/iflytek/msc/MscSynthesizer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/msc/MscSynthesizer;->mText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/iflytek/msc/MscSynthesizer;I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/msc/MscSynthesizer;->mErr:I

    return-void
.end method

.method static bridge synthetic g(Lcom/iflytek/msc/MscSynthesizer;I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/msc/MscSynthesizer;->mIdx2:I

    return-void
.end method

.method private getResArg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->assets:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    const-string v2, "tts/common.jet"

    invoke-static {p1, v1, v2}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tts/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".jet"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, p2}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "%s;%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static parseSpeakerParam(Lcom/iflytek/msc/Speaker;)Lcom/iflytek/msc/MscSynthesizer$Param;
    .locals 4

    new-instance v0, Lcom/iflytek/msc/MscSynthesizer$Param;

    invoke-direct {v0}, Lcom/iflytek/msc/MscSynthesizer$Param;-><init>()V

    iget-object v1, p0, Lcom/iflytek/msc/Speaker;->param:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/iflytek/msc/Speaker;->param:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v1, v0, Lcom/iflytek/msc/MscSynthesizer$Param;->appId:Ljava/lang/String;

    :cond_0
    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-object v1, v0, Lcom/iflytek/msc/MscSynthesizer$Param;->channelId:Ljava/lang/String;

    :cond_1
    array-length v1, p0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_2

    aget-object p0, p0, v2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object p0, v0, Lcom/iflytek/msc/MscSynthesizer$Param;->code:Ljava/lang/String;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 4

    invoke-virtual {p0}, Lcom/iflytek/msc/MscSynthesizer;->stop()V

    iget-boolean v0, p0, Lcom/iflytek/msc/MscSynthesizer;->destroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/msc/MscSynthesizer;->ttsMscEngine:Lcom/iflytek/msc/MscTtsEngine;

    invoke-virtual {v1}, Lcom/iflytek/msc/MscTtsEngine;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/msc/MscSynthesizer;->ttsMscEngine:Lcom/iflytek/msc/MscTtsEngine;

    iput-object v1, p0, Lcom/iflytek/msc/MscSynthesizer;->mscConfig:Lcom/iflytek/msc/TtsMscConfig;

    const-string v2, "MscSynthesizer"

    const-string v3, "destroyed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/iflytek/msc/MscSynthesizer;->currSpeakerId:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/msc/MscSynthesizer;->destroyed:Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public init()V
    .locals 6

    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/androlua/LuaUtil;->printStackTrace(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/iflytek/msc/MscSynthesizer;->mErr:I

    iget-object v2, p0, Lcom/iflytek/msc/MscSynthesizer;->mscConfig:Lcom/iflytek/msc/TtsMscConfig;

    iget-object v3, p0, Lcom/iflytek/msc/MscSynthesizer;->ttsParams:Lcom/iflytek/msc/TtsParams;

    invoke-virtual {v2, v3}, Lcom/iflytek/msc/TtsMscConfig;->setTTSParam(Lcom/iflytek/msc/TtsParams;)V

    iget-object v2, p0, Lcom/iflytek/msc/MscSynthesizer;->ttsMscEngine:Lcom/iflytek/msc/MscTtsEngine;

    iget-object v3, p0, Lcom/iflytek/msc/MscSynthesizer;->mscConfig:Lcom/iflytek/msc/TtsMscConfig;

    iget-object v4, p0, Lcom/iflytek/msc/MscSynthesizer;->appId:Ljava/lang/String;

    iget-object v5, p0, Lcom/iflytek/msc/MscSynthesizer;->channelId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/iflytek/msc/MscTtsEngine;->setParam(Lcom/iflytek/msc/TtsMscConfig;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iflytek/msc/MscSynthesizer;->ttsMscEngine:Lcom/iflytek/msc/MscTtsEngine;

    invoke-virtual {v2}, Lcom/iflytek/msc/MscTtsEngine;->reInit()V

    iget-object v2, p0, Lcom/iflytek/msc/MscSynthesizer;->speakerId:Ljava/lang/String;

    iput-object v2, p0, Lcom/iflytek/msc/MscSynthesizer;->currSpeakerId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/iflytek/msc/MscSynthesizer;->destroyed:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSpeaker(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/msc/MscSynthesizer;->ttsMscEngine:Lcom/iflytek/msc/MscTtsEngine;

    invoke-virtual {v1}, Lcom/iflytek/msc/MscTtsEngine;->stop()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthesize(IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)I
    .locals 13

    move-object v8, p0

    move-object/from16 v0, p4

    iput-object v0, v8, Lcom/iflytek/msc/MscSynthesizer;->mText:Ljava/lang/String;

    iget v1, v8, Lcom/iflytek/msc/MscSynthesizer;->mIdx:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    iput v1, v8, Lcom/iflytek/msc/MscSynthesizer;->mIdx:I

    const/4 v10, 0x0

    iput v10, v8, Lcom/iflytek/msc/MscSynthesizer;->mIdx2:I

    iget-object v1, v8, Lcom/iflytek/msc/MscSynthesizer;->speakerId:Ljava/lang/String;

    iget-object v2, v8, Lcom/iflytek/msc/MscSynthesizer;->currSpeakerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v8, Lcom/iflytek/msc/MscSynthesizer;->mErr:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v8, Lcom/iflytek/msc/MscSynthesizer;->ttsParams:Lcom/iflytek/msc/TtsParams;

    move v6, p2

    invoke-virtual {v1, p2}, Lcom/iflytek/msc/TtsParams;->setVolume(I)V

    iget-object v1, v8, Lcom/iflytek/msc/MscSynthesizer;->ttsParams:Lcom/iflytek/msc/TtsParams;

    move v5, p1

    invoke-virtual {v1, p1}, Lcom/iflytek/msc/TtsParams;->setSpeed(I)V

    iget-object v1, v8, Lcom/iflytek/msc/MscSynthesizer;->ttsParams:Lcom/iflytek/msc/TtsParams;

    move/from16 v7, p3

    invoke-virtual {v1, v7}, Lcom/iflytek/msc/TtsParams;->setPitch(I)V

    invoke-interface/range {p5 .. p5}, Lcom/iflytek/msc/ISynthesizerCallback;->onStart()V

    iget v1, v8, Lcom/iflytek/msc/MscSynthesizer;->mErr:I

    add-int/2addr v1, v9

    iput v1, v8, Lcom/iflytek/msc/MscSynthesizer;->mErr:I

    iget-object v11, v8, Lcom/iflytek/msc/MscSynthesizer;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v10, v8, Lcom/iflytek/msc/MscSynthesizer;->ttsMscEngine:Lcom/iflytek/msc/MscTtsEngine;

    new-instance v12, Lcom/iflytek/msc/MscSynthesizer$2;

    move-object v1, v12

    move-object v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/msc/MscSynthesizer$2;-><init>(Lcom/iflytek/msc/MscSynthesizer;Lcom/iflytek/msc/ISynthesizerCallback;Ljava/lang/String;III)V

    invoke-virtual {v10, v0, v12, v9}, Lcom/iflytek/msc/MscTtsEngine;->speak(Ljava/lang/String;Lcom/iflytek/msc/imsc/IMscTtsListener;I)I

    move-result v0

    monitor-exit v11

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    move v5, p1

    move v6, p2

    move/from16 v7, p3

    iget-object v9, v8, Lcom/iflytek/msc/MscSynthesizer;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/iflytek/msc/MscSynthesizer$1;

    move-object v1, v11

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/msc/MscSynthesizer$1;-><init>(Lcom/iflytek/msc/MscSynthesizer;IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)V

    invoke-virtual {v9, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v10
.end method

.method public synthesize2(IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)I
    .locals 12

    move-object v8, p0

    iget-object v0, v8, Lcom/iflytek/msc/MscSynthesizer;->speakerId:Ljava/lang/String;

    iget-object v1, v8, Lcom/iflytek/msc/MscSynthesizer;->currSpeakerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v8, Lcom/iflytek/msc/MscSynthesizer;->mErr:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lcom/iflytek/msc/MscSynthesizer;->ttsParams:Lcom/iflytek/msc/TtsParams;

    move v6, p2

    invoke-virtual {v0, p2}, Lcom/iflytek/msc/TtsParams;->setVolume(I)V

    iget-object v0, v8, Lcom/iflytek/msc/MscSynthesizer;->ttsParams:Lcom/iflytek/msc/TtsParams;

    move v5, p1

    invoke-virtual {v0, p1}, Lcom/iflytek/msc/TtsParams;->setSpeed(I)V

    iget-object v0, v8, Lcom/iflytek/msc/MscSynthesizer;->ttsParams:Lcom/iflytek/msc/TtsParams;

    move v7, p3

    invoke-virtual {v0, p3}, Lcom/iflytek/msc/TtsParams;->setPitch(I)V

    invoke-interface/range {p5 .. p5}, Lcom/iflytek/msc/ISynthesizerCallback;->onStart()V

    iget v0, v8, Lcom/iflytek/msc/MscSynthesizer;->mErr:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    iput v0, v8, Lcom/iflytek/msc/MscSynthesizer;->mErr:I

    iget-object v10, v8, Lcom/iflytek/msc/MscSynthesizer;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v0, v8, Lcom/iflytek/msc/MscSynthesizer;->ttsMscEngine:Lcom/iflytek/msc/MscTtsEngine;

    new-instance v11, Lcom/iflytek/msc/MscSynthesizer$3;

    move-object v1, v11

    move-object v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/iflytek/msc/MscSynthesizer$3;-><init>(Lcom/iflytek/msc/MscSynthesizer;Lcom/iflytek/msc/ISynthesizerCallback;Ljava/lang/String;III)V

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11, v9}, Lcom/iflytek/msc/MscTtsEngine;->speak(Ljava/lang/String;Lcom/iflytek/msc/imsc/IMscTtsListener;I)I

    move-result v0

    monitor-exit v10

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method
