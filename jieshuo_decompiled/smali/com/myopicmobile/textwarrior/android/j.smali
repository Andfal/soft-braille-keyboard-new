.class public Lcom/myopicmobile/textwarrior/android/j;
.super Lcom/myopicmobile/textwarrior/android/i;
.source "SourceFile"


# static fields
.field private static o:I = 0x10


# instance fields
.field private l:I

.field private m:F

.field private n:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/myopicmobile/textwarrior/android/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;-><init>(Lcom/myopicmobile/textwarrior/android/c;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/j;->m:F

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/j;->n:F

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->rowHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sput p1, Lcom/myopicmobile/textwarrior/android/j;->o:I

    return-void
.end method

.method private s(FF)V
    .locals 6

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/j;->m:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    cmpl-float v2, p1, v1

    if-gtz v2, :cond_1

    :cond_0
    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    :cond_1
    iput v1, p0, Lcom/myopicmobile/textwarrior/android/j;->m:F

    :cond_2
    iget v0, p0, Lcom/myopicmobile/textwarrior/android/j;->n:F

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    cmpl-float v2, p2, v1

    if-gtz v2, :cond_4

    :cond_3
    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    cmpg-float v0, p2, v1

    if-gez v0, :cond_5

    :cond_4
    iput v1, p0, Lcom/myopicmobile/textwarrior/android/j;->n:F

    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_8

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    const/16 v5, 0x61

    invoke-virtual {v4, v5}, Lcom/myopicmobile/textwarrior/android/c;->getAdvance(C)I

    move-result v4

    sput v4, Lcom/myopicmobile/textwarrior/android/j;->o:I

    iget v5, p0, Lcom/myopicmobile/textwarrior/android/j;->m:F

    add-float/2addr v5, p1

    float-to-int p1, v5

    div-int/2addr p1, v4

    mul-int v4, v4, p1

    int-to-float v4, v4

    sub-float/2addr v5, v4

    iput v5, p0, Lcom/myopicmobile/textwarrior/android/j;->m:F

    :cond_6
    :goto_0
    const/4 v4, 0x1

    if-lez p1, :cond_7

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v5}, Lcom/myopicmobile/textwarrior/android/c;->moveCaretRight()V

    add-int/lit8 p1, p1, -0x1

    iget v5, p0, Lcom/myopicmobile/textwarrior/android/j;->l:I

    if-nez v5, :cond_6

    iput v4, p0, Lcom/myopicmobile/textwarrior/android/j;->l:I

    goto :goto_0

    :cond_7
    :goto_1
    if-gez p1, :cond_8

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v5}, Lcom/myopicmobile/textwarrior/android/c;->moveCaretLeft()V

    add-int/lit8 p1, p1, 0x1

    iget v5, p0, Lcom/myopicmobile/textwarrior/android/j;->l:I

    if-nez v5, :cond_7

    iput v4, p0, Lcom/myopicmobile/textwarrior/android/j;->l:I

    goto :goto_1

    :cond_8
    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v4, v0

    cmpl-double p1, v4, v2

    if-ltz p1, :cond_c

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->rowHeight()I

    move-result p1

    sput p1, Lcom/myopicmobile/textwarrior/android/j;->o:I

    iget v0, p0, Lcom/myopicmobile/textwarrior/android/j;->n:F

    add-float/2addr v0, p2

    float-to-int p2, v0

    div-int/2addr p2, p1

    mul-int p1, p1, p2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/j;->n:F

    move p1, p2

    :goto_2
    const/4 v0, -0x1

    if-lez p1, :cond_a

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->moveCaretDown()V

    iget v1, p0, Lcom/myopicmobile/textwarrior/android/j;->l:I

    if-nez v1, :cond_9

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/j;->l:I

    :cond_9
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_a
    :goto_3
    if-gez p2, :cond_c

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->moveCaretUp()V

    iget p1, p0, Lcom/myopicmobile/textwarrior/android/j;->l:I

    if-nez p1, :cond_b

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/j;->l:I

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_c
    return-void
.end method


# virtual methods
.method public n(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/j;->m:F

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/j;->n:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/myopicmobile/textwarrior/android/j;->l:I

    invoke-super {p0, p1}, Lcom/myopicmobile/textwarrior/android/i;->n(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/j;->onLongPress(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lcom/myopicmobile/textwarrior/android/j;->l:I

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->rowHeight()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    sput p1, Lcom/myopicmobile/textwarrior/android/j;->o:I

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/j;->n(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 5

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->isSelectText()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->isSelectText()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/myopicmobile/textwarrior/android/c;->selectText(Z)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/c;->getCaretPosition()I

    move-result v0

    invoke-virtual {p1, v0, v1}, Lcom/myopicmobile/textwarrior/android/c;->setSelectionRange(II)V

    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f07042f

    invoke-virtual {p1, v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/i;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const v4, 0x1040001

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const v1, 0x1040003

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    const v0, 0x104000b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const v0, 0x104000d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v3, v1

    const v0, 0x7f070095

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, v3, v0

    new-instance p1, Lcom/myopicmobile/textwarrior/android/j$a;

    invoke-direct {p1, p0}, Lcom/myopicmobile/textwarrior/android/j$a;-><init>(Lcom/myopicmobile/textwarrior/android/j;)V

    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-static {p1}, Lh2/i;->b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_1
    :goto_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    neg-float p1, p3

    neg-float p3, p4

    invoke-direct {p0, p1, p3}, Lcom/myopicmobile/textwarrior/android/j;->s(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/myopicmobile/textwarrior/android/j;->n(Landroid/view/MotionEvent;)Z

    :cond_1
    return p3
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
