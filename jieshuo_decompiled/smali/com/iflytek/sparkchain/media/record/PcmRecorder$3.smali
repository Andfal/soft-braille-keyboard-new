.class Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/media/record/PcmRecorder;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "msg.what: "

    const-string v2, "mRecordHandle: "

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->access$1100(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)V

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->access$1000(Lcom/iflytek/sparkchain/media/record/PcmRecorder;Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->access$500(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->access$600(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)Landroid/media/AudioRecord;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->access$700(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)V

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->access$800(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)V

    :cond_3
    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->access$900(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PcmRecorder"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->access$1200(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)Lcom/iflytek/sparkchain/media/record/b;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/iflytek/sparkchain/media/record/PcmRecorder$3;->this$0:Lcom/iflytek/sparkchain/media/record/PcmRecorder;

    invoke-static {p1}, Lcom/iflytek/sparkchain/media/record/PcmRecorder;->access$1200(Lcom/iflytek/sparkchain/media/record/PcmRecorder;)Lcom/iflytek/sparkchain/media/record/b;

    move-result-object p1

    new-instance v0, Lcom/iflytek/sparkchain/media/speech/SpeechError;

    const/16 v1, 0x4e26

    invoke-direct {v0, v1}, Lcom/iflytek/sparkchain/media/speech/SpeechError;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/iflytek/sparkchain/media/record/b;->onError(Lcom/iflytek/sparkchain/media/speech/SpeechError;)V

    :cond_4
    :goto_0
    return-void
.end method
