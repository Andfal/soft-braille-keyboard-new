.class Lcom/vivo/speechsdk/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/speechsdk/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/a/f;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/a/f$a;->a:Lcom/vivo/speechsdk/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x69

    if-eq v0, v1, :cond_3

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/a/f$a;->a:Lcom/vivo/speechsdk/a/f;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/f;->a(Lcom/vivo/speechsdk/a/f;)Lcom/vivo/speechsdk/a/h/e;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [B

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, p1}, Lcom/vivo/speechsdk/a/h/e;->onVadData([BI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/a/f$a;->a:Lcom/vivo/speechsdk/a/f;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/f;->b(Lcom/vivo/speechsdk/a/f;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v2, "key_volume"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    const-string v1, "key_audio"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object p1, p0, Lcom/vivo/speechsdk/a/f$a;->a:Lcom/vivo/speechsdk/a/f;

    invoke-static {p1}, Lcom/vivo/speechsdk/a/f;->a(Lcom/vivo/speechsdk/a/f;)Lcom/vivo/speechsdk/a/h/e;

    move-result-object p1

    const/16 v1, 0x1396

    invoke-virtual {p1, v1, v0}, Lcom/vivo/speechsdk/a/h/e;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v2, v0, v1}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/a/f$a;->a:Lcom/vivo/speechsdk/a/f;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/f;->a(Lcom/vivo/speechsdk/a/f;)Lcom/vivo/speechsdk/a/h/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vivo/speechsdk/a/h/e;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop reason | error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VadHandler"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vivo/speechsdk/a/f$a;->a:Lcom/vivo/speechsdk/a/f;

    invoke-static {v0}, Lcom/vivo/speechsdk/a/f;->a(Lcom/vivo/speechsdk/a/f;)Lcom/vivo/speechsdk/a/h/e;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lcom/vivo/speechsdk/a/h/e;->onEvent(ILandroid/os/Bundle;)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
