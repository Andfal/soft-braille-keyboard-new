.class Lcom/iltgcl/echovoice/client/EchoVoice$Connection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$2;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    iput-object p2, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$2;->val$this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$2;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->d(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)Lcom/iltgcl/echovoice/client/IEchoVoiceService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$2;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->d(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)Lcom/iltgcl/echovoice/client/IEchoVoiceService;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$2;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    invoke-static {v1}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->b(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$2;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->g(Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)Z

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection$2;->this$1:Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    iget-object v0, v0, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->b(Lcom/iltgcl/echovoice/client/EchoVoice;)Lcom/iltgcl/echovoice/client/EchoVoice$EchoVoiceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iltgcl/echovoice/client/EchoVoice$EchoVoiceHandler;->retryConnect()V

    return-void
.end method
