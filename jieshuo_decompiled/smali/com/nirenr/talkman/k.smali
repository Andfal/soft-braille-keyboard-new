.class public Lcom/nirenr/talkman/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/k$a;,
        Lcom/nirenr/talkman/k$c;,
        Lcom/nirenr/talkman/k$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/nirenr/talkman/k$b;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/FrameLayout;

.field private g:I

.field private h:Landroid/util/DisplayMetrics;

.field private i:I

.field private j:I

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nirenr/talkman/k;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/k;->h:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Lcom/nirenr/talkman/k;->i()I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/k;->i:I

    invoke-direct {p0}, Lcom/nirenr/talkman/k;->h()I

    move-result v0

    iput v0, p0, Lcom/nirenr/talkman/k;->j:I

    :try_start_0
    invoke-direct {p0, p1}, Lcom/nirenr/talkman/k;->k(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/k;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/k;->e:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/k;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/k;->d:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/k;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/k;->c:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/k;)I
    .locals 0

    iget p0, p0, Lcom/nirenr/talkman/k;->g:I

    return p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/k;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/k;->g(F)I

    move-result p0

    return p0
.end method

.method private g(F)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nirenr/talkman/k;->h:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private h()I
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private i()I
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private k(Landroid/content/Context;)V
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nirenr/talkman/k;->c:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/k;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const/16 v2, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d2

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x100

    or-int/lit16 v2, v2, 0x200

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v4, 0x8

    or-int/2addr v2, v4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v0, Lcom/nirenr/talkman/k$a;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/k$a;-><init>(Lcom/nirenr/talkman/k;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/k;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v2, 0x2

    new-array v5, v2, [I

    fill-array-data v5, :array_0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v5, 0x0

    const v6, 0xff00ff

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/nirenr/talkman/k;->g:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget v1, p0, Lcom/nirenr/talkman/k;->g:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/nirenr/talkman/k;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/nirenr/talkman/k;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/k;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/nirenr/talkman/k;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/nirenr/talkman/k;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/nirenr/talkman/k$b;

    invoke-direct {v0, p0, p1}, Lcom/nirenr/talkman/k$b;-><init>(Lcom/nirenr/talkman/k;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/k;->b:Lcom/nirenr/talkman/k$b;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/k;->f:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/nirenr/talkman/k;->e:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v5, p0, Lcom/nirenr/talkman/k;->k:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x1010031
        0x1010036
    .end array-data
.end method


# virtual methods
.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/k;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/k;->e:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/k;->k:Z

    return-void
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/k;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nirenr/talkman/k;->k:Z

    return-void
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nirenr/talkman/k;->k:Z

    return v0
.end method

.method public m(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/k;->f:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/nirenr/talkman/k;->f:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/k;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/k;->k:Z

    return-void
.end method
