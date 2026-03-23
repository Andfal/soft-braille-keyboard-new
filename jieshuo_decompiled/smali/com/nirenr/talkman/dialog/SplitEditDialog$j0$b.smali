.class Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$b;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$b;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->a(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Landroid/app/AlertDialog;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$b;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->c(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$b;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-static {p3}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Landroid/widget/EditText;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    return-void
.end method
