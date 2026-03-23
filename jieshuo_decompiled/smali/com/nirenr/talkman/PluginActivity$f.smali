.class Lcom/nirenr/talkman/PluginActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/PluginActivity;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/nirenr/talkman/PluginActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/PluginActivity;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    iput-object p2, p0, Lcom/nirenr/talkman/PluginActivity$f;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nirenr/talkman/PluginActivity$f;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    if-eq p2, p1, :cond_5

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/PluginActivity;->b(Lcom/nirenr/talkman/PluginActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/PluginActivity;->a(Lcom/nirenr/talkman/PluginActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/PluginActivity$f;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ".ppk"

    invoke-static {p1, p2, v1, v0}, Lcom/nirenr/talkman/p;->q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/PluginActivity;->b(Lcom/nirenr/talkman/PluginActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/PluginActivity;->a(Lcom/nirenr/talkman/PluginActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/PluginActivity$f;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "plugin"

    const-string v2, "ppk"

    invoke-static {p1, p2, v1, v2, v0}, Lcom/nirenr/talkman/util/a;->C(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    const v0, 0x7f070304

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    invoke-static {v1}, Lcom/nirenr/talkman/PluginActivity;->a(Lcom/nirenr/talkman/PluginActivity;)Landroid/widget/ArrayListAdapter;

    move-result-object v1

    iget v2, p0, Lcom/nirenr/talkman/PluginActivity$f;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/nirenr/talkman/PluginActivity$f$b;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/PluginActivity$f$b;-><init>(Lcom/nirenr/talkman/PluginActivity$f;)V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/PluginActivity;->c(Lcom/nirenr/talkman/PluginActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/PluginActivity$f;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/PluginActivity;->c(Lcom/nirenr/talkman/PluginActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/PluginActivity$f;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    iget-object p1, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/PluginActivity;->c(Lcom/nirenr/talkman/PluginActivity;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/nirenr/talkman/PluginActivity$f;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    const-class v1, Lcom/androlua/LuaEditActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    invoke-static {v1}, Lcom/nirenr/talkman/PluginActivity;->b(Lcom/nirenr/talkman/PluginActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/PluginActivity$f;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p2

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    const v1, 0x7f0701ea

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/PluginActivity$f;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/PluginActivity$f$a;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/PluginActivity$f$a;-><init>(Lcom/nirenr/talkman/PluginActivity$f;)V

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

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/nirenr/talkman/PluginActivity$f;->c:Lcom/nirenr/talkman/PluginActivity;

    iget-object p2, p0, Lcom/nirenr/talkman/PluginActivity$f;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/nirenr/talkman/PluginActivity;->d(Lcom/nirenr/talkman/PluginActivity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
