.class Lcom/nirenr/talkman/TalkManAccessibilityService$k5;
.super Landroid/media/AudioManager$AudioRecordingCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingConfigChanged(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onRecordingConfigChanged: "

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->A1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTTSEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->q2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const v0, 0x7f0707fa

    invoke-static {p1, v0, v2}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->W0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAsyncSpeakEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->W0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate()V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->m(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService$k5$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$k5;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->A1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3, v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->O0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAsyncSpeakEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->q2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$k5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {p1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->B2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    :cond_6
    :goto_2
    return-void
.end method
