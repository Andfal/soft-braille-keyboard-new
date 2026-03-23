.class public Lk2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Z

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Z

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:Z

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk2/g;->g:I

    iput-object p1, p0, Lk2/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lk2/g;->d:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    :try_start_0
    iget-object v1, p0, Lk2/g;->c:Landroid/view/WindowManager;

    iget-object v2, p0, Lk2/g;->f:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lk2/g;->c:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lk2/g;->d:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lk2/g;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v1, p0, Lk2/g;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHeight(I)V

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lk2/g;->d:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk2/g;->f:Landroid/widget/TextView;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lk2/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lk2/g;->c:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lk2/g;->d:Landroid/view/WindowManager$LayoutParams;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_1

    const/16 v2, 0x7f0

    goto :goto_0

    :cond_1
    const/16 v2, 0x7da

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    or-int/lit8 v2, v2, 0x10

    or-int/lit16 v2, v2, 0x100

    or-int/lit16 v2, v2, 0x200

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v2, 0x33

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lk2/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lk2/g;->f:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lk2/g;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    iput-boolean v1, p0, Lk2/g;->h:Z

    invoke-direct {p0}, Lk2/g;->b()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-boolean v0, p0, Lk2/g;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lk2/g;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lk2/g;->f:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk2/g;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 1

    iget-boolean v0, p0, Lk2/g;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lk2/g;->h()V

    :try_start_0
    invoke-direct {p0}, Lk2/g;->c()V

    invoke-direct {p0}, Lk2/g;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk2/g;->b:Z

    invoke-direct {p0}, Lk2/g;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lk2/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lk2/g;->i:I

    const-string v1, "screen_brightness"

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lk2/g;->j:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lk2/g;->b:Z

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lk2/g;->e:Z

    return v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lk2/g;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lk2/g;->g:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lk2/g;->m(Z)V

    return-void
.end method

.method public j(Z)V
    .locals 1

    iget-boolean v0, p0, Lk2/g;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lk2/g;->g()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lk2/g;->f()V

    :goto_0
    return-void
.end method

.method public k(Z)V
    .locals 2

    iget-object v0, p0, Lk2/g;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lk2/g;->b:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lk2/g;->c:Landroid/view/WindowManager;

    iget-object v0, p0, Lk2/g;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lk2/g;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lk2/g;->e:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lk2/g;->g()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lk2/g;->f()V

    :goto_0
    return-void
.end method

.method public m(Z)V
    .locals 0

    return-void
.end method
