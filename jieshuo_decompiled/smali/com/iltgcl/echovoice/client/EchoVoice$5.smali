.class Lcom/iltgcl/echovoice/client/EchoVoice$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iltgcl/echovoice/client/EchoVoice$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iltgcl/echovoice/client/EchoVoice;->stopAll()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iltgcl/echovoice/client/EchoVoice$Action<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iltgcl/echovoice/client/EchoVoice;


# direct methods
.method constructor <init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V
    .locals 0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$5;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$5;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->j(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/iltgcl/echovoice/client/IEchoVoiceService;->stop(Landroid/os/IBinder;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$5;->run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
