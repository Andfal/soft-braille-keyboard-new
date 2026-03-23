.class Lcom/myopicmobile/textwarrior/android/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld2/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myopicmobile/textwarrior/android/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field private final a:Ld2/k;

.field private b:Z

.field private c:Z

.field final synthetic d:Lcom/myopicmobile/textwarrior/android/c;


# direct methods
.method private constructor <init>(Lcom/myopicmobile/textwarrior/android/c;)V
    .locals 0

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ld2/k;

    invoke-direct {p1, p0}, Ld2/k;-><init>(Ld2/k$b;)V

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->a:Ld2/k;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/myopicmobile/textwarrior/android/c;Lcom/myopicmobile/textwarrior/android/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/myopicmobile/textwarrior/android/c$k;-><init>(Lcom/myopicmobile/textwarrior/android/c;)V

    return-void
.end method

.method private A()V
    .locals 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->B()V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v2, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {v1, v2}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Lcom/myopicmobile/textwarrior/android/c;->q(Lcom/myopicmobile/textwarrior/android/c;II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->o(Lcom/myopicmobile/textwarrior/android/c;)V

    :cond_0
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->z()V

    return-void
.end method

.method private C()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nirenr/talkman/TalkManAccessibilityService;->isTatansIme()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c$k;->i(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->ttsSpeak(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private D(II)V
    .locals 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->m(Lcom/myopicmobile/textwarrior/android/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x20000

    :try_start_0
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    sub-int v1, p1, p2

    mul-int v1, v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    :goto_0
    if-le p1, p2, :cond_1

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    goto :goto_1

    :cond_1
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    :goto_1
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1, v0}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->C()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    if-ge p1, v1, :cond_4

    if-le p2, v1, :cond_5

    iput v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    goto :goto_3

    :cond_4
    iget p1, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    if-ge p2, p1, :cond_6

    iput p1, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    :cond_5
    iput p2, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    goto :goto_4

    :cond_6
    :goto_3
    iput p2, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    :goto_4
    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->C()V

    return-void
.end method

.method private d()[C
    .locals 7

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-virtual {v1, v0}, Ld2/f;->g(I)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v1, v0}, Ld2/f;->i(I)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v1, v0}, Ld2/f;->v(I)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v3}, Ld2/f;->o()Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v3}, Ld2/f;->t()C

    move-result v3

    if-eq v3, v4, :cond_0

    const/16 v5, 0x9

    if-ne v3, v5, :cond_2

    :cond_0
    add-int v3, v0, v2

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v5, v5, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    if-lt v3, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v5, v3, Lcom/myopicmobile/textwarrior/android/c;->_autoIndentWidth:I

    iget-object v6, v3, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    sub-int/2addr v3, v0

    invoke-virtual {v6, v0, v3}, Ld2/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ld2/a;->a(Ljava/lang/CharSequence;)I

    move-result v3

    mul-int v5, v5, v3

    add-int/2addr v2, v5

    const/16 v3, 0xa

    if-gez v2, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [C

    aput-char v3, v0, v1

    return-object v0

    :cond_3
    add-int/lit8 v5, v2, 0x1

    new-array v5, v5, [C

    aput-char v3, v5, v1

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v3, v0}, Ld2/f;->v(I)I

    :goto_2
    if-ge v1, v2, :cond_4

    add-int/lit8 v1, v1, 0x1

    aput-char v4, v5, v1

    goto :goto_2

    :cond_4
    return-object v5
.end method


# virtual methods
.method B()V
    .locals 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-virtual {v1, v0}, Ld2/f;->h(I)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v1, v0}, Lcom/myopicmobile/textwarrior/android/c;->n(Lcom/myopicmobile/textwarrior/android/c;I)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/c;->f(Lcom/myopicmobile/textwarrior/android/c;)Ld2/o;

    move-result-object v1

    invoke-interface {v1, v0}, Ld2/o;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld2/n;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    new-instance v1, Lcom/myopicmobile/textwarrior/android/c$k$a;

    invoke-direct {v1, p0, p1}, Lcom/myopicmobile/textwarrior/android/c$k$a;-><init>(Lcom/myopicmobile/textwarrior/android/c$k;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->a:Ld2/k;

    invoke-virtual {v0}, Ld2/k;->b()V

    return-void
.end method

.method public c(Landroid/text/ClipboardManager;)V
    .locals 3

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    iget v2, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    sub-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Ld2/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public e(Landroid/text/ClipboardManager;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/myopicmobile/textwarrior/android/c$k;->c(Landroid/text/ClipboardManager;)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->w()V

    return-void
.end method

.method f(II)V
    .locals 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    sub-int p1, v1, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    add-int/2addr v1, p2

    iget-object p2, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p2}, Ld2/f;->e()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-le v1, p2, :cond_1

    move v1, p2

    :cond_1
    sub-int/2addr v1, p1

    const-string p2, ""

    invoke-virtual {p0, p1, v1, p2}, Lcom/myopicmobile/textwarrior/android/c$k;->u(IILjava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->a(Lcom/myopicmobile/textwarrior/android/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->a:Ld2/k;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0, v1}, Ld2/k;->h(Ld2/f;)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    iget v2, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    if-eq v1, v2, :cond_0

    iput v2, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    :goto_0
    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->A()V

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v0, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    iget v1, p1, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    if-eq v0, v1, :cond_1

    iput v1, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method i(I)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0}, Ld2/f;->e()I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v2, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    add-int v3, v2, p1

    add-int/lit8 v4, v0, -0x1

    if-le v3, v4, :cond_0

    iget-object p1, v1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v0}, Ld2/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, v1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0, v2, p1}, Ld2/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method

