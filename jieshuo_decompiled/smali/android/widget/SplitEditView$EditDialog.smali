.class Landroid/widget/SplitEditView$EditDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SplitEditView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditDialog"
.end annotation


# instance fields
.field private dlg:Landroid/app/AlertDialog;

.field private final mEdit:Landroid/widget/EditText;

.field private final mIdx:I

.field final synthetic this$0:Landroid/widget/SplitEditView;


# direct methods
.method public constructor <init>(Landroid/widget/SplitEditView;I)V
    .locals 2

    iput-object p1, p0, Landroid/widget/SplitEditView$EditDialog;->this$0:Landroid/widget/SplitEditView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/widget/SplitEditView$EditDialog;->mIdx:I

    new-instance v0, Landroid/widget/EditText;

    invoke-static {p1}, Landroid/widget/SplitEditView;->a(Landroid/widget/SplitEditView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/SplitEditView$EditDialog;->mEdit:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/widget/SplitEditView;->b(Landroid/widget/SplitEditView;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/widget/SplitEditView;->b(Landroid/widget/SplitEditView;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method static bridge synthetic a(Landroid/widget/SplitEditView$EditDialog;)I
    .locals 0

    iget p0, p0, Landroid/widget/SplitEditView$EditDialog;->mIdx:I

    return p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Landroid/widget/SplitEditView$EditDialog;->this$0:Landroid/widget/SplitEditView;

    invoke-static {p1}, Landroid/widget/SplitEditView;->b(Landroid/widget/SplitEditView;)[Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Landroid/widget/SplitEditView$EditDialog;->mIdx:I

    iget-object v0, p0, Landroid/widget/SplitEditView$EditDialog;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, p2

    iget-object p1, p0, Landroid/widget/SplitEditView$EditDialog;->this$0:Landroid/widget/SplitEditView;

    invoke-static {p1}, Landroid/widget/SplitEditView;->g(Landroid/widget/SplitEditView;)V

    iget-object p1, p0, Landroid/widget/SplitEditView$EditDialog;->this$0:Landroid/widget/SplitEditView;

    invoke-static {p1}, Landroid/widget/SplitEditView;->c(Landroid/widget/SplitEditView;)Landroid/widget/GridView;

    move-result-object p1

    iget p2, p0, Landroid/widget/SplitEditView$EditDialog;->mIdx:I

    iget-object v0, p0, Landroid/widget/SplitEditView$EditDialog;->this$0:Landroid/widget/SplitEditView;

    invoke-static {v0}, Landroid/widget/SplitEditView;->b(Landroid/widget/SplitEditView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->setSelection(I)V

    iget-object p1, p0, Landroid/widget/SplitEditView$EditDialog;->this$0:Landroid/widget/SplitEditView;

    new-instance p2, Landroid/widget/SplitEditView$EditDialog$1;

    invoke-direct {p2, p0}, Landroid/widget/SplitEditView$EditDialog$1;-><init>(Landroid/widget/SplitEditView$EditDialog;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public show()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/widget/SplitEditView$EditDialog;->this$0:Landroid/widget/SplitEditView;

    invoke-static {v1}, Landroid/widget/SplitEditView;->a(Landroid/widget/SplitEditView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070256

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SplitEditView$EditDialog;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SplitEditView$EditDialog;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Landroid/widget/SplitEditView$EditDialog;->this$0:Landroid/widget/SplitEditView;

    invoke-static {v1}, Landroid/widget/SplitEditView;->a(Landroid/widget/SplitEditView;)Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Service;

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f0

    goto :goto_0

    :cond_0
    const/16 v1, 0x7da

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object v0, p0, Landroid/widget/SplitEditView$EditDialog;->dlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_2
    iget-object v0, p0, Landroid/widget/SplitEditView$EditDialog;->mEdit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Landroid/widget/SplitEditView$EditDialog;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
