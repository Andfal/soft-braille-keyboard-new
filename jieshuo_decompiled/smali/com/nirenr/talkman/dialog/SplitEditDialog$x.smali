.class Lcom/nirenr/talkman/dialog/SplitEditDialog$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lcom/nirenr/talkman/dialog/SplitEditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Ljava/util/ArrayList;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$x;->c:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$x;->a:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$x;->b:Landroid/app/AlertDialog;

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

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$x;->c:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$x;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->q(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$x;->c:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->d(Lcom/nirenr/talkman/dialog/SplitEditDialog;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->v(Lcom/nirenr/talkman/dialog/SplitEditDialog;I)V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$x;->b:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
