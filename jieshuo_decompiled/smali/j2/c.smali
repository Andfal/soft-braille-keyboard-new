.class public Lj2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/tts/TextToSpeak;
.implements Lcom/nirenr/talkman/TextToSpeakListener;


# static fields
.field private static final j:Ljava/lang/String;


# instance fields
.field private final a:Lcom/nirenr/talkman/tts/TextToSpeakListener;

.field private final b:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private c:I

.field private d:F

.field private e:I

.field private f:F

.field private g:Z

.field private h:Lj2/d;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Lj2/c;->j:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 2
        0x5fs
        0x59s
        0x6fs
        0x75s
        0x54s
        0x75s
        0x5fs
        0x4bs
        0x65s
        0x79s
    .end array-data
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Lcom/nirenr/talkman/tts/TextToSpeakListener;ZZIFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2/c;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lj2/c;->a:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    iput p8, p0, Lj2/c;->c:I

    iput p7, p0, Lj2/c;->d:F

    iput p5, p0, Lj2/c;->e:I

    iput p6, p0, Lj2/c;->f:F

    invoke-direct {p0, p3}, Lj2/c;->f(Z)V

    iget-object p1, p0, Lj2/c;->h:Lj2/d;

    invoke-virtual {p1, p4}, Lj2/d;->N(Z)V

    return-void
.end method

.method static bridge synthetic a(Lj2/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lj2/c;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic b(Lj2/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lj2/c;->g:Z

    return-void
.end method

.method static bridge synthetic c(Lj2/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lj2/c;->i:Z

    return-void
.end method

.method static bridge synthetic d(Lj2/c;Lj2/d;)V
    .locals 0

    iput-object p1, p0, Lj2/c;->h:Lj2/d;

    return-void
.end method

.method private e()Z
    .locals 3

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->isAbc()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/androlua/LuaApplication;->getGlobalData()Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lj2/c;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private f(Z)V
    .locals 3

    iget-boolean v0, p0, Lj2/c;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj2/c;->g:Z

    invoke-direct {p0}, Lj2/c;->e()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lj2/c;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "initFlyTekTTS"

    const-string v2, " start"

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    new-instance v0, Lj2/d;

    iget-object v1, p0, Lj2/c;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Lj2/c$a;

    invoke-direct {v2, p0}, Lj2/c$a;-><init>(Lj2/c;)V

    invoke-direct {v0, v1, p1, v2}, Lj2/d;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;ZLandroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lj2/c;->h:Lj2/d;

    invoke-virtual {v0, p0}, Lj2/d;->L(Lcom/nirenr/talkman/TextToSpeakListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 2

    const v0, 0x7f0706bb

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public appendSpeak(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lj2/c;->h:Lj2/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lj2/d;->T(Ljava/lang/String;Z)I

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

    iget-object v0, p0, Lj2/c;->h:Lj2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj2/d;->x()V

    :cond_0
    return-void
.end method

.method public isSpeaking()Z
    .locals 1

    iget-object v0, p0, Lj2/c;->h:Lj2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj2/d;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lj2/c;->a:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onSpeakStart()V
    .locals 1

    iget-object v0, p0, Lj2/c;->a:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onStart()V

    return-void
.end method

.method public onSpeakStop()V
    .locals 1

    iget-object v0, p0, Lj2/c;->a:Lcom/nirenr/talkman/tts/TextToSpeakListener;

    invoke-interface {v0}, Lcom/nirenr/talkman/tts/TextToSpeakListener;->onEnd()V

    return-void
.end method

.method public setStreamType(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lj2/c;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isRingMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x3

    :cond_1
    iget-object v0, p0, Lj2/c;->h:Lj2/d;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lj2/d;->K(I)V

    :cond_2
    return-void
.end method

.method public setTtsPitch(I)V
    .locals 1

    iput p1, p0, Lj2/c;->c:I

    iget-object v0, p0, Lj2/c;->h:Lj2/d;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj2/d;->F(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTtsScale(F)V
    .locals 1

    iput p1, p0, Lj2/c;->f:F

    iget-object v0, p0, Lj2/c;->h:Lj2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj2/d;->M(F)V

    :cond_0
    return-void
.end method

.method public setTtsSpeed(I)V
    .locals 1

    iput p1, p0, Lj2/c;->e:I

    iget-object v0, p0, Lj2/c;->h:Lj2/d;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj2/d;->J(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTtsVolume(F)V
    .locals 1

    iput p1, p0, Lj2/c;->d:F

    iget-object v0, p0, Lj2/c;->h:Lj2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj2/d;->O(F)V

    :cond_0
    return-void
.end method

.method public setUseAccessibilityVolume(Z)V
    .locals 1

    iget-object v0, p0, Lj2/c;->h:Lj2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj2/d;->N(Z)V

    :cond_0
    return-void
.end method

.method public slowSpeak(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lj2/c;->h:Lj2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj2/d;->Q(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public speak(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lj2/c;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lj2/c;->setStreamType(I)V

    iget-object v0, p0, Lj2/c;->h:Lj2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lj2/d;->R(Ljava/lang/String;)I

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

    iget-object v0, p0, Lj2/c;->h:Lj2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj2/d;->W()V

    :cond_0
    return-void
.end method
