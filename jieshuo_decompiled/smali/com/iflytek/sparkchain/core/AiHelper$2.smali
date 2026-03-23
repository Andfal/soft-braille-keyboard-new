.class Lcom/iflytek/sparkchain/core/AiHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/sparkchain/media/record/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/core/AiHelper;->record(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;Lcom/iflytek/sparkchain/media/RecorderHelper$Params;Ljava/lang/String;Ljava/lang/Object;)Lcom/iflytek/sparkchain/core/AiHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/sparkchain/core/AiHelper;

.field final synthetic val$ability:Ljava/lang/String;

.field final synthetic val$aiHandle:Lcom/iflytek/sparkchain/core/AiHandle;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/core/AiHelper;Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;Lcom/iflytek/sparkchain/media/RecorderHelper$Params;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    iput-object p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$aiHandle:Lcom/iflytek/sparkchain/core/AiHandle;

    iput-object p4, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    iput-object p5, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$ability:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffer([BII)V
    .locals 1

    invoke-static {}, Lcom/iflytek/sparkchain/core/AiRequest;->builder()Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    move-result-object p2

    sget-object p3, Lcom/iflytek/sparkchain/core/DataStatus;->BEGIN:Lcom/iflytek/sparkchain/core/DataStatus;

    invoke-virtual {p2, p3}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->dataStatus(Lcom/iflytek/sparkchain/core/DataStatus;)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    iget-object p3, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$key:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->audio(Ljava/lang/String;[B)Lcom/iflytek/sparkchain/core/AiRequest$Builder;

    iget-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/core/AiRequest$Builder;->build()Lcom/iflytek/sparkchain/core/AiRequest;

    move-result-object p2

    iget-object p3, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$aiHandle:Lcom/iflytek/sparkchain/core/AiHandle;

    invoke-virtual {p1, p2, p3}, Lcom/iflytek/sparkchain/core/AiHelper;->write(Lcom/iflytek/sparkchain/core/AiRequest;Lcom/iflytek/sparkchain/core/AiHandle;)I

    move-result p1

    const-string p2, "AIKIT"

    if-eqz p1, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "write failure "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x2071

    invoke-interface {p2, p3, p1}, Lcom/iflytek/sparkchain/media/listener/DecibelListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    iget-object p3, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$ability:Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$aiHandle:Lcom/iflytek/sparkchain/core/AiHandle;

    invoke-virtual {p1, p3, v0}, Lcom/iflytek/sparkchain/core/AiHelper;->read(Ljava/lang/String;Lcom/iflytek/sparkchain/core/AiHandle;)I

    move-result p1

    if-eqz p1, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "read failure "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    invoke-virtual {p2}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/iflytek/sparkchain/media/listener/DecibelListener;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onDecibel(I)V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/sparkchain/media/listener/DecibelListener;->onDecibel(I)V

    :cond_0
    return-void
.end method

.method public onError(Lcom/iflytek/sparkchain/media/speech/SpeechError;)V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$000(Lcom/iflytek/sparkchain/core/AiHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "record failure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/speech/SpeechError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AIKIT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    invoke-virtual {v0}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/speech/SpeechError;->getErrorCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/sparkchain/media/speech/SpeechError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/iflytek/sparkchain/media/listener/DecibelListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$aiHandle:Lcom/iflytek/sparkchain/core/AiHandle;

    const-string v1, "AIKIT"

    if-nez v0, :cond_1

    const-string v0, "end failure 8305"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v1

    const/16 v2, 0x2071

    invoke-interface {v1, v2, v0}, Lcom/iflytek/sparkchain/media/listener/DecibelListener;->onError(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    invoke-static {v0}, Lcom/iflytek/sparkchain/core/AiHelper;->access$100(Lcom/iflytek/sparkchain/core/AiHelper;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$aiHandle:Lcom/iflytek/sparkchain/core/AiHandle;

    invoke-virtual {v2}, Lcom/iflytek/sparkchain/core/AiHandle;->getI()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    iget-object v2, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$aiHandle:Lcom/iflytek/sparkchain/core/AiHandle;

    invoke-virtual {v0, v2}, Lcom/iflytek/sparkchain/core/AiHelper;->end(Lcom/iflytek/sparkchain/core/AiHandle;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end failure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/AiHelper$2;->val$params:Lcom/iflytek/sparkchain/media/RecorderHelper$Params;

    invoke-virtual {v1}, Lcom/iflytek/sparkchain/media/RecorderHelper$Params;->getListener()Lcom/iflytek/sparkchain/media/listener/DecibelListener;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/iflytek/sparkchain/media/listener/DecibelListener;->onError(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStart(Z)V
    .locals 0

    return-void
.end method
