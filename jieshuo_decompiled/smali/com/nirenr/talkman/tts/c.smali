.class Lcom/nirenr/talkman/tts/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/tts/TextToSpeak;
.implements La/g;


# instance fields
.field private final a:Lcn/yunzhisheng/pro/OfflineTTS;

.field private final b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

.field private final c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;ZLcom/nirenr/talkman/tts/TextToSpeakListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/tts/c;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v0, Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-direct {v0, p1, p2, p3}, Lcn/yunzhisheng/pro/OfflineTTS;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    iput-object p4, p0, Lcom/nirenr/talkman/tts/c;->b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-virtual {v0, p0}, Lcn/yunzhisheng/pro/OfflineTTS;->x(La/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;ZLcom/nirenr/talkman/tts/TextToSpeakListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/tts/c;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v0, Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-direct {v0, p1, p2}, Lcn/yunzhisheng/pro/OfflineTTS;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iput-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    iput-object p3, p0, Lcom/nirenr/talkman/tts/c;->b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-virtual {v0, p0}, Lcn/yunzhisheng/pro/OfflineTTS;->x(La/g;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public appendSpeak(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/yunzhisheng/pro/OfflineTTS;->B(Ljava/lang/String;Z)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {v0}, Lcn/yunzhisheng/pro/OfflineTTS;->m()V

    return-void
.end method

.method public isSpeaking()Z
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {v0}, Lcn/yunzhisheng/pro/OfflineTTS;->j()Z

    move-result v0

    return v0
.end method

.method public onEnd()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onEnd()V

    return-void
.end method

.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->b:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onStart()V

    return-void
.end method

.method public setStreamType(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->w(I)V

    return-void
.end method

.method public setTtsPitch(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->r(I)V

    return-void
.end method

.method public setTtsScale(F)V
    .locals 0

    return-void
.end method

.method public setTtsSpeed(I)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->u(I)V

    return-void
.end method

.method public setTtsVolume(F)V
    .locals 0

    return-void
.end method

.method public setUseAccessibilityVolume(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->y(Z)V

    return-void
.end method

.method public slowSpeak(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    const-string v1, "50"

    invoke-virtual {v0, p1, v1, v1}, Lcn/yunzhisheng/pro/OfflineTTS;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public speak(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "unispeak"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    iget-object v1, p0, Lcom/nirenr/talkman/tts/c;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/yunzhisheng/pro/OfflineTTS;->w(I)V

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {v0, p1}, Lcn/yunzhisheng/pro/OfflineTTS;->A(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/tts/c;->a:Lcn/yunzhisheng/pro/OfflineTTS;

    invoke-virtual {v0}, Lcn/yunzhisheng/pro/OfflineTTS;->D()V

    return-void
.end method
