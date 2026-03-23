.class Lcom/nirenr/talkman/TalkManAccessibilityService$y2;
.super Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->setUseFingerprintGesture(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureDetected(I)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->d0(Lcom/nirenr/talkman/TalkManAccessibilityService;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->W1(Lcom/nirenr/talkman/TalkManAccessibilityService;J)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "onGestureDetected"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f07027e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f07027f

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070286

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070287

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070282

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070283

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEditView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startInputting()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->w0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v3, 0x7f070284

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v4, 0x7f070285

    goto :goto_0

    :goto_1
    invoke-super {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetected(I)V

    return-void
.end method

.method public onGestureDetectionAvailabilityChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetectionAvailabilityChanged(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$y2;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "FingerprintGestureCallback"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
