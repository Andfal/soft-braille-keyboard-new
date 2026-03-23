.class public Lcom/google/android/marvin/talkback/TalkBackService;
.super Lcom/nirenr/talkman/TalkManAccessibilityService;
.source "SourceFile"


# static fields
.field private static Va:Lcom/google/android/marvin/talkback/TalkBackService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;-><init>()V

    return-void
.end method

.method public static K7()Lcom/google/android/marvin/talkback/TalkBackService;
    .locals 1

    sget-object v0, Lcom/google/android/marvin/talkback/TalkBackService;->Va:Lcom/google/android/marvin/talkback/TalkBackService;

    return-object v0
.end method


# virtual methods
.method public asyncSpeak(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->mTalkManAccessibilityServiceEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->asyncSpeak(Ljava/lang/String;)V

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    sget-boolean v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->mTalkManAccessibilityServiceEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/high16 v0, 0x100000

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationMode(Z)Z

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onCreate()V

    sput-object p0, Lcom/google/android/marvin/talkback/TalkBackService;->Va:Lcom/google/android/marvin/talkback/TalkBackService;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/marvin/talkback/TalkBackService;->Va:Lcom/google/android/marvin/talkback/TalkBackService;

    invoke-super {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onDestroy()V

    return-void
.end method

.method public onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onGesture(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    move-result p1

    return p1
.end method

.method public onIncall(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    sget-boolean v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->mTalkManAccessibilityServiceEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onIncall(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInterrupt()V
    .locals 0

    return-void
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    sget-boolean v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->mTalkManAccessibilityServiceEnabled:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onScreenOff()V
    .locals 1

    sget-boolean v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->mTalkManAccessibilityServiceEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onScreenOff()V

    return-void
.end method

.method public onScreenOn()V
    .locals 1

    sget-boolean v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->mTalkManAccessibilityServiceEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onScreenOn()V

    return-void
.end method

.method public onScreenOn2()V
    .locals 1

    sget-boolean v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->mTalkManAccessibilityServiceEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onScreenOn2()V

    return-void
.end method

.method protected onServiceConnected()V
    .locals 1

    invoke-super {p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->onServiceConnected()V

    sget-boolean v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->mTalkManAccessibilityServiceEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationMode(Z)Z

    :cond_0
    return-void
.end method

.method public rawSpeak(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->mTalkManAccessibilityServiceEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->rawSpeak(Ljava/lang/String;)V

    return-void
.end method

.method public setEdgeGesture(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGesture(Z)V

    return-void
.end method

.method public speak(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/nirenr/talkman/TalkManAccessibilityService;->mTalkManAccessibilityServiceEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    return-void
.end method
