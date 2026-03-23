.class Lcom/vivo/speechsdk/asr/api/ASREngine$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/api/InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/asr/api/ASREngine$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/speechsdk/asr/api/ASREngine$5;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/asr/api/ASREngine$5;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5$1;->this$1:Lcom/vivo/speechsdk/asr/api/ASREngine$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5$1;->this$1:Lcom/vivo/speechsdk/asr/api/ASREngine$5;

    iget-object v0, v0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$402(Lcom/vivo/speechsdk/asr/api/ASREngine;I)I

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5$1;->this$1:Lcom/vivo/speechsdk/asr/api/ASREngine$5;

    iget-object v0, v0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$700(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/a/h/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/speechsdk/a/h/b;->onError(Lcom/vivo/speechsdk/api/SpeechError;)V

    iget-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5$1;->this$1:Lcom/vivo/speechsdk/asr/api/ASREngine$5;

    iget-object p1, p1, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {p1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$800(Lcom/vivo/speechsdk/asr/api/ASREngine;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5$1;->this$1:Lcom/vivo/speechsdk/asr/api/ASREngine$5;

    iget-object v0, v0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$402(Lcom/vivo/speechsdk/asr/api/ASREngine;I)I

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5$1;->this$1:Lcom/vivo/speechsdk/asr/api/ASREngine$5;

    iget-object v0, v0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$700(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/a/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/speechsdk/a/h/b;->onSuccess()V

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$5$1;->this$1:Lcom/vivo/speechsdk/asr/api/ASREngine$5;

    iget-object v0, v0, Lcom/vivo/speechsdk/asr/api/ASREngine$5;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$800(Lcom/vivo/speechsdk/asr/api/ASREngine;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
