.class Lcom/iltgcl/echovoice/client/EchoVoice$EchoVoiceHandler;
.super Lcom/iltgcl/echovoice/client/WeakReferenceHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iltgcl/echovoice/client/EchoVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EchoVoiceHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/iltgcl/echovoice/client/WeakReferenceHandler<",
        "Lcom/iltgcl/echovoice/client/EchoVoice;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY:J = 0x5dcL

.field private static final MSG_INIT_VOICE:I = 0x1


# direct methods
.method public constructor <init>(Lcom/iltgcl/echovoice/client/EchoVoice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iltgcl/echovoice/client/WeakReferenceHandler;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;Lcom/iltgcl/echovoice/client/EchoVoice;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/iltgcl/echovoice/client/EchoVoice;->l(Lcom/iltgcl/echovoice/client/EchoVoice;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    const-wide/16 p1, 0x7d0

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/iltgcl/echovoice/client/EchoVoice;

    invoke-virtual {p0, p1, p2}, Lcom/iltgcl/echovoice/client/EchoVoice$EchoVoiceHandler;->handleMessage(Landroid/os/Message;Lcom/iltgcl/echovoice/client/EchoVoice;)V

    return-void
.end method

.method public retryConnect()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
