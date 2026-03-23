.class Lcom/vivo/speechsdk/module/ttsonline/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/ttsonline/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/ttsonline/c;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/ttsonline/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/ttsonline/c$c;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioInfo(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$c;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->e(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$c;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->e(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onAudioInfo(Lcom/vivo/speechsdk/module/api/tts/AudioInfo;)V

    :cond_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$c;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->e(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify out error | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Online_TTSService"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$c;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->e(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$c;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->e(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/ttsonline/c$c;->a:Lcom/vivo/speechsdk/module/ttsonline/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/ttsonline/c;->e(Lcom/vivo/speechsdk/module/ttsonline/c;)Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/tts/TTSServiceListener;->onEvent(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
