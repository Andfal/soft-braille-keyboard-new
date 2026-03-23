.class public Lcom/androlua/LoadingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# static fields
.field static final STATE_FAIL:I = -0x1

.field static final STATE_LOADING:I = 0x0

.field static final STATE_SUCCE:I = 0x1


# instance fields
.field private final dm:Landroid/util/DisplayMetrics;

.field private m:I

.field private mState:I

.field private n:I

.field private p:Landroid/graphics/Paint;

.field private sm:I

.field private sn:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LoadingDrawable;->n:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->m:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->x:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->y:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/androlua/LoadingDrawable;->sn:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/LoadingDrawable;->sm:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/androlua/LoadingDrawable;->dm:Landroid/util/DisplayMetrics;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/androlua/LoadingDrawable;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/androlua/LoadingDrawable;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/androlua/LoadingDrawable;->p:Landroid/graphics/Paint;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-direct {p0, v0}, Lcom/androlua/LoadingDrawable;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/androlua/LoadingDrawable;->p:Landroid/graphics/Paint;

    const v0, -0x77777778

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private dp(F)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/androlua/LoadingDrawable;->dm:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    float-to-int v2, v2

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v2, v2

    const v3, 0x3e19999a    # 0.15f

    mul-float v3, v3, v2

    const v5, 0x3f59999a    # 0.85f

    mul-float v2, v2, v5

    invoke-direct {v4, v3, v3, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v2, v0, Lcom/androlua/LoadingDrawable;->n:I

    const/4 v9, -0x6

    const/16 v10, 0x8

    const/4 v11, 0x2

    const/16 v12, 0x168

    if-lt v2, v12, :cond_0

    iget v3, v0, Lcom/androlua/LoadingDrawable;->mState:I

    if-nez v3, :cond_0

    iput v10, v0, Lcom/androlua/LoadingDrawable;->sm:I

    iput v9, v0, Lcom/androlua/LoadingDrawable;->sn:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    if-gt v2, v3, :cond_1

    iput v3, v0, Lcom/androlua/LoadingDrawable;->sn:I

    iput v11, v0, Lcom/androlua/LoadingDrawable;->sm:I

    :cond_1
    :goto_0
    if-lt v2, v12, :cond_2

    iget v3, v0, Lcom/androlua/LoadingDrawable;->mState:I

    if-nez v3, :cond_4

    :cond_2
    iget v3, v0, Lcom/androlua/LoadingDrawable;->mState:I

    if-nez v3, :cond_3

    iget v3, v0, Lcom/androlua/LoadingDrawable;->sn:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/androlua/LoadingDrawable;->n:I

    iget v2, v0, Lcom/androlua/LoadingDrawable;->m:I

    iget v3, v0, Lcom/androlua/LoadingDrawable;->sm:I

    goto :goto_1

    :cond_3
    iget v3, v0, Lcom/androlua/LoadingDrawable;->sn:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Lcom/androlua/LoadingDrawable;->n:I

    iget v2, v0, Lcom/androlua/LoadingDrawable;->m:I

    iget v3, v0, Lcom/androlua/LoadingDrawable;->sm:I

    mul-int/lit8 v3, v3, 0x2

    :goto_1
    add-int/2addr v2, v3

    iput v2, v0, Lcom/androlua/LoadingDrawable;->m:I

    rem-int/2addr v2, v12

    iput v2, v0, Lcom/androlua/LoadingDrawable;->m:I

    :cond_4
    iget v2, v0, Lcom/androlua/LoadingDrawable;->m:I

    int-to-float v5, v2

    iget v2, v0, Lcom/androlua/LoadingDrawable;->n:I

    int-to-float v6, v2

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/androlua/LoadingDrawable;->p:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget v2, v0, Lcom/androlua/LoadingDrawable;->n:I

    if-lt v2, v12, :cond_6

    iput v9, v0, Lcom/androlua/LoadingDrawable;->sn:I

    iput v10, v0, Lcom/androlua/LoadingDrawable;->sm:I

    iget v2, v0, Lcom/androlua/LoadingDrawable;->mState:I

    const/4 v3, 0x1

    const/high16 v4, 0x3f400000    # 0.75f

    const v5, 0x3f333333    # 0.7f

    if-ne v2, v3, :cond_5

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    const v6, 0x3e99999a    # 0.3f

    mul-float v3, v3, v6

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v6, v6, v7

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    const v6, 0x3ee66666    # 0.45f

    mul-float v3, v3, v6

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    mul-float v6, v6, v5

    invoke-virtual {v2, v3, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    mul-float v3, v3, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    const v4, 0x3ecccccd    # 0.4f

    mul-float v1, v1, v4

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, v0, Lcom/androlua/LoadingDrawable;->p:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    move-object/from16 v3, p1

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    iget v2, v1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v6, v2, 0x2

    int-to-float v13, v6

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v6

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float v14, v7, v8

    div-int/2addr v2, v11

    int-to-float v15, v2

    int-to-float v2, v6

    const v6, 0x3f266666    # 0.65f

    mul-float v16, v2, v6

    iget-object v2, v0, Lcom/androlua/LoadingDrawable;->p:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v1

    mul-float v5, v5, v7

    div-int/2addr v2, v11

    int-to-float v2, v2

    int-to-float v1, v1

    mul-float v7, v1, v4

    iget-object v8, v0, Lcom/androlua/LoadingDrawable;->p:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v4, v6

    move v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method fail()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/androlua/LoadingDrawable;->mState:I

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method loading()V
    .locals 0

    invoke-virtual {p0}, Lcom/androlua/LoadingDrawable;->reset()V

    return-void
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/androlua/LoadingDrawable;->mState:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/androlua/LoadingDrawable;->sn:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/androlua/LoadingDrawable;->sm:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->n:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->m:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->x:I

    iput v0, p0, Lcom/androlua/LoadingDrawable;->y:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method setState(I)V
    .locals 0

    iput p1, p0, Lcom/androlua/LoadingDrawable;->mState:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget-object v0, p0, Lcom/androlua/LoadingDrawable;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method succe()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/androlua/LoadingDrawable;->mState:I

    return-void
.end method
