.class public Li2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/RecognitionListener;
.implements Lcom/nirenr/talkman/speech/Recognizer;
.implements Lcom/nirenr/talkman/speech/RecognizerListener;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Lcom/nirenr/talkman/speech/RecognizerListener;

.field private c:Li2/a;

.field private d:Ljava/lang/String;

.field private final e:I

.field private f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/speech/RecognizerListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "search"

    iput-object v0, p0, Li2/b;->d:Ljava/lang/String;

    const/16 v0, 0x601

    iput v0, p0, Li2/b;->e:I

    iput v0, p0, Li2/b;->f:I

    const/16 v0, 0x665

    iput v0, p0, Li2/b;->g:I

    const/16 v0, 0x6c9

    iput v0, p0, Li2/b;->h:I

    iput-object p1, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Li2/b;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    new-instance p2, Li2/a;

    invoke-direct {p2, p1}, Li2/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Li2/b;->c:Li2/a;

    invoke-virtual {p2, p0}, Li2/a;->n(Landroid/speech/RecognitionListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)V
    .locals 7

    const-string v0, "appid"

    const-string v1, "9681975"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "key"

    const-string v1, "LYv3vpUsbpnD7uHNbFKMRRY1ZA5To4xz"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "secret"

    const-string v1, "8wKX9aA4iyXuvTGDdEYcDneplokUAbf6"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "sample"

    const/16 v1, 0x3e80

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "model-vad"

    const-string v1, "dnn"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "accept-audio-volume"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "enable-httpdns"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "punctuation-mode"

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindParams: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Li2/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "lua"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Li2/b;->d:Ljava/lang/String;

    const-string v4, "input"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "disable-punctuation"

    const-string v5, "pid"

    const-string v6, "vad.endpoint-timeout"

    if-eqz v0, :cond_0

    const/16 v0, 0x3e8

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v0, p0, Li2/b;->f:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v3

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/16 v0, 0x12c

    invoke-virtual {p1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v0, p0, Li2/b;->f:I

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const-string v0, "vad"

    iget-object v1, p0, Li2/b;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public cancel()V
    .locals 1

    iget-object v0, p0, Li2/b;->c:Li2/a;

    invoke-virtual {v0}, Li2/a;->e()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Li2/b;->c:Li2/a;

    invoke-virtual {v0}, Li2/a;->g()V

    return-void
.end method

.method public onBegin()V
    .locals 1

    iget-object v0, p0, Li2/b;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/RecognizerListener;->onBegin()V

    return-void
.end method

.method public onBeginningOfSpeech()V
    .locals 0

    invoke-virtual {p0}, Li2/b;->onBegin()V

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    return-void
.end method

.method public onEnd()V
    .locals 1

    iget-object v0, p0, Li2/b;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/RecognizerListener;->onEnd()V

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    invoke-virtual {p0}, Li2/b;->onEnd()V

    return-void
.end method

.method public onError(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070441

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07043d

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070429

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070443

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07043e

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070442

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07043c

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07043f

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070440

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li2/b;->onError(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Li2/b;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/speech/RecognizerListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "onEvent"

    invoke-virtual {p1, v0, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReady()V
    .locals 1

    iget-object v0, p0, Li2/b;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/RecognizerListener;->onReady()V

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Li2/b;->onReady()V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Li2/b;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/speech/RecognizerListener;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "\u8bc6\u522b\u7ed3\u679c"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Li2/b;->d:Ljava/lang/String;

    const-string v2, "search"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "[~!@#$%^&*()_+{}\"|:<>?\\-=\\[\\];\',./\\\\\uff01\uffe5\u2026\uff08\uff09\u2014\uff1a\u201c\u300a\u300b\uff1f\u3010\u3011\uff1b\u2018\u3001\uff0c\u3002]+"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual {p0, p1}, Li2/b;->onResult(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Li2/b;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onRmsChanged(F)V
    .locals 0

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "zh_GD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "zh_CN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "en_GB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/16 p1, 0x601

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 p1, 0x665

    :goto_1
    :pswitch_1
    iput p1, p0, Li2/b;->f:I

    goto :goto_2

    :pswitch_2
    const/16 p1, 0x6c9

    goto :goto_1

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5c2b431 -> :sswitch_2
        0x6e7e71c -> :sswitch_1
        0x6e7e78e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startInputting()V
    .locals 2

    const-string v0, "input"

    iput-object v0, p0, Li2/b;->d:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Li2/b;->a(Landroid/content/Intent;)V

    iget-object v1, p0, Li2/b;->c:Li2/a;

    invoke-virtual {v1, v0}, Li2/a;->o(Landroid/content/Intent;)V

    return-void
.end method

.method public startListening()V
    .locals 2

    const-string v0, "search"

    iput-object v0, p0, Li2/b;->d:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Li2/b;->a(Landroid/content/Intent;)V

    iget-object v1, p0, Li2/b;->c:Li2/a;

    invoke-virtual {v1, v0}, Li2/a;->o(Landroid/content/Intent;)V

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Li2/b;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object v0, p0, Li2/b;->c:Li2/a;

    invoke-virtual {v0}, Li2/a;->p()V

    return-void
.end method

.method public updateUserData()V
    .locals 0

    return-void
.end method
