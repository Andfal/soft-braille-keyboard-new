.class Lcom/vivo/speechsdk/asr/api/ASREngine$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/speechsdk/asr/api/ASREngine;->updateHotWord(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$listener:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;


# direct methods
.method constructor <init>(Lcom/vivo/speechsdk/asr/api/ASREngine;Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$1;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    iput-object p2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$1;->val$bundle:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$1;->val$listener:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$1;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$1;->this$0:Lcom/vivo/speechsdk/asr/api/ASREngine;

    invoke-static {v0}, Lcom/vivo/speechsdk/asr/api/ASREngine;->access$000(Lcom/vivo/speechsdk/asr/api/ASREngine;)Lcom/vivo/speechsdk/asr/api/IRecognizer;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$1;->val$bundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/vivo/speechsdk/asr/api/ASREngine$1;->val$listener:Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;

    invoke-interface {v0, v1, v2}, Lcom/vivo/speechsdk/asr/api/IRecognizer;->updateHotWord(Landroid/os/Bundle;Lcom/vivo/speechsdk/asr/api/IUpdateHotWordListener;)V

    :cond_0
    return-void
.end method
