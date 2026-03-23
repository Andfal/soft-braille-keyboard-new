.class public Lk2/k0;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk2/k0$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private final b:Landroid/view/GestureDetector;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lk2/k0$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/graphics/Paint;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lk2/k0;->c:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lk2/k0;->d:Landroid/graphics/Paint;

    iput-object p1, p0, Lk2/k0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lk2/k0;->d:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lk2/k0;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lk2/k0$a;

    invoke-direct {v1, p0}, Lk2/k0$a;-><init>(Lk2/k0;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lk2/k0;->b:Landroid/view/GestureDetector;

    return-void
.end method

.method static bridge synthetic a(Lk2/k0;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lk2/k0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic b(Lk2/k0;)I
    .locals 0

    iget p0, p0, Lk2/k0;->e:I

    return p0
.end method

.method static bridge synthetic c(Lk2/k0;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lk2/k0;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic d(Lk2/k0;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lk2/k0;->e(FF)V

    return-void
.end method

.method private e(FF)V
    .locals 5

    iget-object v0, p0, Lk2/k0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lk2/k0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/k0$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": x:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " y:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " l:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lk2/k0$b;->c:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " r:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lk2/k0$b;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " t:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lk2/k0$b;->d:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " b:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lk2/k0$b;->f:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "talkman"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lk2/k0$b;->c:I

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_1

    iget v2, v1, Lk2/k0$b;->e:I

    int-to-float v2, v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_1

    iget v2, v1, Lk2/k0$b;->d:I

    int-to-float v2, v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_1

    iget v2, v1, Lk2/k0$b;->f:I

    int-to-float v2, v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lk2/k0$b;->a(Lk2/k0$b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lk2/k0;->e:I

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lk2/k0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    iget-object p2, v1, Lk2/k0$b;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    iput v0, p0, Lk2/k0;->e:I

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private f(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lk2/k0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->checkNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk2/k0;->c:Ljava/util/ArrayList;

    new-instance v1, Lk2/k0$b;

    invoke-direct {v1, p0, p1}, Lk2/k0$b;-><init>(Lk2/k0;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-static {p1, v1}, Lk2/a;->H(Landroid/view/accessibility/AccessibilityNodeInfo;I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lk2/k0;->f(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lk2/k0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lk2/k0;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lk2/k0$b;

    iget-object v3, v2, Lk2/k0$b;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v4, v2, Lk2/k0$b;->c:I

    int-to-float v4, v4

    iget v5, v2, Lk2/k0$b;->d:I

    int-to-float v5, v5

    iget-object v6, p0, Lk2/k0;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget v3, p0, Lk2/k0;->e:I

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lk2/k0;->d:Landroid/graphics/Paint;

    const v4, -0xffff01

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v2, Lk2/k0$b;->c:I

    int-to-float v5, v3

    iget v3, v2, Lk2/k0$b;->d:I

    int-to-float v6, v3

    iget v3, v2, Lk2/k0$b;->e:I

    int-to-float v7, v3

    iget v2, v2, Lk2/k0$b;->f:I

    int-to-float v8, v2

    iget-object v9, p0, Lk2/k0;->d:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v2, p0, Lk2/k0;->d:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    iget v3, v2, Lk2/k0$b;->c:I

    int-to-float v5, v3

    iget v3, v2, Lk2/k0$b;->d:I

    int-to-float v6, v3

    iget v3, v2, Lk2/k0$b;->e:I

    int-to-float v7, v3

    iget v2, v2, Lk2/k0$b;->f:I

    int-to-float v8, v2

    iget-object v9, p0, Lk2/k0;->d:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_0
    iget v0, p0, Lk2/k0;->f:I

    const/4 v2, 0x3

    if-le v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->performLongClick()Z

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lk2/k0;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk2/k0;->setNode(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lk2/k0;->f:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lk2/k0;->f:I

    :cond_3
    :goto_0
    iget-object v0, p0, Lk2/k0;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method public setNode(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lk2/k0;->e:I

    iget-object v0, p0, Lk2/k0;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, p1}, Lk2/k0;->f(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method
