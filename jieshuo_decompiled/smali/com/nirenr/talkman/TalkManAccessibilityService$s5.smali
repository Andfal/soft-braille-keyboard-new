.class Lcom/nirenr/talkman/TalkManAccessibilityService$s5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
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

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->D(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "toBack mBackKeepFocusRunnable"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->D(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->W2(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "findFocus keepFocus focus"

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f070313

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v4

    iget-object v5, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->k0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v5

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->i(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v1}, Lk2/a;->d0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "findFocus keepFocus win"

    invoke-virtual {v0, v4, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->accessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :goto_0
    return-void

    :cond_5
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->E(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_c

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->E(Lcom/nirenr/talkman/TalkManAccessibilityService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "findFocus keepFocus click1"

    invoke-virtual {v5, v6, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4}, Lk2/a;->d0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    goto :goto_3

    :cond_8
    iget-object v5, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v6, "findFocus keepFocus click3"

    invoke-virtual {v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "findFocus keepFocus click4"

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "findFocus keepFocus click"

    invoke-virtual {v0, v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->accessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$s5;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :goto_2
    return-void

    :cond_b
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_c
    return-void
.end method
