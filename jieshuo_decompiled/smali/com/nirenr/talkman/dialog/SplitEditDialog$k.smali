.class Lcom/nirenr/talkman/dialog/SplitEditDialog$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/SplitEditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$k;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

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

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$k;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->a(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$k;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->l(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Landroid/widget/GridView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->q(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    new-instance p1, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$k;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-direct {p1, p2, p3}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->d()V

    return-void
.end method
