.class Lcom/iflytek/sparkchain/core/asr/ASR$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/core/asr/ASR;->finalize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/sparkchain/core/asr/ASR;

.field final synthetic val$indexFinal:I


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/core/asr/ASR;I)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/asr/ASR$1;->this$0:Lcom/iflytek/sparkchain/core/asr/ASR;

    iput p2, p0, Lcom/iflytek/sparkchain/core/asr/ASR$1;->val$indexFinal:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asrDestroy:index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iflytek/sparkchain/core/asr/ASR$1;->this$0:Lcom/iflytek/sparkchain/core/asr/ASR;

    invoke-static {v1}, Lcom/iflytek/sparkchain/core/asr/ASR;->access$000(Lcom/iflytek/sparkchain/core/asr/ASR;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AEE_ASR"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/asr/ASR$1;->this$0:Lcom/iflytek/sparkchain/core/asr/ASR;

    iget v1, p0, Lcom/iflytek/sparkchain/core/asr/ASR$1;->val$indexFinal:I

    invoke-static {v0, v1}, Lcom/iflytek/sparkchain/core/asr/ASR;->access$100(Lcom/iflytek/sparkchain/core/asr/ASR;I)V

    return-void
.end method
