.class Lcom/vivo/speechsdk/module/asronline/i/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/module/asronline/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/module/asronline/i/g;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/module/asronline/i/g;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AsrWsService"

    const-string v2, " reason "

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;)Lcom/vivo/speechsdk/module/asronline/f;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/module/asronline/f;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;)Lcom/vivo/speechsdk/module/asronline/f;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/vivo/speechsdk/module/asronline/f;->onEvent(ILandroid/os/Bundle;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;)Lcom/vivo/speechsdk/module/asronline/f;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/asronline/f;->onLowQuality(I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->c(Lcom/vivo/speechsdk/module/asronline/i/g;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closed code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;)Lcom/vivo/speechsdk/module/asronline/f;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/asronline/f;->onClosed(I)V

    goto :goto_1

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server closing code "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->c(Lcom/vivo/speechsdk/module/asronline/i/g;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    const/16 v1, 0x3aff

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;ILjava/lang/String;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;J)J

    iget-object v0, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {v0}, Lcom/vivo/speechsdk/module/asronline/i/g;->a(Lcom/vivo/speechsdk/module/asronline/i/g;)Lcom/vivo/speechsdk/module/asronline/f;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/vivo/speechsdk/module/asronline/f;->onOpen(I)V

    iget-object p1, p0, Lcom/vivo/speechsdk/module/asronline/i/g$a;->a:Lcom/vivo/speechsdk/module/asronline/i/g;

    invoke-static {p1}, Lcom/vivo/speechsdk/module/asronline/i/g;->b(Lcom/vivo/speechsdk/module/asronline/i/g;)V

    :goto_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
