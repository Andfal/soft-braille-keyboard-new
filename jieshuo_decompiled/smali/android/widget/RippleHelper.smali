.class public Landroid/widget/RippleHelper;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RippleHelper$task;
    }
.end annotation


# instance fields
.field private cAlpha:I

.field private final dm:Landroid/util/DisplayMetrics;

.field private mAlpha:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCircle:Z

.field private mEnabled:Z

.field private mPaint2:Landroid/graphics/Paint;

.field private mRadius:I

.field private mRippleColor:I

.field private mRippleLineColor:I

.field private mSingle:Z

.field private mStep:I

.field private mTask:Landroid/widget/RippleHelper$task;

.field private mTimer:Lcom/androlua/util/TimerX;

.field private mView:Landroid/view/View;

.field private mWidth:I

.field private mX:F

.field private mY:F

.field private state:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Landroid/widget/RippleHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/RippleHelper;->dm:Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/widget/RippleHelper;->init()V

    return-void
.end method

.method static bridge synthetic a(Landroid/widget/RippleHelper;)I
    .locals 0

    iget p0, p0, Landroid/widget/RippleHelper;->cAlpha:I

    return p0
.end method

.method static bridge synthetic b(Landroid/widget/RippleHelper;)I
    .locals 0

    iget p0, p0, Landroid/widget/RippleHelper;->mAlpha:I

    return p0
.end method

