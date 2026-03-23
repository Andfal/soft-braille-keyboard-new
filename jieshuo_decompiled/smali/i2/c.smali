.class public Li2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/speech/RecognitionListener;
.implements Lcom/nirenr/talkman/speech/Recognizer;
.implements Lcom/nirenr/talkman/speech/RecognizerListener;


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Lcom/nirenr/talkman/speech/RecognizerListener;

.field private final c:Landroid/content/Intent;

.field private d:Landroid/speech/SpeechRecognizer;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/speech/RecognizerListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "search"

    iput-object v0, p0, Li2/c;->e:Ljava/lang/String;

    const/16 v0, 0x600

    iput v0, p0, Li2/c;->f:I

    iput v0, p0, Li2/c;->g:I

    const/16 v0, 0x665

    iput v0, p0, Li2/c;->h:I

    const/16 v0, 0x6c9

    iput v0, p0, Li2/c;->i:I

    const-string v0, ""

    iput-object v0, p0, Li2/c;->k:Ljava/lang/String;

    iput-object p1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Li2/c;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-direct {p0}, Li2/c;->a()V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Li2/c;->c:Landroid/content/Intent;

    const-string p2, "android.speech.extra.MAX_RESULTS"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.speech.extra.PARTIAL_RESULTS"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f0708ae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f070658

    invoke-static {v0, v2, v1}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li2/c;->k:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    iget-object v0, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Li2/c;->d:Landroid/speech/SpeechRecognizer;

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Landroid/content/ComponentName;

    aget-object v2, v0, v2

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-direct {v3, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v3}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Li2/c;->d:Landroid/speech/SpeechRecognizer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "Error"

    invoke-virtual {v1, v2, v0}, Lcom/androlua/LuaService;->sendError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, Li2/c;->d:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, p0}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Li2/c;->d:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Li2/c;->d:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    return-void
.end method

.method public onBegin()V
    .locals 1

    iget-object v0, p0, Li2/c;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/RecognizerListener;->onBegin()V

    return-void
.end method

.method public onBeginningOfSpeech()V
    .locals 0

    invoke-virtual {p0}, Li2/c;->onBegin()V

    return-void
.end method

.method public onBufferReceived([B)V
    .locals 0

    return-void
.end method

.method public onEnd()V
    .locals 1

    iget-object v0, p0, Li2/c;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/RecognizerListener;->onEnd()V

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 0

    invoke-virtual {p0}, Li2/c;->onEnd()V

    return-void
.end method

.method public onError(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070441

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07043d

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070429

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070443

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07043e

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070442

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07043c

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f07043f

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v1, 0x7f070440

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Li2/c;->onError(Ljava/lang/String;)V

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

    iget-object v0, p0, Li2/c;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/speech/RecognizerListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    iget-object p1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

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

    iget-object v0, p0, Li2/c;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/speech/RecognizerListener;->onReady()V

    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0}, Li2/c;->onReady()V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Li2/c;->b:Lcom/nirenr/talkman/speech/RecognizerListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/speech/RecognizerListener;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Li2/c;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Li2/c;->l:Z

    iget-object v0, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "\u8bc6\u522b\u7ed3\u679c"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "results_recognition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-boolean v2, p0, Li2/c;->j:Z

    if-nez v2, :cond_2

    const-string v2, "[\uff0c\u3002\uff1f\uff01,.]"

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iput-boolean v1, p0, Li2/c;->j:Z

    invoke-virtual {p0, p1}, Li2/c;->onResult(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Li2/c;->onResult(Ljava/lang/String;)V

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
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget p1, p0, Li2/c;->h:I

    goto :goto_2

    :goto_1
    :pswitch_1
    iget p1, p0, Li2/c;->f:I

    :goto_2
    iput p1, p0, Li2/c;->g:I

    goto :goto_3

    :pswitch_2
    iget p1, p0, Li2/c;->i:I

    goto :goto_2

    :goto_3
    return-void

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
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Li2/c;->j:Z

    iget-object v0, p0, Li2/c;->k:Ljava/lang/String;

    iget-object v1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f0708ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070658

    invoke-static {v1, v3, v2}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li2/c;->destroy()V

    invoke-direct {p0}, Li2/c;->a()V

    :cond_0
    iget-object v0, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "\u542f\u52a8\u8bc6\u522b"

    iget-object v2, p0, Li2/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Li2/c;->d:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Li2/c;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li2/c;->l:Z

    return-void
.end method

.method public startListening()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Li2/c;->j:Z

    iget-object v1, p0, Li2/c;->k:Ljava/lang/String;

    iget-object v2, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f0708ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070658

    invoke-static {v2, v4, v3}, Lk2/b0;->h(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Li2/c;->destroy()V

    invoke-direct {p0}, Li2/c;->a()V

    :cond_0
    iget-object v1, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "\u542f\u52a8\u8bc6\u522b"

    iget-object v3, p0, Li2/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Li2/c;->d:Landroid/speech/SpeechRecognizer;

    iget-object v2, p0, Li2/c;->c:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    iput-boolean v0, p0, Li2/c;->l:Z

    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Li2/c;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object v0, p0, Li2/c;->d:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    return-void
.end method

.method public updateUserData()V
    .locals 0

    return-void
.end method
