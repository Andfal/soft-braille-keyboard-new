.class public Lcom/iflytek/sparkchain/media/player/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/media/player/b$d;
    }
.end annotation


# static fields
.field public static final BUFFERING:I = 0x1

.field public static final INIT:I = 0x0

.field private static final MIN_SLEEP:I = 0x5

.field private static final MSG_ERROR:I = 0x0

.field private static final MSG_PAUSE:I = 0x1

.field private static final MSG_PERCENT:I = 0x3

.field private static final MSG_RESUME:I = 0x2

.field private static final MSG_STOPED:I = 0x4

.field public static final PAUSED:I = 0x3

.field public static final PLAYING:I = 0x2

.field public static final STOPED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PcmPlayer"


# instance fields
.field private final BYTES_OF_PER_SAMPLE:I

.field private final FADE_PERIOD:I

.field private final FADE_TIME:I

.field private final MAX_VOL:F

.field private final MIN_VOL:F

.field private final PER:F

.field afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private isExist:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private listener:Lcom/iflytek/sparkchain/media/player/c;

.field private mAudioFocus:Z

.field private mAudioLock:Ljava/lang/Object;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mBuffer:Lcom/iflytek/sparkchain/media/record/a;

.field private mBufferSize:I

.field private mBufferingFadingEnable:Z

.field private mChangeListenerFlag:Z

.field private mContext:Landroid/content/Context;

.field private mCurEndPos:I

.field private mCurFadingPeriod:F

.field private mCurVol:F

.field mEndCondition:Ljava/util/concurrent/locks/Condition;

.field mEndLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mFading:Z

.field private mFadingEnable:Z

.field private mFadingSize:I

.field private mPerPlaySize:I

.field private volatile mPlaytate:I

.field private mRequestFocus:Z

.field private mStreamType:I

.field private mSyncObj:Ljava/lang/Object;

.field private mTargetVol:F

.field private mThread:Lcom/iflytek/sparkchain/media/player/b$d;

