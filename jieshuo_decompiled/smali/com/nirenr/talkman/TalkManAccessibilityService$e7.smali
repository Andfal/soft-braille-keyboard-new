.class Lcom/nirenr/talkman/TalkManAccessibilityService$e7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final synthetic b:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iput-object p2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->O2(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object v1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e7;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setFocusView(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->L1(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$e7;->b:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "findFocus dialog"

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->M(Lcom/nirenr/talkman/TalkManAccessibilityService;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
