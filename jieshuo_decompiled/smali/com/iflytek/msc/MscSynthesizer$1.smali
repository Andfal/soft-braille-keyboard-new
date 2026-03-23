.class Lcom/iflytek/msc/MscSynthesizer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/msc/MscSynthesizer;->synthesize(IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final idx:I

.field final synthetic this$0:Lcom/iflytek/msc/MscSynthesizer;

.field final synthetic val$iSynthesizerCallback:Lcom/iflytek/msc/ISynthesizerCallback;

.field final synthetic val$pitch:I

.field final synthetic val$speed:I

.field final synthetic val$str:Ljava/lang/String;

.field final synthetic val$volume:I


# direct methods
.method constructor <init>(Lcom/iflytek/msc/MscSynthesizer;IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/MscSynthesizer$1;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    iput p2, p0, Lcom/iflytek/msc/MscSynthesizer$1;->val$speed:I

    iput p3, p0, Lcom/iflytek/msc/MscSynthesizer$1;->val$volume:I

    iput p4, p0, Lcom/iflytek/msc/MscSynthesizer$1;->val$pitch:I

    iput-object p5, p0, Lcom/iflytek/msc/MscSynthesizer$1;->val$str:Ljava/lang/String;

    iput-object p6, p0, Lcom/iflytek/msc/MscSynthesizer$1;->val$iSynthesizerCallback:Lcom/iflytek/msc/ISynthesizerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/iflytek/msc/MscSynthesizer;->c(Lcom/iflytek/msc/MscSynthesizer;)I

    move-result p1

    iput p1, p0, Lcom/iflytek/msc/MscSynthesizer$1;->idx:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer$1;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    invoke-virtual {v0}, Lcom/iflytek/msc/MscSynthesizer;->init()V

    iget-object v0, p0, Lcom/iflytek/msc/MscSynthesizer$1;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    invoke-static {v0}, Lcom/iflytek/msc/MscSynthesizer;->c(Lcom/iflytek/msc/MscSynthesizer;)I

    move-result v0

    iget v1, p0, Lcom/iflytek/msc/MscSynthesizer$1;->idx:I

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/iflytek/msc/MscSynthesizer$1;->this$0:Lcom/iflytek/msc/MscSynthesizer;

    iget v3, p0, Lcom/iflytek/msc/MscSynthesizer$1;->val$speed:I

    iget v4, p0, Lcom/iflytek/msc/MscSynthesizer$1;->val$volume:I

    iget v5, p0, Lcom/iflytek/msc/MscSynthesizer$1;->val$pitch:I

    iget-object v6, p0, Lcom/iflytek/msc/MscSynthesizer$1;->val$str:Ljava/lang/String;

    iget-object v7, p0, Lcom/iflytek/msc/MscSynthesizer$1;->val$iSynthesizerCallback:Lcom/iflytek/msc/ISynthesizerCallback;

    invoke-virtual/range {v2 .. v7}, Lcom/iflytek/msc/MscSynthesizer;->synthesize2(IIILjava/lang/String;Lcom/iflytek/msc/ISynthesizerCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