.field private mUihandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mThread:Lcom/iflytek/sparkchain/media/player/b$d;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->listener:Lcom/iflytek/sparkchain/media/player/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioFocus:Z

    const/4 v2, 0x3

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mStreamType:I

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mRequestFocus:Z

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mChangeListenerFlag:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioLock:Ljava/lang/Object;

    iput-object p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mSyncObj:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->BYTES_OF_PER_SAMPLE:I

    const/16 v2, 0x1f4

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->FADE_TIME:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->FADE_PERIOD:I

    const/16 v2, 0x640

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mPerPlaySize:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->MAX_VOL:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/iflytek/sparkchain/media/player/b;->MIN_VOL:F

    const v4, 0x3dcccccd    # 0.1f

    iput v4, p0, Lcom/iflytek/sparkchain/media/player/b;->PER:F

    const/16 v5, 0x3e80

    iput v5, p0, Lcom/iflytek/sparkchain/media/player/b;->mFadingSize:I

    iput v3, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurVol:F

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mTargetVol:F

    iput v4, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurFadingPeriod:F

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mFading:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/iflytek/sparkchain/media/player/b;->isExist:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mBufferingFadingEnable:Z

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mFadingEnable:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mEndLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mEndCondition:Ljava/util/concurrent/locks/Condition;

    new-instance v1, Lcom/iflytek/sparkchain/media/player/b$a;

    invoke-direct {v1, p0}, Lcom/iflytek/sparkchain/media/player/b$a;-><init>(Lcom/iflytek/sparkchain/media/player/b;)V

    iput-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurEndPos:I

    new-instance v0, Lcom/iflytek/sparkchain/media/player/b$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/sparkchain/media/player/b$b;-><init>(Lcom/iflytek/sparkchain/media/player/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mUihandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZZ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mThread:Lcom/iflytek/sparkchain/media/player/b$d;

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->listener:Lcom/iflytek/sparkchain/media/player/c;

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioFocus:Z

    const/4 v2, 0x3

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mStreamType:I

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mRequestFocus:Z

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mChangeListenerFlag:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioLock:Ljava/lang/Object;

    iput-object p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mSyncObj:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->BYTES_OF_PER_SAMPLE:I

    const/16 v2, 0x1f4

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->FADE_TIME:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->FADE_PERIOD:I

    const/16 v2, 0x640

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mPerPlaySize:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->MAX_VOL:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/iflytek/sparkchain/media/player/b;->MIN_VOL:F

    const v4, 0x3dcccccd    # 0.1f

    iput v4, p0, Lcom/iflytek/sparkchain/media/player/b;->PER:F

    const/16 v5, 0x3e80

    iput v5, p0, Lcom/iflytek/sparkchain/media/player/b;->mFadingSize:I

    iput v3, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurVol:F

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mTargetVol:F

    iput v4, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurFadingPeriod:F

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mFading:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/iflytek/sparkchain/media/player/b;->isExist:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mBufferingFadingEnable:Z

    iput-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mFadingEnable:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mEndLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mEndCondition:Ljava/util/concurrent/locks/Condition;

    new-instance v1, Lcom/iflytek/sparkchain/media/player/b$a;

    invoke-direct {v1, p0}, Lcom/iflytek/sparkchain/media/player/b$a;-><init>(Lcom/iflytek/sparkchain/media/player/b;)V

    iput-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurEndPos:I

    new-instance v0, Lcom/iflytek/sparkchain/media/player/b$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/sparkchain/media/player/b$b;-><init>(Lcom/iflytek/sparkchain/media/player/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mUihandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/iflytek/sparkchain/media/player/b;->mStreamType:I

    iput-boolean p3, p0, Lcom/iflytek/sparkchain/media/player/b;->mRequestFocus:Z

    iput-boolean p4, p0, Lcom/iflytek/sparkchain/media/player/b;->mFadingEnable:Z

    iput-boolean p5, p0, Lcom/iflytek/sparkchain/media/player/b;->mBufferingFadingEnable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/iflytek/sparkchain/media/player/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mChangeListenerFlag:Z

    return p0
.end method

.method static synthetic access$002(Lcom/iflytek/sparkchain/media/player/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mChangeListenerFlag:Z

    return p1
.end method

.method static synthetic access$100(Lcom/iflytek/sparkchain/media/player/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/player/b;->onPause()V

    return-void
.end method

.method static synthetic access$1000(Lcom/iflytek/sparkchain/media/player/b;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/player/b;->isExist:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/iflytek/sparkchain/media/player/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/player/b;->prepAudioPlayer()V

    return-void
.end method

.method static synthetic access$1200(Lcom/iflytek/sparkchain/media/player/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mFading:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/iflytek/sparkchain/media/player/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mFading:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/iflytek/sparkchain/media/player/b;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/sparkchain/media/player/b;->setState(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/iflytek/sparkchain/media/player/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mUihandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/iflytek/sparkchain/media/player/b;I)I
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurEndPos:I

    return p1
.end method

.method static synthetic access$1600(Lcom/iflytek/sparkchain/media/player/b;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/iflytek/sparkchain/media/player/b;Landroid/media/AudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/iflytek/sparkchain/media/player/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mBufferingFadingEnable:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/iflytek/sparkchain/media/player/b;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mFadingSize:I

    return p0
.end method

.method static synthetic access$1900(Lcom/iflytek/sparkchain/media/player/b;)F
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mTargetVol:F

    return p0
.end method

.method static synthetic access$200(Lcom/iflytek/sparkchain/media/player/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/player/b;->onResume()V

    return-void
.end method

.method static synthetic access$2000(Lcom/iflytek/sparkchain/media/player/b;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mPerPlaySize:I

    return p0
.end method

.method static synthetic access$2102(Lcom/iflytek/sparkchain/media/player/b;Lcom/iflytek/sparkchain/media/player/b$d;)Lcom/iflytek/sparkchain/media/player/b$d;
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mThread:Lcom/iflytek/sparkchain/media/player/b$d;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/iflytek/sparkchain/media/player/b;Lcom/iflytek/sparkchain/media/speech/SpeechError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/media/player/b;->onError(Lcom/iflytek/sparkchain/media/speech/SpeechError;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/iflytek/sparkchain/media/player/b;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/iflytek/sparkchain/media/player/b;->onPercent(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/iflytek/sparkchain/media/player/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/player/b;->onStop()V

    return-void
.end method

.method static synthetic access$300(Lcom/iflytek/sparkchain/media/player/b;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mStreamType:I

    return p0
.end method

.method static synthetic access$400(Lcom/iflytek/sparkchain/media/player/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioFocus:Z

    return p0
.end method

.method static synthetic access$500(Lcom/iflytek/sparkchain/media/player/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/iflytek/sparkchain/media/player/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mRequestFocus:Z

    return p0
.end method

.method static synthetic access$700(Lcom/iflytek/sparkchain/media/player/b;)Lcom/iflytek/sparkchain/media/record/a;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    return-object p0
.end method

.method static synthetic access$800(Lcom/iflytek/sparkchain/media/player/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mSyncObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/iflytek/sparkchain/media/player/b;)I
    .locals 0

    iget p0, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    return p0
.end method

.method static synthetic access$902(Lcom/iflytek/sparkchain/media/player/b;I)I
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    return p1
.end method

.method private createAudio()V
    .locals 10

    const-string v0, "createAudio start"

    const-string v1, "PcmPlayer"

    invoke-static {v1, v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/record/a;->getRate()I

    move-result v4

    const/4 v0, 0x2

    invoke-static {v4, v0, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v2

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mBufferSize:I

    div-int/lit16 v2, v4, 0x3e8

    mul-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x32

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mPerPlaySize:I

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mFadingSize:I

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/player/b;->release()V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createAudio || mStreamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/iflytek/sparkchain/media/player/b;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", buffer size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/iflytek/sparkchain/media/player/b;->mBufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Landroid/media/AudioTrack;

    iget v3, p0, Lcom/iflytek/sparkchain/media/player/b;->mStreamType:I

    iget v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mBufferSize:I

    mul-int/lit8 v7, v2, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v8, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v9, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    iget v3, p0, Lcom/iflytek/sparkchain/media/player/b;->mBufferSize:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/iflytek/sparkchain/media/record/a;->setAudioTrackBuffSize(I)V

    iget v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mBufferSize:I

    const/4 v2, -0x2

    if-eq v0, v2, :cond_1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const-string v0, "createAudio end"

    invoke-static {v1, v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
.end method

.method private onError(Lcom/iflytek/sparkchain/media/speech/SpeechError;)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->listener:Lcom/iflytek/sparkchain/media/player/c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/iflytek/sparkchain/media/player/c;->onError(Lcom/iflytek/sparkchain/media/speech/SpeechError;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/b;->listener:Lcom/iflytek/sparkchain/media/player/c;

    :cond_0
    return-void
.end method

.method private onPause()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->listener:Lcom/iflytek/sparkchain/media/player/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iflytek/sparkchain/media/player/c;->onPause()V

    :cond_0
    return-void
.end method

.method private onPercent(II)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->listener:Lcom/iflytek/sparkchain/media/player/c;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->listener:Lcom/iflytek/sparkchain/media/player/c;

    iget v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurEndPos:I

    invoke-interface {v0, p1, p2, v1}, Lcom/iflytek/sparkchain/media/player/c;->onPercent(III)V

    :cond_0
    return-void
.end method

.method private onResume()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->listener:Lcom/iflytek/sparkchain/media/player/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iflytek/sparkchain/media/player/c;->onResume()V

    :cond_0
    return-void
.end method

.method private onStop()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->listener:Lcom/iflytek/sparkchain/media/player/c;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iflytek/sparkchain/media/player/c;->onStop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->listener:Lcom/iflytek/sparkchain/media/player/c;

    :cond_0
    return-void
.end method

.method private prepAudioPlayer()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mThread:Lcom/iflytek/sparkchain/media/player/b$d;

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/b$d;->a()I

    move-result v1

    iget v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mStreamType:I

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "PcmPlayer"

    const-string v2, "prepAudioPlayer || audiotrack is null or stream type is change."

    invoke-static {v1, v2}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/player/b;->createAudio()V

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mStreamType:I

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/media/player/b$d;->a(I)V

    :cond_1
    return-void
.end method

.method private setState(II)Z
    .locals 2

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    if-ne p1, v1, :cond_0

    iput p2, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public fading()V
    .locals 4

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mFadingEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mTargetVol:F

    iget v3, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurVol:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mTargetVol:F

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurVol:F

    iput-boolean v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mFading:Z

    const-string v1, "fading finish"

    invoke-static {v1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurVol:F

    iget v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurFadingPeriod:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurVol:F

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurVol:F

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    iput-boolean v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mFading:Z

    :goto_1
    return-void
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    return v0
.end method

.method public pause()Z
    .locals 2

    iget v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pause start fade out"

    invoke-static {v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/player/b;->startFadeOut()V

    iput v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public play(Lcom/iflytek/sparkchain/media/record/a;)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play mPlaytate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mAudioFocus= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PcmPlayer"

    invoke-static {v1, v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mThread:Lcom/iflytek/sparkchain/media/player/b$d;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mThread:Lcom/iflytek/sparkchain/media/player/b$d;

    if-nez v1, :cond_1

    new-instance v1, Lcom/iflytek/sparkchain/media/player/b$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iflytek/sparkchain/media/player/b$d;-><init>(Lcom/iflytek/sparkchain/media/player/b;Lcom/iflytek/sparkchain/media/player/b$a;)V

    iput-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mThread:Lcom/iflytek/sparkchain/media/player/b$d;

    iput v3, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    :cond_1
    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mBuffer:Lcom/iflytek/sparkchain/media/record/a;

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b;->isExist:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mThread:Lcom/iflytek/sparkchain/media/player/b$d;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 v3, 0x1

    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public rePlay(Lcom/iflytek/sparkchain/media/record/a;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/media/player/b;->setState(I)V

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/media/player/b;->play(Lcom/iflytek/sparkchain/media/record/a;)Z

    move-result p1

    return p1
.end method

.method public reSetStatus()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/media/player/b;->setState(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_0
    iget-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    :cond_1
    const-string v1, "PcmPlayer"

    const-string v2, "mAudioTrack released"

    invoke-static {v1, v2}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resume()Z
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/iflytek/sparkchain/media/player/b;->setState(II)Z

    move-result v0

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/sparkchain/media/player/b;->mRequestFocus:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/sparkchain/media/player/b;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-static {v2, v3, v4}, Lcom/iflytek/sparkchain/utils/FuncAdapter;->Lock(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    if-eqz v0, :cond_0

    const-string v2, "resume start fade in"

    invoke-static {v2}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mUihandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/player/b;->startFadeIn()V

    :cond_0
    return v0
.end method

.method public setAudioFocus(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioFocus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PcmPlayer"

    invoke-static {v1, v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioFocus:Z

    return-void
.end method

.method public setListener(Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;)V
    .locals 1

    new-instance v0, Lcom/iflytek/sparkchain/media/player/b$c;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/sparkchain/media/player/b$c;-><init>(Lcom/iflytek/sparkchain/media/player/b;Lcom/iflytek/sparkchain/core/media/player/PcmPlayer$PcmPlayerListener;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/sparkchain/media/player/b;->setListener(Lcom/iflytek/sparkchain/media/player/c;)V

    return-void
.end method

.method public setListener(Lcom/iflytek/sparkchain/media/player/c;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/player/b;->listener:Lcom/iflytek/sparkchain/media/player/c;

    return-void
.end method

.method public setSilence()V
    .locals 4

    const-string v0, "fading set silence"

    invoke-static {v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mTargetVol:F

    const/4 v2, 0x0

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    iput v2, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurVol:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mFading:Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mAudioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurVol:F

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected setState(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    return-void
.end method

.method public setStreamType(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setmStreamType || streamType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PcmPlayer"

    invoke-static {v1, v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput p1, p0, Lcom/iflytek/sparkchain/media/player/b;->mStreamType:I

    return-void
.end method

.method public startFadeIn()V
    .locals 2

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mFadingEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "start fade in"

    invoke-static {v1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mFading:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mTargetVol:F

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurFadingPeriod:F

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

.method public startFadeOut()V
    .locals 2

    iget-boolean v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mFadingEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "start fade out"

    invoke-static {v1}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mFading:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mTargetVol:F

    const v1, -0x42333333    # -0.1f

    iput v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mCurFadingPeriod:F

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

.method public stop()Z
    .locals 2

    iget v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    const/4 v1, 0x4

    if-eq v1, v0, :cond_0

    const-string v0, "stop start fade out"

    invoke-static {v0}, Lcom/iflytek/sparkchain/utils/log/LogUtil;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/iflytek/sparkchain/media/player/b;->startFadeOut()V

    :cond_0
    iget-object v0, p0, Lcom/iflytek/sparkchain/media/player/b;->mSyncObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput v1, p0, Lcom/iflytek/sparkchain/media/player/b;->mPlaytate:I

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