.method j(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    sub-int p1, v1, p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    sub-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Ld2/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(I)Z
    .locals 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    if-gt v1, p1, :cond_1

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    if-ge p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->c:Z

    return v0
.end method

.method public n(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0}, Ld2/f;->e()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-direct {p0, v0, p1}, Lcom/myopicmobile/textwarrior/android/c$k;->D(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iput p1, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->A()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Invalid caret position"

    invoke-static {p1}, Ld2/r;->b(Ljava/lang/String;)V

    return-void
.end method

.method public o()V
    .locals 7

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->caretOnLastRowOfFile()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v3, v1}, Lcom/myopicmobile/textwarrior/android/c;->getColumn(I)I

    move-result v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v4, v0}, Ld2/f;->m(I)I

    move-result v4

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v5, v5, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v5, v2}, Ld2/f;->m(I)I

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v6, v5, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    sub-int/2addr v4, v3

    add-int/2addr v6, v4

    iput v6, v5, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {v5}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5, v3}, Lcom/myopicmobile/textwarrior/android/c;->n(Lcom/myopicmobile/textwarrior/android/c;I)V

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-direct {p0, v1, v3}, Lcom/myopicmobile/textwarrior/android/c$k;->D(II)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v3, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {v1, v3}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v0, v3}, Lcom/myopicmobile/textwarrior/android/c;->q(Lcom/myopicmobile/textwarrior/android/c;II)V

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->f(Lcom/myopicmobile/textwarrior/android/c;)Ld2/o;

    move-result-object v0

    invoke-interface {v0, v2}, Ld2/o;->a(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->z()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0}, Ld2/f;->length()I

    move-result v0

    if-ne v1, v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v2, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v2}, Ld2/f;->length()I

    move-result v2

    iput v2, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-direct {p0, v1, v0}, Lcom/myopicmobile/textwarrior/android/c$k;->D(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v2, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {v1, v2}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Lcom/myopicmobile/textwarrior/android/c;->q(Lcom/myopicmobile/textwarrior/android/c;II)V

    :cond_3
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/c;->f(Lcom/myopicmobile/textwarrior/android/c;)Ld2/o;

    move-result-object v1

    invoke-interface {v1, v0}, Ld2/o;->a(I)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public p(Z)V
    .locals 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    if-lez v1, :cond_1

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v2, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->B()V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2, v1}, Lcom/myopicmobile/textwarrior/android/c$k;->D(II)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v2, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {v1, v2}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/myopicmobile/textwarrior/android/c;->q(Lcom/myopicmobile/textwarrior/android/c;II)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->z()V

    :cond_1
    return-void
