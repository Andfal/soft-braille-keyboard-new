.class public Landroid/app/FloatWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/FloatWindow$ContentView;,
        Landroid/app/FloatWindow$TitleView;,
        Landroid/app/FloatWindow$TitleBar;
    }
.end annotation


# instance fields
.field private content:Landroid/widget/FrameLayout;

.field private dm:Landroid/util/DisplayMetrics;

.field private mContext:Landroid/content/Context;

.field private mFocusable:Z

.field private mHeight:I

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mTitlebar:Landroid/app/FloatWindow$TitleBar;

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/FloatWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Landroid/app/FloatWindow;->dm:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/app/FloatWindow;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/app/FloatWindow;->mWidth:I

    invoke-direct {p0}, Landroid/app/FloatWindow;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/app/FloatWindow;->mHeight:I

    invoke-direct {p0, p1}, Landroid/app/FloatWindow;->init(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic a(Landroid/app/FloatWindow;)I
    .locals 0

    iget p0, p0, Landroid/app/FloatWindow;->mHeight:I

    return p0
.end method

.method static bridge synthetic b(Landroid/app/FloatWindow;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic c(Landroid/app/FloatWindow;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Landroid/app/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic d(Landroid/app/FloatWindow;)I
    .locals 0

    iget p0, p0, Landroid/app/FloatWindow;->mWidth:I

    return p0
.end method

.method private dp(F)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/app/FloatWindow;->dm:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method static bridge synthetic e(Landroid/app/FloatWindow;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Landroid/app/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic f(Landroid/app/FloatWindow;)I
    .locals 0

    iget p0, p0, Landroid/app/FloatWindow;->textColor:I

    return p0
.end method

.method static bridge synthetic g(Landroid/app/FloatWindow;F)I
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/FloatWindow;->dp(F)I

    move-result p0

    return p0
.end method

.method private getHeight()I
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private getWidth()I
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method static bridge synthetic h(Landroid/app/FloatWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/FloatWindow;->setFocus(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/app/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/app/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x40020

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    const/16 v2, 0x7f6

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d2

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    new-instance v0, Landroid/app/FloatWindow$ContentView;

    invoke-direct {v0, p0, p1}, Landroid/app/FloatWindow$ContentView;-><init>(Landroid/app/FloatWindow;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Landroid/app/FloatWindow;->dp(F)I

    move-result v3

    invoke-direct {p0, v2}, Landroid/app/FloatWindow;->dp(F)I

    move-result v4

    invoke-direct {p0, v2}, Landroid/app/FloatWindow;->dp(F)I

    move-result v5

    invoke-direct {p0, v2}, Landroid/app/FloatWindow;->dp(F)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0xff00ff

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroid/app/FloatWindow;->textColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget v1, p0, Landroid/app/FloatWindow;->textColor:I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/16 v1, 0x88

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    iget-object v1, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/app/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/app/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/app/FloatWindow$TitleBar;

    invoke-direct {v0, p0, p1}, Landroid/app/FloatWindow$TitleBar;-><init>(Landroid/app/FloatWindow;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/FloatWindow;->mTitlebar:Landroid/app/FloatWindow$TitleBar;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/FloatWindow;->content:Landroid/widget/FrameLayout;

    iget-object p1, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/app/FloatWindow;->mTitlebar:Landroid/app/FloatWindow$TitleBar;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/app/FloatWindow;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        0x1010031
        0x1010036
    .end array-data
.end method

.method private setFocus(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/app/FloatWindow;->mFocusable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/app/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Landroid/app/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Landroid/app/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/app/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Landroid/app/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v0, 0x40020

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/app/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Landroid/app/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow;->content:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Landroid/app/FloatWindow;->content:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setFlags(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Landroid/app/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/FloatWindow;->setFocus(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/app/FloatWindow;->mFocusable:Z

    return-void
.end method

.method public setFormat(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object p1, p0, Landroid/app/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setGravity(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Landroid/app/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/app/FloatWindow;->mTitlebar:Landroid/app/FloatWindow$TitleBar;

    invoke-virtual {v0, p1}, Landroid/app/FloatWindow$TitleBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setType(I)V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object p1, p0, Landroid/app/FloatWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1, v1, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Landroid/app/FloatWindow;->mLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
