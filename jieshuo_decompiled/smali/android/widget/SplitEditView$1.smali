.class Landroid/widget/SplitEditView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SplitEditView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SplitEditView;


# direct methods
.method constructor <init>(Landroid/widget/SplitEditView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SplitEditView$1;->this$0:Landroid/widget/SplitEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    iget-object p1, p0, Landroid/widget/SplitEditView$1;->this$0:Landroid/widget/SplitEditView;

    invoke-static {p1}, Landroid/widget/SplitEditView;->e(Landroid/widget/SplitEditView;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/widget/SplitEditView;->f(Landroid/widget/SplitEditView;Z)V

    iget-object p1, p0, Landroid/widget/SplitEditView$1;->this$0:Landroid/widget/SplitEditView;

    invoke-static {p1}, Landroid/widget/SplitEditView;->c(Landroid/widget/SplitEditView;)Landroid/widget/GridView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/SplitEditView$SingleLineAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-object p1, p0, Landroid/widget/SplitEditView$1;->this$0:Landroid/widget/SplitEditView;

    invoke-static {p1}, Landroid/widget/SplitEditView;->a(Landroid/widget/SplitEditView;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Landroid/widget/SplitEditView$1;->this$0:Landroid/widget/SplitEditView;

    invoke-static {v0}, Landroid/widget/SplitEditView;->e(Landroid/widget/SplitEditView;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const v2, 0x7f070846

    invoke-static {p1, v2, v0}, Lk2/b0;->j(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object p1, p0, Landroid/widget/SplitEditView$1;->this$0:Landroid/widget/SplitEditView;

    invoke-static {p1}, Landroid/widget/SplitEditView;->e(Landroid/widget/SplitEditView;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v2, " "

    const v3, 0x7f070847

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/SplitEditView$1;->this$0:Landroid/widget/SplitEditView;

    invoke-static {p1}, Landroid/widget/SplitEditView;->a(Landroid/widget/SplitEditView;)Landroid/content/Context;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/widget/SplitEditView$1;->this$0:Landroid/widget/SplitEditView;

    invoke-static {v5}, Landroid/widget/SplitEditView;->a(Landroid/widget/SplitEditView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/SplitEditView$1;->this$0:Landroid/widget/SplitEditView;

    invoke-static {v2}, Landroid/widget/SplitEditView;->a(Landroid/widget/SplitEditView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070512

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroid/widget/SplitEditView$1;->this$0:Landroid/widget/SplitEditView;

    invoke-static {p1}, Landroid/widget/SplitEditView;->a(Landroid/widget/SplitEditView;)Landroid/content/Context;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/widget/SplitEditView$1;->this$0:Landroid/widget/SplitEditView;

    invoke-static {v5}, Landroid/widget/SplitEditView;->a(Landroid/widget/SplitEditView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/widget/SplitEditView$1;->this$0:Landroid/widget/SplitEditView;

    invoke-static {v2}, Landroid/widget/SplitEditView;->a(Landroid/widget/SplitEditView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0700bf

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1
.end method
