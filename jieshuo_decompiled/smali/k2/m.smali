.class public Lk2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/nirenr/talkman/TalkManAccessibilityService;

.field private b:Lk2/d0;

.field private c:Landroid/os/Handler;

.field private d:I

.field private e:[Landroid/accessibilityservice/GestureDescription$StrokeDescription;

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x96

    iput v0, p0, Lk2/m;->d:I

    iput-object p1, p0, Lk2/m;->c:Landroid/os/Handler;

    return-void
.end method

.method private C([[I)Landroid/graphics/Path;
    .locals 6

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    aget-object v2, p1, v1

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lk2/m;->I(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    aget-object v3, p1, v1

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lk2/m;->J(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v2, 0x1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-object v3, p1, v2

    aget v5, v3, v1

    invoke-direct {p0, v5}, Lk2/m;->I(I)I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lk2/m;->J(I)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private D()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    return-void
.end method

.method private F()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void
.end method

.method private I(I)I
    .locals 1

    iget-object v0, p0, Lk2/m;->b:Lk2/d0;

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lk2/d0;->a(I)I

    move-result p1

    return p1
.end method

.method private J(I)I
    .locals 1

    iget-object v0, p0, Lk2/m;->b:Lk2/d0;

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lk2/d0;->c(I)I

    move-result p1

    return p1
.end method

.method static bridge synthetic a(Lk2/m;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk2/m;->h:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic b(Lk2/m;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lk2/m;->c:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic c(Lk2/m;)I
    .locals 0

    iget p0, p0, Lk2/m;->f:I

    return p0
.end method

.method static bridge synthetic d(Lk2/m;)I
    .locals 0

    iget p0, p0, Lk2/m;->g:I

    return p0
.end method

.method static bridge synthetic e(Lk2/m;)Lcom/nirenr/talkman/TalkManAccessibilityService;
    .locals 0

    iget-object p0, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-object p0
.end method

.method static bridge synthetic f(Lk2/m;)I
    .locals 0

    iget p0, p0, Lk2/m;->i:I

    return p0
.end method

.method static bridge synthetic g(Lk2/m;)[Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .locals 0

    iget-object p0, p0, Lk2/m;->e:[Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    return-object p0
.end method

.method static bridge synthetic h(Lk2/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lk2/m;->h:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic i(Lk2/m;Z)V
    .locals 0

    iput-boolean p1, p0, Lk2/m;->j:Z

    return-void
.end method

.method static bridge synthetic j(Lk2/m;I)V
    .locals 0

    iput p1, p0, Lk2/m;->f:I

    return-void
.end method

.method static bridge synthetic k(Lk2/m;I)V
    .locals 0

    iput p1, p0, Lk2/m;->g:I

    return-void
.end method

.method static bridge synthetic l(Lk2/m;I)V
    .locals 0

    iput p1, p0, Lk2/m;->i:I

    return-void
.end method

.method static bridge synthetic m(Lk2/m;[Landroid/accessibilityservice/GestureDescription$StrokeDescription;)V
    .locals 0

    iput-object p1, p0, Lk2/m;->e:[Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    return-void
.end method

.method static bridge synthetic n(Lk2/m;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lk2/m;->s(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic o(Lk2/m;Landroid/accessibilityservice/GestureDescription;)Z
    .locals 0

    invoke-direct {p0, p1}, Lk2/m;->y(Landroid/accessibilityservice/GestureDescription;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic p(Lk2/m;[[I)Landroid/graphics/Path;
    .locals 0

    invoke-direct {p0, p1}, Lk2/m;->C([[I)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic q(Lk2/m;)V
    .locals 0

    invoke-direct {p0}, Lk2/m;->F()V

    return-void
.end method

.method private s(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-eq v2, v3, :cond_5

    const/16 v3, 0x26

    if-eq v2, v3, :cond_3

    const/16 v3, 0x40

    if-eq v2, v3, :cond_1

    iget-object v1, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfo(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->findAccessibilityNodeInfo(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private y(Landroid/accessibilityservice/GestureDescription;)Z
    .locals 3

    new-instance v0, Lk2/m0;

    invoke-direct {v0}, Lk2/m0;-><init>()V

    const-string v1, "GlobalActionAutomator"

    const-string v2, "dispatchGesture"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lk2/m;->g:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lk2/m;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lk2/m;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Lk2/m;->s(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lk2/m;->e:[Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iput-object p1, p0, Lk2/m;->h:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lk2/m;->g:I

    iget-object p1, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseEdgeGesture()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGesture(Z)V

    iget-object p1, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationMode(Z)Z

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lk2/m0;->a(Ljava/lang/Object;)V

    return v1

    :cond_0
    iget-object v1, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v2, Lk2/m$b;

    invoke-direct {v2, p0, v0}, Lk2/m$b;-><init>(Lk2/m;Lk2/m0;)V

    iget-object v0, p0, Lk2/m;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v0}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    move-result p1

    return p1
.end method

.method private z(Landroid/accessibilityservice/GestureDescription;)Z
    .locals 4

    invoke-direct {p0}, Lk2/m;->D()V

    new-instance v0, Lk2/l0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lk2/l0;-><init>(Ljava/lang/Object;)V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v2, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    new-instance v3, Lk2/m$c;

    invoke-direct {v3, p0, v0}, Lk2/m$c;-><init>(Lk2/m;Lk2/l0;)V

    invoke-virtual {v2, p1, v3, v1}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    invoke-static {}, Landroid/os/Looper;->loop()V

    invoke-virtual {v0}, Lk2/l0;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public A(II)Z
    .locals 8

    iput p1, p0, Lk2/m;->k:I

    iput p2, p0, Lk2/m;->l:I

    const-wide/16 v1, 0x64

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Xiaomi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x2

    mul-long v3, v3, v5

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    add-int/lit16 v0, v0, 0x96

    int-to-long v3, v0

    :goto_0
    const/4 v0, 0x1

    new-array v5, v0, [[I

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput p1, v6, v7

    aput p2, v6, v0

    aput-object v6, v5, v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lk2/m;->w(JJ[[I)Z

    move-result p1

    return p1
.end method

.method public B(II)Z
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk2/m;->j:Z

    iput p1, p0, Lk2/m;->k:I

    iput p2, p0, Lk2/m;->l:I

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput p2, v2, v0

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lk2/m;->C([[I)Landroid/graphics/Path;

    move-result-object p1

    :try_start_0
    new-array p2, v0, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    new-instance v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x32

    move-object v4, v1

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    aput-object v1, p2, v3

    invoke-virtual {p0, p2}, Lk2/m;->x([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Z

    iget-object p2, p0, Lk2/m;->c:Landroid/os/Handler;

    new-instance v1, Lk2/m$f;

    invoke-direct {v1, p0, p1}, Lk2/m$f;-><init>(Lk2/m;Landroid/graphics/Path;)V

    const-wide/16 v4, 0x96

    invoke-virtual {p2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v3
.end method

.method public E(III)Z
    .locals 7

    iput p1, p0, Lk2/m;->k:I

    iput p2, p0, Lk2/m;->l:I

    const-wide/16 v1, 0x0

    int-to-long v3, p3

    const/4 p3, 0x1

    new-array v5, p3, [[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v6, 0x0

    aput p1, v0, v6

    aput p2, v0, p3

    aput-object v0, v5, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lk2/m;->w(JJ[[I)Z

    move-result p1

    return p1
.end method

.method public G(III)Z
    .locals 10

    iput p1, p0, Lk2/m;->k:I

    iput p2, p0, Lk2/m;->l:I

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput p2, v2, v0

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lk2/m;->C([[I)Landroid/graphics/Path;

    move-result-object v5

    :try_start_0
    new-array p1, v0, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    new-instance p2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v6, 0x0

    if-gez p3, :cond_0

    const-wide/16 v1, 0x64

    goto :goto_0

    :cond_0
    int-to-long v1, p3

    :goto_0
    move-wide v8, v1

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    aput-object p2, p1, v3

    invoke-virtual {p0, p1}, Lk2/m;->x([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v3
.end method

.method public H([IIJ)Z
    .locals 11

    const/4 v0, 0x0

    iput v0, p0, Lk2/m;->i:I

    iput v0, p0, Lk2/m;->f:I

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    mul-int/lit8 v3, v1, 0x2

    aget v5, p1, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    add-int/2addr v3, v4

    aget v3, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v6, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    new-instance v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    int-to-long v4, v1

    mul-long v7, p3, v4

    int-to-long v9, p2

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lk2/m;->x([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Z

    return v4
.end method

.method public K(Lk2/d0;)V
    .locals 0

    iput-object p1, p0, Lk2/m;->b:Lk2/d0;

    return-void
.end method

.method public L(Lcom/nirenr/talkman/TalkManAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    return-void
.end method

.method public M(IIIII)Z
    .locals 7

    const-wide/16 v1, 0x64

    int-to-long v3, p5

    const/4 p5, 0x2

    new-array v5, p5, [[I

    new-array v0, p5, [I

    const/4 v6, 0x0

    aput p1, v0, v6

    const/4 p1, 0x1

    aput p2, v0, p1

    aput-object v0, v5, v6

    new-array p2, p5, [I

    aput p3, p2, v6

    aput p4, p2, p1

    aput-object p2, v5, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lk2/m;->w(JJ[[I)Z

    move-result p1

    return p1
.end method

.method public N(IIIIII)Z
    .locals 7

    const/4 v0, 0x1

    sub-int/2addr p6, v0

    iput p6, p0, Lk2/m;->g:I

    const-wide/16 v2, 0x64

    int-to-long v4, p5

    const/4 p5, 0x2

    new-array v6, p5, [[I

    new-array p6, p5, [I

    const/4 v1, 0x0

    aput p1, p6, v1

    aput p2, p6, v0

    aput-object p6, v6, v1

    new-array p1, p5, [I

    aput p3, p1, v1

    aput p4, p1, v0

    aput-object p1, v6, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lk2/m;->w(JJ[[I)Z

    move-result p1

    return p1
.end method

.method public O(IIIIIILjava/lang/String;)Z
    .locals 10

    move-object v0, p0

    move-object/from16 v1, p7

    invoke-direct {p0, v1}, Lk2/m;->s(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iget-object v1, v0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v4}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationMode(Z)Z

    return v3

    :cond_0
    add-int/lit8 v2, p6, -0x1

    iput v2, v0, Lk2/m;->g:I

    iput-object v1, v0, Lk2/m;->h:Ljava/lang/String;

    const-wide/16 v1, 0x64

    move v5, p5

    int-to-long v5, v5

    const/4 v7, 0x2

    new-array v8, v7, [[I

    new-array v9, v7, [I

    aput p1, v9, v3

    aput p2, v9, v4

    aput-object v9, v8, v3

    new-array v7, v7, [I

    aput p3, v7, v3

    aput p4, v7, v4

    aput-object v7, v8, v4

    move-object p1, p0

    move-wide p2, v1

    move-wide p4, v5

    move-object/from16 p6, v8

    invoke-virtual/range {p1 .. p6}, Lk2/m;->w(JJ[[I)Z

    move-result v1

    return v1
.end method

.method public P(IIIII)Z
    .locals 9

    iget-object v0, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGesture(Z)V

    iget-object v0, p0, Lk2/m;->c:Landroid/os/Handler;

    new-instance v8, Lk2/m$e;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lk2/m$e;-><init>(Lk2/m;IIIII)V

    iget-object p1, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseEdgeGesture()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 p1, 0x64

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    invoke-virtual {v0, v8, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1
.end method

.method public r()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lk2/m;->j:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lk2/m;->k:I

    iget v1, p0, Lk2/m;->l:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lk2/m;->G(III)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk2/m;->j:Z

    return-void
.end method

.method public t(II)Z
    .locals 8

    const-wide/16 v1, 0x96

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "Xiaomi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x2

    mul-long v3, v3, v5

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v3, v0

    :goto_0
    const/4 v0, 0x1

    new-array v5, v0, [[I

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput p1, v6, v7

    aput p2, v6, v0

    aput-object v6, v5, v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lk2/m;->w(JJ[[I)Z

    move-result p1

    return p1
.end method

.method public u([I)Z
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lk2/m;->i:I

    iget-object v1, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationMode(Z)Z

    iput v0, p0, Lk2/m;->f:I

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iput-object v1, p0, Lk2/m;->e:[Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    array-length v1, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    mul-int/lit8 v2, v1, 0x2

    aget v4, p1, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    add-int/2addr v2, v3

    aget v2, p1, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5, v4, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v2, p0, Lk2/m;->e:[Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    new-instance v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget v4, p0, Lk2/m;->d:I

    int-to-long v6, v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    int-to-long v8, v4

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lk2/m;->c:Landroid/os/Handler;

    new-instance v0, Lk2/m$d;

    invoke-direct {v0, p0}, Lk2/m$d;-><init>(Lk2/m;)V

    iget v1, p0, Lk2/m;->d:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v3
.end method

.method public v(IIIII)Z
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    const/4 v6, 0x2

    new-array v7, v6, [[I

    new-array v8, v6, [I

    const/4 v9, 0x0

    aput v0, v8, v9

    const/4 v10, 0x1

    aput v2, v8, v10

    aput-object v8, v7, v9

    new-array v8, v6, [I

    aput v3, v8, v9

    aput v4, v8, v10

    aput-object v8, v7, v10

    invoke-direct {v1, v7}, Lk2/m;->C([[I)Landroid/graphics/Path;

    move-result-object v12

    new-array v7, v6, [[I

    new-array v8, v6, [I

    aput v0, v8, v9

    add-int/lit16 v11, v2, 0xc8

    aput v11, v8, v10

    aput-object v8, v7, v9

    new-array v8, v6, [I

    aput v3, v8, v9

    add-int/lit16 v11, v4, 0xc8

    aput v11, v8, v10

    aput-object v8, v7, v10

    invoke-direct {v1, v7}, Lk2/m;->C([[I)Landroid/graphics/Path;

    move-result-object v7

    if-ne v0, v3, :cond_0

    new-array v7, v6, [[I

    new-array v8, v6, [I

    add-int/lit16 v0, v0, 0xc8

    aput v0, v8, v9

    aput v2, v8, v10

    aput-object v8, v7, v9

    new-array v0, v6, [I

    add-int/lit16 v2, v3, 0xc8

    aput v2, v0, v9

    aput v4, v0, v10

    aput-object v0, v7, v10

    invoke-direct {v1, v7}, Lk2/m;->C([[I)Landroid/graphics/Path;

    move-result-object v7

    :cond_0
    :try_start_0
    new-array v0, v6, [Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    new-instance v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v13, 0x0

    if-gez v5, :cond_1

    const-wide/16 v15, 0x64

    goto :goto_0

    :cond_1
    int-to-long v3, v5

    move-wide v15, v3

    :goto_0
    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    aput-object v2, v0, v9

    new-instance v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v15, 0x0

    if-gez v5, :cond_2

    const-wide/16 v17, 0x64

    goto :goto_1

    :cond_2
    int-to-long v3, v5

    move-wide/from16 v17, v3

    :goto_1
    move-object v13, v2

    move-object v14, v7

    invoke-direct/range {v13 .. v18}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    aput-object v2, v0, v10

    invoke-virtual {v1, v0}, Lk2/m;->x([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v10

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v9
.end method

.method public varargs w(JJ[[I)Z
    .locals 4

    invoke-direct {p0, p5}, Lk2/m;->C([[I)Landroid/graphics/Path;

    move-result-object p5

    iget-object v0, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGesture(Z)V

    iget-object v0, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationMode(Z)Z

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lk2/m;->c:Landroid/os/Handler;

    new-instance v3, Lk2/m$a;

    invoke-direct {v3, p0, p5, p3, p4}, Lk2/m$a;-><init>(Lk2/m;Landroid/graphics/Path;J)V

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isUseEdgeGesture()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGesture(Z)V

    iget-object p1, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTouchExplorationMode(Z)Z

    return v1
.end method

.method public varargs x([Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Z
    .locals 5

    iget-object v0, p0, Lk2/m;->a:Lcom/nirenr/talkman/TalkManAccessibilityService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setEdgeGesture(Z)V

    :try_start_0
    new-instance v0, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p1, v3

    invoke-static {v0, v4}, Lk2/k;->a(Landroid/accessibilityservice/GestureDescription$Builder;Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lk2/m;->c:Landroid/os/Handler;

    if-nez p1, :cond_2

    invoke-static {v0}, Lk2/l;->a(Landroid/accessibilityservice/GestureDescription$Builder;)Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    invoke-direct {p0, p1}, Lk2/m;->z(Landroid/accessibilityservice/GestureDescription;)Z

    move-result p1

    return p1

    :cond_2
    invoke-static {v0}, Lk2/l;->a(Landroid/accessibilityservice/GestureDescription$Builder;)Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    invoke-direct {p0, p1}, Lk2/m;->y(Landroid/accessibilityservice/GestureDescription;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method
