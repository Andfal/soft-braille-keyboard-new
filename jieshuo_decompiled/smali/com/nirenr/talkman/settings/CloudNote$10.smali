.class Lcom/nirenr/talkman/settings/CloudNote$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/CloudNote;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/CloudNote;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/CloudNote;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/CloudNote$10;->b:Lcom/nirenr/talkman/settings/CloudNote;

    iput p2, p0, Lcom/nirenr/talkman/settings/CloudNote$10;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CloudNote$10;->b:Lcom/nirenr/talkman/settings/CloudNote;

    const v0, 0x7f070251

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/CloudNote$10;->b:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/CloudNote;->a(Lcom/nirenr/talkman/settings/CloudNote;)Landroid/widget/ArrayListAdapter;

    move-result-object v1

    iget v2, p0, Lcom/nirenr/talkman/settings/CloudNote$10;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/nirenr/talkman/settings/CloudNote$10$2;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/CloudNote$10$2;-><init>(Lcom/nirenr/talkman/settings/CloudNote$10;)V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CloudNote$10;->b:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CloudNote$10;->b:Lcom/nirenr/talkman/settings/CloudNote;

    const v0, 0x7f0701ea

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/CloudNote$10;->b:Lcom/nirenr/talkman/settings/CloudNote;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/CloudNote;->a(Lcom/nirenr/talkman/settings/CloudNote;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    iget v0, p0, Lcom/nirenr/talkman/settings/CloudNote$10;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/settings/CloudNote$10$1;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/settings/CloudNote$10$1;-><init>(Lcom/nirenr/talkman/settings/CloudNote$10;)V

    const v0, 0x104000a

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f070095

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method
