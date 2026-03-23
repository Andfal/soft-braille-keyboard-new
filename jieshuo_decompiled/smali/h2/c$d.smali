.class Lh2/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/c;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/c;


# direct methods
.method constructor <init>(Lh2/c;)V
    .locals 0

    iput-object p1, p0, Lh2/c$d;->a:Lh2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lh2/c$d;->a:Lh2/c;

    iget p2, p1, Lh2/c;->k:I

    if-nez p2, :cond_0

    invoke-static {p1, p3}, Lh2/c;->k(Lh2/c;I)V

    iget-object p1, p0, Lh2/c$d;->a:Lh2/c;

    invoke-static {p1}, Lh2/c;->f(Lh2/c;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p1, p2}, Lh2/c;->j(Lh2/c;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lh2/c$d;->a:Lh2/c;

    invoke-static {p1}, Lh2/c;->g(Lh2/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lh2/c$d;->a:Lh2/c;

    invoke-static {p4}, Lh2/c;->e(Lh2/c;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ";"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AllNodeDialog"

    invoke-virtual {p1, p3, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->print(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lh2/c$d;->a:Lh2/c;

    invoke-virtual {p1}, Lh2/c;->n()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lh2/c;->g(Lh2/c;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    iget-object p2, p0, Lh2/c$d;->a:Lh2/c;

    invoke-static {p2}, Lh2/c;->c(Lh2/c;)[Ljava/lang/String;

    move-result-object p2

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->splitSpeak(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
