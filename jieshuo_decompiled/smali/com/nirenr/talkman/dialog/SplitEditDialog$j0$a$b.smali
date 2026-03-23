.class Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a$b;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a$b;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a$b;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a$b;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a$b;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a$b;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a;->a:Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;->b(Lcom/nirenr/talkman/dialog/SplitEditDialog$j0;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$j0$a$b;->a:[Ljava/lang/String;

    aget-object p2, v2, p2

    invoke-virtual {v1, p2}, Lcom/androlua/LuaApplication;->getNotesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/androlua/LuaUtil;->readAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method
