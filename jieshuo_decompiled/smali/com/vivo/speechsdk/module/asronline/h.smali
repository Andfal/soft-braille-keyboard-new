.class public Lcom/vivo/speechsdk/module/asronline/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/asr/ITcPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/speechsdk/module/asronline/h$b;
    }
.end annotation


# static fields
.field private static final f:I = 0x32

.field private static final g:Ljava/lang/String; = "TCPlayer"


# instance fields
.field private a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

.field private b:Lcom/vivo/speechsdk/module/api/player/IBuffer;

.field private c:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

.field private d:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

.field private final e:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/vivo/speechsdk/module/asronline/h$a;

    invoke-direct {v0, p0}, Lcom/vivo/speechsdk/module/asronline/h$a;-><init>(Lcom/vivo/speechsdk/module/asronline/h;)V

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->e:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/speechsdk/module/asronline/h$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/asronline/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;
    .locals 0

    iget-object p0, p0, Lcom/vivo/speechsdk/module/asronline/h;->c:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    return-object p0
.end method

.method public static a()Lcom/vivo/speechsdk/module/asronline/h;
    .locals 1

    invoke-static {}, Lcom/vivo/speechsdk/module/asronline/h$b;->a()Lcom/vivo/speechsdk/module/asronline/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "key_is_play_sound"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "key_asr_tc_enable"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->b:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v0

    const-string v2, "Player"

    invoke-virtual {v0, v2}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/module/api/player/IPlayerFactory;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Lcom/vivo/speechsdk/b/a;->a(Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    iput-object v2, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/player/IPlayerFactory;->createBuffer(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/player/IBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/h;->b:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    :cond_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/h;->b:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    if-nez p1, :cond_3

    :cond_2
    const/16 p1, 0x2af8

    return p1

    :cond_3
    const-string p1, "TCPlayer"

    const-string v0, "tc player init success"

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method a(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/coder/IDecoder;)V
    .locals 2

    invoke-static {}, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->clear()V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz v0, :cond_1

    const-string v0, "key_play_speed"

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->setSpeed(F)V

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->b:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/asronline/h;->e:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    invoke-interface {p1, v0, v1}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->play(Lcom/vivo/speechsdk/module/api/player/IBuffer;Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;)Z

    :cond_1
    iput-object p2, p0, Lcom/vivo/speechsdk/module/asronline/h;->d:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    const-string p1, "TCPlayer"

    const-string p2, "tc player prepare"

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method a(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;Z)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->b:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/vivo/speechsdk/module/api/tts/AudioInfo;->mFrame:[B

    array-length v1, v0

    invoke-static {p1}, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->setAudioInfo(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/h;->b:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    invoke-interface {p1, v0, v1, p2}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->write([BIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAudioInfo error msg::"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TCPlayer"

    invoke-static {v0, p2}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/asronline/h;->e:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const v0, 0x9c69

    invoke-interface {p2, v0, p1}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isSpeaking()Z
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->pause()V
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

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->release()V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->d:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/coder/IDecoder;->release()V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/asronline/h;->d:Lcom/vivo/speechsdk/module/api/coder/IDecoder;

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->b:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IBuffer;->release()V

    iput-object v1, p0, Lcom/vivo/speechsdk/module/asronline/h;->b:Lcom/vivo/speechsdk/module/api/player/IBuffer;

    :cond_2
    invoke-static {}, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->resume()V
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

.method public setPlayListener(Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/h;->c:Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h;->a:Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    :cond_0
    invoke-static {}, Lcom/vivo/speechsdk/module/api/player/AudioHelper;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
