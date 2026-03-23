.class Lcom/vivo/speechsdk/module/asronline/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/asronline/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/asronline/h;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/asronline/h;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    const-string v0, "TCPlayer"

    const-string v1, "tc player prepared"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->onStart()V

    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->onStopped()V

    :cond_0
    return-void
.end method

.method public playProgress(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/h$a;->a:Lcom/vivo/speechsdk/module/asronline/h;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/h;->a(Lcom/vivo/speechsdk/module/asronline/h;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->playProgress(IIII)V

    :cond_0
    return-void
.end method
