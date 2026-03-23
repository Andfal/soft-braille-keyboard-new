.class Lcom/iltgcl/echovoice/client/EchoVoice$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iltgcl/echovoice/client/EchoVoice$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iltgcl/echovoice/client/EchoVoice;->getVoiceNameValues()[I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iltgcl/echovoice/client/EchoVoice$Action<",
        "[I>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iltgcl/echovoice/client/EchoVoice;


# direct methods
.method constructor <init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V
    .locals 0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$11;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$11;->run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)[I

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)[I
    .locals 0

    invoke-interface {p1}, Lcom/iltgcl/echovoice/client/IEchoVoiceService;->getVoiceNameValues()[I

    move-result-object p1

    return-object p1
.end method
