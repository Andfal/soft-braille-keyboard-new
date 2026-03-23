.class public Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/tts/SystemTextToSpeak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/IntentFilter;
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nirenr.talkman.ACTION_SYSTEM_TTS_SPEED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_SYSTEM_TTS_PITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_SYSTEM_TTS_VOLUME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_INIT_SYSTEM_TTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_RE_INIT_SYSTEM_TTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nirenr.talkman.ACTION_SYSTEM_TTS_SCALE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "com.nirenr.talkman.ACTION_SYSTEM_TTS_SPEED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "com.nirenr.talkman.ACTION_SYSTEM_TTS_SCALE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "com.nirenr.talkman.ACTION_SYSTEM_TTS_PITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "com.nirenr.talkman.ACTION_RE_INIT_SYSTEM_TTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "com.nirenr.talkman.ACTION_INIT_SYSTEM_TTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "com.nirenr.talkman.ACTION_SYSTEM_TTS_VOLUME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    :goto_0
    const p1, 0x3f8ccccd    # 1.1f

    const/high16 v0, 0x42480000    # 50.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "com.nirenr.talkman.EXTRA_TEXT_DATA"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    div-float/2addr p2, v0

    float-to-double v0, p2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p2, v0

    invoke-static {p1, p2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->K(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F

    move-result p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->R(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->l(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    invoke-static {v0, p2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->J(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V

    iget-object p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F

    move-result p2

    cmpl-float p2, p2, v3

    if-lez p2, :cond_8

    iget-object p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F

    move-result p2

    cmpl-float p2, p2, v3

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p2, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->J(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V

    :cond_8
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)La/f;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F

    move-result p2

    invoke-virtual {p1, p2}, La/f;->k(F)V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    div-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    goto :goto_2

    :goto_1
    :pswitch_3
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Z(Z)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    invoke-static {v0, p2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->N(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V

    iget-object p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)La/f;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F

    move-result v0

    invoke-virtual {p2, v0}, La/f;->o(F)V

    iget-object p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->w(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F

    move-result p2

    cmpl-float p2, p2, v3

    if-lez p2, :cond_a

    iget-object p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->o(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F

    move-result p2

    cmpl-float p2, p2, v3

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$SystemReceiver;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {p2, p1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->J(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V

    :cond_a
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x16b76664 -> :sswitch_5
        0x49d66258 -> :sswitch_4
        0x5846a680 -> :sswitch_3
        0x7acc345e -> :sswitch_2
        0x7af37a68 -> :sswitch_1
        0x7af97165 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
