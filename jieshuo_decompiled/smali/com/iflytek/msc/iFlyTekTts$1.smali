.class Lcom/iflytek/msc/iFlyTekTts$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/msc/ISynthesizerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/msc/iFlyTekTts;->speak(Ljava/lang/String;Landroid/speech/tts/SynthesisCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/msc/iFlyTekTts;

.field final synthetic val$callback:Landroid/speech/tts/SynthesisCallback;


# direct methods
.method constructor <init>(Lcom/iflytek/msc/iFlyTekTts;Landroid/speech/tts/SynthesisCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/msc/iFlyTekTts$1;->this$0:Lcom/iflytek/msc/iFlyTekTts;

    iput-object p2, p0, Lcom/iflytek/msc/iFlyTekTts$1;->val$callback:Landroid/speech/tts/SynthesisCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusy()V
    .locals 1

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts$1;->val$callback:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {v0}, Landroid/speech/tts/SynthesisCallback;->error()V

    return-void
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/iflytek/msc/iFlyTekTts$1;->val$callback:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p1}, Landroid/speech/tts/SynthesisCallback;->error()V

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/iflytek/msc/iFlyTekTts$1;->val$callback:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p1}, Landroid/speech/tts/SynthesisCallback;->done()I

    return-void
.end method

.method public onStart()V
    .locals 4

    iget-object v0, p0, Lcom/iflytek/msc/iFlyTekTts$1;->val$callback:Landroid/speech/tts/SynthesisCallback;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x3e80

    invoke-interface {v0, v3, v1, v2}, Landroid/speech/tts/SynthesisCallback;->start(III)I

    return-void
.end method

.method public onSynthesize([BII)V
    .locals 2

    iget-object p2, p0, Lcom/iflytek/msc/iFlyTekTts$1;->val$callback:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {p2}, Landroid/speech/tts/SynthesisCallback;->getMaxBufferSize()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p3

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/msc/iFlyTekTts$1;->val$callback:Landroid/speech/tts/SynthesisCallback;

    invoke-interface {v1, p1, p3, v0}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/2addr p3, v0

    goto :goto_0

    :cond_0
    return-void
.end method
