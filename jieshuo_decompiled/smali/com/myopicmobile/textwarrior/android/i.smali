.class public Lcom/myopicmobile/textwarrior/android/i;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# static fields
.field private static final i:Landroid/graphics/Rect;

.field protected static j:I

.field protected static k:I


# instance fields
.field protected a:Lcom/myopicmobile/textwarrior/android/c;

.field protected b:Z

.field private c:Landroid/view/GestureDetector;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/myopicmobile/textwarrior/android/i;->i:Landroid/graphics/Rect;

    const/16 v0, 0xa

    sput v0, Lcom/myopicmobile/textwarrior/android/i;->j:I

    const/16 v0, 0xc

    sput v0, Lcom/myopicmobile/textwarrior/android/i;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/c;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/i;->b:Z

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->c:Landroid/view/GestureDetector;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->isSelectText()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/myopicmobile/textwarrior/android/i;->j:I

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/myopicmobile/textwarrior/android/c;->autoScrollCaret(I)Z

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/android/c;->getContentWidth()I

    move-result v3

    sget v4, Lcom/myopicmobile/textwarrior/android/i;->j:I

    sub-int/2addr v3, v4

    if-lt v0, v3, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    if-ge v2, v4, :cond_3

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/c;->autoScrollCaret(I)Z

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/android/c;->getContentHeight()I

    move-result v3

    sget v4, Lcom/myopicmobile/textwarrior/android/i;->j:I

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->stopAutoScrollCaret()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/i;->o(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->p(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/myopicmobile/textwarrior/android/c;->coordToCharIndex(II)I

    move-result p1

    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    :cond_5
    return-void
.end method

.method private final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private m(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/i;->d:F

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    sub-float/2addr v4, v5

    mul-float v0, v0, v0

    mul-float v4, v4, v4

    add-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/i;->d:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/i;->e:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v0, v2

    div-float/2addr v0, v4

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/i;->f:F

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/i;->g:F

    :cond_0
    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->r(Landroid/view/MotionEvent;)F

    move-result p1

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/i;->d:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    iget v2, p0, Lcom/myopicmobile/textwarrior/android/i;->g:F

    div-float/2addr p1, v0

    mul-float v2, v2, p1

    float-to-int p1, v2

    invoke-virtual {v1, p1}, Lcom/myopicmobile/textwarrior/android/c;->setTextSize(I)V

    :cond_1
    return v3

    :cond_2
    iput v1, p0, Lcom/myopicmobile/textwarrior/android/i;->d:F

    return v2
.end method

.method private q(FF)V
    .locals 3

    float-to-int p1, p1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    float-to-int p2, p2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->getMaxScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->getMaxScrollY()I

    move-result v0

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p2, v0, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    if-gez p2, :cond_3

    const/4 p2, 0x0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0, p1, p2}, Lcom/myopicmobile/textwarrior/android/c;->smoothScrollTo(II)V

    return-void
.end method

.method private r(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public b()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/myopicmobile/textwarrior/android/i;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method public d(III)Z
    .locals 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0, p3}, Lcom/myopicmobile/textwarrior/android/c;->getBoundingBox(I)Landroid/graphics/Rect;

    move-result-object p3

    iget v0, p3, Landroid/graphics/Rect;->top:I

    sget v1, Lcom/myopicmobile/textwarrior/android/i;->k:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    iget p2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, v1

    if-lt p1, p2, :cond_0

    iget p2, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v1

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public f(Ld2/b;)V
    .locals 0

    return-void
.end method

.method public g(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method i()V
    .locals 0

    return-void
.end method

.method j()V
    .locals 0

    return-void
.end method

.method public k(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public l(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->m(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->c:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->n(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public n(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->stopAutoScrollCaret()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/i;->b:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/i;->d:F

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/i;->h:I

    const/4 p1, 0x1

    return p1
.end method

.method protected final o(I)I
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/i;->b:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/i;->o(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->p(I)I

    move-result p1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v2, v1, p1}, Lcom/myopicmobile/textwarrior/android/c;->coordToCharIndex(II)I

    move-result p1

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->isSelectText()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1, p1}, Lcom/myopicmobile/textwarrior/android/c;->inSelectionRange(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->createDocumentProvider()Ld2/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Ld2/f;->g(I)I

    move-result p1

    invoke-virtual {v1, p1}, Ld2/f;->i(I)I

    move-result v2

    add-int/2addr p1, v0

    invoke-virtual {v1, p1}, Ld2/f;->i(I)I

    move-result p1

    sub-int/2addr p1, v0

    :goto_0
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    sub-int/2addr p1, v2

    invoke-virtual {v1, v2, p1}, Lcom/myopicmobile/textwarrior/android/c;->setSelectionRange(II)V

    goto :goto_5

    :cond_0
    if-ltz p1, :cond_6

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1, p1}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->createDocumentProvider()Ld2/f;

    move-result-object v1

    move v2, p1

    :goto_1
    if-ltz v2, :cond_2

    invoke-virtual {v1, v2}, Ld2/f;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eq v2, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_3
    if-ltz p1, :cond_5

    invoke-virtual {v1, p1}, Ld2/f;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1, v0}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    goto :goto_0

    :cond_6
    :goto_5
    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/i;->o(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->p(I)I

    move-result p1

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->getCaretPosition()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/myopicmobile/textwarrior/android/i;->d(III)Z

    move-result v1

    iput-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/i;->b:Z

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->isFlingScrolling()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->stopFlingScrolling()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->isSelectText()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/myopicmobile/textwarrior/android/i;->d(III)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->focusSelectionStart()V

    :goto_0
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    iput-boolean v3, p0, Lcom/myopicmobile/textwarrior/android/i;->b:Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/myopicmobile/textwarrior/android/i;->d(III)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->focusSelectionEnd()V

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/i;->b:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_3
    return v3
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/i;->b:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lcom/myopicmobile/textwarrior/android/i;->h:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    const/4 p3, 0x0

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    neg-float p3, p3

    float-to-int p3, p3

    mul-int/lit8 p3, p3, 0x2

    neg-float p4, p4

    float-to-int p4, p4

    mul-int/lit8 p4, p4, 0x2

    invoke-virtual {p1, p3, p4}, Lcom/myopicmobile/textwarrior/android/c;->flingScroll(II)V

    :cond_2
    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/i;->n(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->onDoubleTap(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    iget-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/i;->b:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/myopicmobile/textwarrior/android/i;->a(Landroid/view/MotionEvent;)V

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget p1, p0, Lcom/myopicmobile/textwarrior/android/i;->h:I

    const/4 v1, -0x1

    if-nez p1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/i;->h:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/myopicmobile/textwarrior/android/i;->h:I

    :cond_2
    :goto_0
    iget p1, p0, Lcom/myopicmobile/textwarrior/android/i;->h:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    const/4 p4, 0x0

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    const/4 p3, 0x0

    :cond_4
    :goto_1
    invoke-direct {p0, p3, p4}, Lcom/myopicmobile/textwarrior/android/i;->q(FF)V

    :cond_5
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v0, :cond_6

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/i;->n(Landroid/view/MotionEvent;)Z

    :cond_6
    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->isAccessibilityEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1, v1}, Lcom/myopicmobile/textwarrior/android/c;->showIME(Z)V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/i;->o(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->p(I)I

    move-result p1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v2, v0, p1}, Lcom/myopicmobile/textwarrior/android/c;->coordToCharIndex(II)I

    move-result v2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v3}, Lcom/myopicmobile/textwarrior/android/c;->isSelectText()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v3, v0, p1}, Lcom/myopicmobile/textwarrior/android/c;->coordToCharIndexStrict(II)I

    move-result v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v4, v3}, Lcom/myopicmobile/textwarrior/android/c;->inSelectionRange(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0, v0, p1, v4}, Lcom/myopicmobile/textwarrior/android/i;->d(III)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v4}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionEnd()I

    move-result v4

    invoke-virtual {p0, v0, p1, v4}, Lcom/myopicmobile/textwarrior/android/i;->d(III)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    if-ltz v3, :cond_3

    :goto_0
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1, v2}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    goto :goto_1

    :cond_2
    if-ltz v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1, v1}, Lcom/myopicmobile/textwarrior/android/c;->showIME(Z)V

    return v1
.end method

.method protected final p(I)I
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method
