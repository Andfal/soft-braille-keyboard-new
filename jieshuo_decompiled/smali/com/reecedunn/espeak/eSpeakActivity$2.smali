.class Lcom/reecedunn/espeak/eSpeakActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/reecedunn/espeak/eSpeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/reecedunn/espeak/eSpeakActivity;


# direct methods
.method constructor <init>(Lcom/reecedunn/espeak/eSpeakActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/reecedunn/espeak/eSpeakActivity$2;->this$0:Lcom/reecedunn/espeak/eSpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 3

    iget-object v0, p0, Lcom/reecedunn/espeak/eSpeakActivity$2;->this$0:Lcom/reecedunn/espeak/eSpeakActivity;

    invoke-static {v0}, Lcom/reecedunn/espeak/eSpeakActivity;->a(Lcom/reecedunn/espeak/eSpeakActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
