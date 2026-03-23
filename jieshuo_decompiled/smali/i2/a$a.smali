.class Li2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/speech/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/speech/RecognitionListener;

.field final synthetic b:Li2/a;


# direct methods
.method constructor <init>(Li2/a;)V
    .locals 0

    iput-object p1, p0, Li2/a$a;->b:Li2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/speech/RecognitionListener;ILandroid/os/Bundle;)V
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-string v2, "android.speech.IRecognitionListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "onEvent"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v7

    aput-object p3, v0, v1

    invoke-virtual {v2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Li2/a;->d()Ljava/util/logging/Logger;

    move-result-object p2

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, ""

    invoke-virtual {p2, p3, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Landroid/speech/RecognitionListener;)V
    .locals 0

    iput-object p1, p0, Li2/a$a;->a:Landroid/speech/RecognitionListener;

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;[BII)V
    .locals 1

    const-string p4, "error"

    iget-object p5, p0, Li2/a$a;->a:Landroid/speech/RecognitionListener;

    if-eqz p5, :cond_a

    :try_start_0
    const-string v0, "asr.ready"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p5, p1}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "asr.begin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    goto/16 :goto_1

    :cond_1
    const-string v0, "asr.audio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5, p3}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "asr.volume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "volume"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide p1

    double-to-float p1, p1

    invoke-interface {p5, p1}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "asr.end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p5}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    goto/16 :goto_1

    :cond_4
    const-string v0, "asr.partial"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "result_type"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Li2/a;->h(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p2, :cond_a

    const-string p4, ""

    if-eq p2, p4, :cond_a

    const-string p4, "partial_result"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p5, p1}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_5
    const-string p4, "final_result"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p2, p0, Li2/a$a;->b:Li2/a;

    invoke-static {p2, p1}, Li2/a;->c(Li2/a;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_6
    const-string p1, "third_result"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "third_data"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const/16 p2, 0xc

    invoke-direct {p0, p5, p2, p1}, Li2/a$a;->a(Landroid/speech/RecognitionListener;ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_7
    const-string p3, "asr.finish"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_9

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p5, p2}, Landroid/speech/RecognitionListener;->onError(I)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "sub_error"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p4, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "reason"

    const-string p4, "desc"

    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb

    invoke-direct {p0, p5, p1, p2}, Li2/a$a;->a(Landroid/speech/RecognitionListener;ILandroid/os/Bundle;)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Li2/a$a;->b:Li2/a;

    invoke-static {p1}, Li2/a;->b(Li2/a;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Li2/a$a;->b:Li2/a;

    invoke-static {p1}, Li2/a;->a(Li2/a;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p5, p1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    iget-object p1, p0, Li2/a$a;->b:Li2/a;

    :goto_0
    invoke-static {p1, v0}, Li2/a;->c(Li2/a;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_9
    const-string p2, "asr.long-speech.finish"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Li2/a$a;->b:Li2/a;

    invoke-static {p1}, Li2/a;->a(Li2/a;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p5, p1}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    iget-object p1, p0, Li2/a$a;->b:Li2/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_1
    return-void
.end method
