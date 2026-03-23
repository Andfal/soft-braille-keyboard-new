.class Landroid/widget/HorizontalListView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HorizontalListView;


# direct methods
.method private constructor <init>(Landroid/widget/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/HorizontalListView;Landroid/widget/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalListView$GestureListener;-><init>(Landroid/widget/HorizontalListView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalListView;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/HorizontalListView;->e(Landroid/widget/HorizontalListView;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/HorizontalListView;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {v0}, Landroid/widget/HorizontalListView;->l(Landroid/widget/HorizontalListView;)V

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v1, p1}, Landroid/widget/HorizontalListView;->h(Landroid/widget/HorizontalListView;II)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {v0}, Landroid/widget/HorizontalListView;->a(Landroid/widget/HorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {v0}, Landroid/widget/HorizontalListView;->c(Landroid/widget/HorizontalListView;)I

    move-result v0

    add-int v4, v0, p1

    iget-object v2, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    iget-object p1, v2, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p1, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/widget/HorizontalListView;->e(Landroid/widget/HorizontalListView;Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Landroid/widget/HorizontalListView;->i(Landroid/widget/HorizontalListView;Ljava/lang/Boolean;)V

    iget-object p1, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    sget-object p2, Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_TOUCH_SCROLL:Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-static {p1, p2}, Landroid/widget/HorizontalListView;->k(Landroid/widget/HorizontalListView;Landroid/widget/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    iget-object p1, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {p1}, Landroid/widget/HorizontalListView;->l(Landroid/widget/HorizontalListView;)V

    iget-object p1, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    iget p2, p1, Landroid/widget/HorizontalListView;->mNextX:I

    float-to-int p4, p3

    add-int/2addr p2, p4

    iput p2, p1, Landroid/widget/HorizontalListView;->mNextX:I

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {p1, p2}, Landroid/widget/HorizontalListView;->m(Landroid/widget/HorizontalListView;I)V

    iget-object p1, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {v0}, Landroid/widget/HorizontalListView;->l(Landroid/widget/HorizontalListView;)V

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v2, p1}, Landroid/widget/HorizontalListView;->h(Landroid/widget/HorizontalListView;II)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {v0}, Landroid/widget/HorizontalListView;->a(Landroid/widget/HorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {v0}, Landroid/widget/HorizontalListView;->c(Landroid/widget/HorizontalListView;)I

    move-result v0

    add-int v4, v0, p1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    iget-object p1, v2, Landroid/widget/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1, v4}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {p1}, Landroid/widget/HorizontalListView;->d(Landroid/widget/HorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {p1}, Landroid/widget/HorizontalListView;->a(Landroid/widget/HorizontalListView;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {p1}, Landroid/widget/HorizontalListView;->d(Landroid/widget/HorizontalListView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/HorizontalListView$GestureListener;->this$0:Landroid/widget/HorizontalListView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
