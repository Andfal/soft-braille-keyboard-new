.class Lcom/reecedunn/espeak/TtsService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/reecedunn/espeak/SpeechSynthesis$SynthReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reecedunn/espeak/TtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reecedunn/espeak/TtsService;


# direct methods
.method constructor <init>(Lcom/reecedunn/espeak/TtsService;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/TtsService$3;->this$0:Lcom/reecedunn/espeak/TtsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSynthDataComplete()V
    .locals 1

    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService$3;->this$0:Lcom/reecedunn/espeak/TtsService;

    invoke-static {v0}, Lcom/reecedunn/espeak/TtsService;->a(Lcom/reecedunn/espeak/TtsService;)Landroid/speech/tts/SynthesisCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/tts/SynthesisCallback;->done()I

    return-void
.end method

.method public onSynthDataReady([B)V
    .locals 4

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/reecedunn/espeak/TtsService$3;->this$0:Lcom/reecedunn/espeak/TtsService;

    invoke-static {v0}, Lcom/reecedunn/espeak/TtsService;->a(Lcom/reecedunn/espeak/TtsService;)Landroid/speech/tts/SynthesisCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/tts/SynthesisCallback;->getMaxBufferSize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :try_start_0
    iget-object v3, p0, Lcom/reecedunn/espeak/TtsService$3;->this$0:Lcom/reecedunn/espeak/TtsService;

    invoke-static {v3}, Lcom/reecedunn/espeak/TtsService;->a(Lcom/reecedunn/espeak/TtsService;)Landroid/speech/tts/SynthesisCallback;

    move-result-object v3

    invoke-interface {v3, p1, v1, v2}, Landroid/speech/tts/SynthesisCallback;->audioAvailable([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/reecedunn/espeak/TtsService$3;->onSynthDataComplete()V

    return-void
.end method