.end method

.method public q(Z)V
    .locals 3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->caretOnEOF()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v2, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->B()V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2, v1}, Lcom/myopicmobile/textwarrior/android/c$k;->D(II)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v2, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {v1, v2}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/myopicmobile/textwarrior/android/c;->q(Lcom/myopicmobile/textwarrior/android/c;II)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->z()V

    :cond_1
    return-void
.end method

.method public r()V
    .locals 7

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c;->caretOnFirstRowOfFile()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v3, v1}, Lcom/myopicmobile/textwarrior/android/c;->getColumn(I)I

    move-result v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v4, v2}, Ld2/f;->m(I)I

    move-result v4

    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v6, v5, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    add-int/2addr v3, v4

    sub-int/2addr v6, v3

    iput v6, v5, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {v5}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v5, v3}, Lcom/myopicmobile/textwarrior/android/c;->n(Lcom/myopicmobile/textwarrior/android/c;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v4, v2, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    sub-int/2addr v4, v3

    iput v4, v2, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-direct {p0, v1, v3}, Lcom/myopicmobile/textwarrior/android/c$k;->D(II)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v3, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {v1, v3}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v2, v0}, Lcom/myopicmobile/textwarrior/android/c;->q(Lcom/myopicmobile/textwarrior/android/c;II)V

    :cond_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->f(Lcom/myopicmobile/textwarrior/android/c;)Ld2/o;

    move-result-object v0

    invoke-interface {v0, v2}, Ld2/o;->a(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v2, 0x0

    iput v2, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-direct {p0, v1, v2}, Lcom/myopicmobile/textwarrior/android/c$k;->D(II)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v2, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {v1, v2}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Lcom/myopicmobile/textwarrior/android/c;->q(Lcom/myopicmobile/textwarrior/android/c;II)V

    :cond_4
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/c;->f(Lcom/myopicmobile/textwarrior/android/c;)Ld2/o;

    move-result-object v1

    invoke-interface {v1, v0}, Ld2/o;->a(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->z()V

    return-void
.end method

.method public s(C)V
    .locals 9

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->w()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v2}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v2

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v3, v2}, Ld2/f;->l(I)I

    move-result v3

    const/16 v4, 0x8

    const-string v5, ""

    if-eq p1, v4, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v4, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, p1, v0, v6, v7}, Ld2/f;->p(CIJ)V

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c$k;->q(Z)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->l(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/h;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-interface {v0, p1, v4, v1}, Lcom/myopicmobile/textwarrior/android/h;->c(Ljava/lang/CharSequence;II)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1}, Ld2/f;->s()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1, v2}, Ld2/f;->l(I)I

    move-result p1

    if-eq v3, p1, :cond_1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1, v2}, Lcom/myopicmobile/textwarrior/android/c;->p(Lcom/myopicmobile/textwarrior/android/c;I)V

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-boolean v4, v0, Lcom/myopicmobile/textwarrior/android/c;->_isAutoIndent:Z

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->d()[C

    move-result-object v0

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v6, v4, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {v6, v0, v4, v7, v8}, Ld2/f;->q([CIJ)V

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    array-length v0, v0

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Lcom/myopicmobile/textwarrior/android/c$k;->n(I)V

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, p1, v0, v6, v7}, Ld2/f;->p(CIJ)V

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c$k;->q(Z)V

    :goto_3
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0}, Ld2/f;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0, v2}, Ld2/f;->l(I)I

    move-result v0

    if-eq v3, v0, :cond_4

    add-int/lit8 v2, v2, -0x1

    :cond_4
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->l(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/h;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v3, v3, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-interface {v0, p1, v3, v1}, Lcom/myopicmobile/textwarrior/android/h;->a(Ljava/lang/String;II)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v4, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    if-lez v4, :cond_a

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->l(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/h;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    sub-int/2addr v4, v1

    invoke-interface {v0, p1, v4, v1}, Lcom/myopicmobile/textwarrior/android/h;->b(Ljava/lang/CharSequence;II)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    sub-int/2addr p1, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Ld2/f;->d(IJ)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p1}, Ld2/f;->charAt(I)C

    move-result p1

    const v0, 0xd83d

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    add-int/lit8 p1, p1, -0x2

    invoke-virtual {v0, p1}, Ld2/f;->charAt(I)C

    move-result p1

    const v0, 0xd83c

    if-ne p1, v0, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    add-int/lit8 p1, p1, -0x2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0, p1, v4, v5}, Ld2/f;->d(IJ)V

    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c$k;->p(Z)V

    :cond_8
    invoke-virtual {p0, v1}, Lcom/myopicmobile/textwarrior/android/c$k;->p(Z)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result p1

    if-ge p1, v2, :cond_9

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/myopicmobile/textwarrior/android/c;->p(Lcom/myopicmobile/textwarrior/android/c;I)V

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1}, Ld2/f;->s()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1, v2}, Ld2/f;->l(I)I

    move-result p1

    if-eq v3, p1, :cond_1

    goto/16 :goto_1

    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1, v1}, Lcom/myopicmobile/textwarrior/android/c;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->g()V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0}, Ld2/f;->b()V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->w()V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v1, v0}, Ld2/f;->l(I)I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Ld2/f;->q([CIJ)V

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v2}, Ld2/f;->f()V

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v3, v2, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v3, p1

    iput v3, v2, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->B()V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/myopicmobile/textwarrior/android/c;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->g()V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->z()V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v2, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {p1, v2}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1}, Ld2/f;->s()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1, v0}, Ld2/f;->l(I)I

    move-result p1

    if-eq v1, p1, :cond_1

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0}, Ld2/f;->s()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, p1, v1}, Lcom/myopicmobile/textwarrior/android/c;->q(Lcom/myopicmobile/textwarrior/android/c;II)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0, p1}, Lcom/myopicmobile/textwarrior/android/c;->p(Lcom/myopicmobile/textwarrior/android/c;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method u(IILjava/lang/String;)V
    .locals 9

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    invoke-virtual {v3, v0}, Ld2/f;->h(I)I

    move-result v0

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v3, v0}, Ld2/f;->l(I)I

    move-result v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v5, v4, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    iget v6, v4, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    sub-int/2addr v5, v6

    if-lez v5, :cond_1

    iput v6, v4, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {v4, v6, v5, v7, v8}, Ld2/f;->c(IIJ)V

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v4}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v4

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/c$k;->x(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v0

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v4, v3, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-static {v3}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v3

    invoke-virtual {v4, v3}, Ld2/f;->l(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_2
    if-lez p2, :cond_5

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v5, v5, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v5, p1}, Ld2/f;->h(I)I

    move-result v5

    if-ge v5, v0, :cond_3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0, v5}, Ld2/f;->l(I)I

    move-result v3

    move v0, v5

    :cond_3
    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v5}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v5

    if-eq v0, v5, :cond_4

    const/4 v4, 0x0

    :cond_4
    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iput p1, v5, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    iget-object v5, v5, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v5, p1, p2, v6, v7}, Ld2/f;->c(IIJ)V

    const/4 v5, 0x1

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v5, v5, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v5, p1}, Ld2/f;->h(I)I

    move-result p1

    if-ge p1, v0, :cond_6

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0, p1}, Ld2/f;->l(I)I

    move-result v3

    move v0, p1

    :cond_6
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v6, v6, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {p1, v5, v6, v7, v8}, Ld2/f;->q([CIJ)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v5, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    const/4 v5, 0x1

    :cond_7
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->l(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/h;

    move-result-object p1

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v6, v6, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, p2

    invoke-interface {p1, p3, v6, v7}, Lcom/myopicmobile/textwarrior/android/h;->c(Ljava/lang/CharSequence;II)V

    if-eqz v5, :cond_8

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1, v1}, Lcom/myopicmobile/textwarrior/android/c;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->g()V

    :cond_8
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result p1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->B()V

    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p2}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result p2

    if-eq p1, p2, :cond_9

    goto :goto_3

    :cond_9
    move v2, v4

    :goto_3
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget p2, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {p1, p2}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1}, Ld2/f;->s()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1, v0}, Ld2/f;->l(I)I

    move-result p1

    if-eq v3, p1, :cond_a

    add-int/lit8 v0, v0, -0x1

    :cond_a
    if-eqz v2, :cond_b

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1}, Ld2/f;->s()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result p2

    iget-object p3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p3}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result p3

    add-int/2addr p3, v1

    invoke-static {p1, p2, p3}, Lcom/myopicmobile/textwarrior/android/c;->q(Lcom/myopicmobile/textwarrior/android/c;II)V

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1, v0}, Lcom/myopicmobile/textwarrior/android/c;->p(Lcom/myopicmobile/textwarrior/android/c;I)V

    :cond_c
    :goto_4
    return-void