.method static bridge synthetic c(Landroid/widget/RippleHelper;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic d(Landroid/widget/RippleHelper;)I
    .locals 0

    iget p0, p0, Landroid/widget/RippleHelper;->mRadius:I

    return p0
.end method

.method private dp(F)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/RippleHelper;->dm:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method static bridge synthetic e(Landroid/widget/RippleHelper;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/RippleHelper;->mSingle:Z

    return p0
.end method

.method static bridge synthetic f(Landroid/widget/RippleHelper;)I
    .locals 0

    iget p0, p0, Landroid/widget/RippleHelper;->mStep:I

    return p0
.end method

.method static bridge synthetic g(Landroid/widget/RippleHelper;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/widget/RippleHelper;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic h(Landroid/widget/RippleHelper;)I
    .locals 0

    iget p0, p0, Landroid/widget/RippleHelper;->mWidth:I

    return p0
.end method

.method static bridge synthetic i(Landroid/widget/RippleHelper;)I
    .locals 0

    iget p0, p0, Landroid/widget/RippleHelper;->state:I

    return p0
.end method

.method private init()V
    .locals 7

    iget-object v0, p0, Landroid/widget/RippleHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/widget/RippleHelper;->mEnabled:Z

    :cond_0
    iget-object v0, p0, Landroid/widget/RippleHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RippleHelper;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/RippleHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/widget/RippleHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    const v2, 0x44aaaaaa

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {p0, v1}, Landroid/widget/RippleHelper;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iput v0, p0, Landroid/widget/RippleHelper;->mAlpha:I

    new-instance v0, Lcom/androlua/util/TimerX;

    invoke-direct {v0}, Lcom/androlua/util/TimerX;-><init>()V

    iput-object v0, p0, Landroid/widget/RippleHelper;->mTimer:Lcom/androlua/util/TimerX;

    new-instance v2, Landroid/widget/RippleHelper$task;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Landroid/widget/RippleHelper$task;-><init>(Landroid/widget/RippleHelper;Landroid/widget/e;)V

    iput-object v2, p0, Landroid/widget/RippleHelper;->mTask:Landroid/widget/RippleHelper$task;

    iget-object v1, p0, Landroid/widget/RippleHelper;->mTimer:Lcom/androlua/util/TimerX;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x10

    invoke-virtual/range {v1 .. v6}, Lcom/androlua/util/TimerX;->schedule(Lcom/androlua/util/TimerTaskX;JJ)V

    iget-object v0, p0, Landroid/widget/RippleHelper;->mTask:Landroid/widget/RippleHelper$task;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androlua/util/TimerTaskX;->setEnabled(Z)V

    iput v1, p0, Landroid/widget/RippleHelper;->mRadius:I

    return-void
.end method

.method static bridge synthetic j(Landroid/widget/RippleHelper;I)V
    .locals 0

    iput p1, p0, Landroid/widget/RippleHelper;->cAlpha:I

    return-void
.end method

.method static bridge synthetic k(Landroid/widget/RippleHelper;I)V
    .locals 0

    iput p1, p0, Landroid/widget/RippleHelper;->mRadius:I

    return-void
.end method

.method static bridge synthetic l(Landroid/widget/RippleHelper;I)V
    .locals 0

    iput p1, p0, Landroid/widget/RippleHelper;->state:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Landroid/widget/RippleHelper;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/RippleHelper;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/RippleHelper;->mRippleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    iget v1, p0, Landroid/widget/RippleHelper;->cAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Landroid/widget/RippleHelper;->state:I

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/widget/RippleHelper;->mCircle:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/RippleHelper;->mX:F

    iget v1, p0, Landroid/widget/RippleHelper;->mY:F

    iget v2, p0, Landroid/widget/RippleHelper;->mWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    iget v0, p0, Landroid/widget/RippleHelper;->mWidth:I

    iget-boolean v1, p0, Landroid/widget/RippleHelper;->mSingle:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/RippleHelper;->mX:F

    iget v2, p0, Landroid/widget/RippleHelper;->mY:F

    iget v3, p0, Landroid/widget/RippleHelper;->mRadius:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    iget v1, p0, Landroid/widget/RippleHelper;->mRadius:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ltz v1, :cond_4

    iget v4, p0, Landroid/widget/RippleHelper;->mX:F

    iget v5, p0, Landroid/widget/RippleHelper;->mY:F

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x2

    if-lt v3, v5, :cond_3

    iget-object v1, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/RadialGradient;

    iget v7, p0, Landroid/widget/RippleHelper;->mX:F

    iget v8, p0, Landroid/widget/RippleHelper;->mY:F

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-direct {p0, v6}, Landroid/widget/RippleHelper;->dp(F)I

    move-result v6

    int-to-float v9, v6

    const/4 v6, 0x3

    new-array v10, v6, [I

    const v6, 0x44ffffff    # 2047.9999f

    aput v6, v10, v2

    iget v2, p0, Landroid/widget/RippleHelper;->mRippleLineColor:I

    aput v2, v10, v4

    const/high16 v2, 0x44000000    # 512.0f

    aput v2, v10, v5

    const/4 v11, 0x0

    sget-object v12, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v6, v3

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    iget v2, p0, Landroid/widget/RippleHelper;->mRippleLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Landroid/widget/RippleHelper;->mX:F

    iget v2, p0, Landroid/widget/RippleHelper;->mY:F

    iget v3, p0, Landroid/widget/RippleHelper;->mRadius:I

    rem-int/2addr v3, v0

    int-to-float v0, v3

    iget-object v3, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    sub-int/2addr v1, v0

    goto :goto_1

    :cond_4
    :goto_2
    iget-object p1, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_5
    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCircle()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RippleHelper;->mCircle:Z

    return v0
.end method

.method public isSingle()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/RippleHelper;->mSingle:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p2}, Landroid/widget/RippleHelper;->onTouchEvent(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Landroid/widget/RippleHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/RippleHelper;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    iput v1, p0, Landroid/widget/RippleHelper;->state:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v3, p0, Landroid/widget/RippleHelper;->mCircle:Z

    if-eqz v3, :cond_3

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v3, p1, 0x2

    int-to-float v3, v3

    iput v3, p0, Landroid/widget/RippleHelper;->mY:F

    iget v0, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v0, 0x2

    int-to-float v3, v3

    iput v3, p0, Landroid/widget/RippleHelper;->mX:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/2addr p1, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/widget/RippleHelper;->mX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/widget/RippleHelper;->mY:F

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v3, p1

    iget p1, v0, Landroid/graphics/Rect;->right:I

    int-to-double v0, p1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-int p1, v0

    :goto_0
    iput p1, p0, Landroid/widget/RippleHelper;->mWidth:I

    iget p1, p0, Landroid/widget/RippleHelper;->mWidth:I

    div-int/lit8 p1, p1, 0x3c

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/widget/RippleHelper;->mStep:I

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/RippleHelper;->mRadius:I

    iget-object p1, p0, Landroid/widget/RippleHelper;->mTask:Landroid/widget/RippleHelper$task;

    invoke-virtual {p1, v2}, Lcom/androlua/util/TimerTaskX;->setEnabled(Z)V

    iget-object p1, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    iget v0, p0, Landroid/widget/RippleHelper;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iput v2, p0, Landroid/widget/RippleHelper;->state:I

    :goto_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iput p1, p0, Landroid/widget/RippleHelper;->mAlpha:I

    iget-object v0, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/widget/RippleHelper;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setCircle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RippleHelper;->mCircle:Z

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    iput p1, p0, Landroid/widget/RippleHelper;->mRippleColor:I

    iget-object v0, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Landroid/widget/RippleHelper;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getAlpha()I

    move-result p1

    iput p1, p0, Landroid/widget/RippleHelper;->mAlpha:I

    return-void
.end method

.method public setRippleLineColor(I)V
    .locals 0

    iput p1, p0, Landroid/widget/RippleHelper;->mRippleLineColor:I

    return-void
.end method

.method public setSingle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/RippleHelper;->mSingle:Z

    return-void
.end method
