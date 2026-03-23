.class Lcom/nirenr/talkman/j$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/j$c;->onHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/j$c;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/j$c;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v0, v0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v0, v0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/j;->V(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v0, v0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v2, "EdgeGestures"

    const-string v3, "hide"

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v0, v0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v0, v0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v0, v0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result v0

    iget-object v2, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v2, v2, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->c(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v0, v0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v2, v2, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->c(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v3, v3, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v3}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v3, v3, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v3}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object v0, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v0, v0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundGestureEnd()V

    iget-object v0, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    iget-object v0, v0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate()V

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/j$c$a;->a:Lcom/nirenr/talkman/j$c;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/j$c;->a(Lcom/nirenr/talkman/j$c;Z)V

    return-void
.end method
