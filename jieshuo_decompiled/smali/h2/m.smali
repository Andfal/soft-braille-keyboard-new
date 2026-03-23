.class public Lh2/m;
.super Landroid/widget/CheckBox;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/LinkedView;


# instance fields
.field private a:Lcom/nirenr/talkman/dialog/LinkedView;

.field private b:Lcom/nirenr/talkman/dialog/LinkedView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    invoke-super {p0}, Landroid/widget/CheckBox;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_NEXT_HTML_ELEMENT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_PREVIOUS_HTML_ELEMENT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    const-class v1, Lcom/nirenr/talkman/dialog/LinkedView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getNext()Lcom/nirenr/talkman/dialog/LinkedView;
    .locals 1

    iget-object v0, p0, Lh2/m;->a:Lcom/nirenr/talkman/dialog/LinkedView;

    return-object v0
.end method

.method public getPrevious()Lcom/nirenr/talkman/dialog/LinkedView;
    .locals 1

    iget-object v0, p0, Lh2/m;->b:Lcom/nirenr/talkman/dialog/LinkedView;

    return-object v0
.end method

.method public next()V
    .locals 1

    invoke-virtual {p0}, Lh2/m;->getNext()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh2/m;->getNext()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object v0

    invoke-interface {v0}, Lcom/nirenr/talkman/dialog/LinkedView;->setFocus()Z

    :cond_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2

    const/16 v0, 0x400

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x800

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/CheckBox;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lh2/m;->getPrevious()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lh2/m;->getPrevious()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lcom/nirenr/talkman/dialog/LinkedView;->setFocus()Z

    move-result p1

    return p1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0}, Lh2/m;->getNext()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lh2/m;->getNext()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object p1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public previous()V
    .locals 1

    invoke-virtual {p0}, Lh2/m;->getPrevious()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh2/m;->getPrevious()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object v0

    invoke-interface {v0}, Lcom/nirenr/talkman/dialog/LinkedView;->setFocus()Z

    :cond_0
    return-void
.end method

.method public setFocus()Z
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lh2/m;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V
    .locals 0

    iput-object p1, p0, Lh2/m;->a:Lcom/nirenr/talkman/dialog/LinkedView;

    return-void
.end method

.method public setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V
    .locals 0

    iput-object p1, p0, Lh2/m;->b:Lcom/nirenr/talkman/dialog/LinkedView;

    return-void
.end method
