.class public Lh2/j;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh2/j$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/view/WindowManager;

.field private final b:Landroid/view/WindowManager$LayoutParams;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lh2/j;->a:Landroid/view/WindowManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f0

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lh2/j;->b:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lh2/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x14

    invoke-static {p1, v1}, Lh2/j;->d(Landroid/content/Context;I)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lh2/j;->b:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method static bridge synthetic a(Lh2/j;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lh2/j;->b:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static bridge synthetic b(Lh2/j;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lh2/j;->a:Landroid/view/WindowManager;

    return-object p0
.end method

.method private static d(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private e(Landroid/content/Context;)V
    .locals 13

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f07035d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {p1}, Lk2/b0;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v5, 0x7f07028a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v1, "\\|"

    invoke-virtual {v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    array-length v5, v1

    if-nez v5, :cond_1

    new-array v1, v0, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    :cond_1
    const/16 v2, 0x10

    invoke-static {p1, v2}, Lh2/j;->d(Landroid/content/Context;I)I

    move-result v2

    new-instance v5, Lh2/j$b;

    invoke-direct {v5, p0, p1}, Lh2/j$b;-><init>(Lh2/j;Landroid/content/Context;)V

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v8, "X"

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f070296

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v8, 0x8

    invoke-virtual {v5, v8, v4, v8, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v8, 0x14

    invoke-static {p1, v8}, Lh2/j;->d(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setWidth(I)V

    invoke-static {p1, v8}, Lh2/j;->d(Landroid/content/Context;I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setHeight(I)V

    int-to-float v2, v2

    invoke-virtual {v5, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    new-instance v8, Lh2/j$a;

    invoke-direct {v8, p0, v7, v5}, Lh2/j$a;-><init>(Lh2/j;Landroid/widget/LinearLayout;Lh2/j$b;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/HorizontalScrollView;

    invoke-direct {v5, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    array-length v8, v1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_3

    aget-object v10, v1, v9

    new-instance v11, Landroid/widget/TextView;

    invoke-direct {v11, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v11, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v11, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v12, "/"

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_2

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_2
    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x4

    invoke-virtual {v11, v10, v4, v10, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v11, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v7}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    const v1, -0x77777778

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lh2/j;->b:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x31

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v0, 0x7f07028c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v2, 0x7f07028d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/androlua/LuaService;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androlua/LuaService;->getHeight()I

    move-result v2

    if-lez v0, :cond_4

    if-lez p1, :cond_4

    if-ge v0, v1, :cond_4

    if-ge p1, v2, :cond_4

    iget-object v1, p0, Lh2/j;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_4
    return-void
.end method

.method public static getDeviceBrand()I
    .locals 4

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "device brand"

    if-eqz v2, :cond_0

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    :cond_0
    const-string v1, "OPPO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v1, "VIVO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getNotchSizeAtOppo()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method


# virtual methods
.method public c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lh2/j;->a:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh2/j;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lh2/j;->c()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lh2/j;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lh2/j;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lh2/j;->b:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh2/j;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getFocusView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->execute(Ljava/lang/String;Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    :cond_0
    return-void
.end method
