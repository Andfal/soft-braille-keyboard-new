.class Lj2/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/speechsdk/tts/api/ISynthesizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2/h;->speak(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lj2/h;


# direct methods
.method constructor <init>(Lj2/h;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lj2/h$c;->d:Lj2/h;

    iput p2, p0, Lj2/h$c;->b:I

    iput-object p3, p0, Lj2/h$c;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lj2/h$c;->a:I

    return-void
.end method


# virtual methods
.method public onBufferProgress(III[B)V
    .locals 0

    return-void
.end method

.method public onEnd()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/vivo/speechsdk/api/SpeechError;)V
    .locals 1

    iget-object v0, p0, Lj2/h$c;->d:Lj2/h;

    invoke-static {v0}, Lj2/h;->a(Lj2/h;)Lcom/nirenr/talkman/tts/TextToSpeakListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/speechsdk/api/SpeechError;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPlayCompleted()V
    .locals 1

    iget-object v0, p0, Lj2/h$c;->d:Lj2/h;

    invoke-static {v0}, Lj2/h;->a(Lj2/h;)Lcom/nirenr/talkman/tts/TextToSpeakListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onEnd()V

    return-void
.end method

.method public onPlayProgress(III)V
    .locals 0

    return-void
.end method

.method public onSpeakBegin()V
    .locals 2

    iget-object v0, p0, Lj2/h$c;->d:Lj2/h;

    invoke-static {v0}, Lj2/h;->a(Lj2/h;)Lcom/nirenr/talkman/tts/TextToSpeakListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onStart()V

    iget-object v0, p0, Lj2/h$c;->d:Lj2/h;

    invoke-static {v0}, Lj2/h;->b(Lj2/h;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lj2/h$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onSpeak2(Ljava/lang/String;)V

    return-void
.end method

.method public onSpeakPaused()V
    .locals 0

    return-void
.end method

.method public onSpeakResumed()V
    .locals 0

    return-void
.end method
