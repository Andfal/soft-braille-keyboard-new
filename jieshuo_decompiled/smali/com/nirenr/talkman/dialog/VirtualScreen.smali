.class public Lcom/nirenr/talkman/dialog/VirtualScreen;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/nirenr/talkman/ai/OcrResult$OCRListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;
    }
.end annotation


# static fields
.field private static t:Lcom/nirenr/talkman/dialog/VirtualScreen;

.field private static u:Z

.field private static v:Z


# instance fields
.field private final a:Z

.field private b:Z

.field private c:Lh2/m;

.field private d:Lh2/m;

.field private e:Lh2/n;

.field private f:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private g:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private h:I

.field private i:I

.field private j:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

.field private k:Landroid/view/WindowManager$LayoutParams;

.field private l:Landroid/view/WindowManager;

.field private m:Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;

.field private n:Lcom/nirenr/talkman/dialog/LinkedView;

.field private o:Lcom/nirenr/talkman/dialog/LinkedView;

.field private p:Lcom/nirenr/talkman/dialog/LinkedView;

.field private q:I

.field private r:Ljava/lang/StringBuilder;

.field private s:Lh2/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->r:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->i:I

    const v0, 0x7f070885

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lk2/b0;->a(Landroid/content/Context;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->a:Z

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->n(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/CameraActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->r:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->a:Z

    iput-boolean v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->b:Z

    iput v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->i:I

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->n(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->r:Ljava/lang/StringBuilder;

    iput p2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->i:I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->a:Z

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->n(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/dialog/VirtualScreen;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->r:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lh2/m;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->d:Lh2/m;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lh2/m;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->c:Lh2/m;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/nirenr/talkman/dialog/VirtualScreen;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->g:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/nirenr/talkman/dialog/VirtualScreen;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/nirenr/talkman/dialog/VirtualScreen;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->i(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic g(Z)V
    .locals 0

    sput-boolean p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->v:Z

    return-void
.end method

.method static bridge synthetic h(Z)V
    .locals 0

    sput-boolean p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->u:Z

    return-void
.end method

.method private i(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070920

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07091f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f07091b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public static j()V
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/dialog/VirtualScreen;->t:Lcom/nirenr/talkman/dialog/VirtualScreen;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->l()V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nirenr/talkman/dialog/VirtualScreen;->v:Z

    sput-boolean v0, Lcom/nirenr/talkman/dialog/VirtualScreen;->u:Z

    return-void
.end method

.method public static k()V
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/dialog/VirtualScreen;->t:Lcom/nirenr/talkman/dialog/VirtualScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->l()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nirenr/talkman/dialog/VirtualScreen;->t:Lcom/nirenr/talkman/dialog/VirtualScreen;

    return-void
.end method

.method private m()V
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->l:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->k:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method private n(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findListView(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->g:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->a:Z

    if-eqz v1, :cond_1

    const/high16 v1, -0x78000000

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Lh2/n;

    invoke-direct {v2, p1}, Lh2/n;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->e:Lh2/n;

    const-string v3, " X "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->e:Lh2/n;

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->e:Lh2/n;

    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->e:Lh2/n;

    const v5, 0x7f0700be

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->e:Lh2/n;

    new-instance v5, Lcom/nirenr/talkman/dialog/VirtualScreen$b;

    invoke-direct {v5, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen$b;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lh2/n;

    invoke-direct {v2, p1}, Lh2/n;-><init>(Landroid/content/Context;)V

    const-string v5, " \u25b2 "

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f070180

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v5, Lcom/nirenr/talkman/dialog/VirtualScreen$c;

    invoke-direct {v5, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen$c;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Lh2/n;

    invoke-direct {v5, p1}, Lh2/n;-><init>(Landroid/content/Context;)V

    const-string v6, " \u25bc "

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x7f070174

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v6, Lcom/nirenr/talkman/dialog/VirtualScreen$d;

    invoke-direct {v6, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen$d;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v6, Lh2/n;

    invoke-direct {v6, p1}, Lh2/n;-><init>(Landroid/content/Context;)V

    const v7, 0x7f07055b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v7, Lcom/nirenr/talkman/dialog/VirtualScreen$e;

    invoke-direct {v7, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen$e;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Lh2/n;

    invoke-direct {v7, p1}, Lh2/n;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->s:Lh2/n;

    const v8, 0x7f070248

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->s:Lh2/n;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->s:Lh2/n;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->s:Lh2/n;

    new-instance v4, Lcom/nirenr/talkman/dialog/VirtualScreen$f;

    invoke-direct {v4, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen$f;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lh2/m;

    invoke-direct {v3, p1}, Lh2/m;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->c:Lh2/m;

    const v4, 0x7f070465

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->c:Lh2/m;

    new-instance v4, Lcom/nirenr/talkman/dialog/VirtualScreen$g;

    invoke-direct {v4, p0}, Lcom/nirenr/talkman/dialog/VirtualScreen$g;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean v3, Lcom/nirenr/talkman/dialog/VirtualScreen;->u:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->c:Lh2/m;

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    new-instance v3, Lh2/m;

    invoke-direct {v3, p1}, Lh2/m;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->d:Lh2/m;

    const v4, 0x7f0701a5

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->d:Lh2/m;

    new-instance v4, Lcom/nirenr/talkman/dialog/VirtualScreen$h;

    invoke-direct {v4, p0, p1}, Lcom/nirenr/talkman/dialog/VirtualScreen$h;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean p1, Lcom/nirenr/talkman/dialog/VirtualScreen;->v:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->d:Lh2/m;

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getStatusBarWindowHeight()I

    move-result p1

    iput p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->q:I

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getStatusBarHeight()I

    move-result p1

    iput p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->h:I

    iget p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->i:I

    const/4 v0, -0x2

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->c:Lh2/m;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->h:I

    invoke-direct {v3, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->d:Lh2/m;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->h:I

    invoke-direct {v3, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->h:I

    invoke-direct {p1, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->h:I

    invoke-direct {p1, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->h:I

    invoke-direct {p1, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-boolean p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->b:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->i:I

    if-nez p1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->s:Lh2/n;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->h:I

    invoke-direct {v3, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->e:Lh2/n;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->h:I

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->h:I

    const/16 v3, 0x31

    const/4 v4, -0x1

    invoke-direct {p1, v4, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->c:Lh2/m;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->d:Lh2/m;

    invoke-virtual {p1, v0}, Lh2/m;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->d:Lh2/m;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->c:Lh2/m;

    invoke-virtual {p1, v0}, Lh2/m;->setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->d:Lh2/m;

    invoke-virtual {p1, v2}, Lh2/m;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->d:Lh2/m;

    invoke-virtual {v2, p1}, Lh2/n;->setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V

    invoke-virtual {v2, v5}, Lh2/n;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    invoke-virtual {v5, v2}, Lh2/n;->setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V

    invoke-virtual {v5, v6}, Lh2/n;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    invoke-virtual {v6, v5}, Lh2/n;->setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->s:Lh2/n;

    invoke-virtual {v6, p1}, Lh2/n;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->s:Lh2/n;

    invoke-virtual {p1, v6}, Lh2/n;->setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->s:Lh2/n;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->e:Lh2/n;

    invoke-virtual {p1, v0}, Lh2/n;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v0, 0x7f070556

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method

.method private o()V
    .locals 3

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->k:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->l:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->k:Landroid/view/WindowManager$LayoutParams;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f0

    goto :goto_0

    :cond_0
    const/16 v1, 0x7da

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    or-int/lit16 v1, v1, 0x100

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070192

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->m()V

    return-void
.end method

.method public static p()Z
    .locals 1

    sget-object v0, Lcom/nirenr/talkman/dialog/VirtualScreen;->t:Lcom/nirenr/talkman/dialog/VirtualScreen;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private t(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 0

    invoke-virtual {p1}, Lcom/nirenr/talkman/ai/OcrResult;->getItems()[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->r([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)Lcom/nirenr/talkman/dialog/VirtualScreen;

    invoke-virtual {p0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->s()V

    return-void
.end method


# virtual methods
.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->l:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/nirenr/talkman/dialog/VirtualScreen;->t:Lcom/nirenr/talkman/dialog/VirtualScreen;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-boolean v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->l()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->m:Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->c:Lh2/m;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->l()V

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->m:Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;

    invoke-interface {v0, p0, p1}, Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;->onClick(Lcom/nirenr/talkman/dialog/VirtualScreen;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->l()V

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->pauseTouchMode(J)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/dialog/VirtualScreen$j;

    invoke-direct {v1, p0, p1}, Lcom/nirenr/talkman/dialog/VirtualScreen$j;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public onDone(Lcom/nirenr/talkman/ai/OcrResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nirenr/talkman/dialog/VirtualScreen;->t(Lcom/nirenr/talkman/ai/OcrResult;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const v0, 0x7f07038f

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12

    move-object v0, p1

    check-cast v0, Lh2/n;

    invoke-virtual {v0}, Lh2/n;->getPrevious()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object v1

    iput-object v1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->p:Lcom/nirenr/talkman/dialog/LinkedView;

    invoke-virtual {v0}, Lh2/n;->getNext()Lcom/nirenr/talkman/dialog/LinkedView;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->o:Lcom/nirenr/talkman/dialog/LinkedView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->i:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const-string v4, "1*2"

    const-string v5, "2*1"

    const-string v6, "2*2"

    const-string v7, "1*3"

    const-string v8, "3*1"

    const-string v9, "2*3"

    const-string v10, "3*2"

    const-string v11, "3*3"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0705b1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/nirenr/talkman/dialog/VirtualScreen$a;

    invoke-direct {v4, p0, p1, v2, v0}, Lcom/nirenr/talkman/dialog/VirtualScreen$a;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen;Landroid/view/View;[Ljava/lang/String;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    invoke-virtual {v3, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, v0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    iget v2, v0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    iget v4, v0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    add-int/2addr v4, v2

    iget v5, v0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    div-int/2addr v2, v3

    sub-int/2addr v5, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/2addr v4, v2

    new-array v3, v2, [Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    new-instance v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    invoke-direct {v7, v0}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    mul-int v8, v4, v6

    add-int/2addr v8, v5

    iput v8, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iput v4, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->p:Lcom/nirenr/talkman/dialog/LinkedView;

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->n:Lcom/nirenr/talkman/dialog/LinkedView;

    invoke-virtual {p0, v3}, Lcom/nirenr/talkman/dialog/VirtualScreen;->r([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)Lcom/nirenr/talkman/dialog/VirtualScreen;

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->p:Lcom/nirenr/talkman/dialog/LinkedView;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/nirenr/talkman/dialog/LinkedView;->next()V

    :cond_2
    return v1
.end method

.method public q(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ocrScreen(Lcom/nirenr/talkman/ai/OcrResult$OCRListener;)V

    return-void
.end method

.method public r([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)Lcom/nirenr/talkman/dialog/VirtualScreen;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->r:Ljava/lang/StringBuilder;

    array-length v0, p1

    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->a:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x44000000    # 512.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->j:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    array-length v1, p1

    const/high16 v4, 0x7f000000

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_b

    aget-object v7, p1, v6

    iget v8, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->i:I

    if-nez v8, :cond_1

    iget v8, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget v9, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->q:I

    if-ge v8, v9, :cond_1

    goto/16 :goto_6

    :cond_1
    new-instance v8, Lh2/n;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lh2/n;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->n:Lcom/nirenr/talkman/dialog/LinkedView;

    if-eqz v9, :cond_2

    invoke-interface {v9, v8}, Lcom/nirenr/talkman/dialog/LinkedView;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object v9, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->n:Lcom/nirenr/talkman/dialog/LinkedView;

    invoke-virtual {v8, v9}, Lh2/n;->setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V

    :cond_2
    if-nez v5, :cond_3

    move-object v5, v8

    :cond_3
    invoke-virtual {v8, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {v8, v4}, Landroid/view/View;->setId(I)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x16

    if-lt v4, v10, :cond_4

    add-int/lit8 v4, v9, -0x1

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setAccessibilityTraversalBefore(I)V

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setAccessibilityTraversalAfter(I)V

    :cond_4
    iget-object v4, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->r:Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v4, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->i:I

    const/4 v10, 0x2

    if-ne v4, v10, :cond_5

    iget-object v4, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/nirenr/talkman/dialog/VirtualScreen;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Lcom/nirenr/talkman/dialog/VirtualScreen$i;

    invoke-direct {v4, p0, v8, v7}, Lcom/nirenr/talkman/dialog/VirtualScreen$i;-><init>(Lcom/nirenr/talkman/dialog/VirtualScreen;Lh2/n;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    invoke-virtual {v8, v4}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_5
    iget v4, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    const/4 v11, -0x1

    if-nez v4, :cond_7

    iget v4, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    iget-object v12, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v12}, Lcom/androlua/LuaService;->getWidth()I

    move-result v12

    div-int/2addr v12, v10

    if-le v4, v12, :cond_6

    goto :goto_5

    :cond_6
    const/high16 v4, 0x22000000

    :goto_2
    invoke-virtual {v8, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v4, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->a:Z

    if-eqz v4, :cond_8

    const v4, -0x77000001

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    :cond_8
    iget-boolean v4, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->a:Z

    if-eqz v4, :cond_9

    const/4 v4, -0x1

    goto :goto_3

    :cond_9
    const v4, 0xffffff

    :goto_3
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v4, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->a:Z

    if-eqz v4, :cond_a

    const/high16 v4, -0x12000000

    goto :goto_2

    :cond_a
    const/4 v4, 0x0

    goto :goto_2

    :goto_4
    iget v4, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setWidth(I)V

    iget v4, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setHeight(I)V

    iget v4, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setX(F)V

    iget v4, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    int-to-float v4, v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setY(F)V

    iget v4, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    int-to-float v4, v4

    invoke-virtual {v8, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    iget v7, v7, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    invoke-direct {v4, v10, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v8, v11, v4}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iput-object v8, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->n:Lcom/nirenr/talkman/dialog/LinkedView;

    :goto_5
    move v4, v9

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->o:Lcom/nirenr/talkman/dialog/LinkedView;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->n:Lcom/nirenr/talkman/dialog/LinkedView;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Lcom/nirenr/talkman/dialog/LinkedView;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    :cond_c
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->o:Lcom/nirenr/talkman/dialog/LinkedView;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->n:Lcom/nirenr/talkman/dialog/LinkedView;

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/dialog/LinkedView;->setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V

    goto :goto_b

    :cond_d
    if-eqz v5, :cond_12

    iget-boolean p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->b:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->n:Lcom/nirenr/talkman/dialog/LinkedView;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->s:Lh2/n;

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/dialog/LinkedView;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->s:Lh2/n;

    :goto_7
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->n:Lcom/nirenr/talkman/dialog/LinkedView;

    invoke-virtual {p1, v0}, Lh2/n;->setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V

    goto :goto_a

    :cond_e
    iget p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->i:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    if-ne p1, v2, :cond_f

    goto :goto_9

    :cond_f
    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->n:Lcom/nirenr/talkman/dialog/LinkedView;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->c:Lh2/m;

    goto :goto_8

    :cond_10
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->n:Lcom/nirenr/talkman/dialog/LinkedView;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->d:Lh2/m;

    :goto_8
    invoke-interface {p1, v0}, Lcom/nirenr/talkman/dialog/LinkedView;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->c:Lh2/m;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->n:Lcom/nirenr/talkman/dialog/LinkedView;

    invoke-virtual {p1, v0}, Lh2/m;->setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V

    goto :goto_a

    :cond_11
    :goto_9
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->n:Lcom/nirenr/talkman/dialog/LinkedView;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->e:Lh2/n;

    invoke-interface {p1, v0}, Lcom/nirenr/talkman/dialog/LinkedView;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->e:Lh2/n;

    goto :goto_7

    :goto_a
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->e:Lh2/n;

    invoke-virtual {v5, p1}, Lh2/n;->setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->e:Lh2/n;

    invoke-virtual {p1, v5}, Lh2/n;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    :cond_12
    :goto_b
    return-object p0
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->f:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGesture(Z)V

    :try_start_0
    invoke-direct {p0}, Lcom/nirenr/talkman/dialog/VirtualScreen;->o()V

    iget-boolean v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->k:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->l:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sput-object p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->t:Lcom/nirenr/talkman/dialog/VirtualScreen;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->l:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->k:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sput-object p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->t:Lcom/nirenr/talkman/dialog/VirtualScreen;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setVirtualScreenOnClickListener(Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/VirtualScreen;->m:Lcom/nirenr/talkman/dialog/VirtualScreen$VirtualScreenOnClickListener;

    return-void
.end method
