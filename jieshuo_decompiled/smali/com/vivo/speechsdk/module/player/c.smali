.class public Lcom/vivo/speechsdk/module/player/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/player/c$e;,
        Lcom/vivo/speechsdk/module/player/c$d;
    }
.end annotation


# static fields
.field public static final A:I = 0x2

.field public static final B:I = 0x10

.field public static final C:I = 0x8

.field public static final D:I = 0x1

.field public static final E:I = 0x2

.field public static final F:I = 0x3

.field public static final G:I = 0x4

.field public static final H:I = 0x5

.field public static final I:I = 0x6

.field public static final J:I = 0x7

.field public static final K:I = 0x8

.field public static final L:I = 0x64

.field public static final M:I = 0x65

.field public static final N:I = 0x66

.field private static final O:I = 0x9

.field private static final P:I = 0xa

.field private static final Q:I = 0xb

.field private static final R:I = 0xc

.field private static final S:I = 0xd

.field private static final T:I = 0xe

.field private static final U:I = 0x1f4

.field private static final V:I = 0x3e80

.field private static final W:I = 0xa

.field private static X:[B = null

.field private static final y:Ljava/lang/String; = "PcmPlayer"

.field public static final z:I = 0x1


# instance fields
.field private a:[B

.field private volatile b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Z

.field private g:Z

.field private h:Z

.field private volatile i:I

.field private j:Landroid/media/AudioTrack;

.field private k:Landroid/media/AudioAttributes;

.field private l:Landroid/media/AudioFocusRequest;

.field private m:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

.field private n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

.field private o:Ljava/lang/Thread;

.field private p:Landroid/content/Context;

.field private final q:Landroid/os/Handler;

.field private r:Landroid/os/HandlerThread;

.field private s:F

.field private volatile t:I

.field private u:Lcom/vivo/speechsdk/module/api/player/IEffect;

.field private v:Ljava/lang/Runnable;

.field private final w:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private x:Landroid/os/Handler$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x500

    new-array v0, v0, [B

    sput-object v0, Lcom/vivo/speechsdk/module/player/c;->X:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/vivo/speechsdk/module/player/c;-><init>(Landroid/content/Context;ZLandroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZILandroid/media/AudioAttributes;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/player/c;->g:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/player/c;->h:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/vivo/speechsdk/module/player/c;->s:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/player/c;->t:I

    new-instance v0, Lcom/vivo/speechsdk/module/player/c$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/player/c$a;-><init>(Lcom/vivo/speechsdk/module/player/c;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->v:Ljava/lang/Runnable;

    new-instance v0, Lcom/vivo/speechsdk/module/player/c$b;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/player/c$b;-><init>(Lcom/vivo/speechsdk/module/player/c;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->w:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v0, Lcom/vivo/speechsdk/module/player/c$c;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/player/c$c;-><init>(Lcom/vivo/speechsdk/module/player/c;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->x:Landroid/os/Handler$Callback;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/c;->p:Landroid/content/Context;

    iput p2, p0, Lcom/vivo/speechsdk/module/player/c;->c:I

    iput p3, p0, Lcom/vivo/speechsdk/module/player/c;->d:I

    iput-object p7, p0, Lcom/vivo/speechsdk/module/player/c;->k:Landroid/media/AudioAttributes;

    iput p4, p0, Lcom/vivo/speechsdk/module/player/c;->e:I

    iput-boolean p5, p0, Lcom/vivo/speechsdk/module/player/c;->f:Z

    invoke-direct {p0, p6}, Lcom/vivo/speechsdk/module/player/c;->b(I)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/module/player/c;->b:I

    if-nez p8, :cond_0

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "PcmPlayer_EventHandler"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/c;->r:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/player/c;->r:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/vivo/speechsdk/module/player/c;->x:Landroid/os/Handler$Callback;

    invoke-direct {p1, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/player/c;->x:Landroid/os/Handler$Callback;

    invoke-direct {p1, p8, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :goto_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/c;->q:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/vivo/speechsdk/module/player/c;-><init>(Landroid/content/Context;ZLandroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vivo/speechsdk/module/player/c;-><init>(Landroid/content/Context;ZLandroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/os/Looper;)V
    .locals 9

    const/16 v2, 0x3e80

    const/4 v3, 0x1

    const/16 v4, 0x10

    const/16 v6, 0x1f4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/vivo/speechsdk/module/player/c;-><init>(Landroid/content/Context;IIIZILandroid/media/AudioAttributes;Landroid/os/Looper;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method private a()V
    .locals 3

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/player/c;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->p:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->e()Landroid/media/AudioFocusRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/j0;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->w:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private a(II)V
    .locals 2

    if-ltz p2, :cond_1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {p2}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getPosition()I

    move-result p2

    sub-int p1, p2, p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->setPosition(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fixPosition from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PcmPlayer"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/player/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->g()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/player/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/player/c;->g(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/player/c;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/player/c;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/player/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/player/c;->a(Z)V

    return-void
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->release()V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->u:Lcom/vivo/speechsdk/module/api/player/IEffect;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IEffect;->release()V

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->r:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->r:Landroid/os/HandlerThread;

    :cond_3
    iput-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->o:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->p:Landroid/content/Context;

    iput-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->a:[B

    if-eqz p1, :cond_4

    const-string p1, "PcmPlayer"

    const-string v0, "user call release"

    :goto_0
    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p1, "PcmPlayer"

    const-string v0, "play thread call release"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(I)I
    .locals 4

    int-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iget p1, p0, Lcom/vivo/speechsdk/module/player/c;->c:I

    int-to-double v2, p1

    mul-double v0, v0, v2

    iget p1, p0, Lcom/vivo/speechsdk/module/player/c;->e:I

    div-int/lit8 p1, p1, 0x8

    int-to-double v2, p1

    mul-double v0, v0, v2

    iget p1, p0, Lcom/vivo/speechsdk/module/player/c;->d:I

    int-to-double v2, p1

    mul-double v0, v0, v2

    double-to-int p1, v0

    return p1
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/player/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->p()V

    return-void
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/player/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/player/c;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/player/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/player/c;->h:Z

    return p1
.end method

.method static synthetic b()[B
    .locals 1

    sget-object v0, Lcom/vivo/speechsdk/module/player/c;->X:[B

    return-object v0
.end method

.method private c(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 p1, 0xc

    return p1

    :cond_1
    return v1
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/IBuffer;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    return-object p0
.end method

.method private c()Z
    .locals 6

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getPosition()I

    move-result v1

    iget v2, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/vivo/speechsdk/module/player/c;->b:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->isBuffering()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget v2, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    if-ge v1, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_4
    return v5
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/player/c;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/player/c;->f(I)Z

    move-result p0

    return p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method private declared-synchronized d(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/vivo/speechsdk/module/player/c;->t:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/player/c;->g(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic d(Lcom/vivo/speechsdk/module/player/c;)Z
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->m()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/module/player/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/player/c;->e:I

    return p0
.end method

.method private e()Landroid/media/AudioFocusRequest;
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->l:Landroid/media/AudioFocusRequest;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->k:Landroid/media/AudioAttributes;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/o0;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->w:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/player/c;->q:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/n0;->a(Landroid/media/AudioFocusRequest$Builder;Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    invoke-static {v0}, Lcom/nirenr/talkman/p0;->a(Landroid/media/AudioFocusRequest$Builder;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->l:Landroid/media/AudioFocusRequest;

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->l:Landroid/media/AudioFocusRequest;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/speechsdk/module/player/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    return p0
.end method

.method private f(I)Z
    .locals 4

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    const/4 v0, 0x6

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    :try_start_0
    iget v3, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    if-eq v3, v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    if-ne v0, v2, :cond_3

    :cond_2
    iput p1, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    monitor-exit p0

    return v1

    :cond_3
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized g()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->c:I

    iget v1, p0, Lcom/vivo/speechsdk/module/player/c;->d:I

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/player/c;->c(I)I

    move-result v1

    iget v2, p0, Lcom/vivo/speechsdk/module/player/c;->e:I

    invoke-direct {p0, v2}, Lcom/vivo/speechsdk/module/player/c;->a(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->a:[B

    new-array v1, v0, [B

    sput-object v1, Lcom/vivo/speechsdk/module/player/c;->X:[B

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->k:Landroid/media/AudioAttributes;

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->k:Landroid/media/AudioAttributes;

    :cond_0
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v2, p0, Lcom/vivo/speechsdk/module/player/c;->e:I

    invoke-direct {p0, v2}, Lcom/vivo/speechsdk/module/player/c;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/speechsdk/module/player/c;->c:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v2, p0, Lcom/vivo/speechsdk/module/player/c;->d:I

    invoke-direct {p0, v2}, Lcom/vivo/speechsdk/module/player/c;->c(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    new-instance v1, Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/vivo/speechsdk/module/player/c;->k:Landroid/media/AudioAttributes;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v1

    move v6, v0

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    iget v2, p0, Lcom/vivo/speechsdk/module/player/c;->s:F

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bufferSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " minBuffer = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PcmPlayer"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g(I)V
    .locals 3

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    if-eq v0, p1, :cond_2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    if-eq v0, p1, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    iput p1, p0, Lcom/vivo/speechsdk/module/player/c;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "PcmPlayer"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State  \uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " changed to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/vivo/speechsdk/module/player/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->n()V

    return-void
.end method

.method private h()Z
    .locals 3

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method static synthetic h(Lcom/vivo/speechsdk/module/player/c;)Z
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->r()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/vivo/speechsdk/module/player/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->a()V

    return-void
.end method

.method private i()Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->isBuffering()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getPosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()Z
    .locals 5

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    iget-boolean v1, p0, Lcom/vivo/speechsdk/module/player/c;->g:Z

    if-nez v1, :cond_3

    :cond_2
    iget v1, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    if-ne v1, v3, :cond_4

    iget-boolean v1, p0, Lcom/vivo/speechsdk/module/player/c;->g:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    const/4 v2, 0x1

    :cond_6
    return v2
.end method

.method static synthetic j(Lcom/vivo/speechsdk/module/player/c;)Z
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->k()Z

    move-result p0

    return p0
.end method

.method private k()Z
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

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

.method static synthetic k(Lcom/vivo/speechsdk/module/player/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/module/player/c;->g:Z

    return p0
.end method

.method static synthetic l(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/player/c;->m:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    return-object p0
.end method

.method private l()Z
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private m()Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v1}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getPosition()I

    move-result v1

    if-ge v1, v0, :cond_1

    iget v1, p0, Lcom/vivo/speechsdk/module/player/c;->b:I

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

.method static synthetic m(Lcom/vivo/speechsdk/module/player/c;)Z
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->c()Z

    move-result p0

    return p0
.end method

.method private n()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const-string v0, "PcmPlayer"

    const-string v1, "PcmPlayer paused"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->t:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->a()V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->q:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->h()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->t:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->p()V

    :cond_1
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->d()V

    const-string v0, "PcmPlayer"

    const-string v1, "PcmPlayer resume"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->q:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "PcmPlayer"

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic n(Lcom/vivo/speechsdk/module/player/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->d()V

    return-void
.end method

.method private o()[B
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->a:[B

    invoke-interface {v0, v1}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->read([B)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->u:Lcom/vivo/speechsdk/module/api/player/IEffect;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/vivo/speechsdk/module/player/c;->a:[B

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->i()Z

    move-result v3

    invoke-interface {v1, v2, v0, v3}, Lcom/vivo/speechsdk/module/api/player/IEffect;->processByte([BIZ)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->a:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/vivo/speechsdk/module/player/c;)[B
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->o()[B

    move-result-object p0

    return-object p0
.end method

.method private p()V
    .locals 4

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/player/c;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->p:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->e()Landroid/media/AudioFocusRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/b2;->a(Landroid/media/AudioManager;Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->w:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic p(Lcom/vivo/speechsdk/module/player/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/module/player/c;->h:Z

    return p0
.end method

.method static synthetic q(Lcom/vivo/speechsdk/module/player/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/player/c;->q:Landroid/os/Handler;

    return-object p0
.end method

.method private q()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic r(Lcom/vivo/speechsdk/module/player/c;)Landroid/media/AudioTrack;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    return-object p0
.end method

.method private r()Z
    .locals 3

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    :goto_0
    iput v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    return v2

    :cond_0
    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private s()V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/vivo/speechsdk/module/api/player/IBuffer;Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;Z)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/vivo/speechsdk/module/player/c;->m:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    iput-boolean p3, p0, Lcom/vivo/speechsdk/module/player/c;->g:Z

    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    monitor-exit p0

    return p2

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->h()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return p2

    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/c;->o:Ljava/lang/Thread;

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/player/c;->v:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/c;->o:Ljava/lang/Thread;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setPriority(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/c;->o:Ljava/lang/Thread;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PcmPlayer_Thread_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/vivo/speechsdk/module/player/c;->o:Ljava/lang/Thread;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/c;->o:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :cond_2
    monitor-exit p0

    return p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized e(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/player/c;->b(I)I

    move-result p1

    iput p1, p0, Lcom/vivo/speechsdk/module/player/c;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->k()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized pause()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PcmPlayer"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/player/c;->d(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized play(Lcom/vivo/speechsdk/module/api/player/IBuffer;Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;)Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/vivo/speechsdk/module/player/c;->a(Lcom/vivo/speechsdk/module/api/player/IBuffer;Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;Z)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rePlay()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->getSize()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->j()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->k()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_2
    :try_start_2
    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->reset()V

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/player/c;->resume()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_3
    :try_start_3
    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/player/c;->g(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

    :cond_4
    :try_start_4
    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->s()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->reset()V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c;->v:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->o:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->o:Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PcmPlayer_Replay_Thread_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/module/player/c;->o:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->o:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v2

    :cond_5
    :try_start_5
    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    if-ne v0, v2, :cond_6

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->s()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->n:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->reset()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2

    :cond_6
    monitor-exit p0

    return v1

    :cond_7
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PcmPlayer"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->o:Ljava/lang/Thread;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    :goto_0
    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/player/c;->a(Z)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->j()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->h()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/player/c;->g(I)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->q()V

    :cond_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->h()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PcmPlayer"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/vivo/speechsdk/module/player/c;->g(I)V

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEffect(Lcom/vivo/speechsdk/module/api/player/IEffect;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/c;->u:Lcom/vivo/speechsdk/module/api/player/IEffect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSpeed(F)V
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->u:Lcom/vivo/speechsdk/module/api/player/IEffect;

    if-nez v0, :cond_0

    new-instance v0, Lcom/vivo/speechsdk/module/player/soundtouch/a;

    iget v1, p0, Lcom/vivo/speechsdk/module/player/c;->c:I

    iget v2, p0, Lcom/vivo/speechsdk/module/player/c;->d:I

    iget v3, p0, Lcom/vivo/speechsdk/module/player/c;->e:I

    invoke-direct {v0, v1, v2, v3}, Lcom/vivo/speechsdk/module/player/soundtouch/a;-><init>(III)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->u:Lcom/vivo/speechsdk/module/api/player/IEffect;

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->u:Lcom/vivo/speechsdk/module/api/player/IEffect;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/player/IEffect;->setSpeed(F)V

    return-void
.end method

.method public declared-synchronized setVolume(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/vivo/speechsdk/module/player/c;->s:F

    invoke-virtual {v0, p1}, Landroid/media/AudioTrack;->setVolume(F)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->h()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PcmPlayer"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/vivo/speechsdk/module/player/c;->i:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/player/c;->g(I)V

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->q()V

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/player/c;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c;->j:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
