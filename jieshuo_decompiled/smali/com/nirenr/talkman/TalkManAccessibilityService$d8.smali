.class Lcom/nirenr/talkman/TalkManAccessibilityService$d8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d8"
.end annotation


# instance fields
.field private final a:I

.field private b:Z

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->b:Z

    iput p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->b:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->b:Z

    return v0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-boolean v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "LongClickRunnable1"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->X2(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "LongClickRunnable2"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->W(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "LongClickRunnable3"

    invoke-virtual {v0, v2, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "LongClickRunnable4"

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->X2(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isInInputWindow(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->q1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "\u5feb\u6377\u83dc\u5355"

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->k1(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isShowInputWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    new-instance v0, Lh2/b;

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-direct {v0, v2}, Lh2/b;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Lh2/b;->f(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEditView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->W(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->startInput()V

    :goto_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->S1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->i3(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->Z1(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iput-boolean v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$d8;->b:Z

    return-void
.end method
