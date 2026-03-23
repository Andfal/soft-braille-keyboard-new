.class Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;
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
    name = "EditDialog2"
.end annotation


# instance fields
.field private final a:I

.field private final b:Landroid/widget/EditText;

.field private final c:Landroid/widget/LinearLayout;

.field private final d:[Landroid/widget/RadioButton;

.field private e:Landroid/app/AlertDialog;

.field private f:Lorg/json/JSONArray;

.field final synthetic g:Lcom/nirenr/talkman/settings/BlackListSetting;


# direct methods
.method public constructor <init>(Lcom/nirenr/talkman/settings/BlackListSetting;Lorg/json/JSONArray;I)V
    .locals 9

    iput-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->g:Lcom/nirenr/talkman/settings/BlackListSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->a:I

    iput-object p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->f:Lorg/json/JSONArray;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->c:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p2, Landroid/widget/RadioGroup;

    invoke-direct {p2, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const v3, 0x7f070365

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f070368

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const v3, 0x7f070367

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const v3, 0x7f070366

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    aput-object v3, v2, v6

    new-array v3, v1, [Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->d:[Landroid/widget/RadioButton;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget-object v7, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->d:[Landroid/widget/RadioButton;

    new-instance v8, Landroid/widget/RadioButton;

    invoke-direct {v8, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    aput-object v8, v7, v3

    iget-object v7, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->d:[Landroid/widget/RadioButton;

    aget-object v7, v7, v3

    aget-object v8, v2, v3

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->d:[Landroid/widget/RadioButton;

    aget-object v7, v7, v3

    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->b:Landroid/widget/EditText;

    iget p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->a:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_4

    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->f:Lorg/json/JSONArray;

    const-string v2, ""

    invoke-virtual {p1, p3, v2}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const-string v2, "*"

    if-le p3, v0, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, v5, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, v0, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v0

    invoke-virtual {p1, v4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    :cond_3
    :goto_1
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->d:[Landroid/widget/RadioButton;

    aget-object p1, p1, v4

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->d:[Landroid/widget/RadioButton;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    const-string v0, "*"

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->d:[Landroid/widget/RadioButton;

    const/4 v1, 0x2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->d:[Landroid/widget/RadioButton;

    const/4 v1, 0x3

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    :goto_2
    :try_start_0
    iget p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->a:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    iget-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->f:Lorg/json/JSONArray;

    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    :cond_4
    iget p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->a:I

    if-eq p2, v0, :cond_5

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->f:Lorg/json/JSONArray;

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->f:Lorg/json/JSONArray;

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public show()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->g:Lcom/nirenr/talkman/settings/BlackListSetting;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070256

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->c:Landroid/widget/LinearLayout;

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

    new-instance v1, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2$1;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2$1;-><init>(Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->e:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->b:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/settings/BlackListSetting$EditDialog2;->e:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
