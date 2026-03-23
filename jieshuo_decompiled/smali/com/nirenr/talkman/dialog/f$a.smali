.class Lcom/nirenr/talkman/dialog/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/f;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/f;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/f;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/f;->d(Lcom/nirenr/talkman/dialog/f;)Z

    move-result p1

    const-wide/16 p4, 0x96

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/f;->b(Lcom/nirenr/talkman/dialog/f;)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/f;->b(Lcom/nirenr/talkman/dialog/f;)I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v1, p2}, Lcom/nirenr/talkman/dialog/f;->i(Lcom/nirenr/talkman/dialog/f;Z)V

    move v1, p1

    :goto_0
    if-gt v1, p3, :cond_0

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v2}, Lcom/nirenr/talkman/dialog/f;->g(Lcom/nirenr/talkman/dialog/f;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/f;->e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/f;->e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v1, Lcom/nirenr/talkman/dialog/f$a$a;

    invoke-direct {v1, p0, p1, p3}, Lcom/nirenr/talkman/dialog/f$a$a;-><init>(Lcom/nirenr/talkman/dialog/f$a;II)V

    invoke-virtual {p2, v1, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {p1, p3}, Lcom/nirenr/talkman/dialog/f;->h(Lcom/nirenr/talkman/dialog/f;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {p1, v0}, Lcom/nirenr/talkman/dialog/f;->i(Lcom/nirenr/talkman/dialog/f;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/f;->g(Lcom/nirenr/talkman/dialog/f;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1, p3, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/f;->e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->setTTSEnabled(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/f$a;->a:Lcom/nirenr/talkman/dialog/f;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/f;->e(Lcom/nirenr/talkman/dialog/f;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/dialog/f$a$b;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/dialog/f$a$b;-><init>(Lcom/nirenr/talkman/dialog/f$a;)V

    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return v0
.end method
