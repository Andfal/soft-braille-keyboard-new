.class public Lh2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Landroid/widget/GridLayout;

.field private e:Landroid/content/SharedPreferences;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Landroid/widget/TextView;

.field private l:Landroid/app/AlertDialog;

.field private m:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh2/g;->b:Landroid/content/Context;

    iput-object p2, p0, Lh2/g;->c:Ljava/lang/String;

    invoke-static {p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lh2/g;->e:Landroid/content/SharedPreferences;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lh2/g;->f:I

    iget-object p2, p0, Lh2/g;->e:Landroid/content/SharedPreferences;

    const p3, 0x7f070004

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x4

    invoke-interface {p2, p1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lh2/g;->a:I

    return-void
.end method

.method static bridge synthetic a(Lh2/g;I)V
    .locals 0

    iput p1, p0, Lh2/g;->f:I

    return-void
.end method

.method static bridge synthetic b(Lh2/g;I)V
    .locals 0

    iput p1, p0, Lh2/g;->a:I

    return-void
.end method

.method private c(Landroid/widget/GridLayout;IILjava/lang/String;)Landroid/widget/SeekBar;
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/widget/SeekBar;

    iget-object v2, p0, Lh2/g;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setId(I)V

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    const/16 p2, 0x14

    goto :goto_0

    :cond_0
    const/16 p2, 0xff

    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {v1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-virtual {v1, p4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lh2/g;->b:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private d(F)I
    .locals 2

    iget-object v0, p0, Lh2/g;->m:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    iget-object v0, p0, Lh2/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lh2/g;->m:Landroid/util/DisplayMetrics;

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lh2/g;->m:Landroid/util/DisplayMetrics;

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    if-gtz v0, :cond_1

    float-to-int p1, p1

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public e()V
    .locals 6

    iget v0, p0, Lh2/g;->f:I

    ushr-int/lit8 v1, v0, 0x18

    iput v1, p0, Lh2/g;->g:I

    ushr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lh2/g;->h:I

    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lh2/g;->i:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lh2/g;->j:I

    new-instance v0, Landroid/widget/GridLayout;

    iget-object v1, p0, Lh2/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh2/g;->d:Landroid/widget/GridLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->setColumnCount(I)V

    iget-object v0, p0, Lh2/g;->d:Landroid/widget/GridLayout;

    iget v2, p0, Lh2/g;->f:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lh2/g;->d:Landroid/widget/GridLayout;

    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lh2/g;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lh2/g;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh2/g;->k:Landroid/widget/TextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lh2/g;->k:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lh2/g;->d:Landroid/widget/GridLayout;

    iget-object v2, p0, Lh2/g;->k:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lh2/g;->d:Landroid/widget/GridLayout;

    iget v2, p0, Lh2/g;->g:I

    iget-object v3, p0, Lh2/g;->b:Landroid/content/Context;

    const v4, 0x7f07002d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, v2, v3}, Lh2/g;->c(Landroid/widget/GridLayout;IILjava/lang/String;)Landroid/widget/SeekBar;

    iget-object v0, p0, Lh2/g;->d:Landroid/widget/GridLayout;

    iget v2, p0, Lh2/g;->h:I

    iget-object v3, p0, Lh2/g;->b:Landroid/content/Context;

    const v4, 0x7f070559

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4, v2, v3}, Lh2/g;->c(Landroid/widget/GridLayout;IILjava/lang/String;)Landroid/widget/SeekBar;

    iget-object v0, p0, Lh2/g;->d:Landroid/widget/GridLayout;

    iget v2, p0, Lh2/g;->i:I

    iget-object v3, p0, Lh2/g;->b:Landroid/content/Context;

    const v4, 0x7f0702d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lh2/g;->c(Landroid/widget/GridLayout;IILjava/lang/String;)Landroid/widget/SeekBar;

    iget-object v0, p0, Lh2/g;->d:Landroid/widget/GridLayout;

    iget v1, p0, Lh2/g;->j:I

    iget-object v2, p0, Lh2/g;->b:Landroid/content/Context;

    const v3, 0x7f070076

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v0, v3, v1, v2}, Lh2/g;->c(Landroid/widget/GridLayout;IILjava/lang/String;)Landroid/widget/SeekBar;

    iget-object v0, p0, Lh2/g;->d:Landroid/widget/GridLayout;

    iget v1, p0, Lh2/g;->a:I

    iget-object v2, p0, Lh2/g;->b:Landroid/content/Context;

    const v3, 0x7f07063c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v0, v3, v1, v2}, Lh2/g;->c(Landroid/widget/GridLayout;IILjava/lang/String;)Landroid/widget/SeekBar;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lh2/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lh2/g;->d:Landroid/widget/GridLayout;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lh2/g$a;

    invoke-direct {v1, p0}, Lh2/g$a;-><init>(Lh2/g;)V

    const v2, 0x7f0708ae

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lh2/g;->l:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lh2/g;->l:Landroid/app/AlertDialog;

    iget v1, p0, Lh2/g;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p1, p0, Lh2/g;->e:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lh2/g;->c:Ljava/lang/String;

    iget v0, p0, Lh2/g;->g:I

    iget v1, p0, Lh2/g;->h:I

    iget v2, p0, Lh2/g;->i:I

    iget v3, p0, Lh2/g;->j:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lh2/g;->e:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lh2/g;->b:Landroid/content/Context;

    const v0, 0x7f070004

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lh2/g;->a:I

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p2, v0, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget v0, p0, Lh2/g;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget v0, p0, Lh2/g;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v0, "%d %x"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "setAccessibilityFocusAppearance"

    invoke-virtual {p1, v0, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget p2, p0, Lh2/g;->a:I

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lh2/g;->d(F)I

    move-result p2

    iget v0, p0, Lh2/g;->g:I

    iget v1, p0, Lh2/g;->h:I

    iget v2, p0, Lh2/g;->i:I

    iget v3, p0, Lh2/g;->j:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/accessibilityservice/AccessibilityService;->setAccessibilityFocusAppearance(II)V

    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    iput p2, p0, Lh2/g;->a:I

    goto :goto_0

    :cond_1
    iput p2, p0, Lh2/g;->j:I

    goto :goto_0

    :cond_2
    iput p2, p0, Lh2/g;->i:I

    goto :goto_0

    :cond_3
    iput p2, p0, Lh2/g;->h:I

    goto :goto_0

    :cond_4
    iput p2, p0, Lh2/g;->g:I

    :goto_0
    iget p1, p0, Lh2/g;->g:I

    iget p2, p0, Lh2/g;->h:I

    iget p3, p0, Lh2/g;->i:I

    iget v0, p0, Lh2/g;->j:I

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lh2/g;->f:I

    iget-object p2, p0, Lh2/g;->l:Landroid/app/AlertDialog;

    if-eqz p2, :cond_5

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p1, p0, Lh2/g;->d:Landroid/widget/GridLayout;

    iget p2, p0, Lh2/g;->f:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
