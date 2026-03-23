.class public Lcom/myopicmobile/textwarrior/android/k;
.super Lcom/myopicmobile/textwarrior/android/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myopicmobile/textwarrior/android/k$a;
    }
.end annotation


# instance fields
.field private final l:Lcom/myopicmobile/textwarrior/android/k$a;

.field private final m:Lcom/myopicmobile/textwarrior/android/k$a;

.field private final n:Lcom/myopicmobile/textwarrior/android/k$a;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I


# direct methods
.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/c;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;-><init>(Lcom/myopicmobile/textwarrior/android/c;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->o:Z

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->p:Z

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->q:Z

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->r:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    sget v0, Lcom/myopicmobile/textwarrior/android/c;->BASE_TEXT_SIZE_PIXELS:I

    int-to-double v0, v0

    const-wide v2, 0x3ff3333333333333L    # 1.2

    mul-double v0, v0, v2

    double-to-float v0, v0

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/k;->s:I

    new-instance p1, Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-direct {p1, p0}, Lcom/myopicmobile/textwarrior/android/k$a;-><init>(Lcom/myopicmobile/textwarrior/android/k;)V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    new-instance p1, Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-direct {p1, p0}, Lcom/myopicmobile/textwarrior/android/k$a;-><init>(Lcom/myopicmobile/textwarrior/android/k;)V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/k;->m:Lcom/myopicmobile/textwarrior/android/k$a;

    new-instance p1, Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-direct {p1, p0}, Lcom/myopicmobile/textwarrior/android/k$a;-><init>(Lcom/myopicmobile/textwarrior/android/k;)V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/k;->n:Lcom/myopicmobile/textwarrior/android/k$a;

    return-void
.end method

.method static bridge synthetic s(Lcom/myopicmobile/textwarrior/android/k;)I
    .locals 0

    iget p0, p0, Lcom/myopicmobile/textwarrior/android/k;->s:I

    return p0
.end method

.method private t(Lcom/myopicmobile/textwarrior/android/k$a;Landroid/view/MotionEvent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Lcom/myopicmobile/textwarrior/android/k$a;->d(II)Ld2/n;

    move-result-object p2

    invoke-virtual {p2}, Ld2/n;->a()I

    move-result p2

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0, p2}, Lcom/myopicmobile/textwarrior/android/c;->moveCaret(I)V

    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p2}, Lcom/myopicmobile/textwarrior/android/c;->getCaretX()I

    move-result p2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->getCaretY()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/myopicmobile/textwarrior/android/k$a;->a(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/k$a;->c:Landroid/graphics/Rect;

    return-object v0
.end method

.method public f(Ld2/b;)V
    .locals 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    sget-object v1, Ld2/b$a;->f:Ld2/b$a;

    invoke-virtual {p1, v1}, Ld2/b;->b(Ld2/b$a;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/k$a;->j(I)V

    return-void
.end method

.method public k(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->isSelectText2()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/k$a;->m()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->m:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/k$a;->f()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->n:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/k$a;->f()V

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->getCaretX()I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->getCaretY()I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/k$a;->l(II)V

    :cond_0
    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/k;->q:Z

    invoke-virtual {v0, p1, v1}, Lcom/myopicmobile/textwarrior/android/k$a;->c(Landroid/graphics/Canvas;Z)V

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/k;->r:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/k$a;->f()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->m:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/k$a;->m()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->n:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/k$a;->m()V

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->o:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->p:Z

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionStartX()I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionStartY()I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->m:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/k$a;->l(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionEndX()I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionEndY()I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->n:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/k$a;->l(II)V

    :cond_4
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->m:Lcom/myopicmobile/textwarrior/android/k$a;

    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/k;->o:Z

    invoke-virtual {v0, p1, v1}, Lcom/myopicmobile/textwarrior/android/k$a;->c(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->n:Lcom/myopicmobile/textwarrior/android/k$a;

    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/k;->o:Z

    invoke-virtual {v0, p1, v1}, Lcom/myopicmobile/textwarrior/android/k$a;->c(Landroid/graphics/Canvas;Z)V

    :goto_0
    return-void
.end method

.method public n(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->q:Z

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->o:Z

    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->p:Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/k$a;->b()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->m:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/k$a;->b()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/k;->n:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/k$a;->b()V

    invoke-super {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->n(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/k$a;->i(II)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1, v3}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    return v3

    :cond_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->m:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/k$a;->i(II)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    invoke-super {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->onDown(Landroid/view/MotionEvent;)Z

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/i;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, p1}, Lcom/myopicmobile/textwarrior/android/k$a;->i(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/k;->q:Z

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->m:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, p1}, Lcom/myopicmobile/textwarrior/android/k$a;->i(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/k;->o:Z

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->n:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, p1}, Lcom/myopicmobile/textwarrior/android/k$a;->i(II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/myopicmobile/textwarrior/android/k;->p:Z

    iget-boolean v3, p0, Lcom/myopicmobile/textwarrior/android/k;->q:Z

    if-eqz v3, :cond_0

    iput-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/k;->r:Z

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, p1}, Lcom/myopicmobile/textwarrior/android/k$a;->k(II)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    :goto_0
    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/k$a;->g()V

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Lcom/myopicmobile/textwarrior/android/k;->o:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->m:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, p1}, Lcom/myopicmobile/textwarrior/android/k$a;->k(II)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->focusSelectionStart()V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/k;->m:Lcom/myopicmobile/textwarrior/android/k$a;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->n:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, p1}, Lcom/myopicmobile/textwarrior/android/k$a;->k(II)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->focusSelectionEnd()V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/k;->n:Lcom/myopicmobile/textwarrior/android/k$a;

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->q:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->o:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->p:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/myopicmobile/textwarrior/android/i;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/k;->n(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/k;->onDoubleTap(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->q:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/k;->n(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/k;->r:Z

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-direct {p0, p1, p2}, Lcom/myopicmobile/textwarrior/android/k;->t(Lcom/myopicmobile/textwarrior/android/k$a;Landroid/view/MotionEvent;)V

    :goto_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->o:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/k;->n(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/k;->m:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-direct {p0, p1, p2}, Lcom/myopicmobile/textwarrior/android/k;->t(Lcom/myopicmobile/textwarrior/android/k$a;Landroid/view/MotionEvent;)V

    :goto_1
    return v1

    :cond_3
    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/k;->p:Z

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_4

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/k;->n(Landroid/view/MotionEvent;)Z

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/k;->n:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-direct {p0, p1, p2}, Lcom/myopicmobile/textwarrior/android/k;->t(Lcom/myopicmobile/textwarrior/android/k$a;Landroid/view/MotionEvent;)V

    :goto_2
    return v1

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/myopicmobile/textwarrior/android/i;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->l:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/k$a;->i(II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->m:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/k$a;->i(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/k;->n:Lcom/myopicmobile/textwarrior/android/k$a;

    invoke-virtual {v2, v0, v1}, Lcom/myopicmobile/textwarrior/android/k$a;->i(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/myopicmobile/textwarrior/android/k;->r:Z

    invoke-super {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v3
.end method
