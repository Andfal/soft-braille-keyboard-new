.class Lcom/vivo/speechsdk/module/player/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/player/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/player/c;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/player/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/player/c$c;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c$c;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->l(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/vivo/speechsdk/module/api/player/AudioFrame;

    iget-object v1, p0, Lcom/vivo/speechsdk/module/player/c$c;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v1}, Lcom/vivo/speechsdk/module/player/c;->l(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v1

    iget v2, v0, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mPercent:I

    iget v3, v0, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mStartTextIndex:I

    iget v0, v0, Lcom/vivo/speechsdk/module/api/player/AudioFrame;->mEndTextIndex:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->playProgress(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/c$c;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/player/c;->l(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->onStopped()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/c$c;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/player/c;->l(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->onResume()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/c$c;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/player/c;->l(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->onPause()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/vivo/speechsdk/module/player/c$c;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/player/c;->l(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->onError(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/vivo/speechsdk/module/player/c$c;->a:Lcom/vivo/speechsdk/module/player/c;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/player/c;->l(Lcom/vivo/speechsdk/module/player/c;)Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/module/api/player/AudioPlayerListener;->onStart()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
