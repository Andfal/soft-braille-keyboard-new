.class Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nirenr/talkman/settings/BlackListSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditDialog"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/widget/EditText;

.field private c:Landroid/app/AlertDialog;

.field private d:Lorg/json/JSONArray;

.field final synthetic e:Lcom/nirenr/talkman/settings/BlackListSetting;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/settings/BlackListSetting;Lorg/json/JSONArray;I)V
    .locals 1

    iput-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->e:Lcom/nirenr/talkman/settings/BlackListSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->a:I

    iput-object p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->d:Lorg/json/JSONArray;

    new-instance p2, Landroid/widget/EditText;

    invoke-direct {p2, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->b:Landroid/widget/EditText;

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->d:Lorg/json/JSONArray;

    const-string v0, ""

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->a:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->d:Lorg/json/JSONArray;

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->a:I

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->d:Lorg/json/JSONArray;

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->d:Lorg/json/JSONArray;

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->e:Lcom/nirenr/talkman/settings/BlackListSetting;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070256

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->b:Landroid/widget/EditText;

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

    new-instance v1, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog$1;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog$1;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->c:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog;->c:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
