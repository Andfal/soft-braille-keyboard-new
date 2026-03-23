.class Lcom/iflytek/msc/MscSynthesizer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/msc/imsc/IMscTtsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/msc/MscSynthesizer;->synthesize(IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/msc/MscSynthesizer;

.field final synthetic val$iSynthesizerCallback:Lcom/iflytek/msc/ISynthesizerCallback;

.field final synthetic val$pitch:I

.field final synthetic val$speed:I

.field final synthetic val$str:Ljava/lang/String;

.field final synthetic val$volume:I


# direct methods
.method constructor <init>(Lcom/iflytek/msc/MscSynthesizer;Lcom/iflytek/msc/ISynthesizerCallback;Ljava/lang/String;III)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/MscSynthesizer$2;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    iput-object p2, p0, Lcom/iflytek/msc/MscSynthesizer$2;->val$iSynthesizerCallback:Lcom/iflytek/msc/ISynthesizerCallback;

    iput-object p3, p0, Lcom/iflytek/msc/MscSynthesizer$2;->val$str:Ljava/lang/String;

    iput p4, p0, Lcom/iflytek/msc/MscSynthesizer$2;->val$speed:I

    iput p5, p0, Lcom/iflytek/msc/MscSynthesizer$2;->val$volume:I

    iput p6, p0, Lcom/iflytek/msc/MscSynthesizer$2;->val$pitch:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioGet([B)Z
    .locals 3

    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer$2;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/msc/MscSynthesizer;->f(Lcom/iflytek/msc/MscSynthesizer;I)V

    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer$2;->val$iSynthesizerCallback:Lcom/iflytek/msc/ISynthesizerCallback;

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lcom/iflytek/msc/ISynthesizerCallback;->onSynthesize([BII)V

    const/4 p1, 0x1

    return p1
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer$2;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    invoke-static {v0}, Lcom/iflytek/msc/MscSynthesizer;->c(Lcom/iflytek/msc/MscSynthesizer;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/iflytek/msc/MscSynthesizer;->g(Lcom/iflytek/msc/MscSynthesizer;I)V

    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer$2;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    invoke-static {v0}, Lcom/iflytek/msc/MscSynthesizer;->a(Lcom/iflytek/msc/MscSynthesizer;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object p1, p0, Lcom/iflytek/msc/MscSynthesizer$2;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    invoke-static {p1}, Lcom/iflytek/msc/MscSynthesizer;->b(Lcom/iflytek/msc/MscSynthesizer;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/iflytek/msc/MscSynthesizer$2$1;

    invoke-direct {v0, p0}, Lcom/iflytek/msc/MscSynthesizer$2$1;-><init>(Lcom/iflytek/msc/MscSynthesizer$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer$2;->val$iSynthesizerCallback:Lcom/iflytek/msc/ISynthesizerCallback;

    invoke-interface {v0, p1}, Lcom/iflytek/msc/ISynthesizerCallback;->onFailed(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/iflytek/msc/MscSynthesizer$2;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    invoke-static {p1}, Lcom/iflytek/msc/MscSynthesizer;->a(Lcom/iflytek/msc/MscSynthesizer;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/iflytek/msc/MscSynthesizer;->f(Lcom/iflytek/msc/MscSynthesizer;I)V

    return-void
.end method

.method public onLastTrafficFlow(II)V
    .locals 0

    iget-object p1, p0, Lcom/iflytek/msc/MscSynthesizer$2;->val$iSynthesizerCallback:Lcom/iflytek/msc/ISynthesizerCallback;

    const-string p2, "ok"

    invoke-interface {p1, p2}, Lcom/iflytek/msc/ISynthesizerCallback;->onFinish(Ljava/lang/String;)V

    return-void
.end method
