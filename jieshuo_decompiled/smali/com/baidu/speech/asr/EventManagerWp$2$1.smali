.class Lcom/baidu/speech/asr/EventManagerWp$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/speech/asr/EventManagerWp$2;->onEvent(Ljava/lang/String;Ljava/lang/String;[BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/speech/asr/EventManagerWp$2;

.field final synthetic val$date:[B

.field final synthetic val$length:I

.field final synthetic val$listener:Lcom/baidu/speech/EventListener;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$offset:I

.field final synthetic val$params:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/speech/asr/EventManagerWp$2;Lcom/baidu/speech/EventListener;Ljava/lang/String;Ljava/lang/String;[BII)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->this$1:Lcom/baidu/speech/asr/EventManagerWp$2;

    iput-object p2, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$listener:Lcom/baidu/speech/EventListener;

    iput-object p3, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$params:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$date:[B

    iput p6, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$offset:I

    iput p7, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$listener:Lcom/baidu/speech/EventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent mCommand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onEvent mParam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$params:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "EventManagerWp"

    invoke-static {v1, v0}, Lcom/baidu/speech/utils/LogUtil;->v(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$listener:Lcom/baidu/speech/EventListener;

    iget-object v3, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$params:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$date:[B

    iget v6, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$offset:I

    iget v7, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$length:I

    invoke-interface/range {v2 .. v7}, Lcom/baidu/speech/EventListener;->onEvent(Ljava/lang/String;Ljava/lang/String;[BII)V

    iget-object v0, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->this$1:Lcom/baidu/speech/asr/EventManagerWp$2;

    iget-object v0, v0, Lcom/baidu/speech/asr/EventManagerWp$2;->this$0:Lcom/baidu/speech/asr/EventManagerWp;

    invoke-static {v0}, Lcom/baidu/speech/asr/EventManagerWp;->access$200(Lcom/baidu/speech/asr/EventManagerWp;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/speech/asr/AnalysisInterceptor;->getInstance(Landroid/content/Context;)Lcom/baidu/speech/asr/AnalysisInterceptor;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$params:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$date:[B

    iget v5, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$offset:I

    iget v6, p0, Lcom/baidu/speech/asr/EventManagerWp$2$1;->val$length:I

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/baidu/speech/asr/AnalysisInterceptor;->onEvent(Ljava/lang/String;Ljava/lang/String;[BIIZ)V

    :cond_0
    return-void
.end method
