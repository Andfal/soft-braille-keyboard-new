.class public Landroid/widget/GifView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MOVIE_VIEW_DURATION:I = 0x3e8


# instance fields
.field private mCurrentAnimationTime:I

.field private mLeft:F

.field private mMeasuredMovieHeight:I

.field private mMeasuredMovieWidth:I

.field private mMoviePath:Ljava/lang/String;

.field private mMovieResourceId:I

.field private mMovieStart:J

.field private volatile mPaused:Z

.field private mScale:F

.field private mTop:F

.field private mVisible:Z

.field private movie:Landroid/graphics/Movie;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GifView;->mVisible:Z

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GifView;->setViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private drawMovieFrame(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroid/widget/GifView;->movie:Landroid/graphics/Movie;

    iget v1, p0, Landroid/widget/GifView;->mCurrentAnimationTime:I

    invoke-virtual {v0, v1}, Landroid/graphics/Movie;->setTime(I)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Landroid/widget/GifView;->mScale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Landroid/widget/GifView;->movie:Landroid/graphics/Movie;

    iget v1, p0, Landroid/widget/GifView;->mLeft:F

    iget v2, p0, Landroid/widget/GifView;->mScale:F

    div-float/2addr v1, v2

    iget v3, p0, Landroid/widget/GifView;->mTop:F

    div-float/2addr v3, v2

    invoke-virtual {v0, p1, v1, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private invalidateView()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/GifView;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method private setViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p1, -0x1

    iput p1, p0, Landroid/widget/GifView;->mMovieResourceId:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/widget/GifView;->mPaused:Z

    iget p2, p0, Landroid/widget/GifView;->mMovieResourceId:I

    if-eq p2, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, p0, Landroid/widget/GifView;->mMovieResourceId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/GifView;->movie:Landroid/graphics/Movie;

    :cond_0
    return-void
.end method

.method private updateAnimationTime()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/GifView;->mMovieStart:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iput-wide v0, p0, Landroid/widget/GifView;->mMovieStart:J

    :cond_0
    iget-object v2, p0, Landroid/widget/GifView;->movie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x3e8

    :cond_1
    iget-wide v3, p0, Landroid/widget/GifView;->mMovieStart:J

    sub-long/2addr v0, v3

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Landroid/widget/GifView;->mCurrentAnimationTime:I

    return-void
.end method


# virtual methods
.method public getGifPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/GifView;->mMoviePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGifResource()I
    .locals 1

    iget v0, p0, Landroid/widget/GifView;->mMovieResourceId:I

    return v0
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/GifView;->mPaused:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/GifView;->mPaused:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/GifView;->movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/GifView;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/GifView;->updateAnimationTime()V

    invoke-direct {p0, p1}, Landroid/widget/GifView;->drawMovieFrame(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Landroid/widget/GifView;->invalidateView()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/GifView;->drawMovieFrame(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p2, p0, Landroid/widget/GifView;->mMeasuredMovieWidth:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Landroid/widget/GifView;->mLeft:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p3, p0, Landroid/widget/GifView;->mMeasuredMovieHeight:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, p2

    iput p1, p0, Landroid/widget/GifView;->mTop:F

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/widget/GifView;->mVisible:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Landroid/widget/GifView;->movie:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iget-object v1, p0, Landroid/widget/GifView;->movie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v0, p1, :cond_0

    int-to-float v2, v0

    int-to-float p1, p1

    div-float/2addr v2, p1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    if-le v1, p1, :cond_1

    int-to-float p2, v1

    int-to-float p1, p1

    div-float/2addr p2, p1

    goto :goto_1

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v3, p1

    iput v3, p0, Landroid/widget/GifView;->mScale:F

    int-to-float p1, v0

    mul-float p1, p1, v3

    float-to-int p1, p1

    iput p1, p0, Landroid/widget/GifView;->mMeasuredMovieWidth:I

    int-to-float p2, v1

    mul-float p2, p2, v3

    float-to-int p2, p2

    iput p2, p0, Landroid/widget/GifView;->mMeasuredMovieHeight:I

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result p2

    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/GifView;->mVisible:Z

    invoke-direct {p0}, Landroid/widget/GifView;->invalidateView()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/widget/GifView;->mVisible:Z

    invoke-direct {p0}, Landroid/widget/GifView;->invalidateView()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/widget/GifView;->mVisible:Z

    invoke-direct {p0}, Landroid/widget/GifView;->invalidateView()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/GifView;->mPaused:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GifView;->mPaused:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/GifView;->mPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/GifView;->mPaused:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Landroid/widget/GifView;->mCurrentAnimationTime:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/GifView;->mMovieStart:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setGifPath(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/GifView;->mMoviePath:Ljava/lang/String;

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/GifView;->movie:Landroid/graphics/Movie;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setGifResource(I)V
    .locals 1

    iput p1, p0, Landroid/widget/GifView;->mMovieResourceId:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Landroid/widget/GifView;->mMovieResourceId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/GifView;->movie:Landroid/graphics/Movie;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
