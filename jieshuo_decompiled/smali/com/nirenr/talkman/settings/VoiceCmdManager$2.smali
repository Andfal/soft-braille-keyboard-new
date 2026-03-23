.class Lcom/nirenr/talkman/settings/VoiceCmdManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/VoiceCmdManager;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/nirenr/talkman/settings/VoiceCmdManager;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/VoiceCmdManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    iput p2, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "!@#"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    const v1, 0x7f0701a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/VoiceCmdManager;->b(Lcom/nirenr/talkman/settings/VoiceCmdManager;)Landroid/widget/ArrayListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/VoiceCmdManager;->c(Lcom/nirenr/talkman/settings/VoiceCmdManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-static {v2}, Lcom/nirenr/talkman/settings/VoiceCmdManager;->b(Lcom/nirenr/talkman/settings/VoiceCmdManager;)Landroid/widget/ArrayListAdapter;

    move-result-object v2

    iget v3, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->a:I

    invoke-virtual {v2, v3}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/androlua/LuaUtil;->readAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "label"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    const p2, 0x7f0703b8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1
    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    const v0, 0x7f0700ef

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;

    invoke-direct {v1, p0}, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$3;-><init>(Lcom/nirenr/talkman/settings/VoiceCmdManager$2;)V

    const-string v2, ""

    invoke-direct {p1, p2, v0, v2, v1}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    const/16 p2, 0xf

    const/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0}, Lcom/nirenr/talkman/dialog/EditDialog;->i(II)V

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/nirenr/talkman/dialog/EditDialog;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    const v0, 0x7f070251

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-static {v1}, Lcom/nirenr/talkman/settings/VoiceCmdManager;->b(Lcom/nirenr/talkman/settings/VoiceCmdManager;)Landroid/widget/ArrayListAdapter;

    move-result-object v1

    iget v2, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$2;

    invoke-direct {v2, p0}, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$2;-><init>(Lcom/nirenr/talkman/settings/VoiceCmdManager$2;)V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {p1}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto :goto_0

    :cond_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    const v0, 0x7f0701ea

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->b:Lcom/nirenr/talkman/settings/VoiceCmdManager;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/VoiceCmdManager;->b(Lcom/nirenr/talkman/settings/VoiceCmdManager;)Landroid/widget/ArrayListAdapter;

    move-result-object p2

    iget v0, p0, Lcom/nirenr/talkman/settings/VoiceCmdManager$2;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$1;

    invoke-direct {p2, p0}, Lcom/nirenr/talkman/settings/VoiceCmdManager$2$1;-><init>(Lcom/nirenr/talkman/settings/VoiceCmdManager$2;)V

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

    :cond_4
    :goto_0
    return-void
.end method
