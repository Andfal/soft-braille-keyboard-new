.class Lcom/nirenr/talkman/TalkManAccessibilityService$q7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/TalkManAccessibilityService$OnViewFocusedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/TalkManAccessibilityService;->J4(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
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

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$q7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewFocused(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$q7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->h(Lcom/nirenr/talkman/TalkManAccessibilityService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$q7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v1, "onViewFocused"

    invoke-virtual {v0, v1, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$q7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setClearNode(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$q7;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_1
    return-void
.end method
