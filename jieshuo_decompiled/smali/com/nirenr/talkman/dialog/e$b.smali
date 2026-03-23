.class Lcom/nirenr/talkman/dialog/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/e;->m(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/e;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/e$b;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e$b;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/e;->d(Lcom/nirenr/talkman/dialog/e;)I

    move-result p1

    const/4 p2, 0x1

    if-ge p3, p1, :cond_0

    return p2

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e$b;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/e;->d(Lcom/nirenr/talkman/dialog/e;)I

    move-result p1

    sub-int p1, p3, p1

    if-ltz p1, :cond_2

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e$b;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/e;->d(Lcom/nirenr/talkman/dialog/e;)I

    move-result p1

    sub-int p1, p3, p1

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/e$b;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {p4}, Lcom/nirenr/talkman/dialog/e;->h(Lcom/nirenr/talkman/dialog/e;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lt p1, p4, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e$b;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/e$b;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {p4}, Lcom/nirenr/talkman/dialog/e;->h(Lcom/nirenr/talkman/dialog/e;)Ljava/util/ArrayList;

    move-result-object p4

    iget-object p5, p0, Lcom/nirenr/talkman/dialog/e$b;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {p5}, Lcom/nirenr/talkman/dialog/e;->d(Lcom/nirenr/talkman/dialog/e;)I

    move-result p5

    sub-int/2addr p3, p5

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/e$b;->a:Lcom/nirenr/talkman/dialog/e;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/e;->f(Lcom/nirenr/talkman/dialog/e;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const p3, 0x7f070374

    invoke-virtual {p1, p3}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    :cond_2
    :goto_0
    return p2
.end method