.end method

.method v(IILjava/lang/String;)V
    .locals 9

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v3, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    invoke-virtual {v3, v0}, Ld2/f;->h(I)I

    move-result v0

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v3, v3, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v3, v0}, Ld2/f;->l(I)I

    move-result v3

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v5, v4, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    iget v6, v4, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    sub-int/2addr v5, v6

    if-lez v5, :cond_1

    iput v6, v4, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    iget-object v4, v4, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    invoke-virtual {v4, v6, v5, v7, v8}, Ld2/f;->c(IIJ)V

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v4}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v4

    if-eq v0, v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/myopicmobile/textwarrior/android/c$k;->x(Z)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v0

    iget-object v3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v4, v3, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-static {v3}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v3

    invoke-virtual {v4, v3}, Ld2/f;->l(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_2
    if-lez p2, :cond_5

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v5, v5, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v5, p1}, Ld2/f;->h(I)I

    move-result v5

    if-ge v5, v0, :cond_3

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0, v5}, Ld2/f;->l(I)I

    move-result v3

    move v0, v5

    :cond_3
    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v5}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result v5

    if-eq v0, v5, :cond_4

    const/4 v4, 0x0

    :cond_4
    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iput p1, v5, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    iget-object v5, v5, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v5, p1, p2, v6, v7}, Ld2/f;->c(IIJ)V

    const/4 v5, 0x1

    :cond_5
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_7

    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p2, p2, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p2, p1}, Ld2/f;->h(I)I

    move-result p1

    if-ge p1, v0, :cond_6

    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p2, p2, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p2, p1}, Ld2/f;->l(I)I

    move-result v3

    move v0, p1

    :cond_6
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    iget-object v5, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v5, v5, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {p1, p2, v5, v6, v7}, Ld2/f;->q([CIJ)V

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget p2, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    const/4 v5, 0x1

    :cond_7
    if-eqz v5, :cond_8

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p1, v1}, Lcom/myopicmobile/textwarrior/android/c;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->g()V

    :cond_8
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result p1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->B()V

    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p2}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result p2

    if-eq p1, p2, :cond_9

    goto :goto_3

    :cond_9
    move v2, v4

    :goto_3
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget p2, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {p1, p2}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1}, Ld2/f;->s()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1, v0}, Ld2/f;->l(I)I

    move-result p1

    if-eq v3, p1, :cond_a

    add-int/lit8 v0, v0, -0x1

    :cond_a
    if-eqz v2, :cond_b

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1}, Ld2/f;->s()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result p2

    iget-object p3, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p3}, Lcom/myopicmobile/textwarrior/android/c;->b(Lcom/myopicmobile/textwarrior/android/c;)I

    move-result p3

    add-int/2addr p3, v1

    invoke-static {p1, p2, p3}, Lcom/myopicmobile/textwarrior/android/c;->q(Lcom/myopicmobile/textwarrior/android/c;II)V

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1, v0}, Lcom/myopicmobile/textwarrior/android/c;->p(Lcom/myopicmobile/textwarrior/android/c;I)V

    :cond_c
    :goto_4
    return-void
