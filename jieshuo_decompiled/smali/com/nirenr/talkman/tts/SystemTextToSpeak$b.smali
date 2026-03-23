.class Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Y(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    iput-object p2, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->z(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->A(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v5, "initSystemTTS status"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v5, 0xc8

    const/4 v7, 0x5

    const/4 v0, -0x1

    const-string v8, ";"

    const/4 v9, 0x0

    if-eq v2, v0, :cond_8

    iget-object v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v10

    const/4 v11, -0x2

    if-ne v10, v11, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->P(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Landroid/speech/tts/TextToSpeech;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v11}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v11}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->a:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "initSystemTTS"

    invoke-virtual {v11, v13, v12}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object v11, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v11, v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->C(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V

    iget-object v11, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->a:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)I

    move-result v10

    if-ge v10, v7, :cond_3

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->S(Landroid/speech/tts/TextToSpeech;)V

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0, v9}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Landroid/speech/tts/TextToSpeech;)V

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->g(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->h(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->g(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->g(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->h(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5, v3}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y(Lcom/nirenr/talkman/tts/SystemTextToSpeak;I)V

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    iget-object v6, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->D(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v5

    iget-object v6, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5, v3}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->E(Lcom/nirenr/talkman/tts/SystemTextToSpeak;I)V

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5, v3}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->F(Lcom/nirenr/talkman/tts/SystemTextToSpeak;I)V

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5, v9}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->H(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->L(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->r(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F

    move-result v6

    invoke-static {v5, v6}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->R(Lcom/nirenr/talkman/tts/SystemTextToSpeak;F)V

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v5

    iget-object v6, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v6}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->q(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/speech/tts/TextToSpeech;->setPitch(F)I

    :cond_4
    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5, v4}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->G(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Z)V

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5, v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->B(Lcom/nirenr/talkman/tts/SystemTextToSpeak;I)V

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v6, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v6}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0xb

    goto :goto_0

    :cond_5
    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v6

    const v7, 0x7f0706a5

    invoke-static {v6, v7, v4}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x100

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/speech/tts/TextToSpeech;->setAudioAttributes(Landroid/media/AudioAttributes;)I

    :cond_7
    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->d(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)La/f;

    move-result-object v0

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->v(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v5

    invoke-virtual {v0, v5}, La/f;->n(Z)V

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v5, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v5}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "initSystemTTS end mText"

    invoke-virtual {v0, v6, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->u(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->speak(Ljava/lang/String;)Z

    goto/16 :goto_4

    :cond_8
    :goto_2
    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)I

    move-result v0

    const/4 v10, 0x3

    if-ne v0, v10, :cond_9

    :try_start_0
    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->a:Ljava/lang/String;

    iget-object v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->j(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_9

    const v10, 0x8000

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v12, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v12}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->k(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)J

    move-result-wide v12

    sub-long v12, v10, v12

    const-wide/16 v14, 0x2710

    cmp-long v16, v12, v14

    if-lez v16, :cond_9

    iget-object v12, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v12, v10, v11}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->I(Lcom/nirenr/talkman/tts/SystemTextToSpeak;J)V

    iget-object v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->a:Ljava/lang/String;

    iget-object v11, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v11}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v10}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/androlua/LuaService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_3
    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->b(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)I

    move-result v0

    if-ge v0, v7, :cond_b

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->S(Landroid/speech/tts/TextToSpeech;)V

    :cond_a
    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->g(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v7, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v7}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->h(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->g(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v7, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v7}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->m(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->g(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v7, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v7}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->h(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v0, v7, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0, v9}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->M(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Landroid/speech/tts/TextToSpeech;)V

    goto :goto_4

    :cond_b
    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0, v3}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->y(Lcom/nirenr/talkman/tts/SystemTextToSpeak;I)V

    :cond_c
    :goto_4
    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v6}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v6}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->i(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "initSystemTTS end"

    invoke-virtual {v0, v5, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    iget-object v0, v1, Lcom/nirenr/talkman/tts/SystemTextToSpeak$b;->b:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->i(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5

    :cond_e
    const/4 v3, 0x1

    :goto_5
    invoke-static {v0, v3}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->x(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Z)V

    return-void
.end method
