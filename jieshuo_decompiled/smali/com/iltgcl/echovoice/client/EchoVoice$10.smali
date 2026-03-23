.class Lcom/iltgcl/echovoice/client/EchoVoice$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iltgcl/echovoice/client/EchoVoice$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iltgcl/echovoice/client/EchoVoice;->getVoiceNameEntries()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/iltgcl/echovoice/client/EchoVoice$Action<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iltgcl/echovoice/client/EchoVoice;


# direct methods
.method constructor <init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V
    .locals 0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$10;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$10;->run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)[Ljava/lang/String;
    .locals 0

    invoke-interface {p1}, Lcom/iltgcl/echovoice/client/IEchoVoiceService;->getVoiceNameEntries()[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
