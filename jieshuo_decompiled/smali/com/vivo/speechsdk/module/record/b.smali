.class public Lcom/vivo/speechsdk/module/record/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/record/IRecord;


# static fields
.field private static final A:I = 0x3e7

.field private static final B:B = 0x0t

.field private static final r:Ljava/lang/String; = "AudioRecord"

.field private static final s:I = 0x1

.field private static final t:I = 0x2

.field private static final u:I = 0x3

.field private static final v:I = 0x4

.field private static final w:I = 0x5

.field private static final x:I = 0x6

.field private static final y:I = 0x7d0

.field private static final z:I = 0x19


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:I

.field private g:Lcom/vivo/speechsdk/module/api/record/RecordListener;

.field private h:Landroid/media/AudioRecord;

.field private i:Ljava/lang/Thread;

.field private volatile j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private final n:Ljava/lang/Object;

.field private o:Lcom/vivo/speechsdk/common/utils/ILog;

.field private final p:Landroid/media/AudioManager$AudioRecordingCallback;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/vivo/speechsdk/module/record/b;-><init>(IIIIIZZZI)V

    return-void
.end method

.method public constructor <init>(IIIIIZZZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/record/b;->k:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/record/b;->l:Z

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/record/b;->m:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->n:Ljava/lang/Object;

    new-instance v0, Lcom/vivo/speechsdk/module/record/b$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/record/b$a;-><init>(Lcom/vivo/speechsdk/module/record/b;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->p:Landroid/media/AudioManager$AudioRecordingCallback;

    new-instance v0, Lcom/vivo/speechsdk/module/record/b$b;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/record/b$b;-><init>(Lcom/vivo/speechsdk/module/record/b;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->q:Ljava/lang/Runnable;

    iput p1, p0, Lcom/vivo/speechsdk/module/record/b;->a:I

    iput p2, p0, Lcom/vivo/speechsdk/module/record/b;->b:I

    iput p3, p0, Lcom/vivo/speechsdk/module/record/b;->c:I

    iput p4, p0, Lcom/vivo/speechsdk/module/record/b;->d:I

    iput p5, p0, Lcom/vivo/speechsdk/module/record/b;->e:I

    iput-boolean p6, p0, Lcom/vivo/speechsdk/module/record/b;->k:Z

    iput-boolean p7, p0, Lcom/vivo/speechsdk/module/record/b;->l:Z

    iput-boolean p8, p0, Lcom/vivo/speechsdk/module/record/b;->m:Z

    invoke-static {p9}, Lcom/vivo/speechsdk/common/utils/LoggerManager;->getLogger(I)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/record/b;->o:Lcom/vivo/speechsdk/common/utils/ILog;

    return-void
.end method

.method private a()I
    .locals 12

    iget v0, p0, Lcom/vivo/speechsdk/module/record/b;->b:I

    iget v1, p0, Lcom/vivo/speechsdk/module/record/b;->c:I

    iget v2, p0, Lcom/vivo/speechsdk/module/record/b;->d:I

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/record/b;->f:I

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->o:Lcom/vivo/speechsdk/common/utils/ILog;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "sid: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/vivo/speechsdk/module/record/b;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, " source: "

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/vivo/speechsdk/module/record/b;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, " sampleRate:"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    iget v2, p0, Lcom/vivo/speechsdk/module/record/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const/4 v2, 0x6

    const-string v8, " channelConfig: "

    aput-object v8, v1, v2

    iget v2, p0, Lcom/vivo/speechsdk/module/record/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x7

    aput-object v2, v1, v8

    const/16 v2, 0x8

    const-string v8, " audioFormat: "

    aput-object v8, v1, v2

    iget v2, p0, Lcom/vivo/speechsdk/module/record/b;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0x9

    aput-object v2, v1, v8

    const/16 v2, 0xa

    const-string v8, " bufferSize: "

    aput-object v8, v1, v2

    iget v2, p0, Lcom/vivo/speechsdk/module/record/b;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v8, 0xb

    aput-object v2, v1, v8

    const/16 v2, 0xc

    const-string v8, " BluetoothScoOn: "

    aput-object v8, v1, v2

    iget-boolean v2, p0, Lcom/vivo/speechsdk/module/record/b;->l:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v8, 0xd

    aput-object v2, v1, v8

    invoke-static {v1}, Lcom/vivo/speechsdk/common/utils/StringUtils;->concat([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioRecord"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/vivo/speechsdk/module/record/b;->f:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v0, p0, Lcom/vivo/speechsdk/module/record/b;->e:I

    const/16 v1, 0x2f46

    if-eqz v0, :cond_1

    :try_start_0
    const-class v0, Landroid/media/AudioRecord;

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/media/AudioAttributes;

    aput-object v9, v8, v3

    const-class v9, Landroid/media/AudioFormat;

    aput-object v9, v8, v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v5

    aput-object v9, v8, v6

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const-class v8, Landroid/media/AudioAttributes$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "setInternalCapturePreset"

    :try_start_1
    new-array v11, v4, [Ljava/lang/Class;

    aput-object v9, v11, v3

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const-class v9, Landroid/media/MediaRecorder$AudioSource;

    const-string v10, "HOTWORD"

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    new-instance v10, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v3

    invoke-virtual {v8, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v8}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v3

    new-instance v8, Landroid/media/AudioFormat$Builder;

    invoke-direct {v8}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v9, p0, Lcom/vivo/speechsdk/module/record/b;->c:I

    invoke-virtual {v8, v9}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/speechsdk/module/record/b;->d:I

    invoke-virtual {v8, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    iget v9, p0, Lcom/vivo/speechsdk/module/record/b;->b:I

    invoke-virtual {v8, v9}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v8

    aput-object v8, v7, v4

    iget v8, p0, Lcom/vivo/speechsdk/module/record/b;->f:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget v5, p0, Lcom/vivo/speechsdk/module/record/b;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecord;

    iput-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->h:Landroid/media/AudioRecord;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/vivo/speechsdk/module/record/b;->o:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v4, "SessionId AudioRecord create error"

    :goto_0
    invoke-interface {v3, v2, v4, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_1
    :try_start_2
    new-instance v0, Landroid/media/AudioRecord;

    iget v6, p0, Lcom/vivo/speechsdk/module/record/b;->a:I

    iget v7, p0, Lcom/vivo/speechsdk/module/record/b;->b:I

    iget v8, p0, Lcom/vivo/speechsdk/module/record/b;->c:I

    iget v9, p0, Lcom/vivo/speechsdk/module/record/b;->d:I

    iget v10, p0, Lcom/vivo/speechsdk/module/record/b;->f:I

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->h:Landroid/media/AudioRecord;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->h:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->o:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "AudioRecord init failed "

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2f45

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/record/b;->m:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->h:Landroid/media/AudioRecord;

    invoke-static {}, Lcom/vivo/speechsdk/common/thread/a;->a()Lcom/vivo/speechsdk/common/thread/a;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/b;->p:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-static {v0, v1, v2}, Lcom/vivo/speechsdk/module/record/e;->a(Landroid/media/AudioRecord;Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioRecordingCallback;)V

    :cond_3
    return v3

    :catch_1
    move-exception v0

    iget-object v3, p0, Lcom/vivo/speechsdk/module/record/b;->o:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v4, "AudioRecord create error"

    goto :goto_0

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->o:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v1, "AudioRecord buffer size bad value or error"

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2f47

    return v0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/record/b;I)I
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    return p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/record/b;)Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/record/b;->h:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/common/utils/ILog;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/record/b;->o:Lcom/vivo/speechsdk/common/utils/ILog;

    return-object p0
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    iput v1, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/record/b;)Lcom/vivo/speechsdk/module/api/record/RecordListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/record/b;->g:Lcom/vivo/speechsdk/module/api/record/RecordListener;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/module/record/b;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    return p0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/module/record/b;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/record/b;->f:I

    return p0
.end method

.method static synthetic f(Lcom/vivo/speechsdk/module/record/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/module/record/b;->l:Z

    return p0
.end method

.method static synthetic g(Lcom/vivo/speechsdk/module/record/b;)Z
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/record/b;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/vivo/speechsdk/module/record/b;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/record/b;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic i(Lcom/vivo/speechsdk/module/record/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/module/record/b;->k:Z

    return p0
.end method


# virtual methods
.method public a([B)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    aget-byte v3, p1, v1

    if-eqz v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public init()I
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECORD_AUDIO"

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/common/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/record/b;->a()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x2

    iput v2, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    :cond_0
    monitor-exit v0

    return v1

    :cond_1
    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b;->o:Lcom/vivo/speechsdk/common/utils/ILog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "AudioRecord"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t init status | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    const/16 v0, 0x2f45

    return v0

    :cond_2
    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b;->o:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v2, "AudioRecord"

    const-string v3, "no permission record audio"

    invoke-interface {v1, v2, v3}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    const/16 v0, 0x2afa

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isInit()Z
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iput v2, p0, Lcom/vivo/speechsdk/module/record/b;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b;->h:Landroid/media/AudioRecord;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/b;->o:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v3, "AudioRecord"

    const-string v4, "release audioRecord"

    invoke-interface {v2, v3, v4, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/vivo/speechsdk/module/record/b;->m:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b;->h:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/b;->p:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-static {v1, v2}, Lcom/vivo/speechsdk/module/record/d;->a(Landroid/media/AudioRecord;Landroid/media/AudioManager$AudioRecordingCallback;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setRecordBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/record/b;->f:I

    return-void
.end method

.method public setRecordInterval(I)V
    .locals 0

    return-void
.end method

.method public start(Lcom/vivo/speechsdk/module/api/record/RecordListener;)I
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/record/b;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/record/b;->g:Lcom/vivo/speechsdk/module/api/record/RecordListener;

    iget p1, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    iget p1, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Lcom/vivo/speechsdk/module/record/b;->j:I

    new-instance p1, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b;->q:Ljava/lang/Runnable;

    const-string v2, "AudioRecord_T"

    invoke-direct {p1, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/record/b;->i:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 6

    const-string v0, "AudioRecord"

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/record/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b;->i:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/vivo/speechsdk/module/record/b;->i:Ljava/lang/Thread;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-object v1, p0, Lcom/vivo/speechsdk/module/record/b;->o:Lcom/vivo/speechsdk/common/utils/ILog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " stop record cost = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/vivo/speechsdk/module/record/b;->o:Lcom/vivo/speechsdk/common/utils/ILog;

    const-string v3, "join failed !!!"

    invoke-interface {v2, v0, v3, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
