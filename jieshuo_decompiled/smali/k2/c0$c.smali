.class Lk2/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nirenr/talkman/TrackpadNavigation$OnMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/c0;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk2/c0;


# direct methods
.method constructor <init>(Lk2/c0;)V
    .locals 0

    iput-object p1, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveDown()V
    .locals 2

    iget-object v0, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-static {v0}, Lk2/c0;->b(Lk2/c0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iget-object v0, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-static {v0}, Lk2/c0;->a(Lk2/c0;)Lcom/nirenr/talkman/n;

    move-result-object v0

    iget-object v1, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-static {v1}, Lk2/c0;->b(Lk2/c0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/n;->p(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void
.end method

.method public moveLeft()V
    .locals 2

    iget-object v0, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-static {v0}, Lk2/c0;->b(Lk2/c0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iget-object v0, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-static {v0}, Lk2/c0;->a(Lk2/c0;)Lcom/nirenr/talkman/n;

    move-result-object v0

    iget-object v1, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-static {v1}, Lk2/c0;->b(Lk2/c0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/n;->O0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void
.end method

.method public moveRight()V
    .locals 2

    iget-object v0, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-static {v0}, Lk2/c0;->b(Lk2/c0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iget-object v0, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-static {v0}, Lk2/c0;->a(Lk2/c0;)Lcom/nirenr/talkman/n;

    move-result-object v0

    iget-object v1, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-static {v1}, Lk2/c0;->b(Lk2/c0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/n;->p(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void
.end method

.method public moveUp()V
    .locals 2

    iget-object v0, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-static {v0}, Lk2/c0;->b(Lk2/c0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iget-object v0, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-static {v0}, Lk2/c0;->a(Lk2/c0;)Lcom/nirenr/talkman/n;

    move-result-object v0

    iget-object v1, p0, Lk2/c0$c;->a:Lk2/c0;

    invoke-static {v1}, Lk2/c0;->b(Lk2/c0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/n;->O0(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    return-void
.end method
