.class Lcom/nirenr/talkman/TalkManAccessibilityService$u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->n7(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-boolean p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->a:Z

    iput p3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->a:Z

    if-eqz v2, :cond_3

    const-string v2, "com.android.systemui:id/volume_expand_button"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v4, "volume_expand_button"

    invoke-virtual {v3, v4, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/TalkManAccessibilityService$u4$a;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService$u4$a;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService$u4;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    const-string v2, "com.android.systemui:id/volume_row_slider"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "com.vivo.systemuiplugin:id/volume_row_slider"

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :cond_4
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "volume_row_slider"

    invoke-virtual {v1, v3, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->accessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->b:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    return-void

    :cond_5
    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$u4;->c:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->f2(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method
