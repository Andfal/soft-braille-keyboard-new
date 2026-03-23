.class Lcom/nirenr/talkman/dialog/d$e$c$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/d$e$c$c;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/dialog/d$e$c$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/d$e$c$c;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->b:Lcom/nirenr/talkman/dialog/d$e$c$c;

    iput p2, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->b:Lcom/nirenr/talkman/dialog/d$e$c$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c$c;->b:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->b(Lcom/nirenr/talkman/dialog/d;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Lk2/a;->Q(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->b:Lcom/nirenr/talkman/dialog/d$e$c$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c$c;->b:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->b:Lcom/nirenr/talkman/dialog/d$e$c$c;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/d$e$c$c;->b:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/d;->b(Lcom/nirenr/talkman/dialog/d;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getText4(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->b:Lcom/nirenr/talkman/dialog/d$e$c$c;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/d$e$c$c;->b:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->b:Lcom/nirenr/talkman/dialog/d$e$c$c;

    iget-object v2, v2, Lcom/nirenr/talkman/dialog/d$e$c$c;->b:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object v2, v2, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v2, v2, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/d;->b(Lcom/nirenr/talkman/dialog/d;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v3, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->a:I

    mul-int v0, v0, v3

    div-int/lit8 v0, v0, 0x64

    invoke-virtual {v1, v2, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setSelection(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->b:Lcom/nirenr/talkman/dialog/d$e$c$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c$c;->b:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getTextMove()Lk2/j0;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lk2/j0;->l(Z)V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->b:Lcom/nirenr/talkman/dialog/d$e$c$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c$c;->b:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->c(Lcom/nirenr/talkman/dialog/d;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->b:Lcom/nirenr/talkman/dialog/d$e$c$c;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/d$e$c$c;->b:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/d;->b(Lcom/nirenr/talkman/dialog/d;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->b:Lcom/nirenr/talkman/dialog/d$e$c$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c$c;->b:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->b(Lcom/nirenr/talkman/dialog/d;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v0

    sub-float/2addr v0, v2

    iget v3, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->a:I

    int-to-float v3, v3

    mul-float v0, v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    const-string v2, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/d$e$c$c$a;->b:Lcom/nirenr/talkman/dialog/d$e$c$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c$c;->b:Lcom/nirenr/talkman/dialog/d$e$c;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e$c;->a:Lcom/nirenr/talkman/dialog/d$e;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/d$e;->a:Lcom/nirenr/talkman/dialog/d;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/d;->b(Lcom/nirenr/talkman/dialog/d;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {}, Lcom/nirenr/talkman/h0;->a()Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(ILandroid/os/Bundle;)Z

    :cond_2
    return-void
.end method
