.class Lcom/nirenr/talkman/dialog/SplitEditDialog$w;
.super Landroid/widget/EditText;
.source "SourceFile"


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

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;

.field final synthetic d:Lcom/nirenr/talkman/dialog/SplitEditDialog;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;->d:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iput-object p3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;->a:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;->b:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;->c:Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;->c:Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;

    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;->d:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p3}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object p3

    array-length p3, p3

    if-ge p2, p3, :cond_2

    iget-object p3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;->d:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p3}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->e(Lcom/nirenr/talkman/dialog/SplitEditDialog;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, p2

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;->a:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;->b:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$w;->c:Lcom/nirenr/talkman/dialog/SplitEditDialog$k0;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
