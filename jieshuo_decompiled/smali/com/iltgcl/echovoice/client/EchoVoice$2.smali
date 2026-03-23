.class Lcom/iltgcl/echovoice/client/EchoVoice$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iltgcl/echovoice/client/EchoVoice$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iltgcl/echovoice/client/EchoVoice;->doSpeak(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I
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

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$queueMode:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$utteranceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iltgcl/echovoice/client/EchoVoice;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iltgcl/echovoice/client/EchoVoice$2;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    iput-object p2, p0, Lcom/iltgcl/echovoice/client/EchoVoice$2;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/iltgcl/echovoice/client/EchoVoice$2;->val$queueMode:I

    iput-object p4, p0, Lcom/iltgcl/echovoice/client/EchoVoice$2;->val$params:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/iltgcl/echovoice/client/EchoVoice$2;->val$utteranceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Integer;
    .locals 8

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$2;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->c(Lcom/iltgcl/echovoice/client/EchoVoice;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/iltgcl/echovoice/client/EchoVoice$2;->this$0:Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-static {v0}, Lcom/iltgcl/echovoice/client/EchoVoice;->j(Lcom/iltgcl/echovoice/client/EchoVoice;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/iltgcl/echovoice/client/EchoVoice$2;->val$text:Ljava/lang/String;

    iget v5, p0, Lcom/iltgcl/echovoice/client/EchoVoice$2;->val$queueMode:I

    iget-object v6, p0, Lcom/iltgcl/echovoice/client/EchoVoice$2;->val$params:Landroid/os/Bundle;

    iget-object v7, p0, Lcom/iltgcl/echovoice/client/EchoVoice$2;->val$utteranceId:Ljava/lang/String;

    move-object v1, p1

    invoke-interface/range {v1 .. v7}, Lcom/iltgcl/echovoice/client/IEchoVoiceService;->speak(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/iltgcl/echovoice/client/EchoVoice$2;->run(Lcom/iltgcl/echovoice/client/IEchoVoiceService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
