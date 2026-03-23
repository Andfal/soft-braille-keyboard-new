.class Lcom/nirenr/talkman/dialog/EditDialog$a;
.super Landroid/widget/EditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/nirenr/talkman/dialog/EditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/EditDialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->c:Lcom/nirenr/talkman/dialog/EditDialog;

    iput-object p3, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->c:Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/EditDialog;->b(Lcom/nirenr/talkman/dialog/EditDialog;)Landroid/app/AlertDialog;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->c:Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/EditDialog;->e(Lcom/nirenr/talkman/dialog/EditDialog;)I

    move-result p2

    const/16 p3, 0x64

    if-le p2, p3, :cond_0

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->c:Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/EditDialog;->b(Lcom/nirenr/talkman/dialog/EditDialog;)Landroid/app/AlertDialog;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->a:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->c:Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {p4}, Lcom/nirenr/talkman/dialog/EditDialog;->e(Lcom/nirenr/talkman/dialog/EditDialog;)I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->c:Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/EditDialog;->a(Lcom/nirenr/talkman/dialog/EditDialog;)Landroid/widget/Button;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->c:Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/EditDialog;->f(Lcom/nirenr/talkman/dialog/EditDialog;)I

    move-result p2

    const/4 p4, -0x1

    if-le p2, p4, :cond_2

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->c:Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/EditDialog;->a(Lcom/nirenr/talkman/dialog/EditDialog;)Landroid/widget/Button;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p4

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->c:Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/EditDialog;->f(Lcom/nirenr/talkman/dialog/EditDialog;)I

    move-result v0

    if-le p4, v0, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p2, p4}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->c:Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/EditDialog;->b(Lcom/nirenr/talkman/dialog/EditDialog;)Landroid/app/AlertDialog;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->b:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/EditDialog$a;->c:Lcom/nirenr/talkman/dialog/EditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->b(Lcom/nirenr/talkman/dialog/EditDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_3
    return-void
.end method
