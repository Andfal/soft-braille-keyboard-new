.class Lcom/baidu/speech/asr/EventManagerAsr$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/asr/EventManagerAsr;->send(Ljava/lang/String;Ljava/lang/String;[BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/speech/asr/EventManagerAsr;

.field final synthetic val$listener:Lcom/baidu/speech/EventListener;


# direct methods
.method constructor <init>(Lcom/baidu/speech/asr/EventManagerAsr;Lcom/baidu/speech/EventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/asr/EventManagerAsr$1;->this$0:Lcom/baidu/speech/asr/EventManagerAsr;

    iput-object p2, p0, Lcom/baidu/speech/asr/EventManagerAsr$1;->val$listener:Lcom/baidu/speech/EventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lcom/baidu/speech/asr/EventManagerAsr$1;->val$listener:Lcom/baidu/speech/EventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent mCommand : asr.finish and asr.exit  onEvent mParam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/speech/asr/EventManagerAsr$1;->this$0:Lcom/baidu/speech/asr/EventManagerAsr;

    invoke-static {v2}, Lcom/baidu/speech/asr/EventManagerAsr;->access$000(Lcom/baidu/speech/asr/EventManagerAsr;)Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "EventManagerAsr"

    invoke-static {v1, v0}, Lcom/baidu/speech/utils/LogUtil;->v(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/speech/asr/EventManagerAsr$1;->val$listener:Lcom/baidu/speech/EventListener;

    const-string v3, "asr.finish"

    iget-object v0, p0, Lcom/baidu/speech/asr/EventManagerAsr$1;->this$0:Lcom/baidu/speech/asr/EventManagerAsr;

    invoke-static {v0}, Lcom/baidu/speech/asr/EventManagerAsr;->access$000(Lcom/baidu/speech/asr/EventManagerAsr;)Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/baidu/speech/EventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;[BII)V

    iget-object v8, p0, Lcom/baidu/speech/asr/EventManagerAsr$1;->val$listener:Lcom/baidu/speech/EventListener;

    const-string v9, "asr.exit"

    iget-object v0, p0, Lcom/baidu/speech/asr/EventManagerAsr$1;->this$0:Lcom/baidu/speech/asr/EventManagerAsr;

    invoke-static {v0}, Lcom/baidu/speech/asr/EventManagerAsr;->access$000(Lcom/baidu/speech/asr/EventManagerAsr;)Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v8 .. v13}, Lcom/baidu/speech/EventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;[BII)V

    :cond_0
    return-void
.end method
