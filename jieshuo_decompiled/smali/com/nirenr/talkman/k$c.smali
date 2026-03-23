.class Lcom/nirenr/talkman/k$c;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field final synthetic h:Lcom/nirenr/talkman/k;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/k;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/k$c;->h:Lcom/nirenr/talkman/k;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/nirenr/talkman/k$c;->a:I

    iput p1, p0, Lcom/nirenr/talkman/k$c;->b:I

    iput p1, p0, Lcom/nirenr/talkman/k$c;->c:I

    iput p1, p0, Lcom/nirenr/talkman/k$c;->d:I

    iput p1, p0, Lcom/nirenr/talkman/k$c;->e:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/nirenr/talkman/k$c;->e:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nirenr/talkman/k$c;->f:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nirenr/talkman/k$c;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nirenr/talkman/k$c;->f:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/nirenr/talkman/k$c;->d:I

    iget v0, p0, Lcom/nirenr/talkman/k$c;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/nirenr/talkman/k$c;->c:I

    iget p1, p0, Lcom/nirenr/talkman/k$c;->f:I

    iput p1, p0, Lcom/nirenr/talkman/k$c;->b:I

    iget p1, p0, Lcom/nirenr/talkman/k$c;->g:I

    iput p1, p0, Lcom/nirenr/talkman/k$c;->a:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/k$c;->h:Lcom/nirenr/talkman/k;

    invoke-static {p1}, Lcom/nirenr/talkman/k;->b(Lcom/nirenr/talkman/k;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v0, 0x800033

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/nirenr/talkman/k$c;->h:Lcom/nirenr/talkman/k;

    invoke-static {p1}, Lcom/nirenr/talkman/k;->b(Lcom/nirenr/talkman/k;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/nirenr/talkman/k$c;->c:I

    iget v1, p0, Lcom/nirenr/talkman/k$c;->g:I

    iget v2, p0, Lcom/nirenr/talkman/k$c;->a:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/nirenr/talkman/k$c;->h:Lcom/nirenr/talkman/k;

    invoke-static {p1}, Lcom/nirenr/talkman/k;->b(Lcom/nirenr/talkman/k;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/nirenr/talkman/k$c;->d:I

    iget v1, p0, Lcom/nirenr/talkman/k$c;->f:I

    iget v2, p0, Lcom/nirenr/talkman/k$c;->b:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/nirenr/talkman/k$c;->e:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/nirenr/talkman/k$c;->h:Lcom/nirenr/talkman/k;

    invoke-static {p1}, Lcom/nirenr/talkman/k;->c(Lcom/nirenr/talkman/k;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/k$c;->h:Lcom/nirenr/talkman/k;

    invoke-static {v0}, Lcom/nirenr/talkman/k;->a(Lcom/nirenr/talkman/k;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/k$c;->h:Lcom/nirenr/talkman/k;

    invoke-static {v1}, Lcom/nirenr/talkman/k;->b(Lcom/nirenr/talkman/k;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
