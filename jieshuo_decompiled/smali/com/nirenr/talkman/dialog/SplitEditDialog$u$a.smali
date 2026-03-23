.class Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$u;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u;

    iput-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->a:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance p2, Lcom/nirenr/talkman/dialog/SplitEditDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/androlua/LuaApplication;->getNotesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/androlua/LuaUtil;->readAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$b;

    invoke-direct {v2, p0, p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$b;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;Ljava/lang/String;)V

    invoke-direct {p2, v0, v1, v2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;-><init>(Lcom/nirenr/talkman/TalkManAccessibilityService;Ljava/lang/String;Lcom/nirenr/talkman/dialog/SplitEditDialog$onTextChangedListener;)V

    invoke-virtual {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->U()V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object v0, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u;

    iget-object v0, v0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v0}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u;

    iget-object v1, v1, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {v1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v1

    const v2, 0x7f070304

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$a;

    invoke-direct {v2, p0, p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a$a;-><init>(Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;Ljava/lang/String;)V

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p2}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->a:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androlua/LuaApplication;->getNotesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->w(Lcom/nirenr/talkman/dialog/SplitEditDialog;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u;

    iget-object p2, p2, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p2}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p2

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/androlua/LuaApplication;->getNotesPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/androlua/LuaUtil;->readAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lcom/nirenr/talkman/dialog/SplitEditDialog$u$a;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog$u;

    iget-object p1, p1, Lcom/nirenr/talkman/dialog/SplitEditDialog$u;->b:Lcom/nirenr/talkman/dialog/SplitEditDialog;

    invoke-static {p1}, Lcom/nirenr/talkman/dialog/SplitEditDialog;->i(Lcom/nirenr/talkman/dialog/SplitEditDialog;)Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object p1

    const p2, 0x7f070374

    invoke-virtual {p1, p2}, Lcom/nirenr/talkman/TalkManAccessibilityService;->speak(I)V

    :goto_0
    return-void
.end method
