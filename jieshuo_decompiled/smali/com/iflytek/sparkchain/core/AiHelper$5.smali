.class Lcom/iflytek/sparkchain/core/AiHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/sparkchain/core/AiHelper;->ttsObjDestroy(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/sparkchain/core/AiHelper;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/iflytek/sparkchain/core/AiHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/sparkchain/core/AiHelper$5;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    iput p2, p0, Lcom/iflytek/sparkchain/core/AiHelper$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ttsDestroy:sid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiHelper$5;->val$index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AEE"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/sparkchain/core/AiHelper$5;->this$0:Lcom/iflytek/sparkchain/core/AiHelper;

    iget v1, p0, Lcom/iflytek/sparkchain/core/AiHelper$5;->val$index:I

    invoke-virtual {v0, v1}, Lcom/iflytek/sparkchain/core/AiHelper;->ttsDestroy(I)V

    return-void
.end method
