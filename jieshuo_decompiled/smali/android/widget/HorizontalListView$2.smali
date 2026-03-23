.class Landroid/widget/HorizontalListView$2;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/HorizontalListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/HorizontalListView;->f(Landroid/widget/HorizontalListView;Z)V

    iget-object v0, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/HorizontalListView;->g(Landroid/widget/HorizontalListView;Z)V

    iget-object v0, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {v0}, Landroid/widget/HorizontalListView;->l(Landroid/widget/HorizontalListView;)V

    iget-object v0, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    iget-object v0, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/HorizontalListView;->g(Landroid/widget/HorizontalListView;Z)V

    iget-object v0, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {v0}, Landroid/widget/HorizontalListView;->l(Landroid/widget/HorizontalListView;)V

    iget-object v0, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    invoke-static {v0}, Landroid/widget/HorizontalListView;->j(Landroid/widget/HorizontalListView;)V

    iget-object v0, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Landroid/widget/HorizontalListView$2;->this$0:Landroid/widget/HorizontalListView;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
