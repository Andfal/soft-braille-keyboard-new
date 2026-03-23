.class Lcom/vivo/speechsdk/tts/api/TTSEngine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/tts/api/TTSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/tts/api/TTSEngine;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/tts/api/TTSEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {v1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b(Lcom/vivo/speechsdk/tts/api/TTSEngine;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTSEngine"

    invoke-static {v1, v0}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/d/c;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/d/c;->uploadText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->b(Lcom/vivo/speechsdk/tts/api/TTSEngine;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;I)I

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/d/c;->destroy()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/d/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/d/c;->resume()V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/d/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/d/c;->pause()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/d/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->isInit()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;)Lcom/vivo/speechsdk/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/d/c;->stop()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/vivo/speechsdk/tts/api/TTSEngine$2;->a:Lcom/vivo/speechsdk/tts/api/TTSEngine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/vivo/speechsdk/tts/api/TTSEngine;->a(Lcom/vivo/speechsdk/tts/api/TTSEngine;Landroid/os/Bundle;I)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
