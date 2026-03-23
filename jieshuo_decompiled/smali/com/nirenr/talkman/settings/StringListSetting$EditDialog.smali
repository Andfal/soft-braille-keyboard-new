.class Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/settings/StringListSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditDialog"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/widget/EditText;

.field private c:Landroid/app/AlertDialog;

.field final synthetic d:Lcom/nirenr/talkman/settings/StringListSetting;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/settings/StringListSetting;I)V
    .locals 2

    iput-object p1, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->d:Lcom/nirenr/talkman/settings/StringListSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->a:I

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->b:Landroid/widget/EditText;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    invoke-static {p1}, Lcom/nirenr/talkman/settings/StringListSetting;->a(Lcom/nirenr/talkman/settings/StringListSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    invoke-static {p1}, Lcom/nirenr/talkman/settings/StringListSetting;->c(Lcom/nirenr/talkman/settings/StringListSetting;)Ljava/lang/String;

    move-result-object p2

    const v1, 0x7f0701cd

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    new-array p2, p1, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 p1, 0x0

    aput-object v1, p2, p1

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->a:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->d:Lcom/nirenr/talkman/settings/StringListSetting;

    invoke-static {v1, p2}, Lcom/nirenr/talkman/settings/StringListSetting;->f(Lcom/nirenr/talkman/settings/StringListSetting;I)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget p2, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->a:I

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->d:Lcom/nirenr/talkman/settings/StringListSetting;

    invoke-static {v0, p2, p1}, Lcom/nirenr/talkman/settings/StringListSetting;->e(Lcom/nirenr/talkman/settings/StringListSetting;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->d:Lcom/nirenr/talkman/settings/StringListSetting;

    invoke-static {p2, p1}, Lcom/nirenr/talkman/settings/StringListSetting;->d(Lcom/nirenr/talkman/settings/StringListSetting;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->d:Lcom/nirenr/talkman/settings/StringListSetting;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070256

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->b:Landroid/widget/EditText;

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

    iput-object v0, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->c:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/StringListSetting$EditDialog;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
