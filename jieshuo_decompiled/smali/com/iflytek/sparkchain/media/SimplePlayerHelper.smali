.class public Lcom/iflytek/sparkchain/media/SimplePlayerHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/media/MediaPlayerHelper;
.implements Lcom/iflytek/sparkchain/media/SimplePlayerWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/sparkchain/media/SimplePlayerHelper$Holder;
    }
.end annotation


# instance fields
.field private simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    return-void
.end method

.method private getAudioParam()Lcom/iflytek/sparkchain/media/player/a;
    .locals 2

    new-instance v0, Lcom/iflytek/sparkchain/media/player/a;

    invoke-direct {v0}, Lcom/iflytek/sparkchain/media/player/a;-><init>()V

    const/16 v1, 0x3e80

    iput v1, v0, Lcom/iflytek/sparkchain/media/player/a;->a:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/iflytek/sparkchain/media/player/a;->b:I

    iput v1, v0, Lcom/iflytek/sparkchain/media/player/a;->c:I

    return-object v0
.end method

.method public static getInst()Lcom/iflytek/sparkchain/media/SimplePlayerHelper;
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper$Holder;->access$000()Lcom/iflytek/sparkchain/media/SimplePlayerHelper;

    move-result-object v0

    return-object v0
.end method

.method private getPCMData(Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object p1
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/iflytek/sparkchain/media/player/c;)V
    .locals 0

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->stop()Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    :cond_0
    new-instance p1, Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-direct {p1, p2}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;-><init>(Lcom/iflytek/sparkchain/media/player/c;)V

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-direct {p0}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->getAudioParam()Lcom/iflytek/sparkchain/media/player/a;

    move-result-object p1

    iget-object p2, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-virtual {p2, p1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->setAudioParam(Lcom/iflytek/sparkchain/media/player/a;)V

    return-void
.end method

.method public init(Ljava/lang/String;Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->getPCMData(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->init([BLcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;)V

    return-void
.end method

.method public init([BLcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper$1;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper$1;-><init>(Lcom/iflytek/sparkchain/media/SimplePlayerHelper;Lcom/iflytek/sparkchain/media/player/SimplePlayer$PlayerListener;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->init(Landroid/content/Context;Lcom/iflytek/sparkchain/media/player/c;)V

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->write([B)Z

    return-void
.end method

.method public isPlaying()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->pause()Z

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->play()Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->release()Z

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->resume()Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->stop()Z

    :cond_0
    return-void
.end method

.method public write(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->getPCMData(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->write([B)Z

    move-result p1

    return p1
.end method

.method public write([B)Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-virtual {v0, p1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->setDataSource([B)V

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/SimplePlayerHelper;->simplePlayer:Lcom/iflytek/sparkchain/media/player/SimplePlayer;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/player/SimplePlayer;->prepare()Z

    const/4 p1, 0x1

    return p1
.end method