.end method

.method public w()V
    .locals 10

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    iget v2, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-lez v1, :cond_4

    iget-object v0, v0, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v0, v2}, Ld2/f;->h(I)I

    move-result v0

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v2, v2, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v2, v0}, Ld2/f;->l(I)I

    move-result v2

    iget-object v4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v5, v4, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget v4, v4, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    invoke-virtual {v5, v4}, Ld2/f;->h(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v6}, Lcom/myopicmobile/textwarrior/android/c;->l(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/h;

    move-result-object v6

    iget-object v7, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v7, v7, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    const-string v8, ""

    invoke-interface {v6, v8, v7, v1}, Lcom/myopicmobile/textwarrior/android/h;->b(Ljava/lang/CharSequence;II)V

    iget-object v6, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v7, v6, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    iget v6, v6, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-virtual {v7, v6, v1, v8, v9}, Ld2/f;->c(IIJ)V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v6, v1, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    iput v6, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->B()V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1, v5}, Lcom/myopicmobile/textwarrior/android/c;->setEdited(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->g()V

    invoke-virtual {p0, v3}, Lcom/myopicmobile/textwarrior/android/c$k;->x(Z)V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->z()V

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v3, v1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-static {v1, v3}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v1}, Ld2/f;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v1, v0}, Ld2/f;->l(I)I

    move-result v1

    if-eq v2, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v1}, Ld2/f;->s()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Lcom/myopicmobile/textwarrior/android/c;->q(Lcom/myopicmobile/textwarrior/android/c;II)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v1, v0}, Lcom/myopicmobile/textwarrior/android/c;->p(Lcom/myopicmobile/textwarrior/android/c;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v3}, Lcom/myopicmobile/textwarrior/android/c$k;->x(Z)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->o(Lcom/myopicmobile/textwarrior/android/c;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public x(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    xor-int/2addr v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    if-eqz p1, :cond_1

    iget v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    iput v1, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    iput-boolean p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->c:Z

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->k(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/g;

    move-result-object v0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v1}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v2}, Lcom/myopicmobile/textwarrior/android/c;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/myopicmobile/textwarrior/android/g;->onSelectionChanged(ZII)V

    return-void
.end method

.method public y(IIZZ)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget-object v1, v1, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {v1}, Ld2/f;->e()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p2, v1, :cond_0

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Invalid range to select"

    invoke-static {v1, v2}, Ld2/r;->a(ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->r(Lcom/myopicmobile/textwarrior/android/c;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v1}, Lcom/myopicmobile/textwarrior/android/c;->o(Lcom/myopicmobile/textwarrior/android/c;)V

    if-eqz p4, :cond_2

    invoke-virtual {p0, v0}, Lcom/myopicmobile/textwarrior/android/c$k;->x(Z)V

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->b:Z

    :goto_1
    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iput p1, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    add-int/2addr p1, p2

    iput p1, v0, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    iput p1, v0, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->z()V

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->B()V

    if-eqz p4, :cond_3

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->k(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/g;

    move-result-object p1

    invoke-virtual {p0}, Lcom/myopicmobile/textwarrior/android/c$k;->l()Z

    move-result p2

    iget-object p4, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget v0, p4, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    iget p4, p4, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    invoke-interface {p1, p2, v0, p4}, Lcom/myopicmobile/textwarrior/android/g;->onSelectionChanged(ZII)V

    :cond_3
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget p2, p1, Lcom/myopicmobile/textwarrior/android/c;->_selectionEdge:I

    invoke-static {p1, p2}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result p1

    if-eqz p3, :cond_4

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    iget p2, p1, Lcom/myopicmobile/textwarrior/android/c;->_selectionAnchor:I

    invoke-static {p1, p2}, Lcom/myopicmobile/textwarrior/android/c;->s(Lcom/myopicmobile/textwarrior/android/c;I)Z

    move-result p1

    :cond_4
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->r(Lcom/myopicmobile/textwarrior/android/c;)V

    :cond_5
    return-void
.end method

.method public z()V
    .locals 2

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->e(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/c$l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->e(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/c$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c$l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myopicmobile/textwarrior/android/c$k;->d:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {v0}, Lcom/myopicmobile/textwarrior/android/c;->e(Lcom/myopicmobile/textwarrior/android/c;)Lcom/myopicmobile/textwarrior/android/c$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/myopicmobile/textwarrior/android/c$l;->b()V

    :cond_0
    return-void
.end method
