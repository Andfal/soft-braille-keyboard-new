.class Lcom/nirenr/talkman/j$a;
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

.field private c:I

.field private d:J

.field private e:Z

.field final synthetic f:Lcom/nirenr/talkman/j;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/nirenr/talkman/j$a;->c:I

    iput-boolean p1, p0, Lcom/nirenr/talkman/j$a;->e:Z

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/j$a;)F
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/j$a;->b:F

    return p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/j$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/j$a;->e:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/j$a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nirenr/talkman/j$a;->e:Z

    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    const-string v7, "EdgeGestures"

    const/4 v8, 0x0

    if-eq v5, v6, :cond_c

    const/4 v6, 0x7

    const/4 v9, 0x1

    if-eq v5, v6, :cond_7

    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    const/16 v0, 0xa

    if-eq v5, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->g(Lcom/nirenr/talkman/j;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-wide v5, p0, Lcom/nirenr/talkman/j$a;->d:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    cmp-long v0, v3, v5

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/nirenr/talkman/j$a;->c:I

    if-ne v0, v9, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/nirenr/talkman/j$a$a;

    invoke-direct {v2, p0, v1}, Lcom/nirenr/talkman/j$a$a;-><init>(Lcom/nirenr/talkman/j$a;F)V

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_3
    iget-object v5, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v5}, Lcom/nirenr/talkman/j;->g(Lcom/nirenr/talkman/j;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v5, v8}, Lcom/nirenr/talkman/j;->u(Lcom/nirenr/talkman/j;Z)V

    iget-object v5, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v5}, Lcom/nirenr/talkman/j;->r(Lcom/nirenr/talkman/j;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-virtual {v0, v9}, Lcom/nirenr/talkman/j;->U(Z)V

    iput v8, p0, Lcom/nirenr/talkman/j$a;->c:I

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v5, "show"

    invoke-virtual {v0, v7, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundGestureBegin()V

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v5

    const v6, 0x7f07074f

    invoke-static {v5, v6, v8}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v5

    invoke-static {v0, v5}, Lcom/nirenr/talkman/j;->u(Lcom/nirenr/talkman/j;Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v5, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v5}, Lcom/nirenr/talkman/j;->o(Lcom/nirenr/talkman/j;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_6

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-virtual {v0, v9}, Lcom/nirenr/talkman/j;->B(Z)V

    :cond_6
    :goto_0
    iput v1, p0, Lcom/nirenr/talkman/j$a;->b:F

    iput v2, p0, Lcom/nirenr/talkman/j$a;->a:F

    iput-wide v3, p0, Lcom/nirenr/talkman/j$a;->d:J

    iput-boolean v8, p0, Lcom/nirenr/talkman/j$a;->e:Z

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0, v8}, Lcom/nirenr/talkman/j;->s(Lcom/nirenr/talkman/j;I)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->q(Lcom/nirenr/talkman/j;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->w(Lcom/nirenr/talkman/j;)V

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lcom/nirenr/talkman/j$a;->c:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/nirenr/talkman/j$a;->c:I

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->q(Lcom/nirenr/talkman/j;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androlua/LuaService;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->b(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/2addr v2, v9

    div-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result v1

    if-eq v0, v1, :cond_d

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1, v0}, Lcom/nirenr/talkman/j;->s(Lcom/nirenr/talkman/j;I)V

    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const v3, 0x7f070095

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nirenr/talkman/j;->y(Lcom/nirenr/talkman/j;Ljava/lang/String;)V

    :cond_8
    if-lez v0, :cond_9

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->b(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gt v0, v1, :cond_9

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->b(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v2

    sub-int/2addr v0, v9

    aget-object v0, v2, v0

    invoke-static {v1, v0}, Lcom/nirenr/talkman/j;->y(Lcom/nirenr/talkman/j;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundScroll()V

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate()V

    goto/16 :goto_1

    :cond_a
    iget-boolean v0, p0, Lcom/nirenr/talkman/j$a;->e:Z

    if-nez v0, :cond_d

    iget-wide v5, p0, Lcom/nirenr/talkman/j$a;->d:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    cmp-long v0, v3, v5

    if-lez v0, :cond_d

    iget v0, p0, Lcom/nirenr/talkman/j$a;->b:F

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->o(Lcom/nirenr/talkman/j;)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_d

    iput-boolean v9, p0, Lcom/nirenr/talkman/j$a;->e:Z

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    sget v0, Lk2/j;->o:I

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->doGestureFile(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070334

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const v3, 0x7f070337

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_b
    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundGestureEnd()V

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate()V

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-virtual {p1, v8}, Lcom/nirenr/talkman/j;->U(Z)V

    return v8

    :cond_c
    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-virtual {v0, v8}, Lcom/nirenr/talkman/j;->U(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v7, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_d
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

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

    if-eqz p1, :cond_d

    if-eq p1, v5, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->p(Lcom/nirenr/talkman/j;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->q(Lcom/nirenr/talkman/j;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result p1

    if-nez p1, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getWidth()I

    move-result p1

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->b(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v1, v5

    div-int/2addr p1, v1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result v0

    if-eq p1, v0, :cond_f

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/j;->s(Lcom/nirenr/talkman/j;I)V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nirenr/talkman/j;->y(Lcom/nirenr/talkman/j;Ljava/lang/String;)V

    :cond_3
    if-lez p1, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->b(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gt p1, v0, :cond_4

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->b(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v1

    sub-int/2addr p1, v5

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Lcom/nirenr/talkman/j;->y(Lcom/nirenr/talkman/j;Ljava/lang/String;)V

    :cond_4
    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundScroll()V

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate()V

    goto/16 :goto_2

    :cond_5
    iget-boolean p1, p0, Lcom/nirenr/talkman/j$a;->e:Z

    if-nez p1, :cond_f

    iget-wide v6, p0, Lcom/nirenr/talkman/j$a;->d:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    cmp-long p1, v2, v6

    if-lez p1, :cond_f

    iget p1, p0, Lcom/nirenr/talkman/j$a;->b:F

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->o(Lcom/nirenr/talkman/j;)I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_f

    iput-boolean v5, p0, Lcom/nirenr/talkman/j$a;->e:Z

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    sget v0, Lk2/j;->o:I

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->doGestureFile(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070334

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const v3, 0x7f070337

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_6
    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundGestureEnd()V

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate()V

    return v4

    :cond_7
    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->p(Lcom/nirenr/talkman/j;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->q(Lcom/nirenr/talkman/j;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result p1

    if-nez p1, :cond_b

    :cond_9
    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result p1

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->b(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-gt p1, v0, :cond_c

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->b(Lcom/nirenr/talkman/j;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->a(Lcom/nirenr/talkman/j;)I

    move-result v1

    sub-int/2addr v1, v5

    aget-object v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_a
    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundGestureEnd()V

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate()V

    goto :goto_1

    :cond_b
    iget-boolean p1, p0, Lcom/nirenr/talkman/j$a;->e:Z

    if-nez p1, :cond_c

    iget p1, p0, Lcom/nirenr/talkman/j$a;->b:F

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->o(Lcom/nirenr/talkman/j;)I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_c

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    sget v0, Lk2/j;->m:I

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->doGestureFile(ILandroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v0}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-static {v0}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f07032d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {v2}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    const v3, 0x7f070332

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_c
    :goto_1
    iput-boolean v4, p0, Lcom/nirenr/talkman/j$a;->e:Z

    goto :goto_2

    :cond_d
    iput v0, p0, Lcom/nirenr/talkman/j$a;->b:F

    iput v1, p0, Lcom/nirenr/talkman/j$a;->a:F

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->playSoundGestureBegin()V

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/nirenr/talkman/TalkManAccessibilityService;->vibrate(Z)V

    iput-wide v2, p0, Lcom/nirenr/talkman/j$a;->d:J

    iput-boolean v4, p0, Lcom/nirenr/talkman/j$a;->e:Z

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1, v4}, Lcom/nirenr/talkman/j;->s(Lcom/nirenr/talkman/j;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f07073e

    invoke-static {v0, v1, v5}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/j;->t(Lcom/nirenr/talkman/j;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const v1, 0x7f07074f

    invoke-static {v0, v1, v4}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/nirenr/talkman/j;->u(Lcom/nirenr/talkman/j;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->p(Lcom/nirenr/talkman/j;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->q(Lcom/nirenr/talkman/j;)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->f(Lcom/nirenr/talkman/j;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTouchMode()Z

    move-result p1

    if-nez p1, :cond_f

    :cond_e
    iget-object p1, p0, Lcom/nirenr/talkman/j$a;->f:Lcom/nirenr/talkman/j;

    invoke-static {p1}, Lcom/nirenr/talkman/j;->w(Lcom/nirenr/talkman/j;)V

    :cond_f
    :goto_2
    return v5
.end method
