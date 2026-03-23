.class public Lcom/vivo/speechsdk/module/ttsonline/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/tts/ITTSService;


# static fields
.field private static final t:Ljava/lang/String; = "Online_TTSService"

.field private static final u:Ljava/lang/String; = "success"

.field private static final v:I = 0xc8

.field private static final w:I = 0xc9


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/vivo/speechsdk/module/api/net/INetFactory;

.field private c:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

.field private d:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

.field private e:I

.field private f:Z

.field private g:I

.field private h:Landroid/os/Bundle;

.field private i:Landroid/os/Bundle;

.field private j:Landroid/os/Bundle;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:I

.field private volatile n:Z

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Lcom/vivo/speechsdk/module/ttsonline/SocketListener;

.field private r:Landroid/os/Handler$Callback;

.field private s:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->f:Z

    iput v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->g:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->m:I

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->n:Z

    iput v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->o:I

    new-instance v2, Lcom/vivo/speechsdk/module/ttsonline/c$a;

    invoke-direct {v2, p0}, Lcom/vivo/speechsdk/module/ttsonline/c$a;-><init>(Lcom/vivo/speechsdk/module/ttsonline/c;)V

    iput-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->q:Lcom/vivo/speechsdk/module/ttsonline/SocketListener;

    new-instance v2, Lcom/vivo/speechsdk/module/ttsonline/c$b;

    invoke-direct {v2, p0}, Lcom/vivo/speechsdk/module/ttsonline/c$b;-><init>(Lcom/vivo/speechsdk/module/ttsonline/c;)V

    iput-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->r:Landroid/os/Handler$Callback;

    new-instance v2, Lcom/vivo/speechsdk/module/ttsonline/c$c;

    invoke-direct {v2, p0}, Lcom/vivo/speechsdk/module/ttsonline/c$c;-><init>(Lcom/vivo/speechsdk/module/ttsonline/c;)V

    iput-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->s:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->h:Landroid/os/Bundle;

    new-instance p1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->r:Landroid/os/Handler$Callback;

    invoke-direct {p1, p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getSpeechContext()Lcom/vivo/speechsdk/b/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/b/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->k:Z

    return-void
.end method

.method private a(III)I
    .locals 6

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x2

    const/16 v1, 0x64

    if-ne p3, v0, :cond_1

    return v1

    :cond_1
    mul-int/lit8 p1, p1, 0x64

    int-to-double v2, p1

    int-to-double p1, p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double p1, p1, v4

    div-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    if-lt p1, v1, :cond_2

    const/16 p1, 0x63

    :cond_2
    return p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/ttsonline/c;I)I
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->g:I

    return p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/ttsonline/c;III)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(III)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->c:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    return-object p0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->c:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->destroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->n:Z

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->i:Landroid/os/Bundle;

    const-string v2, "reStart "

    invoke-direct {p0, v1, v2, v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->c:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->j:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->start(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->a:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->c:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->stop(I)V

    :cond_0
    return-void
.end method

.method private declared-synchronized a(Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->c:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init web socket by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Online_TTSService"

    invoke-static {v0, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;-><init>(Landroid/os/Bundle;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->c:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    :cond_1
    iget-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->i:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->i:Landroid/os/Bundle;

    const-string p2, "key_preload_enable"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->c:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->i:Landroid/os/Bundle;

    iget-object p3, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->q:Lcom/vivo/speechsdk/module/ttsonline/SocketListener;

    invoke-virtual {p1, p2, p3}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->init(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/ttsonline/SocketListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/ttsonline/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->f:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_tts_sid"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_tts_ver"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->s:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    const/16 p2, 0x2718

    invoke-interface {p1, p2, v0}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/ttsonline/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->n:Z

    return p1
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/ttsonline/c;Ljava/lang/String;)[I
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)[I
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    aget-object v2, v1, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    aput v2, v0, p1

    aget-object p1, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, v4

    aget-object p1, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json progress error \uff01\uff01\uff01 | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Online_TTSService"

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/ttsonline/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->e:I

    return p0
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->d:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_engine_type"

    const-string v2, "online"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_error_code"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->d:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    const/16 v1, 0x271f

    invoke-interface {p1, v1, v0}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/ttsonline/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/speechsdk/module/ttsonline/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    const-string v0, "audio"

    const-string v1, "Online_TTSService"

    const-string v2, "onResult | "

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "xxxx"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/ttsonline/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->m:I

    return p0
.end method

.method static synthetic c(Lcom/vivo/speechsdk/module/ttsonline/c;I)I
    .locals 0

    iput p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->o:I

    return p1
.end method

.method static synthetic d(Lcom/vivo/speechsdk/module/ttsonline/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->g:I

    return p0
.end method

.method static synthetic e(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->d:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    return-object p0
.end method

.method static synthetic f(Lcom/vivo/speechsdk/module/ttsonline/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/c;->a()V

    return-void
.end method

.method static synthetic g(Lcom/vivo/speechsdk/module/ttsonline/c;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->a:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic h(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->s:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    return-object p0
.end method

.method static synthetic i(Lcom/vivo/speechsdk/module/ttsonline/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->k:Z

    return p0
.end method

.method static synthetic j(Lcom/vivo/speechsdk/module/ttsonline/c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/vivo/speechsdk/module/ttsonline/c;)I
    .locals 0

    iget p0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->o:I

    return p0
.end method


# virtual methods
.method public connect()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->i:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "user connect "

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->a:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->c:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->destroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->n:Z

    :cond_0
    return-void
.end method

.method public getSupportSpeakers()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;-><init>()V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->getSupportSpeakers(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->p:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 4

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->i:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->h:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v0, "key_preload_enable"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->i:Landroid/os/Bundle;

    const-string v2, "engine init "

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "key_request_speakers"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/vivo/speechsdk/module/ttsonline/c;->getSupportSpeakers()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->p:Ljava/lang/String;

    :cond_1
    return v1
.end method

.method public start(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;)I
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->h:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->i:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    iput-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->d:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    const/4 p2, 0x0

    iput p2, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->g:I

    iput p2, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->o:I

    iput-boolean p2, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->f:Z

    const-string v0, "key_tts_time_out"

    const/16 v1, 0x1388

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->e:I

    const-string v0, "key_audio_encode"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->m:I

    const-string v0, "start"

    invoke-direct {p0, p1, v0, p2}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(Landroid/os/Bundle;Ljava/lang/String;Z)V

    const-string v0, "key_request_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start synthesis | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Online_TTSService"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->j:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->c:Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/module/ttsonline/net/WebSocketService;->start(Landroid/os/Bundle;)V

    invoke-direct {p0, p2}, Lcom/vivo/speechsdk/module/ttsonline/c;->b(I)V

    return p2
.end method

.method public stop()V
    .locals 1

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->a(I)V

    return-void
.end method

.method public uploadText(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;

    invoke-direct {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;-><init>()V

    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/c;->i:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/vivo/speechsdk/module/ttsonline/net/TtsExtraServer;->uploadText(Landroid/os/Bundle;Ljava/lang/String;J)V

    return-void
.end method
