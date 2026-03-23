.class Lcom/nirenr/talkman/j$c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/j;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:J

.field private d:Z

.field final synthetic e:Lcom/nirenr/talkman/j;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/nirenr/talkman/j$c;->d:Z

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/j$c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/j$c;->d:Z

    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v6}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "EdgeGestures"

    invoke-virtual {v6, v7, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v6, 0x3

    const/4 v8, 0x0

    if-eq v0, v6, :cond_8

    const/4 v6, 0x7

    const/4 v9, 0x1

    if-eq v0, v6, :cond_6

    const/16 v6, 0x9

    if-eq v0, v6, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->h(Lcom/nirenr/talkman/j;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/nirenr/talkman/j$c;->c:J

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x64

    cmp-long v2, v4, v0

    if-gez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/j$c$a;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/j$c$a;-><init>(Lcom/nirenr/talkman/j$c;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->h(Lcom/nirenr/talkman/j;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v0, v6}, Lcom/nirenr/talkman/j;->v(Lcom/nirenr/talkman/j;F)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-virtual {v0, v9}, Lcom/nirenr/talkman/j;->V(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundGestureBegin()V

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v1, "show"

    invoke-virtual {v0, v7, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-virtual {v0, v9}, Lcom/nirenr/talkman/j;->B(Z)V

    :goto_0
    iput v2, p0, Lcom/nirenr/talkman/j$c;->b:F

    iput v3, p0, Lcom/nirenr/talkman/j$c;->a:F

    iput-wide v4, p0, Lcom/nirenr/talkman/j$c;->c:J

    iput-boolean v8, p0, Lcom/nirenr/talkman/j$c;->d:Z

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0, v8}, Lcom/nirenr/talkman/j;->s(Lcom/nirenr/talkman/j;I)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v3

    iget-object v1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->c(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, v9

    div-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result v1

    if-eq v0, v1, :cond_9

    iget-object v1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v1, v0}, Lcom/nirenr/talkman/j;->s(Lcom/nirenr/talkman/j;I)V

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const v3, 0x7f070095

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nirenr/talkman/j;->y(Lcom/nirenr/talkman/j;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundScroll()V

    iget-object v1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate()V

    :cond_7
    if-lez v0, :cond_9

    iget-object v1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->c(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gt v0, v1, :cond_9

    iget-object v1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->c(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v2

    sub-int/2addr v0, v9

    aget-object v0, v2, v0

    invoke-static {v1, v0}, Lcom/nirenr/talkman/j;->y(Lcom/nirenr/talkman/j;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundScroll()V

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate()V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/j;->V(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v7, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v5, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v1

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->c(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v5

    div-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result v0

    if-eq p1, v0, :cond_6

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/j;->s(Lcom/nirenr/talkman/j;I)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/j;->y(Lcom/nirenr/talkman/j;Ljava/lang/String;)V

    :cond_1
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->c(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gt p1, v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->c(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v1

    sub-int/2addr p1, v5

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Lcom/nirenr/talkman/j;->y(Lcom/nirenr/talkman/j;Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundScroll()V

    iget-object p1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result p1

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->c(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gt p1, v0, :cond_4

    iget-object p1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->c(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result v1

    sub-int/2addr v1, v5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundGestureEnd()V

    iget-object p1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate()V

    :cond_4
    iput-boolean v4, p0, Lcom/nirenr/talkman/j$c;->d:Z

    goto :goto_0

    :cond_5
    iput v0, p0, Lcom/nirenr/talkman/j$c;->b:F

    iput v1, p0, Lcom/nirenr/talkman/j$c;->a:F

    iget-object p1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundGestureBegin()V

    iget-object p1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iput-wide v2, p0, Lcom/nirenr/talkman/j$c;->c:J

    iput-boolean v4, p0, Lcom/nirenr/talkman/j$c;->d:Z

    iget-object p1, p0, Lcom/nirenr/talkman/j$c;->e:Lcom/nirenr/talkman/j;

    invoke-static {p1, v4}, Lcom/nirenr/talkman/j;->s(Lcom/nirenr/talkman/j;I)V

    :cond_6
    :goto_0
    return v5
.end method
