.class Lk2/k0$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk2/k0;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lk2/k0;


# direct methods
.method constructor <init>(Lk2/k0;)V
    .locals 0

    iput-object p1, p0, Lk2/k0$a;->a:Lk2/k0;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lk2/k0$a;->a:Lk2/k0;

    invoke-static {v0}, Lk2/k0;->b(Lk2/k0;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lk2/k0$a;->a:Lk2/k0;

    invoke-static {v0}, Lk2/k0;->a(Lk2/k0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lk2/k0$a;->a:Lk2/k0;

    invoke-static {v1}, Lk2/k0;->c(Lk2/k0;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lk2/k0$a;->a:Lk2/k0;

    invoke-static {v2}, Lk2/k0;->b(Lk2/k0;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/k0$b;

    invoke-static {v1}, Lk2/k0$b;->a(Lk2/k0$b;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->toClick(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_0
    iget-object v0, p0, Lk2/k0$a;->a:Lk2/k0;

    invoke-static {v0}, Lk2/k0;->a(Lk2/k0;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lk2/k0;->setNode(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lk2/k0$a;->a:Lk2/k0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lk2/k0;->d(Lk2/k0;FF)V

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-object v0, p0, Lk2/k0$a;->a:Lk2/k0;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lk2/k0;->d(Lk2/k0;FF)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method
