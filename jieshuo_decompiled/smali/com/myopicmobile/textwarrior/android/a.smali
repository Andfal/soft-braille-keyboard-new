.class public Lcom/myopicmobile/textwarrior/android/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myopicmobile/textwarrior/android/a$b;
    }
.end annotation


# static fields
.field private static o:Ld2/h;


# instance fields
.field private final a:Landroid/util/DisplayMetrics;

.field private b:Lcom/myopicmobile/textwarrior/android/c;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/ListPopupWindow;

.field private e:Lcom/myopicmobile/textwarrior/android/a$b;

.field private f:Landroid/widget/Filter;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/CharSequence;

.field private k:I

.field private l:Landroid/graphics/drawable/GradientDrawable;

.field private m:I

.field private n:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ld2/j;->E()Ld2/h;

    move-result-object v0

    sput-object v0, Lcom/myopicmobile/textwarrior/android/a;->o:Ld2/h;

    return-void
.end method

.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/a;->b:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/a;->a:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/a;->l()V

    return-void
.end method

.method static bridge synthetic a(Lcom/myopicmobile/textwarrior/android/a;)Lcom/myopicmobile/textwarrior/android/a$b;
    .locals 0

    iget-object p0, p0, Lcom/myopicmobile/textwarrior/android/a;->e:Lcom/myopicmobile/textwarrior/android/a$b;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/myopicmobile/textwarrior/android/a;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/myopicmobile/textwarrior/android/a;->j:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/myopicmobile/textwarrior/android/a;)I
    .locals 0

    iget p0, p0, Lcom/myopicmobile/textwarrior/android/a;->m:I

    return p0
.end method

.method static bridge synthetic d(Lcom/myopicmobile/textwarrior/android/a;)Lcom/myopicmobile/textwarrior/android/c;
    .locals 0

    iget-object p0, p0, Lcom/myopicmobile/textwarrior/android/a;->b:Lcom/myopicmobile/textwarrior/android/c;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/myopicmobile/textwarrior/android/a;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/a;->j:Ljava/lang/CharSequence;

    return-void
.end method

.method static bridge synthetic f(Lcom/myopicmobile/textwarrior/android/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/a;->n(I)V

    return-void
.end method

.method static bridge synthetic g(Lcom/myopicmobile/textwarrior/android/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/a;->o(I)V

    return-void
.end method

.method static bridge synthetic h(Lcom/myopicmobile/textwarrior/android/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/a;->r(I)V

    return-void
.end method

.method static bridge synthetic i()Ld2/h;
    .locals 1

    sget-object v0, Lcom/myopicmobile/textwarrior/android/a;->o:Ld2/h;

    return-object v0
.end method

.method private k(F)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/a;->a:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    if-gtz v0, :cond_0

    float-to-int p1, p1

    return p1

    :cond_0
    return v0
.end method

.method private l()V
    .locals 4

    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/a;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/a;->b:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    new-instance v0, Lcom/myopicmobile/textwarrior/android/a$b;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/a;->c:Landroid/content/Context;

    const v2, 0x1090003

    invoke-direct {v0, p0, v1, v2}, Lcom/myopicmobile/textwarrior/android/a$b;-><init>(Lcom/myopicmobile/textwarrior/android/a;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->e:Lcom/myopicmobile/textwarrior/android/a$b;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->e:Lcom/myopicmobile/textwarrior/android/a$b;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/a$b;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->f:Landroid/widget/Filter;

    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/myopicmobile/textwarrior/android/a;->n(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0xff00ff

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->l:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0, v1}, Lcom/myopicmobile/textwarrior/android/a;->k(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->l:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/myopicmobile/textwarrior/android/a;->k(F)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/a;->q(I)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/a;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/myopicmobile/textwarrior/android/a$a;

    invoke-direct {v1, p0}, Lcom/myopicmobile/textwarrior/android/a$a;-><init>(Lcom/myopicmobile/textwarrior/android/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x1010031
        0x1010036
    .end array-data
.end method

.method private n(I)V
    .locals 1

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/a;->h:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/a;->h:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    :cond_0
    return-void
.end method

.method private o(I)V
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->b:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/a;->i:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/a;->i:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    :cond_0
    return-void
.end method

.method private r(I)V
    .locals 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    rsub-int/lit8 v0, v0, 0x0

    if-le p1, v0, :cond_0

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/a;->b:Lcom/myopicmobile/textwarrior/android/c;

    sub-int/2addr p1, v0

    invoke-virtual {v2, v1, p1}, Landroid/view/View;->scrollBy(II)V

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/a;->g:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/a;->g:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 1

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/a;->k:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public declared-synchronized p(Ld2/h;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/myopicmobile/textwarrior/android/a;->o:Ld2/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public q(I)V
    .locals 2

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/a;->m:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->l:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/myopicmobile/textwarrior/android/a;->k(F)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->l:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public s(I)V
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->d:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFadingEdgeLength(I)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/a;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public u(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->e:Lcom/myopicmobile/textwarrior/android/a$b;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/a$b;->d()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/a;->f:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method
