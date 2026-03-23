.class Lcom/iltgcl/echovoice/client/EchoVoice$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iltgcl/echovoice/client/EchoVoice$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iltgcl/echovoice/client/EchoVoice;->isPaused(Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iltgcl/echovoice/client/EchoVoice$Action<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

.field final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/iltgcl/echovoice/client/EchoVoice;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$4;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    iput-object p2, p0, Lcom/iltgcl/echovoice/client/EchoVoice$4;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$4;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->k(Lcom/iltgcl/echovoice/client/EchoVoice;)I

    move-result v0

    const v1, 0x2dedd0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$4;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->j(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$4;->val$params:Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Lcom/iltgcl/echovoice/client/IEchoVoiceService;->isPausedEx2(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const v1, 0x2dc6ce

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$4;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->j(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iltgcl/echovoice/client/IEchoVoiceService;->isPausedEx(Landroid/os/IBinder;)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/iltgcl/echovoice/client/IEchoVoiceService;->isPaused()Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$4;->run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
