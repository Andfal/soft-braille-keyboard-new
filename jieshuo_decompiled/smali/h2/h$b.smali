.class Lh2/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh2/h;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh2/h;


# direct methods
.method constructor <init>(Lh2/h;)V
    .locals 0

    iput-object p1, p0, Lh2/h$b;->a:Lh2/h;

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

    iget-object p1, p0, Lh2/h$b;->a:Lh2/h;

    invoke-static {p1}, Lh2/h;->e(Lh2/h;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lh2/h$b;->a:Lh2/h;

    invoke-static {p1}, Lh2/h;->c(Lh2/h;)I

    move-result p1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p4, p0, Lh2/h$b;->a:Lh2/h;

    invoke-static {p4}, Lh2/h;->c(Lh2/h;)I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    iget-object p4, p0, Lh2/h$b;->a:Lh2/h;

    const/4 p5, 0x0

    invoke-static {p4, p5}, Lh2/h;->k(Lh2/h;Z)V

    :goto_0
    if-gt p1, p3, :cond_1

    iget-object p4, p0, Lh2/h$b;->a:Lh2/h;

    invoke-static {p4}, Lh2/h;->i(Lh2/h;)Landroid/widget/ListView;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lh2/h$b;->a:Lh2/h;

    invoke-static {p1, p3}, Lh2/h;->j(Lh2/h;I)V

    iget-object p1, p0, Lh2/h$b;->a:Lh2/h;

    invoke-static {p1, p2}, Lh2/h;->k(Lh2/h;Z)V

    iget-object p1, p0, Lh2/h$b;->a:Lh2/h;

    invoke-static {p1}, Lh2/h;->i(Lh2/h;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_1
    return p2
.end method
