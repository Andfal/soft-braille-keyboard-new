.class Lcom/vivo/speechsdk/asr/api/ASREngine$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/asr/api/ASREngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/asr/api/ASREngine;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizer;->doAction(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$200(Lcom/vivo/speechsdk/asr/api/ASREngine;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/asr/api/IRecognizer;->feedAudioData([BI)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$300(Lcom/vivo/speechsdk/asr/api/ASREngine;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/asr/api/IRecognizer;->cancel()V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->isInit()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object p1

    invoke-interface {p1}, Lcom/vivo/speechsdk/asr/api/IRecognizer;->stop()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$2;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$100(Lcom/vivo/speechsdk/asr/api/ASREngine;Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1

    nop

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
