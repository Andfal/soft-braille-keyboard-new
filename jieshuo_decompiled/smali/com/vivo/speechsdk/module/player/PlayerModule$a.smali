.class Lcom/vivo/speechsdk/module/player/PlayerModule$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/player/IPlayerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/player/PlayerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/player/PlayerModule;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/player/PlayerModule;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/PlayerModule$a;->a:Lcom/vivo/speechsdk/module/player/PlayerModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/os/Bundle;Landroid/os/Looper;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/vivo/speechsdk/module/player/PlayerModule$a;->b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/os/Bundle;Landroid/os/Looper;)Lcom/vivo/speechsdk/module/api/player/IAudioPlayer;
    .locals 12

    const-string v0, "key_sample_rate"

    const/16 v1, 0x3e80

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key_audio_focus"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "key_play_stream"

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v4, 0xa

    if-ne p1, v4, :cond_0

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v3, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    :goto_0
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v9

    new-instance v11, Lcom/vivo/speechsdk/module/player/c;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/player/PlayerModule$a;->a:Lcom/vivo/speechsdk/module/player/PlayerModule;

    invoke-static {v2}, Lcom/vivo/speechsdk/module/player/PlayerModule;->a(Lcom/vivo/speechsdk/module/player/PlayerModule;)Lcom/vivo/speechsdk/b/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/speechsdk/b/c;->b()Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    const/16 v6, 0x10

    const/16 v8, 0xc8

    move-object v2, v11

    move v4, v0

    move v7, v1

    move-object v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/vivo/speechsdk/module/player/c;-><init>(Landroid/content/Context;IIIZILandroid/media/AudioAttributes;Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create player  | "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PlayerModule"

    invoke-static {p2, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public createBuffer(Landroid/os/Bundle;)Lcom/vivo/speechsdk/module/api/player/IBuffer;
    .locals 5

    const-string v0, "key_sample_rate"

    const/16 v1, 0x3e80

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/PlayerModule$a;->a:Lcom/vivo/speechsdk/module/player/PlayerModule;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/player/PlayerModule;->a(Lcom/vivo/speechsdk/module/player/PlayerModule;)Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/PlayerModule$a;->a:Lcom/vivo/speechsdk/module/player/PlayerModule;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/player/PlayerModule;->a(Lcom/vivo/speechsdk/module/player/PlayerModule;)Lcom/vivo/speechsdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/b/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/PlayerModule$a;->a:Lcom/vivo/speechsdk/module/player/PlayerModule;

    invoke-static {v1, p1, v0}, Lcom/vivo/speechsdk/module/player/PlayerModule;->a(Lcom/vivo/speechsdk/module/player/PlayerModule;Landroid/os/Bundle;I)Lcom/vivo/speechsdk/b/h/d;

    move-result-object v1

    :goto_1
    :try_start_0
    const-string v3, "key_buffer_type"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-nez p1, :cond_2

    new-instance p1, Lcom/vivo/speechsdk/module/player/b;

    invoke-direct {p1, v0, v3, v4, v1}, Lcom/vivo/speechsdk/module/player/b;-><init>(IIILcom/vivo/speechsdk/b/h/d;)V

    :goto_2
    move-object v2, p1

    goto :goto_3

    :cond_2
    if-ne p1, v4, :cond_3

    new-instance p1, Lcom/vivo/speechsdk/module/player/a;

    invoke-direct {p1, v0, v3, v4, v1}, Lcom/vivo/speechsdk/module/player/a;-><init>(IIILcom/vivo/speechsdk/b/h/d;)V

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/vivo/speechsdk/module/player/d;

    invoke-direct {p1, v0, v3, v4, v1}, Lcom/vivo/speechsdk/module/player/d;-><init>(IIILcom/vivo/speechsdk/b/h/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PcmBuffer create failed | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerModule"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v2
.end method
