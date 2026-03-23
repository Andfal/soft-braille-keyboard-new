.class Lcom/nirenr/talkman/dialog/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/e;->onDismiss(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/e;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->d(Lcom/nirenr/talkman/dialog/e;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lh2/a;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-direct {v0, v1}, Lh2/a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh2/a;->d(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v0

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->c(Lcom/nirenr/talkman/dialog/e;)I

    move-result v2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->b(Lcom/nirenr/talkman/dialog/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->editNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->showNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v0

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->c(Lcom/nirenr/talkman/dialog/e;)I

    move-result v2

    if-le v0, v2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->d(Lcom/nirenr/talkman/dialog/e;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Lk2/a;->Q(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v0

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->paste(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void

    :cond_5
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getNodeInfoText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSelectionEnd()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_6

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v3}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSelectionStart()I

    move-result v3

    sub-int/2addr v3, v1

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    goto :goto_2

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->beep()V

    goto/16 :goto_3

    :cond_8
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    :goto_2
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelectionMode(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f070374

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void

    :cond_9
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->clear(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void

    :cond_a
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v0

    if-eqz v0, :cond_d

    if-eq v0, v1, :cond_c

    if-eq v0, v2, :cond_b

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->addContentBlacklist(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->editNodeName(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->editDict(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void

    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->d(Lcom/nirenr/talkman/dialog/e;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nirenr/talkman/dialog/e;->j(Lcom/nirenr/talkman/dialog/e;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v0

    if-gez v0, :cond_f

    return-void

    :cond_f
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->a(Lcom/nirenr/talkman/dialog/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->e(Lcom/nirenr/talkman/dialog/e;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->a(Lcom/nirenr/talkman/dialog/e;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    return-void

    :cond_10
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->a(Lcom/nirenr/talkman/dialog/e;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nirenr/talkman/dialog/e;->j(Lcom/nirenr/talkman/dialog/e;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->g(Lcom/nirenr/talkman/dialog/e;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->g(Lcom/nirenr/talkman/dialog/e;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/ClickableSpan;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    return-void

    :cond_11
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->g(Lcom/nirenr/talkman/dialog/e;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/nirenr/talkman/dialog/e;->j(Lcom/nirenr/talkman/dialog/e;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/e;->i(Lcom/nirenr/talkman/dialog/e;)I

    move-result v0

    if-nez v0, :cond_12

    new-instance v0, Landroid/widget/GridView;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/androlua/SingleLineAdapter;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v3}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f010022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f050007

    invoke-direct {v1, v2, v4, v3}, Lcom/androlua/SingleLineAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/e$c;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/dialog/e$c$a;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/dialog/e$c$a;-><init>(Lcom/nirenr/talkman/dialog/e$c;)V

    const v3, 0x7f070260

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070095

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/dialog/e$c$b;

    invoke-direct {v2, p0, v1}, Lcom/nirenr/talkman/dialog/e$c$b;-><init>(Lcom/nirenr/talkman/dialog/e$c;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_12
    return-void
.end method
