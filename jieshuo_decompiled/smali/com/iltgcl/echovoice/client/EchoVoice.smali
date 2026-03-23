.class public Lcom/iltgcl/echovoice/client/EchoVoice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iltgcl/echovoice/client/EchoVoice$Connection;,
        Lcom/iltgcl/echovoice/client/EchoVoice$Action;,
        Lcom/iltgcl/echovoice/client/EchoVoice$EchoVoiceHandler;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field private static final INTENT_ACTION_VOICE_SERVICE:Ljava/lang/String; = "echo.intent.action.VOICE_SERVICE"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EchoVoice"


# instance fields
.field private mConnectingServiceConnection:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

.field private final mContext:Landroid/content/Context;

.field private final mEngine:Ljava/lang/String;

.field private final mHandler:Lcom/iltgcl/echovoice/client/EchoVoice$EchoVoiceHandler;

.field private mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private final mPkgName:Ljava/lang/String;

.field private mServiceConnection:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

.field private final mStartLock:Ljava/lang/Object;

.field private volatile mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

.field private mVersionCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mStartLock:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mVersionCode:I

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$EchoVoiceHandler;

    invoke-direct {v0, p0}, Lcom/iltgcl/echovoice/client/EchoVoice$EchoVoiceHandler;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V

    iput-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mHandler:Lcom/iltgcl/echovoice/client/EchoVoice$EchoVoiceHandler;

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iput-object p3, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mEngine:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/EchoVoice;->initTts()I

    return-void
.end method

.method static bridge synthetic a(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/iltgcl/echovoice/client/EchoVoice;)Lcom/iltgcl/echovoice/client/EchoVoice$EchoVoiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mHandler:Lcom/iltgcl/echovoice/client/EchoVoice$EchoVoiceHandler;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/iltgcl/echovoice/client/EchoVoice;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method private connectToEngine()Z
    .locals 4

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;Lcom/iltgcl/echovoice/client/c;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "echo.intent.action.VOICE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mEngine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "EchoVoice"

    const-string v1, "Failed to bind to EchoVoiceService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iput-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mConnectingServiceConnection:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    return v3
.end method

.method static bridge synthetic d(Lcom/iltgcl/echovoice/client/EchoVoice;)Lcom/iltgcl/echovoice/client/EchoVoice$Connection;
    .locals 0

    iget-object p0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mServiceConnection:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    return-object p0
.end method

