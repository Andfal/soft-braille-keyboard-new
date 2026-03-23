.class Lcom/vivo/speechsdk/asr/service/RecognizerService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$a;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$a;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$a;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->c(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Lcom/vivo/speechsdk/asr/service/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vivo/speechsdk/asr/service/a;->a(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sdk Init onError | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecognizerService"

    invoke-static {v0, p1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$a;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$a;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$a;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->a(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "RecognizerService"

    const-string v1, "Sdk Init onSuccess"

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/common/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$a;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/service/RecognizerService$a;->a:Lcom/vivo/speechsdk/asr/service/RecognizerService;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/service/RecognizerService;->b(Lcom/vivo/speechsdk/asr/service/RecognizerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
