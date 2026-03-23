.class Lcom/iltgcl/echovoice/client/TTSEchoVoice$TTSEchoVoiceHandler;
.super Lcom/iltgcl/echovoice/client/WeakReferenceHandler;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iltgcl/echovoice/client/TTSEchoVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TTSEchoVoiceHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iltgcl/echovoice/client/WeakReferenceHandler<",
        "Lcom/iltgcl/echovoice/client/TTSEchoVoice;",
        ">;",
        "Landroid/speech/tts/TextToSpeech$OnInitListener;"
    }
.end annotation


# static fields
.field private static final DELAY:J = 0x5dcL

.field private static final MSG_INITIALIZED:I = 0x1

.field private static final MSG_RETRY:I = 0x2


# direct methods
.method public constructor <init>(Lcom/iltgcl/echovoice/client/TTSEchoVoice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iltgcl/echovoice/client/WeakReferenceHandler;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/iltgcl/echovoice/client/TTSEchoVoice;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->b(Lcom/iltgcl/echovoice/client/TTSEchoVoice;)V

    goto :goto_0

    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p2, p1}, Lcom/iltgcl/echovoice/client/TTSEchoVoice;->a(Lcom/iltgcl/echovoice/client/TTSEchoVoice;I)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/iltgcl/echovoice/client/TTSEchoVoice;

    invoke-virtual {p0, p1, p2}, Lcom/iltgcl/echovoice/client/TTSEchoVoice$TTSEchoVoiceHandler;->handleMessage(Landroid/os/Message;Lcom/iltgcl/echovoice/client/TTSEchoVoice;)V

    return-void
.end method

.method public onInit(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iltgcl/echovoice/client/TTSEchoVoice$TTSEchoVoiceHandler;->onTtsInitialized(I)V

    return-void
.end method

.method public onTtsInitialized(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public retryInit()V
    .locals 3

    const/4 v0, 0x2

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
