.class public Lh2/u;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static k:Lh2/u;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/widget/FrameLayout;

.field private final c:I

.field private final d:Landroid/widget/TextView;

.field private final e:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private f:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

.field private g:Landroid/view/WindowManager$LayoutParams;

.field private h:Landroid/view/WindowManager;

.field private i:Lh2/n;

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v0, "\u952e\u76d8"

    invoke-virtual {p1, v0}, Lcom/androlua/LuaService;->getLuaExtDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh2/u;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    const/high16 v0, -0x78000000

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u865a\u62df\u952e\u76d8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh2/u;->d:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x33

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x1080038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0700be

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lh2/u;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lh2/u;->c:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x53

    invoke-direct {p1, v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static bridge synthetic a(Lh2/u;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lh2/u;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic b(Lh2/u;Z)V
    .locals 0

    iput-boolean p1, p0, Lh2/u;->j:Z

    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lh2/u;->k:Lh2/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lh2/u;->d()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lh2/u;->h:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lh2/u;->g:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lh2/u;->g:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lh2/u;->h:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lh2/u;->g:Landroid/view/WindowManager$LayoutParams;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f0

    goto :goto_0

    :cond_0
    const/16 v1, 0x7da

    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_1
    invoke-direct {p0}, Lh2/u;->e()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lh2/u;->h:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    sput-object v0, Lh2/u;->k:Lh2/u;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const-string v3, "\u6536\u8d77\u952e\u76d8"

    invoke-virtual {v2, v3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfo(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iget-object v3, v0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "loadCloud"

    invoke-virtual {v3, v5, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v3}, Lcom/androlua/LuaService;->getDisplayHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getWindows()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v11

    if-ne v11, v10, :cond_0

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v8, v11}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget-object v13, v0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v13}, Lcom/androlua/LuaService;->getHeight()I

    move-result v13

    div-int/2addr v13, v9

    if-le v12, v13, :cond_0

    iget-object v2, v0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, v5, v8}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v5, v12}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    iget v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v7, Landroid/graphics/Rect;->bottom:I

    :cond_1
    iget v2, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v8

    const/4 v8, 0x4

    div-int/2addr v2, v8

    iget v11, v7, Landroid/graphics/Rect;->right:I

    div-int/lit8 v18, v11, 0x3

    iget-object v11, v0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v11, v5, v6}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, v0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v6, v5, v7}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v5, v8, [[Ljava/lang/String;

    const-string v6, "2"

    const-string v7, "3"

    const-string v11, "1"

    filled-new-array {v11, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    const-string v6, "5"

    const-string v7, "6"

    const-string v11, "4"

    filled-new-array {v11, v6, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string v6, "8"

    const-string v11, "9"

    const-string v12, "7"

    filled-new-array {v12, v6, v11}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const-string v6, "0"

    const-string v9, "\u5220\u9664"

    filled-new-array {v3, v6, v9}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v10

    const/16 v3, 0xc

    new-array v3, v3, [Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v6, v8, :cond_3

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v10, :cond_2

    new-instance v19, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    aget-object v11, v5, v6

    aget-object v12, v11, v15

    mul-int v13, v18, v15

    mul-int v14, v2, v6

    div-int/lit8 v17, v2, 0x2

    move-object/from16 v11, v19

    move/from16 v20, v15

    move/from16 v15, v18

    move/from16 v16, v2

    invoke-direct/range {v11 .. v17}, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;-><init>(Ljava/lang/String;IIIII)V

    aput-object v19, v3, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v15, v20, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v7, v0, Lh2/u;->j:Z

    invoke-virtual {v0, v3}, Lh2/u;->setOcrItems([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V

    iget-object v2, v0, Lh2/u;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lh2/u;->h()V

    return-void

    :cond_4
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/androlua/LuaApplication;->getUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, v0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const v2, 0x7f070475

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lh2/u$b;

    invoke-direct {v3, v0, v1}, Lh2/u$b;-><init>(Lh2/u;Ljava/lang/String;)V

    const-string v4, "vkey"

    invoke-static {v2, v4, v1, v3}, Lcom/nirenr/talkman/util/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/util/HttpUtil$HttpCallback;)V

    return-void
.end method

.method public h()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lh2/u;->f()V

    iget-object v0, p0, Lh2/u;->h:Landroid/view/WindowManager;

    iget-object v1, p0, Lh2/u;->g:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sput-object p0, Lh2/u;->k:Lh2/u;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z
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
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lh2/u;->d()V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lh2/u$a;

    invoke-direct {v2, p0, v0, v1}, Lh2/u$a;-><init>(Lh2/u;Lcom/nirenr/talkman/ai/OcrResult$OcrItem;[I)V

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {}, Lh2/u;->c()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setOcrItems([Lcom/nirenr/talkman/ai/OcrResult$OcrItem;)V
    .locals 11

    iput-object p1, p0, Lh2/u;->f:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    iget-object p1, p0, Lh2/u;->e:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/androlua/LuaService;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x44870000    # 1080.0f

    div-float/2addr p1, v0

    iget-boolean v0, p0, Lh2/u;->j:Z

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    iget-object v0, p0, Lh2/u;->f:[Lcom/nirenr/talkman/ai/OcrResult$OcrItem;

    array-length v1, v0

    const/high16 v2, 0x7f000000

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v6, v0, v4

    iget v7, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    int-to-float v7, v7

    mul-float v7, v7, p1

    float-to-int v7, v7

    iput v7, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    iget v7, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    int-to-float v7, v7

    mul-float v7, v7, p1

    float-to-int v7, v7

    iput v7, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    iget v7, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    int-to-float v7, v7

    mul-float v7, v7, p1

    float-to-int v7, v7

    iput v7, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    iget v7, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    int-to-float v7, v7

    mul-float v7, v7, p1

    float-to-int v7, v7

    iput v7, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget v7, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    int-to-float v7, v7

    mul-float v7, v7, p1

    float-to-int v7, v7

    iput v7, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    new-instance v7, Lh2/n;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lh2/n;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lh2/u;->i:Lh2/n;

    if-eqz v8, :cond_1

    invoke-virtual {v8, v7}, Lh2/n;->setNext(Lcom/nirenr/talkman/dialog/LinkedView;)V

    iget-object v8, p0, Lh2/u;->i:Lh2/n;

    invoke-virtual {v7, v8}, Lh2/n;->setPrevious(Lcom/nirenr/talkman/dialog/LinkedView;)V

    :cond_1
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v2}, Landroid/view/View;->setId(I)V

    iget-object v2, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->text:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setWidth(I)V

    iget v2, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setHeight(I)V

    iget v2, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->x:I

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/view/View;->setX(F)V

    iget v2, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/view/View;->setY(F)V

    iget v2, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->y:I

    iget v9, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    add-int/2addr v2, v9

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v2, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->size:I

    int-to-float v2, v2

    invoke-virtual {v7, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lh2/u;->b:Landroid/widget/FrameLayout;

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->width:I

    iget v6, v6, Lcom/nirenr/talkman/ai/OcrResult$OcrItem;->height:I

    invoke-direct {v9, v10, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v6, -0x1

    invoke-virtual {v2, v7, v6, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v7, p0, Lh2/u;->i:Lh2/n;

    add-int/lit8 v4, v4, 0x1

    move v2, v8

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lh2/u;->b:Landroid/widget/FrameLayout;

    iget v0, p0, Lh2/u;->c:I

    add-int/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method
