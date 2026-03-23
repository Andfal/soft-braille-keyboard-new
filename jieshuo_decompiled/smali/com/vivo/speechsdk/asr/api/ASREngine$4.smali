.class Lcom/vivo/speechsdk/asr/api/ASREngine$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/asr/api/ASREngine;->initLocalRecognizer(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/asr/api/ASREngine;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    iput-object p2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Init-Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v0

    const-string v1, "ASREngine"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$500(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    const-string v2, "already init success"

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$600(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->setBundle(Landroid/os/Bundle;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$700(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/a/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/h/b;->onSuccess()V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$800(Lcom/vivo/speechsdk/asr/api/ASREngine;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$500(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v3}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \uff0cnothing to do waiting for callback2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    new-instance v3, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    invoke-direct {v3}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;-><init>()V

    iget-object v4, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v3, v4}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->setEngine(Lcom/vivo/speechsdk/api/ISpeechEngine;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->setBundle(Landroid/os/Bundle;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    move-result-object v3

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->setLooper(Landroid/os/Looper;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$602(Lcom/vivo/speechsdk/asr/api/ASREngine;Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$600(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->build()Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$002(Lcom/vivo/speechsdk/asr/api/ASREngine;Lcom/vivo/speechsdk/asr/api/IRecognizer;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/a/d;

    iget-object v3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Lcom/vivo/speechsdk/a/d;->a(Landroid/os/Bundle;)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$700(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/a/h/b;

    move-result-object v0

    new-instance v1, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v1, v3}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/a/h/b;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$800(Lcom/vivo/speechsdk/asr/api/ASREngine;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v3}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v3

    iget-object v4, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$402(Lcom/vivo/speechsdk/asr/api/ASREngine;I)I

    iget-object v4, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v4}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$800(Lcom/vivo/speechsdk/asr/api/ASREngine;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/d;->a()I

    move-result v0

    iget-object v4, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    :cond_4
    invoke-static {v4, v2}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$402(Lcom/vivo/speechsdk/asr/api/ASREngine;I)I

    iget-object v2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v2}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$700(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/a/h/b;

    move-result-object v2

    if-eqz v0, :cond_5

    new-instance v4, Lcom/vivo/speechsdk/api/SpeechError;

    invoke-direct {v4, v0}, Lcom/vivo/speechsdk/api/SpeechError;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/vivo/speechsdk/a/h/b;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/vivo/speechsdk/a/h/b;->onSuccess()V

    :goto_1
    iget-object v2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v2}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$500(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init result code "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " status "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$4;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " oldStatus "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
