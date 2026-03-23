.class Lcom/iflytek/msc/MscSynthesizer$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/msc/MscSynthesizer$3;->onError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iflytek/msc/MscSynthesizer$3;


# direct methods
.method constructor <init>(Lcom/iflytek/msc/MscSynthesizer$3;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/MscSynthesizer$3$1;->this$1:Lcom/iflytek/msc/MscSynthesizer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer$3$1;->this$1:Lcom/iflytek/msc/MscSynthesizer$3;

    iget-object v1, v0, Lcom/iflytek/msc/MscSynthesizer$3;->val$str:Ljava/lang/String;

    iget-object v0, v0, Lcom/iflytek/msc/MscSynthesizer$3;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    invoke-static {v0}, Lcom/iflytek/msc/MscSynthesizer;->e(Lcom/iflytek/msc/MscSynthesizer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer$3$1;->this$1:Lcom/iflytek/msc/MscSynthesizer$3;

    iget-object v0, v0, Lcom/iflytek/msc/MscSynthesizer$3;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    invoke-static {v0}, Lcom/iflytek/msc/MscSynthesizer;->c(Lcom/iflytek/msc/MscSynthesizer;)I

    move-result v0

    iget-object v1, p0, Lcom/iflytek/msc/MscSynthesizer$3$1;->this$1:Lcom/iflytek/msc/MscSynthesizer$3;

    iget-object v1, v1, Lcom/iflytek/msc/MscSynthesizer$3;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    invoke-static {v1}, Lcom/iflytek/msc/MscSynthesizer;->d(Lcom/iflytek/msc/MscSynthesizer;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer$3$1;->this$1:Lcom/iflytek/msc/MscSynthesizer$3;

    iget-object v1, v0, Lcom/iflytek/msc/MscSynthesizer$3;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    iget v2, v0, Lcom/iflytek/msc/MscSynthesizer$3;->val$speed:I

    iget v3, v0, Lcom/iflytek/msc/MscSynthesizer$3;->val$volume:I

    iget v4, v0, Lcom/iflytek/msc/MscSynthesizer$3;->val$pitch:I

    iget-object v5, v0, Lcom/iflytek/msc/MscSynthesizer$3;->val$str:Ljava/lang/String;

    iget-object v6, v0, Lcom/iflytek/msc/MscSynthesizer$3;->val$iSynthesizerCallback:Lcom/iflytek/msc/ISynthesizerCallback;

    invoke-virtual/range {v1 .. v6}, Lcom/iflytek/msc/MscSynthesizer;->synthesize2(IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)I

    :cond_1
    return-void
.end method
