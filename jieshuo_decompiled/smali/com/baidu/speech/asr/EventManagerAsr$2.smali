.class Lcom/baidu/speech/asr/EventManagerAsr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/asr/EventManagerAsr;->onEvent(Ljava/lang/String;Ljava/lang/String;[BIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/asr/EventManagerAsr;

.field final synthetic val$listener:Lcom/baidu/speech/EventListener;

.field final synthetic val$message:Lcom/baidu/speech/asr/ASRMessage;


# direct methods
.method constructor <init>(Lcom/baidu/speech/asr/EventManagerAsr;Lcom/baidu/speech/EventListener;Lcom/baidu/speech/asr/ASRMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/asr/EventManagerAsr$2;->this$0:Lcom/baidu/speech/asr/EventManagerAsr;

    iput-object p2, p0, Lcom/baidu/speech/asr/EventManagerAsr$2;->val$listener:Lcom/baidu/speech/EventListener;

    iput-object p3, p0, Lcom/baidu/speech/asr/EventManagerAsr$2;->val$message:Lcom/baidu/speech/asr/ASRMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/baidu/speech/asr/EventManagerAsr$2;->val$listener:Lcom/baidu/speech/EventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent mCommand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/speech/asr/EventManagerAsr$2;->val$message:Lcom/baidu/speech/asr/ASRMessage;

    iget-object v2, v2, Lcom/baidu/speech/asr/ASRMessage;->mCommand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onEvent mParam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/speech/asr/EventManagerAsr$2;->val$message:Lcom/baidu/speech/asr/ASRMessage;

    iget-object v2, v2, Lcom/baidu/speech/asr/ASRMessage;->mParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "EventManagerAsr"

    invoke-static {v1, v0}, Lcom/baidu/speech/utils/LogUtil;->v(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/speech/asr/EventManagerAsr$2;->val$listener:Lcom/baidu/speech/EventListener;

    iget-object v0, p0, Lcom/baidu/speech/asr/EventManagerAsr$2;->val$message:Lcom/baidu/speech/asr/ASRMessage;

    iget-object v3, v0, Lcom/baidu/speech/asr/ASRMessage;->mCommand:Ljava/lang/String;

    iget-object v4, v0, Lcom/baidu/speech/asr/ASRMessage;->mParam:Ljava/lang/String;

    iget-object v5, v0, Lcom/baidu/speech/asr/ASRMessage;->mData:[B

    iget v6, v0, Lcom/baidu/speech/asr/ASRMessage;->mOffset:I

    iget v7, v0, Lcom/baidu/speech/asr/ASRMessage;->mLength:I

    invoke-interface/range {v2 .. v7}, Lcom/baidu/speech/EventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;[BII)V

    :cond_0
    return-void
.end method
