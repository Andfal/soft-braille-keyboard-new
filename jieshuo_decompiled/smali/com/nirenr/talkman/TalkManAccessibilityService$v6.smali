.class Lcom/nirenr/talkman/TalkManAccessibilityService$v6;
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

    iput-object p1, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-static {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->t(Lcom/nirenr/talkman/TalkManAccessibilityService;)Lk2/a;

    move-result-object v2

    const-string v3, "com.samsung.android.honeyboard:id/remote_view"

    invoke-virtual {v2, v1, v3}, Lk2/a;->m(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "TYPE_VIEW_CLICKED5"

    invoke-virtual {v2, v3, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/TalkManAccessibilityService$v6;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setAccessibilityFocus(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_3
    return-void
.end method
