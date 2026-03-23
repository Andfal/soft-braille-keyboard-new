.class Lcom/nirenr/talkman/TalkManAccessibilityService$t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->scrollBackwardFind(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic b:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iput-object p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->j2(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->u0(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->k2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Lk2/a;->d0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "toChildPrevious"

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isSpeakListViewItem()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/n;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/n;->J0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Lk2/a;->Z(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->H0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->b3(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/n;

    move-result-object v0

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isAutoPrevious()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v5, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v5}, Lk2/a;->M(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isListView(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_0
    invoke-virtual {v0, v3, v2, v1}, Lcom/nirenr/talkman/n;->y(Landroid/view/accessibility/AccessibilityNodeInfo;ZZ)Z

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Lk2/a;->d0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->b:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toPrevious(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    :goto_2
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->g0(Lcom/nirenr/talkman/TalkManAccessibilityService;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/16 v1, 0x2000

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$t2;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    :goto_3
    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->l2(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V

    return-void
.end method
