.class Lcom/myopicmobile/textwarrior/android/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/myopicmobile/textwarrior/android/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myopicmobile/textwarrior/android/c;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/myopicmobile/textwarrior/android/c;


# direct methods
.method constructor <init>(Lcom/myopicmobile/textwarrior/android/c;)V
    .locals 0

    iput-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)V
    .locals 0

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->m(Lcom/myopicmobile/textwarrior/android/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p2, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/a;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/a;->j()V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;II)V
    .locals 0

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->m(Lcom/myopicmobile/textwarrior/android/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p2, p2, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p2, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/a;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/a;->j()V

    return-void
.end method

.method public c(Ljava/lang/CharSequence;II)V
    .locals 1

    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-static {p1}, Lcom/myopicmobile/textwarrior/android/c;->m(Lcom/myopicmobile/textwarrior/android/c;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    invoke-virtual {p1, p3}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    invoke-virtual {p2, p1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    iget-object p1, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    iget-boolean p2, p1, Lcom/myopicmobile/textwarrior/android/c;->_isAutoComplete:Z

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget p1, p1, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    :goto_0
    if-ltz p1, :cond_3

    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    iget-object p2, p2, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    add-int/lit8 p3, p1, -0x1

    invoke-virtual {p2, p3}, Ld2/f;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p3

    if-nez p3, :cond_2

    const/16 p3, 0x5f

    if-eq p2, p3, :cond_2

    const/16 p3, 0x2e

    if-eq p2, p3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/myopicmobile/textwarrior/android/c$h;->a:Lcom/myopicmobile/textwarrior/android/c;

    iget p3, p2, Lcom/myopicmobile/textwarrior/android/c;->_caretPosition:I

    sub-int v0, p3, p1

    if-lez v0, :cond_4

    iget-object v0, p2, Lcom/myopicmobile/textwarrior/android/c;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/a;

    iget-object p2, p2, Lcom/myopicmobile/textwarrior/android/c;->_hDoc:Ld2/f;

    sub-int/2addr p3, p1

    invoke-virtual {p2, p1, p3}, Ld2/f;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/myopicmobile/textwarrior/android/a;->u(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    iget-object p1, p2, Lcom/myopicmobile/textwarrior/android/c;->_autoCompletePanel:Lcom/myopicmobile/textwarrior/android/a;

    invoke-virtual {p1}, Lcom/myopicmobile/textwarrior/android/a;->j()V

    :goto_2
    return-void
.end method
