.class Lcom/vivo/speechsdk/asr/service/RecognizerService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/asr/service/RecognizerService;->b(Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vivo/speechsdk/asr/service/RecognizerService;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/asr/service/RecognizerService;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$b;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$b;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$b;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    sget-object v1, Lcom/vivo/speechsdk/asr/service/RecognizerService;->A:[I

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getCode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Lcom/vivo/speechsdk/asr/service/RecognizerService;[II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$b;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->c(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Lcom/vivo/speechsdk/asr/service/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/vivo/speechsdk/asr/service/a;->b(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$b;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x5

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$b;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->c(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Lcom/vivo/speechsdk/asr/service/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/asr/service/a;->b(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Engine Init onError | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecognizerService"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$b;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "RecognizerService"

    const-string v1, "Engine Init onSuccess"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$b;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    sget-object v1, Lcom/vivo/speechsdk/asr/service/RecognizerService;->A:[I

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Lcom/vivo/speechsdk/asr/service/RecognizerService;[I)V

    return-void
.end method
