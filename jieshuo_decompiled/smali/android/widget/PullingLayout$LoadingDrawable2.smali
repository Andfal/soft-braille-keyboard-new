.class Landroid/widget/PullingLayout$LoadingDrawable2;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PullingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadingDrawable2"
.end annotation


# instance fields
.field private m:I

.field private n:I

.field private p:Landroid/graphics/Paint;

.field private sm:I

.field private sn:I

.field final synthetic this$0:Landroid/widget/PullingLayout;


# direct methods
.method constructor <init>(Landroid/widget/PullingLayout;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->this$0:Landroid/widget/PullingLayout;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->n:I

    iput v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->m:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->sn:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->sm:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->p:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->p:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/widget/PullingLayout;->y(Landroid/widget/PullingLayout;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->p:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->this$0:Landroid/widget/PullingLayout;

    invoke-static {v1}, Landroid/widget/PullingLayout;->e(Landroid/widget/PullingLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    float-to-double v0, v0

    const-wide v2, 0x3fd6666666666666L    # 0.35

    mul-double v0, v0, v2

    double-to-int v0, v0

    new-instance v2, Landroid/graphics/RectF;

    div-int/lit8 v1, v0, 0x2

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v0, v0, v3

    invoke-direct {v2, v1, v1, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->n:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    iget v3, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->sm:I

    iget v4, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->sn:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->sm:I

    rsub-int/lit8 v3, v4, 0x0

    iput v3, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->sn:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1

    iput v3, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->sn:I

    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->sm:I

    :cond_1
    :goto_0
    iget v3, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->sn:I

    add-int/2addr v0, v3

    iput v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->n:I

    iget v3, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->m:I

    iget v4, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->sm:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->m:I

    rem-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->p:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/PullingLayout$LoadingDrawable2;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
