.class Lcom/nirenr/talkman/TalkManAccessibilityService$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService$g;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService$g;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$g;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$g;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->e2(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/nirenr/talkman/h;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$g;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$g;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$g;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$g;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Lk2/a;->a0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$g;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$g;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$g;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$g;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/n;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$g;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$g;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/n;->k(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$g;

    iget-object v0, v0, Lcom/nirenr/talkman/TalkManAccessibilityService$g;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->P(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lcom/nirenr/talkman/n;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$g$a;->a:Lcom/nirenr/talkman/TalkManAccessibilityService$g;

    iget-object v1, v1, Lcom/nirenr/talkman/TalkManAccessibilityService$g;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/n;->v0(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    return-void
.end method
