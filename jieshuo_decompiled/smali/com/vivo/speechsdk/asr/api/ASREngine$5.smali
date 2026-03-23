.class Lcom/vivo/speechsdk/asr/api/ASREngine$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/asr/api/ASREngine;->initRemoteRecognizer(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    iput-object p2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Init-Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$600(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->setBundle(Landroid/os/Bundle;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$700(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/a/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/h/b;->onSuccess()V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$800(Lcom/vivo/speechsdk/asr/api/ASREngine;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "ASREngine"

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$500(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v3}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \uff0cnothing to do waiting for callback2"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    new-instance v1, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    invoke-direct {v1}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;-><init>()V

    iget-object v3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-virtual {v1, v3}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->setEngine(Lcom/vivo/speechsdk/api/ISpeechEngine;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->setBundle(Landroid/os/Bundle;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    move-result-object v1

    invoke-static {}, Lcom/vivo/speechsdk/common/module/ModuleManager;->getInstance()Lcom/vivo/speechsdk/common/module/ModuleManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/speechsdk/common/module/ModuleManager;->workLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->setLooper(Landroid/os/Looper;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$602(Lcom/vivo/speechsdk/asr/api/ASREngine;Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$600(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/speechsdk/asr/api/ASREngine$Builder;->build()Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$002(Lcom/vivo/speechsdk/asr/api/ASREngine;Lcom/vivo/speechsdk/asr/api/IRecognizer;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object v0

    check-cast v0, Lcom/vivo/speechsdk/a/a;

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v1

    new-instance v3, Lcom/vivo/speechsdk/asr/api/ASREngine$5$1;

    invoke-direct {v3, p0}, Lcom/vivo/speechsdk/asr/api/ASREngine$5$1;-><init>(Lcom/vivo/speechsdk/asr/api/ASREngine$5;)V

    invoke-virtual {v0, v3}, Lcom/vivo/speechsdk/a/a;->a(Lcom/vivo/speechsdk/api/InitListener;)V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$500(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/common/utils/ILog;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init end status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v4}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " oldStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/vivo/speechsdk/common/utils/ILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
