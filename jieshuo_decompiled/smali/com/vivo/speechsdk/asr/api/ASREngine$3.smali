.class Lcom/vivo/speechsdk/asr/api/ASREngine$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/asr/api/ASREngine;->doDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/asr/api/ASREngine;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$3;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$3;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$400(Lcom/vivo/speechsdk/asr/api/ASREngine;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$3;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$402(Lcom/vivo/speechsdk/asr/api/ASREngine;I)I

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$3;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$3;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object v0

    invoke-interface {v0}, Lcom/vivo/speechsdk/asr/api/IRecognizer;->destroy()V

    :cond_0
    return-void
.end method
