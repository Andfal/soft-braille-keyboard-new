.class Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


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
.method constructor <init>(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->n(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tts_default_synth"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->a(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->p(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const-string v2, "engine"

    invoke-virtual {v1, v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->f(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->t(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->i(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v1}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->e(Lcom/nirenr/talkman/tts/SystemTextToSpeak;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->Q(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirenr/talkman/tts/SystemTextToSpeak$a;->a:Lcom/nirenr/talkman/tts/SystemTextToSpeak;

    invoke-static {v1, v0}, Lcom/nirenr/talkman/tts/SystemTextToSpeak;->D(Lcom/nirenr/talkman/tts/SystemTextToSpeak;Ljava/lang/String;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
