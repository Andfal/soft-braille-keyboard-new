.class Lcom/nirenr/talkman/j$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/j$b;->onHoverEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/nirenr/talkman/j$b;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/j$b;F)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iput p2, p0, Lcom/nirenr/talkman/j$b$a;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v0, v0, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/j;->W(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v0, v0, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v2, "EdgeGestures"

    const-string v3, "hide"

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v0, v0, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->q(Lcom/nirenr/talkman/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v0, v0, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v0, v0, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v0, v0, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result v0

    iget-object v2, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v2, v2, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->e(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v0, v0, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v2, v2, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->e(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v3, v3, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v3}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    :goto_0
    iget-object v3, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v3, v3, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v3}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    invoke-static {v0}, Lcom/nirenr/talkman/j$b;->b(Lcom/nirenr/talkman/j$b;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    invoke-static {v0}, Lcom/nirenr/talkman/j$b;->a(Lcom/nirenr/talkman/j$b;)F

    move-result v0

    iget v2, p0, Lcom/nirenr/talkman/j$b$a;->a:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v2, v2, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->o(Lcom/nirenr/talkman/j;)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v0, v0, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    sget v2, Lk2/j;->n:I

    iget-object v3, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v3, v3, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v3}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->doGestureFile(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v0, v0, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v2, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v2, v2, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-static {v2}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v3, v3, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v3}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v3

    const v4, 0x7f07057d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v4, v4, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v4}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v4

    const v5, 0x7f070582

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v0, v0, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundGestureEnd()V

    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    iget-object v0, v0, Lcom/nirenr/talkman/j$b;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate()V

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/j$b$a;->b:Lcom/nirenr/talkman/j$b;

    invoke-static {v0, v1}, Lcom/nirenr/talkman/j$b;->c(Lcom/nirenr/talkman/j$b;Z)V

    return-void
.end method
