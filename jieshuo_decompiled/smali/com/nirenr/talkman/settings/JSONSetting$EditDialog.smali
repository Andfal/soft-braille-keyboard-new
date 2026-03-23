.class Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/settings/JSONSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditDialog"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/widget/LinearLayout;

.field private final c:Landroid/widget/EditText;

.field private final d:Landroid/widget/EditText;

.field private e:Landroid/app/AlertDialog;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field final synthetic h:Lcom/nirenr/talkman/settings/JSONSetting;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/settings/JSONSetting;I)V
    .locals 6

    iput-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->h:Lcom/nirenr/talkman/settings/JSONSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->a:I

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->c:Landroid/widget/EditText;

    const v2, 0x7f070318

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->d:Landroid/widget/EditText;

    const v5, 0x7f070561

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setHint(I)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eq p2, v3, :cond_0

    invoke-static {p1}, Lcom/nirenr/talkman/settings/JSONSetting;->a(Lcom/nirenr/talkman/settings/JSONSetting;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->f:Ljava/lang/String;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/JSONSetting;->b(Lcom/nirenr/talkman/settings/JSONSetting;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->g:Ljava/lang/String;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->g:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->f:Ljava/lang/String;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->g:Ljava/lang/String;

    iget p1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->a:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->h:Lcom/nirenr/talkman/settings/JSONSetting;

    invoke-static {v0, p1}, Lcom/nirenr/talkman/settings/JSONSetting;->e(Lcom/nirenr/talkman/settings/JSONSetting;I)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->f:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->a:I

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->h:Lcom/nirenr/talkman/settings/JSONSetting;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->g:Ljava/lang/String;

    invoke-static {p2, p1, v0, v1}, Lcom/nirenr/talkman/settings/JSONSetting;->d(Lcom/nirenr/talkman/settings/JSONSetting;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->h:Lcom/nirenr/talkman/settings/JSONSetting;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->g:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/nirenr/talkman/settings/JSONSetting;->c(Lcom/nirenr/talkman/settings/JSONSetting;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->h:Lcom/nirenr/talkman/settings/JSONSetting;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070256

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->b:Landroid/widget/LinearLayout;

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

    iput-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->e:Landroid/app/AlertDialog;

    iget v0, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->c:Landroid/widget/EditText;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->d:Landroid/widget/EditText;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/nirenr/talkman/settings/JSONSetting$EditDialog;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
