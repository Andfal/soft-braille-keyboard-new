.class Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/tts/SystemTextToSpeak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->z(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->i(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->c(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->z(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->n(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "tts_default_synth"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->O(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nirenr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "system"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->s(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->P(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Landroid/speech/tts/TextToSpeech;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v3}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v3}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "initSystemTTS2"

    invoke-virtual {v3, v5, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v3, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v3, v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->C(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->S(Landroid/speech/tts/TextToSpeech;)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0, v4}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Landroid/speech/tts/TextToSpeech;)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->g(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->h(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v2, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y(Lcom/nirenr/talkman/tts/SystemTextToSpeak;I)V

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v2, v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->D(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E(Lcom/nirenr/talkman/tts/SystemTextToSpeak;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F(Lcom/nirenr/talkman/tts/SystemTextToSpeak;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0, v4}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->H(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->L(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->R(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->q(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    :cond_6
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->G(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->speak(Ljava/lang/String;)Z

    :cond_7
    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$d;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->i(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "initSystemTTS2 ok"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    :goto_0
    return-void
.end method
