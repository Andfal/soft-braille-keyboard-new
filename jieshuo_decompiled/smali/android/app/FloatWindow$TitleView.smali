.class Landroid/app/FloatWindow$TitleView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FloatWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleView"
.end annotation


# instance fields
.field private h:I

.field private lastX:I

.field private lastY:I

.field private rx:I

.field private ry:I

.field final synthetic this$0:Landroid/app/FloatWindow;

.field private vx:I

.field private vy:I


# direct methods
.method public constructor <init>(Landroid/app/FloatWindow;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FloatWindow$TitleView;->this$0:Landroid/app/FloatWindow;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->lastX:I

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->lastY:I

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->vx:I

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->vy:I

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->h:I

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/app/FloatWindow$TitleView;->h:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/app/FloatWindow$TitleView;->ry:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/app/FloatWindow$TitleView;->rx:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/app/FloatWindow$TitleView;->ry:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/app/FloatWindow$TitleView;->vy:I

    iget v0, p0, Landroid/app/FloatWindow$TitleView;->rx:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/app/FloatWindow$TitleView;->vx:I

    iget p1, p0, Landroid/app/FloatWindow$TitleView;->ry:I

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->lastY:I

    iget p1, p0, Landroid/app/FloatWindow$TitleView;->rx:I

    iput p1, p0, Landroid/app/FloatWindow$TitleView;->lastX:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Landroid/app/FloatWindow$TitleView;->this$0:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->c(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x33

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Landroid/app/FloatWindow$TitleView;->this$0:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->c(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Landroid/app/FloatWindow$TitleView;->vx:I

    iget v1, p0, Landroid/app/FloatWindow$TitleView;->rx:I

    iget v2, p0, Landroid/app/FloatWindow$TitleView;->lastX:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Landroid/app/FloatWindow$TitleView;->this$0:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->c(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p0, Landroid/app/FloatWindow$TitleView;->vy:I

    iget v1, p0, Landroid/app/FloatWindow$TitleView;->ry:I

    iget v2, p0, Landroid/app/FloatWindow$TitleView;->lastY:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Landroid/app/FloatWindow$TitleView;->h:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Landroid/app/FloatWindow$TitleView;->this$0:Landroid/app/FloatWindow;

    invoke-static {p1}, Landroid/app/FloatWindow;->e(Landroid/app/FloatWindow;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Landroid/app/FloatWindow$TitleView;->this$0:Landroid/app/FloatWindow;

    invoke-static {v0}, Landroid/app/FloatWindow;->b(Landroid/app/FloatWindow;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/app/FloatWindow$TitleView;->this$0:Landroid/app/FloatWindow;

    invoke-static {v1}, Landroid/app/FloatWindow;->c(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
