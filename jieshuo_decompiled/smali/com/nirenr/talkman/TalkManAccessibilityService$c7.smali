.class Lcom/nirenr/talkman/TalkManAccessibilityService$c7;
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
.field final synthetic a:Lcom/nirenr/talkman/TalkManAccessibilityService;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isShowInputWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->F1(Lcom/nirenr/talkman/TalkManAccessibilityService;Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInputWindowNode()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->G1(Lcom/nirenr/talkman/TalkManAccessibilityService;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$c7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setPauseGesture(Z)Z

    :cond_0
    return-void
.end method
