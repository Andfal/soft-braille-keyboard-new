.class Landroid/widget/SplitEditView$EditDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SplitEditView$EditDialog;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/SplitEditView$EditDialog;


# direct methods
.method constructor <init>(Landroid/widget/SplitEditView$EditDialog;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SplitEditView$EditDialog$1;->this$1:Landroid/widget/SplitEditView$EditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/widget/SplitEditView$EditDialog$1;->this$1:Landroid/widget/SplitEditView$EditDialog;

    invoke-static {v0}, Landroid/widget/SplitEditView$EditDialog;->a(Landroid/widget/SplitEditView$EditDialog;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SplitEditView$EditDialog$1;->this$1:Landroid/widget/SplitEditView$EditDialog;

    iget-object v1, v1, Landroid/widget/SplitEditView$EditDialog;->this$0:Landroid/widget/SplitEditView;

    invoke-static {v1}, Landroid/widget/SplitEditView;->c(Landroid/widget/SplitEditView;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/widget/SplitEditView$EditDialog$1;->this$1:Landroid/widget/SplitEditView$EditDialog;

    iget-object v1, v1, Landroid/widget/SplitEditView$EditDialog;->this$0:Landroid/widget/SplitEditView;

    invoke-static {v1}, Landroid/widget/SplitEditView;->c(Landroid/widget/SplitEditView;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/SplitEditView$EditDialog$1;->this$1:Landroid/widget/SplitEditView$EditDialog;

    iget-object v0, v0, Landroid/widget/SplitEditView$EditDialog;->this$0:Landroid/widget/SplitEditView;

    invoke-static {v0}, Landroid/widget/SplitEditView;->c(Landroid/widget/SplitEditView;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/SplitEditView$EditDialog$1;->this$1:Landroid/widget/SplitEditView$EditDialog;

    iget-object v1, v1, Landroid/widget/SplitEditView$EditDialog;->this$0:Landroid/widget/SplitEditView;

    invoke-static {v1}, Landroid/widget/SplitEditView;->c(Landroid/widget/SplitEditView;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_2
    return-void
.end method
