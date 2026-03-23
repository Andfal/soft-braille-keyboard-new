.class public Lh2/n;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/dialog/LinkedView;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private b:Lcom/nirenr/talkman/dialog/LinkedView;

.field private c:Lcom/nirenr/talkman/dialog/LinkedView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lh2/n;->a:Landroid/graphics/Paint;

    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

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

    iget-object v0, p0, Lh2/n;->b:Lcom/nirenr/talkman/dialog/LinkedView;

    return-object v0
.end method

.method public getPrevious()Lcom/nirenr/talkman/dialog/LinkedView;
    .locals 1

    iget-object v0, p0, Lh2/n;->c:Lcom/nirenr/talkman/dialog/LinkedView;

    return-object v0
.end method

.method public next()V
    .locals 1

    invoke-virtual {p0}, Lh2/n;->getNext()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh2/n;->getNext()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object v0

    invoke-interface {v0}, Lcom/nirenr/talkman/dialog/LinkedView;->setFocus()Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lh2/n;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    const/16 v0, 0x400

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

    if-eq p1, v0, :cond_3

    const/16 v0, 0x800

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0}, Lh2/n;->getPrevious()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lh2/n;->getPrevious()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Lcom/nirenr/talkman/dialog/LinkedView;->setFocus()Z

    move-result p1

    return p1

    :cond_2
    return v1

    :cond_3
    invoke-virtual {p2, v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    :cond_4
    invoke-virtual {p0}, Lh2/n;->getNext()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lh2/n;->getNext()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object p1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public previous()V
    .locals 1

    invoke-virtual {p0}, Lh2/n;->getPrevious()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh2/n;->getPrevious()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object v0

    invoke-interface {v0}, Lcom/nirenr/talkman/dialog/LinkedView;->setFocus()Z

    :cond_0
    return-void
.end method

.method public setFocus()Z
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lh2/n;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V
    .locals 0

    iput-object p1, p0, Lh2/n;->b:Lcom/nirenr/talkman/dialog/LinkedView;

    return-void
.end method

.method public setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V
    .locals 0

    iput-object p1, p0, Lh2/n;->c:Lcom/nirenr/talkman/dialog/LinkedView;

    return-void
.end method
