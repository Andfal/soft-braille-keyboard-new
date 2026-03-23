.class Lcom/iltgcl/echovoice/client/EchoVoice$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iltgcl/echovoice/client/EchoVoice$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iltgcl/echovoice/client/EchoVoice;->shutdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iltgcl/echovoice/client/EchoVoice$Action<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iltgcl/echovoice/client/EchoVoice;


# direct methods
.method constructor <init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V
    .locals 0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$1;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$1;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->j(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/iltgcl/echovoice/client/IEchoVoiceService;->setCallback(Landroid/os/IBinder;Lcom/iltgcl/echovoice/client/IEchoVoiceCallback;)V

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$1;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->j(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iltgcl/echovoice/client/IEchoVoiceService;->stop(Landroid/os/IBinder;)I

    iget-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$1;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {p1}, Lcom/iltgcl/echovoice/client/EchoVoice;->d(Lcom/iltgcl/echovoice/client/EchoVoice;)Lcom/iltgcl/echovoice/client/EchoVoice$Connection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iltgcl/echovoice/client/EchoVoice$Connection;->disconnect()V

    iget-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$1;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {p1, v1}, Lcom/iltgcl/echovoice/client/EchoVoice;->h(Lcom/iltgcl/echovoice/client/EchoVoice;Lcom/iltgcl/echovoice/client/EchoVoice$Connection;)V

    return-object v1
.end method