.method private dispatchOnInit(I)V
    .locals 2

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/speech/tts/TextToSpeech$OnInitListener;->onInit(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static bridge synthetic e(Lcom/iltgcl/echovoice/client/EchoVoice;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mStartLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/iltgcl/echovoice/client/EchoVoice;Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mConnectingServiceConnection:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    return-void
.end method

.method private getCallerIdentity()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mServiceConnection:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    invoke-virtual {v0}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method private getVersionCodeInternal()I
    .locals 1

    iget v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mVersionCode:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoiceUtils;->getEchoVoiceVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mVersionCode:I

    :cond_0
    iget v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mVersionCode:I

    return v0
.end method

.method static bridge synthetic h(Lcom/iltgcl/echovoice/client/EchoVoice;Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)V
    .locals 0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mServiceConnection:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    return-void
.end method

.method static bridge synthetic i(Lcom/iltgcl/echovoice/client/EchoVoice;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice;->dispatchOnInit(I)V

    return-void
.end method

.method private initTts()I
    .locals 1

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/EchoVoice;->connectToEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->dispatchOnInit(I)V

    return v0
.end method

.method static bridge synthetic j(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/os/IBinder;
    .locals 0

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/EchoVoice;->getCallerIdentity()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic k(Lcom/iltgcl/echovoice/client/EchoVoice;)I
    .locals 0

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/EchoVoice;->getVersionCodeInternal()I

    move-result p0

    return p0
.end method

.method static bridge synthetic l(Lcom/iltgcl/echovoice/client/EchoVoice;)I
    .locals 0

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/EchoVoice;->initTts()I

    move-result p0

    return p0
.end method

.method private runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/iltgcl/echovoice/client/EchoVoice$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            ")TR;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/iltgcl/echovoice/client/EchoVoice;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/iltgcl/echovoice/client/EchoVoice$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            "ZZ)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mServiceConnection:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    if-nez v1, :cond_0

    monitor-exit v0

    return-object p2

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private runActionNoReconnect(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/iltgcl/echovoice/client/EchoVoice$Action<",
            "TR;>;TR;",
            "Ljava/lang/String;",
            "Z)TR;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iltgcl/echovoice/client/EchoVoice;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public doSpeak(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 7

    new-instance v6, Lcom/iltgcl/echovoice/client/EchoVoice$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/iltgcl/echovoice/client/EchoVoice$2;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "speak"

    invoke-direct {p0, v6, p1, p2}, Lcom/iltgcl/echovoice/client/EchoVoice;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getVoiceNameEntries()[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$10;

    invoke-direct {v0, p0}, Lcom/iltgcl/echovoice/client/EchoVoice$10;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V

    const/4 v1, 0x0

    const-string v2, "getVoiceNameEntries"

    invoke-direct {p0, v0, v1, v2}, Lcom/iltgcl/echovoice/client/EchoVoice;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceNameValues()[I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$11;

    invoke-direct {v0, p0}, Lcom/iltgcl/echovoice/client/EchoVoice$11;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V

    const/4 v1, 0x0

    const-string v2, "getVoiceNameValues"

    invoke-direct {p0, v0, v1, v2}, Lcom/iltgcl/echovoice/client/EchoVoice;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public hasLicense()Z
    .locals 3

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$9;

    invoke-direct {v0, p0}, Lcom/iltgcl/echovoice/client/EchoVoice$9;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "hasLicense"

    invoke-direct {p0, v0, v1, v2}, Lcom/iltgcl/echovoice/client/EchoVoice;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isPaused(Landroid/os/Bundle;)Z
    .locals 2

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$4;

    invoke-direct {v0, p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$4;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;Landroid/os/Bundle;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "isPaused"

    invoke-direct {p0, v0, p1, v1}, Lcom/iltgcl/echovoice/client/EchoVoice;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public isSpeaking(Landroid/os/Bundle;)Z
    .locals 2

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$3;

    invoke-direct {v0, p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$3;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;Landroid/os/Bundle;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "isSpeaking"

    invoke-direct {p0, v0, p1, v1}, Lcom/iltgcl/echovoice/client/EchoVoice;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public pause(Landroid/os/Bundle;)I
    .locals 2

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$7;

    invoke-direct {v0, p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$7;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;Landroid/os/Bundle;)V

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "pause"

    invoke-direct {p0, v0, p1, v1}, Lcom/iltgcl/echovoice/client/EchoVoice;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public resume(Landroid/os/Bundle;)I
    .locals 2

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$8;

    invoke-direct {v0, p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$8;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;Landroid/os/Bundle;)V

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "resume"

    invoke-direct {p0, v0, p1, v1}, Lcom/iltgcl/echovoice/client/EchoVoice;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I
    .locals 0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    const/4 p1, 0x0

    return p1
.end method

.method public shutdown()V
    .locals 4

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mStartLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mConnectingServiceConnection:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/iltgcl/echovoice/client/EchoVoice;->mConnectingServiceConnection:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$1;

    invoke-direct {v0, p0}, Lcom/iltgcl/echovoice/client/EchoVoice$1;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V

    const-string v1, "shutdown"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/iltgcl/echovoice/client/EchoVoice;->runActionNoReconnect(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stop(Landroid/os/Bundle;)I
    .locals 2

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$6;

    invoke-direct {v0, p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$6;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;Landroid/os/Bundle;)V

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "stop"

    invoke-direct {p0, v0, p1, v1}, Lcom/iltgcl/echovoice/client/EchoVoice;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public stopAll()I
    .locals 3

    new-instance v0, Lcom/iltgcl/echovoice/client/EchoVoice$5;

    invoke-direct {v0, p0}, Lcom/iltgcl/echovoice/client/EchoVoice$5;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "stopAll"

    invoke-direct {p0, v0, v1, v2}, Lcom/iltgcl/echovoice/client/EchoVoice;->runAction(Lcom/iltgcl/echovoice/client/EchoVoice$Action;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
