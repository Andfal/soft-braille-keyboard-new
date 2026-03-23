.class public Lcom/vivo/speechsdk/module/ttsonline/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/tts/ITTSService;


# static fields
.field private static final g:Ljava/lang/String; = "Online_TTSServiceImpl"


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Landroid/os/Bundle;

.field private c:Lcom/vivo/speechsdk/module/api/net/INetFactory;

.field private d:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

.field private e:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

.field private f:Lcom/vivo/speechsdk/b/c;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Lcom/vivo/speechsdk/b/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->f:Lcom/vivo/speechsdk/b/c;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->b:Landroid/os/Bundle;

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p1, ".audio"

    return-object p1

    :cond_0
    const-string p1, ".mp3"

    return-object p1

    :cond_1
    const-string p1, ".wav"

    return-object p1

    :cond_2
    const-string p1, ".opus"

    return-object p1

    :cond_3
    const-string p1, ".pcm"

    return-object p1
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->d:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->destroy()V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->d:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init web socket by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Online_TTSServiceImpl"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->c:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    invoke-direct {p1, v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;-><init>(Lcom/vivo/speechsdk/module/api/net/INetFactory;)V

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->d:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    :cond_0
    iget-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->d:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->init()V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 2

    const-string v0, "Online_TTSServiceImpl"

    const-string v1, "user destory"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/b;->a()V

    return-void
.end method

.method public getSupportSpeakers()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 1

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->a:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->b:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object p1

    const-string v0, "Net"

    invoke-virtual {p1, v0}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getFactory(Ljava/lang/String;)Lcom/vivo/speechsdk/b/b;

    move-result-object p1

    check-cast p1, Lcom/vivo/speechsdk/module/api/net/INetFactory;

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->c:Lcom/vivo/speechsdk/module/api/net/INetFactory;

    const-string p1, "engine init "

    invoke-direct {p0, p1}, Lcom/vivo/speechsdk/module/ttsonline/b;->a(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public start(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;)I
    .locals 6

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->d:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->e:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    iget-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->a:Landroid/os/Bundle;

    invoke-static {p1, p2}, Lcom/vivo/speechsdk/common/utils/BundleUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string p2, "key_save_audio_path"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_audio_encode"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->f:Lcom/vivo/speechsdk/b/c;

    invoke-virtual {v2}, Lcom/vivo/speechsdk/b/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "tts"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/ttsonline/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save audio path | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Online_TTSServiceImpl"

    invoke-static {v2, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v2, 0x9cac

    :try_start_0
    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/ttsonline/b;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    if-eq v4, v5, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/vivo/speechsdk/module/ttsonline/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->d:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    if-eqz v1, :cond_5

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->d:Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/b;->e:Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    invoke-virtual {p2, p1, v0}, Lcom/vivo/speechsdk/module/ttsonline/net/HttpService;->start(Landroid/os/Bundle;Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;)V

    :cond_5
    const/4 p1, 0x0

    return p1

    :catch_0
    :cond_6
    return v2

    :cond_7
    :goto_1
    const p1, 0x9c41

    return p1
.end method

.method public stop()V
    .locals 0

    invoke-direct {p0}, Lcom/vivo/speechsdk/module/ttsonline/b;->a()V

    return-void
.end method

.method public uploadText(Ljava/lang/String;J)V
    .locals 0

    return-void
.end method
