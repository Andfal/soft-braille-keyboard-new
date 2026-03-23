.class Lcom/iltgcl/echovoice/client/EchoVoice$Connection$1;
.super Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iltgcl/echovoice/client/EchoVoice$Connection;-><init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

.field final synthetic val$this$0:Lcom/iltgcl/echovoice/client/EchoVoice;


# direct methods
.method constructor <init>(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;Lcom/iltgcl/echovoice/client/EchoVoice;)V
    .locals 0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$1;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    iput-object p2, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$1;->val$this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-direct {p0}, Lcom/iltgcl/echovoice/client/IEchoVoiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;I)V
    .locals 0

    iget-object p2, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$1;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    iget-object p2, p2, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {p2}, Lcom/iltgcl/echovoice/client/EchoVoice;->f(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRangeStart(Ljava/lang/String;III)V
    .locals 3

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$1;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    iget-object v0, v0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->f(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/iltgcl/echovoice/client/a;->a(Landroid/speech/tts/UtteranceProgressListener;Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$1;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    iget-object v0, v0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->f(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$1;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    iget-object v0, v0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->f(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/iltgcl/echovoice/client/b;->a(Landroid/speech/tts/UtteranceProgressListener;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$1;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    iget-object v0, v0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->f(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
