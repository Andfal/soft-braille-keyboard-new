.class public Landroid/widget/CardView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CardView$CardViewJellybeanMr1;,
        Landroid/widget/CardView$CardViewEclairMr1;,
        Landroid/widget/CardView$CardViewApi21;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/widget/CardViewImpl;


# instance fields
.field private dm:Landroid/util/DisplayMetrics;

.field private mCompatPadding:Z

.field private final mContentPadding:Landroid/graphics/Rect;

.field private mPreventCornerOverlap:Z

.field private final mShadowBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/widget/CardView$CardViewApi21;

    invoke-direct {v0}, Landroid/widget/CardView$CardViewApi21;-><init>()V

    sput-object v0, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    invoke-interface {v0}, Landroid/widget/CardViewImpl;->initStatic()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CardView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private dp(F)F
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/CardView;->dm:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Landroid/widget/CardView;->dm:Landroid/util/DisplayMetrics;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const/4 p3, 0x1

    new-array v0, p3, [I

    const v1, 0x1010031

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p2

    const v0, -0x50506

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const/high16 p2, 0x40000000    # 2.0f

    invoke-direct {p0, p2}, Landroid/widget/CardView;->dp(F)F

    move-result v7

    invoke-direct {p0, p2}, Landroid/widget/CardView;->dp(F)F

    move-result v8

    invoke-direct {p0, p2}, Landroid/widget/CardView;->dp(F)F

    move-result p2

    iput-boolean v2, p0, Landroid/widget/CardView;->mCompatPadding:Z

    iput-boolean p3, p0, Landroid/widget/CardView;->mPreventCornerOverlap:Z

    iget-object p3, p0, Landroid/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iput v2, p3, Landroid/graphics/Rect;->left:I

    iput v2, p3, Landroid/graphics/Rect;->top:I

    iput v2, p3, Landroid/graphics/Rect;->right:I

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    cmpl-float p3, v8, p2

    if-lez p3, :cond_0

    move v9, v8

    goto :goto_0

    :cond_0
    move v9, p2

    :goto_0
    sget-object v3, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    move-object v4, p0

    move-object v5, p1

    invoke-interface/range {v3 .. v9}, Landroid/widget/CardViewImpl;->initialize(Landroid/widget/CardViewDelegate;Landroid/content/Context;IFFF)V

    return-void
.end method


# virtual methods
.method public getCardElevation()F
    .locals 1

    sget-object v0, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0}, Landroid/widget/CardViewImpl;->getElevation(Landroid/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    iget-object v0, p0, Landroid/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroid/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroid/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 1

    sget-object v0, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0}, Landroid/widget/CardViewImpl;->getMaxElevation(Landroid/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CardView;->mPreventCornerOverlap:Z

    return v0
.end method

.method public getRadius()F
    .locals 1

    sget-object v0, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0}, Landroid/widget/CardViewImpl;->getRadius(Landroid/widget/CardViewDelegate;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CardView;->mCompatPadding:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6

    sget-object v0, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    instance-of v1, v0, Landroid/widget/CardView$CardViewApi21;

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Landroid/widget/CardViewImpl;->getMinWidth(Landroid/widget/CardViewDelegate;)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p0}, Landroid/widget/CardViewImpl;->getMinHeight(Landroid/widget/CardViewDelegate;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    sget-object v0, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/widget/CardViewImpl;->setBackgroundColor(Landroid/widget/CardViewDelegate;I)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 1

    sget-object v0, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/widget/CardViewImpl;->setBackgroundColor(Landroid/widget/CardViewDelegate;I)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 1

    sget-object v0, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/widget/CardViewImpl;->setElevation(Landroid/widget/CardViewDelegate;F)V

    return-void
.end method

.method public setContentPadding(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object p1, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    invoke-interface {p1, p0}, Landroid/widget/CardViewImpl;->updatePadding(Landroid/widget/CardViewDelegate;)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 1

    sget-object v0, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/widget/CardViewImpl;->setMaxElevation(Landroid/widget/CardViewDelegate;F)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CardView;->mPreventCornerOverlap:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/widget/CardView;->mPreventCornerOverlap:Z

    sget-object p1, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    invoke-interface {p1, p0}, Landroid/widget/CardViewImpl;->onPreventCornerOverlapChanged(Landroid/widget/CardViewDelegate;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    sget-object v0, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    invoke-interface {v0, p0, p1}, Landroid/widget/CardViewImpl;->setRadius(Landroid/widget/CardViewDelegate;F)V

    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 2

    iget-object v0, p0, Landroid/widget/CardView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/widget/CardView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CardView;->mCompatPadding:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/widget/CardView;->mCompatPadding:Z

    sget-object p1, Landroid/widget/CardView;->IMPL:Landroid/widget/CardViewImpl;

    invoke-interface {p1, p0}, Landroid/widget/CardViewImpl;->onCompatPaddingChanged(Landroid/widget/CardViewDelegate;)V

    return-void
.end method
