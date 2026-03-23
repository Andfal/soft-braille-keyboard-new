.class public Lcom/vivo/speechsdk/module/asronline/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/asr/IASRService;


# static fields
.field private static final p:Ljava/lang/String; = "TCServiceImpl"

.field private static final q:Ljava/lang/String; = "session_id is not found"

.field private static final r:I = 0x65

.field private static final s:I = 0x0

.field private static final t:I = 0x1

.field private static final u:I = 0x5

.field private static final v:[Ljava/lang/String;


# instance fields
.field private volatile a:I

.field private b:Lcom/vivo/speechsdk/module/asronline/i/g;

.field private c:Landroid/os/Bundle;

.field private d:Landroid/os/Bundle;

.field private e:Ljava/lang/String;

.field private f:Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

.field private g:I

.field private h:I

.field private i:Landroid/os/Bundle;

.field private j:Landroid/os/Handler;

.field private volatile k:Z

.field private l:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

.field private final m:Lcom/vivo/speechsdk/module/asronline/f;

.field private n:Landroid/os/Handler$Callback;

.field private o:Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "opus"

    const-string v1, "opus-wb"

    const-string v2, "speex"

    const-string v3, "speex-wb"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/speechsdk/module/asronline/g;->v:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->a:I

    const-string v1, ""

    iput-object v1, p0, Lcom/vivo/speechsdk/module/asronline/g;->e:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->l:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    new-instance v0, Lcom/vivo/speechsdk/module/asronline/g$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/asronline/g$a;-><init>(Lcom/vivo/speechsdk/module/asronline/g;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->m:Lcom/vivo/speechsdk/module/asronline/f;

    new-instance v0, Lcom/vivo/speechsdk/module/asronline/g$b;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/asronline/g$b;-><init>(Lcom/vivo/speechsdk/module/asronline/g;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->n:Landroid/os/Handler$Callback;

    new-instance v0, Lcom/vivo/speechsdk/module/asronline/g$c;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/asronline/g$c;-><init>(Lcom/vivo/speechsdk/module/asronline/g;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->o:Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g;->i:Landroid/os/Bundle;

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->n:Landroid/os/Handler$Callback;

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g;->j:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    sget-object v0, Lcom/vivo/speechsdk/module/asronline/g;->v:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "TCServiceImpl"

    const/16 v4, 0x2af8

    if-nez v2, :cond_2

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_1
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    const-string v0, "Opus"

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/module/api/coder/ICoderFactory;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->d:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/module/api/coder/ICoderFactory;->createDecoderService(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g;->l:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_2
    :goto_0
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    const-string v0, "Speex"

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/b/a;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/vivo/speechsdk/b/a;->a(Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g;->l:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    goto :goto_1

    :cond_3
    const/16 v1, 0x2af8

    :goto_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g;->l:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    if-eqz p1, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->d:Landroid/os/Bundle;

    invoke-interface {p1, v0}, Lcom/vivo/speechsdk/module/api/coder/IDecoder;->init(Landroid/os/Bundle;)I

    goto :goto_3

    :cond_4
    const-string p1, "speex decode init error"

    invoke-static {v3, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/16 v1, 0x2af8

    :cond_6
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init decode code is::"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/asronline/g;->o:Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    return-object p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/g;Lorg/json/JSONObject;)Lcom/vivo/speechsdk/module/api/tts/AudioInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/asronline/g;->a(Lorg/json/JSONObject;)Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    move-result-object p0

    return-object p0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/vivo/speechsdk/module/api/tts/AudioInfo;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "TCServiceImpl"

    if-nez p1, :cond_0

    const-string p1, "json data is null"

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "segId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "audio is empty"

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {}, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->obtion()Lcom/vivo/speechsdk/module/api/tts/AudioInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->recycle()V

    const-string v1, "\\"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/asronline/g;->a([B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    array-length v1, v1

    iput v1, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrameLength:I

    :cond_2
    iput p1, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mSlice:I

    iput v2, v0, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mEncodeType:I

    return-object v0
.end method

.method private declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(I)V
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

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/g;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/asronline/g;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/asronline/g;->k:Z

    return p1
.end method

.method private a([B)[B
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->l:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    array-length v1, p1

    invoke-interface {v0, p1, v1}, Lcom/vivo/speechsdk/module/api/coder/IDecoder;->decode([BI)[B

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/asronline/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/asronline/g;->e:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_engine_type"

    const-string v2, "online"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_error_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/g;->o:Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    const/16 v2, 0x2719

    invoke-interface {v1, v2, v0}, Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;->onEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/asronline/g;->f:Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    return-object p0
.end method

.method static synthetic d(Lcom/vivo/speechsdk/module/asronline/g;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/asronline/g;->j:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/module/asronline/g;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/asronline/g;->g:I

    return p0
.end method

.method static synthetic f(Lcom/vivo/speechsdk/module/asronline/g;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/asronline/g;->h:I

    return p0
.end method

.method static synthetic g(Lcom/vivo/speechsdk/module/asronline/g;)Lcom/vivo/speechsdk/module/asronline/i/g;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    return-object p0
.end method

.method static synthetic h(Lcom/vivo/speechsdk/module/asronline/g;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/asronline/g;->d:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->d:Landroid/os/Bundle;

    return-object v0
.end method

.method public action(ILandroid/os/Bundle;)V
    .locals 0

    const/16 p2, 0x67

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->h()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x6c

    if-ne p1, p2, :cond_1

    const/16 p1, 0x64

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/asronline/g;->a(I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x6d

    if-ne p1, p2, :cond_2

    invoke-static {}, Lcom/vivo/speechsdk/module/asronline/h;->a()Lcom/vivo/speechsdk/module/asronline/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/asronline/h;->resume()V

    goto :goto_0

    :cond_2
    const/16 p2, 0x6e

    if-ne p1, p2, :cond_3

    invoke-static {}, Lcom/vivo/speechsdk/module/asronline/h;->a()Lcom/vivo/speechsdk/module/asronline/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/asronline/h;->pause()V

    goto :goto_0

    :cond_3
    const/16 p2, 0x6f

    if-ne p1, p2, :cond_4

    invoke-static {}, Lcom/vivo/speechsdk/module/asronline/h;->a()Lcom/vivo/speechsdk/module/asronline/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/asronline/h;->stop()V

    goto :goto_0

    :cond_4
    const/16 p2, 0x70

    if-ne p1, p2, :cond_5

    invoke-static {}, Lcom/vivo/speechsdk/module/asronline/h;->a()Lcom/vivo/speechsdk/module/asronline/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/asronline/h;->release()V

    :cond_5
    :goto_0
    return-void
.end method

.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->j:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/vivo/speechsdk/module/asronline/g;->g:I

    if-nez v1, :cond_0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->j:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->k:Z

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->a:I

    invoke-static {}, Lcom/vivo/speechsdk/module/asronline/h;->a()Lcom/vivo/speechsdk/module/asronline/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/asronline/h;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public feedAudioData([BI)V
    .locals 0

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->a([B)V

    :cond_0
    return-void
.end method

.method public declared-synchronized init(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->a:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    :cond_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g;->c:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/asronline/g;->f:Lcom/vivo/speechsdk/module/api/asr/ASRServiceListener;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/g;->i:Landroid/os/Bundle;

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    new-instance p2, Lcom/vivo/speechsdk/module/asronline/i/g;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->c:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/g;->j:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Lcom/vivo/speechsdk/module/asronline/i/g;-><init>(Landroid/os/Bundle;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    const-string p2, "key_preload_enable"

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "TCServiceImpl"

    const-string v0, "socket init on | engine init"

    invoke-static {p2, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->c:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/g;->m:Lcom/vivo/speechsdk/module/asronline/f;

    invoke-virtual {p2, v0, v2}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/asronline/f;)V

    :cond_1
    iput-boolean v1, p0, Lcom/vivo/speechsdk/module/asronline/g;->k:Z

    const/4 p2, 0x1

    iput p2, p0, Lcom/vivo/speechsdk/module/asronline/g;->a:I

    invoke-static {}, Lcom/vivo/speechsdk/module/asronline/h;->a()Lcom/vivo/speechsdk/module/asronline/h;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/vivo/speechsdk/module/asronline/h;->a(Landroid/os/Bundle;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isInit()Z
    .locals 2

    iget v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public declared-synchronized start(Landroid/os/Bundle;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/g;->d:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->i:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->d:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/g;->c:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v0, "key_nlu_time_out"

    const/16 v1, 0x1388

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->h:I

    const-string v0, "key_request_mode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->g:I

    const-string v0, "key_request_id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->k:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/vivo/speechsdk/module/asronline/i/g;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/g;->c:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/g;->j:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vivo/speechsdk/module/asronline/i/g;-><init>(Landroid/os/Bundle;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->k:Z

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/g;->d:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/g;->m:Lcom/vivo/speechsdk/module/asronline/f;

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/asronline/f;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/g;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/asronline/i/g;->b(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/g;->b()V

    const-string v0, "key_tts_audio_code"

    const-string v1, "opus-wb"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/asronline/g;->a(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/vivo/speechsdk/module/asronline/h;->a()Lcom/vivo/speechsdk/module/asronline/h;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/g;->l:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    invoke-virtual {v1, p1, v2}, Lcom/vivo/speechsdk/module/asronline/h;->a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/coder/IDecoder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->c()V
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

.method public declared-synchronized updateHotWord(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "key_hotword_level"

    const-string v1, "hotword_level_user"

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hotword_level_user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vivo/speechsdk/module/asronline/c;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/asronline/c;-><init>()V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/g;->c:Landroid/os/Bundle;

    invoke-static {p1, v1}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Lcom/vivo/speechsdk/module/asronline/c;->a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/g;->b:Lcom/vivo/speechsdk/module/asronline/i/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Landroid/os/Bundle;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onSuccess()V

    goto :goto_1

    :cond_2
    const/16 p1, 0x765c

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/vivo/speechsdk/module/api/asr/UpdateHotwordListener;->onError(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
